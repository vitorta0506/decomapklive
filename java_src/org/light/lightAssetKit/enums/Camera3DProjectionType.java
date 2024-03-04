package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum Camera3DProjectionType {
    PERSPECTIVE(0, "perspective"),
    ORTHOGRAPHIC(1, "orthographic");
    
    public String name;
    public int value;

    Camera3DProjectionType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
