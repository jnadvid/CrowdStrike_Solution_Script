# CrowdStrike File Removal Script

This PowerShell script is designed to remove a specific system file related to CrowdStrike. It checks if the system is in Safe Mode or Windows Recovery Environment (WRE) before attempting to delete the file. 

## Prerequisites

- The script must be run with administrative privileges.
- Ensure you are in Safe Mode or WRE before running the script.

## Script Details

### Steps Performed

1. **Check Boot State:**
   - Verifies if the system is in Normal boot. If not, it advises the user to switch to Safe Mode or WRE and exits.
   
2. **Navigate to CrowdStrike Directory:**
   - Changes the directory to `C:\Windows\System32\drivers\CrowdStrike`.
   
3. **Locate and Delete the File:**
   - Searches for the file matching the pattern `C-00000291*.sys`.
   - Attempts to delete the file if found.
   - Provides feedback on the success or failure of the deletion process.

4. **Display Message:**
   - Regardless of the outcome, it displays a message box with the text: "By Jose Israel Nadal Vidal // Twitter @perito_inf".

## Usage

1. Open PowerShell with administrative privileges.
2. Run the script.

### Example

```powershell
.\CrowdStrikeFileRemoval.ps1


Contributing

Feel free to submit issues or pull requests with any enhancements or bug fixes.
License

This project is licensed under the MIT License - see the LICENSE file for details.
Acknowledgments

    Script created by Jose Israel Nadal Vidal. Follow on Twitter @perito_in
