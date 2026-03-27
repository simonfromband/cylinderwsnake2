TARGET = iphone:clang:latest:14.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CylinderRemade

# Include all necessary source files from your tweak directory
CylinderRemade_FILES = tweak/tweak.x tweak/CylinderAnimator.swift tweak/CALayer+Cylinder.m
CylinderRemade_CFLAGS = -fobjc-arc
# Linking required frameworks for animations
CylinderRemade_FRAMEWORKS = UIKit QuartzCore 

# Subprojects (Settings bundle)
SUBPROJECTS += settings

include $(THEOS)/makefiles/tweak.mk
include $(THEOS)/makefiles/aggregate.mk
