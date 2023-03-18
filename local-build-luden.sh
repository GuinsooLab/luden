#!/usr/bin/env bash

only_luden_flag='false'

print_usage() {
  echo "Luden Building CLI usage:"
  echo "./local-build-luden.sh --only_luden [true, false]"
  echo " "
  echo "options:"
  echo "-h, --help                show brief help"
  echo "-oj, --only_luden         specify should CLI build only guinsoolab/luden docker. By default CLI builds server, configurator and luden images"
  echo "                          -oj true: build only guinsoolab/luden"
  echo "                          -oj false: (default) build all 3 docker images: guinsoolab/luden-server, guinsoolab/luden-configurator, ginsoolab/luden"
}

while test $# -gt 0; do
  case "$1" in
    -h|--help)
      print_usage
      exit 0
      ;;
    -oj|--only_jitsu)
      shift
      if test $# -gt 0; then
        export only_luden_flag=$1
      else
        echo "default only_luden: $only_luden_flag"
      fi
      shift
      ;;
    *)
      break
      ;;
  esac
done


if [ "$only_luden_flag" == 'false' ]
then
  ./local-build-server.sh || { echo './local-build-server failed' ; exit 1; }
  ./local-build-configurator.sh || { echo './local-build-configurator failed' ; exit 1; }
fi

echo ""
echo "============================================"
echo "=    Building guinsoolab/luden docker...   ="
echo "============================================"
echo ""

(cd docker; docker build -t guinsoolab/luden .) || { echo 'Building guinsoolab/luden docker failed' ; exit 1; }

echo ""
echo "============================================"
echo "=            SUCCESSFUL BUILD              ="
echo "============================================"
echo ""