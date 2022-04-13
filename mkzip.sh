if [ $# -eq 0 ]
then
    echo "Usage: $(basename $0) <version>"
    echo
    echo "Example: mkzip.sh 1.3.2"
    exit 1
fi

V=$1
F=THEA500-WHDLoad-package-${V}
zip -r ${F}.zip THEA500 -x "*.gitignore"
sha256sum ${F}.zip | tee ${F}.sum
