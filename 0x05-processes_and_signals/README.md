**Bash Project: Processes and Signals
This project involves various Bash scripts that demonstrate the usage of processes and signals in Bash scripting. Each script performs specific tasks related to process management and signal handling. Below is a description of each script and its functionality.

Scripts
0. Display Own PID
This script displays its own Process ID (PID) using the $$ variable.

1. Display List of Running Processes
This script displays a list of all currently running processes for all users, including those without a TTY. It presents the information in a user-oriented format, showing the process hierarchy.

2. Find Bash Process PID
This script uses the previously written script from task 1 to find and display the PID of the current Bash process by searching for the word "bash" in the process list.

3. Find Bash Process PID with Process Names
This script displays the PID and process name of all processes whose names contain the word "bash" without using the ps command.

4. Print "To infinity and beyond" Indefinitely
This script prints the phrase "To infinity and beyond" in an infinite loop, with a 2-second sleep between each iteration.

5. Stop "To infinity and beyond" Process
This script stops the "To infinity and beyond" process using the kill command.

6. Stop "To infinity and beyond" Process without kill
This script stops the "To infinity and beyond" process without using the kill or killall commands.

7. Handle SIGTERM Signal
This script prints "To infinity and beyond" indefinitely with a 2-second sleep between each iteration. However, when it receives a SIGTERM signal (e.g., from kill), it prints "I am invincible!!!" before exiting gracefully.

8. Kill the "7-highlander" Process
This script kills the "7-highlander" process using the kill command.

Usage
Clone the repository or download the script files individually.
Open a terminal and navigate to the directory containing the scripts.
Run each script individually using the Bash interpreter. For example: ./script_name.sh
Note: Be cautious while running scripts that have an infinite loop (e.g., "To infinity and beyond" scripts). To stop them, you can use ctrl+c.

Feel free to explore and modify the scripts according to your requirements. Happy scripting!

Disclaimer
Ensure that you understand the implications of running processes and handling signals before executing any scripts that may affect your system. Always use caution and best practices when working with processes and signals.
