# Use a modern target for Swift support
TARGET = iphone:clang:latest:14.0 
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CylinderRemade
CylinderRemade_FILES = CylinderAnimator.swift YourOtherFile.m
CylinderRemade_CFLAGS = -fobjc-arc
CylinderRemade_SWIFTFLAGS = -sdk $(THEOS)/sdks/iPhoneOS14.5.sdk # Adjust based on your SDK folder

include $(THEOS)/makefiles/tweak.mk