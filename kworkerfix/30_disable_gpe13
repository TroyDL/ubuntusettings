#!/bin/bash
case "$1" in
  thaw|resume)
    echo disable > /sys/firmware/acpi/interrupts/gpe13 2>/dev/null
    ;;
  *)
    ;;
esac
exit $?
