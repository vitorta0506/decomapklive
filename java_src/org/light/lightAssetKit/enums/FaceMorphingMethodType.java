package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum FaceMorphingMethodType {
    Morphing(0, "morphing"),
    SeparateMorphing(1, "separate_morphing"),
    RefineMorphing(2, "refine_morphing");
    
    public String name;
    public int value;

    FaceMorphingMethodType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
