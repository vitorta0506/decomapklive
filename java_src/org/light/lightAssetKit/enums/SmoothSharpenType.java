package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum SmoothSharpenType {
    SharpenDefault(0, "SharpenDefault"),
    HighPass(1, "HighPass");
    
    public String name;
    public int value;

    SmoothSharpenType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
