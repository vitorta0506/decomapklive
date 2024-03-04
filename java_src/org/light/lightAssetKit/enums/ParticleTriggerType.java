package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum ParticleTriggerType {
    NonStatic(0, "nonstatic"),
    Static(1, "static");
    
    public String name;
    public int value;

    ParticleTriggerType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
