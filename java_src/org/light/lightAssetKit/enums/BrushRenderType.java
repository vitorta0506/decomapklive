package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum BrushRenderType {
    Static(0, "Static"),
    Dynamic(1, "Dynamic");
    
    public String name;
    public int value;

    BrushRenderType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
