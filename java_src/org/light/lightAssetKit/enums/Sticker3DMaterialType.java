package org.light.lightAssetKit.enums;

import com.guochao.faceshow.aaspring.utils.Language;
/* loaded from: classes7.dex */
public enum Sticker3DMaterialType {
    Normal(0, "normal"),
    AR(1, Language.ARABIC);
    
    public String name;
    public int value;

    Sticker3DMaterialType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
