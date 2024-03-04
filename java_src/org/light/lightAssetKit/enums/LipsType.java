package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum LipsType {
    Image(0, "Image"),
    Color(1, "Color"),
    Lut(2, "Lut");
    
    public String name;
    public int value;

    LipsType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
