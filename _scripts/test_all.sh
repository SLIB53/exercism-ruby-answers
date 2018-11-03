# This script must run from the project's base directory!

# Runs tests for each exercise, exiting with 1 if a test fails. Tests are found
# by convention, where the test is a ruby script ending with "_test.exs".

for item in $(find . -name "*_test.rb" | sort)
do
    echo "\n\033[34m> ruby $item\033[0m"

    if ! ruby $item;
    then
        echo "\n\033[31mA test in $item failed.\033[0m"
        exit 1
    fi
done

echo "\n\033[32mAll tests passed!\033[0m"
