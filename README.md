# NerdyTemp

NerdyTemp is a Python script for measuring and archiving temperatures using the SenseHAT for Raspberry Pi.

## Installation
Start by installing the required dependencies. On Debian and its variants, this can be achieved using the following command:
```bash
# apt update -y && apt install python3 python3-pip make sense-hat -y
```

Use git to clone this repository

```bash
$ git clone https://github.com/RafaelMuijsert/nerdytemp.git
```

Navigate to the cloned repository
```bash
cd nerdytemp
```

Lastly, run [make](https://www.gnu.org/software/make/) to install the pip requirements and install the script.
```bash
# sudo make install
```

## Configuration
Edit the configuration file found at /etc/nerdytemp/nerdytemp.ini using your preferred text editor

```bash
# nano /etc/nerdytemp/nerdytemp.ini
```

## Usage
The script can now be invoked using by executing `nerdytemp`
```bash
# nerdytemp
```
Alternatively, it can be started and managed through the provided systemd unit files:
```bash
# systemctl start nerdytemp
```
To run at startup:
```bash
# systemctl enable nerdytemp
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)