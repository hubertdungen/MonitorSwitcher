# Monitor Swapper

Monitor Swapper is a simple, lightweight PowerShell script designed to switch your primary display between multiple monitors on a Windows-based system. The script keeps a log to remember which monitor was last set as the primary one and alternates sequentially through all available monitors.

## Getting Started

To start using the script, follow the steps below:

1. Download the PowerShell script file (`swap_monitors.ps1` or similar) from this repository.

2. Ensure you have [nircmd](https://www.nirsoft.net/utils/nircmd.html) installed on your system, as this script depends on it to swap the primary display. Place the `nircmd.exe` in a directory that is included in your system's PATH.

3. Run the script whenever you want to switch your primary monitor. The script will handle the rest!

## How It Works

The script works in the following way:

1. Checks for a log file at a designated file, for exmaple: `C:\Users\huber\OneDrive\Documents\SwapMonitorsLog.txt`. If it doesn't exist, the script creates it and initializes it with "1".

2. The script reads the last monitor number from the log file, detects the total number of monitors on your system, and calculates the next monitor number.

3. The script uses `nircmd` to set the primary display to the calculated monitor number.

4. The script logs the newly set monitor number in the log file for future reference.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- [nircmd](https://www.nirsoft.net/utils/nircmd.html) for providing the command-line tool to manipulate the system.
