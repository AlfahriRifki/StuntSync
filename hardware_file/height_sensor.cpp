#include <Wire.h>
#include <FirebaseESP8266.h>

const char *ssid = "kandang40";
const char *password = "ayambahagia";
const char *firebaseHost = "stuntsync-d5de7";
const char *firebaseAuth = "AIzaSyA2mU63CW7TNgnerwiMf5QprbxoBep-Jv8";

FirebaseData firebaseData;

const int numReadings = 5;
unsigned short distance_val = 0;
unsigned char i2c_rx_buf[16];
unsigned short distanceReadings[numReadings];
int readingsIndex = 0;

const int minDistanceReading = 0;
const int maxDistanceReading = 1023;
const int distanceToBase = 128;

void setup() {
    Wire.begin();
    Serial.begin(9600);

    // Connect to Wi-Fi
    WiFi.begin(ssid, password);
    while (WiFi.status() != WL_CONNECTED) {
        delay(1000);
        Serial.println("Connecting to WiFi...");
    }

    // Initialize Firebase
    Firebase.begin(firebaseHost, firebaseAuth);
}

void loop() {
    // Retrieve the latest name from Firestore
    String latestName = getLatestNameFromFirestore();

    // If the latestName is not empty, proceed with height reading and upload
    if (!latestName.isEmpty()) {
        int height = ReadHeight();
        Serial.print("Height: ");
        Serial.print(height);
        Serial.println(" cm");

        // Upload height to Firestore
        uploadHeightToFirestore(latestName.c_str(), height);
        delay(5000); // Add a delay to avoid sending data too frequently
    } else {
        Serial.println("Error getting the latest name from Firestore");
    }
}

String getLatestNameFromFirestore() {
    if (Firebase.getString(firebaseData, "/daftar nama/nama")) {
        return firebaseData.stringData();
    } else {
        Serial.println("Error getting the latest name from Firestore");
        Serial.println(firebaseData.errorReason());
        return "";
    }
}

void uploadHeightToFirestore(const char *document, int height) {
    String path = "/Data/" + String(document) + "/height";
    if (Firebase.setInt(firebaseData, path.c_str(), height)) {
        Serial.println("Upload success");
    } else {
        Serial.println("Error uploading data");
        Serial.println(firebaseData.errorReason());
    }
}

// Functions related to sensors (HX711, distance sensor) are not included here

void SensorRead(unsigned char addr, unsigned char *datbuf, unsigned char cnt) {
    Wire.beginTransmission(82);
    Wire.write(byte(addr));
    Wire.endTransmission();
    delay(1);
    Wire.requestFrom(82, cnt);
    if (cnt <= Wire.available()) {
        *datbuf++ = Wire.read();
        *datbuf++ = Wire.read();
    }
}

int ReadHeight() {
    SensorRead(0x00, i2c_rx_buf, 2);
    distance_val = i2c_rx_buf[0];
    distance_val = distance_val << 8;
    distance_val |= i2c_rx_buf[1];

    // Set default height value when negative or less than 30 cm
    if (distance_val <= 0 || distance_val < 30) {
        return 0;
    }

    distanceReadings[readingsIndex] = distance_val;
    readingsIndex = (readingsIndex + 1) % numReadings;

    unsigned long sum = 0;
    for (int i = 0; i < numReadings; ++i) {
        sum += distanceReadings[i];
    }
    int average = sum / numReadings;

    int height = distanceToBase - map(average, minDistanceReading, maxDistanceReading, 0, distanceToBase);

    delay(300);
    return height;
}