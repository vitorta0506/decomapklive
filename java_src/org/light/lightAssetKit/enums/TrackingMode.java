package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum TrackingMode {
    AR_TRACKER_SURFACE(0, "Surface"),
    AR_TRACKER_WORLD(1, "World"),
    AR_TRACKER_GROUND(2, "Ground"),
    AR_TRACKER_ROTATION(6, "Rotation");
    
    public String name;
    public int value;

    TrackingMode(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
