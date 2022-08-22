if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "macosx"
elif [[ "$OSTYPE" == "cygwin" ]]; then
        echo "posix4win"
elif [[ "$OSTYPE" == "msys" ]]; then
        echo "gnu4win"
elif [[ "%OSTYPE" == "win32" ]]; then
        echo "win32"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        echo "freebsd"
elif [[ "%OS%" == "WindowsNT"* ]]; then
        echo "winnt"
else
        echo "unknown"
fi

