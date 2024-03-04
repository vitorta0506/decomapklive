package org.light.lightAssetKit.enums;

import com.guochao.faceshow.aaspring.utils.Constants;
/* loaded from: classes7.dex */
public enum BrushTriggerType {
    Point(0, "Point"),
    Line(1, Constants.ThirdPartyLogin.PLATFORM_LINE);
    
    public String name;
    public int value;

    BrushTriggerType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
