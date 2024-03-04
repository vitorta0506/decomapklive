package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum LipsTextureType {
    Default(0, "Defualt"),
    Shuirun(1, "Shuirun"),
    Yaguang(2, "Yaguang"),
    Wumianyaguang(3, "Wumianyaguang");
    
    public String name;
    public int value;

    LipsTextureType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
