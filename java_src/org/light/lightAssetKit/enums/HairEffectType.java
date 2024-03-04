package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum HairEffectType {
    Image(0, "Image"),
    Lut(1, "Lut"),
    Bleach(2, "Bleach");
    
    public String name;
    public int value;

    HairEffectType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
