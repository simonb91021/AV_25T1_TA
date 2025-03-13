#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <iomanip>
#include <vector>


// Question 3: This is an extension task that requires you to decode sensor data from a CAN log file.
// CAN (Controller Area Network) is a communication standard used in automotive applications (including Redback cars)
// to allow communication between sensors and controllers.
//
// Your Task: Using the definition in the Sensors.dbc file, extract the "WheelSpeedRR" values
// from the candump.log file. Parse these values correctly and store them in an output.txt file with the following format:
// (<UNIX_TIME>): <DECODED_VALUE>
// eg:
// (1705638753.913408): 1234.5
// (1705638754.915609): 6789.0
// ...
// The above values are not real numbers; they are only there to show the expected data output format.
// You do not need to use any external libraries. Use the resources below to understand how to extract sensor data.
// Hint: Think about manual bit masking and shifting, data types required,
// what formats are used to represent values, etc.
// Resources:
// https://www.csselectronics.com/pages/can-bus-simple-intro-tutorial
// https://www.csselectronics.com/pages/can-dbc-file-database-intro

/*
Extract WheelSpeed RR Vals from Sensors.dbc file's definition of it which are stored in the candump.log file
Parse thee values correctly
Store into an output.txt file with the format
(<UNIX_TIME>): <DECODED_VALUE>
eg:
(1705638753.913408): 1234.5
(1705638754.915609): 6789.0
...
// Hint: Think about manual bit masking and shifting, data types required,
// what formats are used to represent values, etc.
*/

//BO_ 1797 ECU_WheelSpeed: 8 Vector__XXX,

//  SG_ WheelSpeedRR : 32|16@0+ (0.1,0) [0|0] "km/h" Vector__XXX
// WheelSpeedRR, Bit starts count from 32, use manual bit masking and shifting for proper extraction of the data for corresponding wheel.
// Bit length = signal length (16 bits)
// @0 meaning its big-endian/Motorola
// +, Unsigned value type
// (Scale, offset) - Physical val = offset+scale*raw decimal

// Struct for the CAN data
struct CANdata {
    double timestamp;
    uint32_t canId;
    uint8_t data[8];
};

//Parse the CAN cata from candump.log to get the corresponding values, do this via a vector of candata.
std::vector<CANdata> parsingLog(const std::string &logFile) {
    std::ifstream file(logFile); //to read the log file.
    std::string canLine; //A string of each line.
    std::vector<CANdata> data; 
    while (std::getline(file, canLine)) {
        CANdata msg{};
        std::istringstream iss(canLine);
        if (canLine[0] == '(') {
            // Get timestamp for line
            size_t start = canLine.find('(') + 1;
            size_t end = canLine.find(')'); // Checks inside the brackets.
            msg.timestamp = std::stod(canLine.substr(start, end-start));

            // get the CAN ID
            
            //
        }
        data.push_back(msg);
    }
    return data;
}

//Extract WheelSpeedRR, bit count starts at 32 and is of 16 length, at byte 4&5.
double wheelSpeedRR(const CANdata &data) { //0x705 is the hexadecimal of 1707 decimal, this is derived from the dbc file so the correct CAN ID shows the wheel data.
    if (data.canId != 0x705) {
        return false;
    } 
    uint16_t rawData = (data.data[4] << 8) | data.data[5];
}

