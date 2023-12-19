# run_whoami.sh

## Description

This Bash script accepts a username as an argument and runs the `whoami` command under that user. It is designed to demonstrate executing commands as different users on a Linux system.

## Prerequisites

- The script assumes that you have sudo privileges on the system.
- Ensure that the specified user accounts exist on the system.

## Usage

1. Save the script to a file, for example, `run_whoami.sh`.
2. Make the script executable:

    ```bash
    chmod +x run_whoami.sh
    ```

3. Run the script with a username as an argument:

    ```bash
    ./run_whoami.sh username
    ```

    Replace `username` with the desired username on your system.

## Example

```bash
./run_whoami.sh user1

## Rememeber, all these should be done on /root/
