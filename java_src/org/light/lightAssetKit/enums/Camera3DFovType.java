package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum Camera3DFovType {
    VERTICAL(0, "vertical"),
    HORIZONTAL(1, "horizontal");
    
    public String name;
    public int value;

    Camera3DFovType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
