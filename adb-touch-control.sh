#!/bin/bash

screen_state="on"  # Default: layar menyala
SWIPE_DURATION=200  # Durasi swipe dalam milidetik

clear
echo "=== ADB Touch Control ==="
echo "G: Tap tengah (540,840)"
echo "D: Tap kiri (135,840)"
echo "Q: Swipe kiri (kanan->kiri)"
echo "W: Swipe kanan (kiri->kanan)"
echo "Z: Swipe atas (bawah->atas)"
echo "X: Swipe bawah (atas->bawah)"
echo "S: Toggle layar ON/OFF"
echo "C: Clear screen"
echo "E: Exit program"

while true; do
  read -rsn1 key
  
  case ${key,,} in  # ${key,,} converts to lowercase
    g)
      adb shell input touchscreen tap 540 840
      echo "TAP: Tengah (540,840)"
      ;;
    d)
      adb shell input touchscreen tap 135 840
      echo "TAP: Kiri (135,840)"
      ;;
    q)
      # Swipe kanan ke kiri
      adb shell input swipe 540 840 135 840 $SWIPE_DURATION
      echo "SWIPE: Kanan -> Kiri"
      ;;
    w)
      # Swipe kiri ke kanan
      adb shell input swipe 135 840 540 840 $SWIPE_DURATION
      echo "SWIPE: Kiri -> Kanan"
      ;;
    z)
      # Swipe bawah ke atas
      adb shell input swipe 540 1800 540 800 $SWIPE_DURATION
      echo "SWIPE: Bawah -> Atas"
      ;;
    x)
      # Swipe atas ke bawah
      adb shell input swipe 540 800 540 1800 $SWIPE_DURATION
      echo "SWIPE: Atas -> Bawah"
      ;;
    s)
      adb shell input keyevent 26
      if [[ $screen_state == "on" ]]; then
        echo "LAYAR: Mati"
        screen_state="off"
      else
        echo "LAYAR: Hidup"
        screen_state="on"
      fi
      ;;
    c)
      clear
      echo "=== ADB Touch Control ==="
      echo "G: Tap tengah (540,840)"
      echo "D: Tap kiri (135,840)"
      echo "Q: Swipe kiri (kanan->kiri)"
      echo "W: Swipe kanan (kiri->kanan)"
      echo "Z: Swipe atas (bawah->atas)"
      echo "X: Swipe bawah (atas->bawah)"
      echo "S: Toggle layar ON/OFF"
      echo "C: Clear screen"
      echo "E: Exit program"
      ;;
    e)
      echo "Keluar dari program..."
      break
      ;;
    *)
      # Ignore other keys
      ;;
  esac
done
