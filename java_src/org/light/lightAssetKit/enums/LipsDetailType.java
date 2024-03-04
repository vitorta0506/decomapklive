package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum LipsDetailType {
    Default(0, "Defualt"),
    Gloss(1, "Gloss"),
    Shimmer(2, "Shimmer"),
    Combine_Gloss_Shimmer(3, "Combine_Gloss_Shimmer");
    
    public String name;
    public int value;

    LipsDetailType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
