# Basys3Scripts


# Requirements
* [Xilinx Vivado](https://www.xilinx.com/products/design-tools/vivado.html) 2019.2 or later
* [Digilent Basys3 board](https://reference.digilentinc.com/reference/programmable-logic/basys-3/start) (or any other board with a Xilinx Artix-7 FPGA)

# Scripts
### Gate Designs:
> ### Adders:
> * [One Bit Adder](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Adders/oneBitAdder.v)
> * [Two Bit Adder](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Adders/twoBitAdder.v)
> * [Four Bit Adder](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Adders/fourBitAdder.v)
> * [N Bit Adder](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Adders/nBitAdder.v)
> 
> _Make sure to check the dependencies in the module description_

> ### Equality Checkers:
> * [One Bit Equality Checker](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Equality/oneBitEquality.v)
> * [Two Bit Equality Checker](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Equality/twoBitEquality.v)
> * [Four Bit Equality Checker](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Equality/fourBitEquality.v)
> * [N Bit Equality Checker](https://github.com/Fypeex/Basys3Scripts/blob/main/GateDesign/Equality/nBitEquality.v)
>
> _Make sure to check the dependencies in the module description_

### Other Scripts:
> * [Four Bit Adder with LED Indicators](https://github.com/Fypeex/Basys3Scripts/tree/main/BehaviouralDesign/4BitAdderLED)
> * [13 Bit Binary to Decimal Converter with 7 Segment Display](https://github.com/Fypeex/Basys3Scripts/tree/main/BehaviouralDesign/BinaryToDecimalConverter)
> * [Four Bit Adder with Seven Segment Display](https://github.com/Fypeex/Basys3Scripts/tree/main/Scripts/4BitAdder7Segment)
>
> _Make sure to use the correct constraint file for the desired script_
# Setup
## Quick start: 
> * Download the bitstream file (.bit) of the desired script
> * Connect the Basys3 board to your computer via USB and power it on.
> * Connect to the board via USB and programm the bitstream file
>
> <b>(More detailed instructions can be found below)</b>

## Detailed setup:
### Clone the repository

```bash
git clone https://github.com/Fypeex/Basys3Scripts.git
```

### Create a new Vivado project
 `Create Project` → Input the project name → `Next` → `RTL Project` → 
 `Next` → `Add Files` → Add the Verilog (.v) files of the desired script → 
 `Next` → `Add Files` → Add the constraint file (.xdc) of the desired script →
 `Next` → Select the Basys3 board: <br>
 
 * Family: `Artix-7`
 * Package: `cpg236`
 * Speed grade: `-1`
 * Look for the with Part name `xc7a35tcpg236-1`
 
 Alternatively you can directly search for `xc7a35tcpg236-1`
 
 → `Finish`


### Run the synthesis
* You can run the synthesis by clicking on `Run Synthesis`in the `Flow Navigator` or by pressing `F11`
### Run the implementation
* You can run the implementation by clicking on `Run Implementation`in the `Flow Navigator`
### Generate the bitstream
* You can generate the bitstream by clicking on `Generate Bitstream`in the `Flow Navigator`

If there are any errors, make sure you followed the steps correctly.
If you cannot fix the errors, please open an issue.

# Usage

 Connect the Basys3 board to your computer via USB and power it on. <br>
 Open`Hardware Manager`in the Flow Navigator →
 `Open Target` → `Auto Connect` <br>
 
 If the board is connected correctly, the `Program Device` button should be enabled. <br>
 Click on `Program Device` and select the bitstream file (.bit) of the desired script. <br>
 
 The bitstream file can be found in the `runs/impl_1` folder of the project. <br>
 
 Your Board should now be programmed.


# License
[MIT](https://github.com/Fypeex/Basys3Scripts/blob/main/LICENSE)


