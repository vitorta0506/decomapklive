package org.light.lightAssetKit.enums;

import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
/* loaded from: classes7.dex */
public enum BlendModeType {
    Default(0, V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND),
    Normal(1, "normal"),
    Multiply(2, "multiply"),
    Screen(3, "screen"),
    Overlay(4, "overlay"),
    Hardlight(5, "hardlight"),
    Softlight(6, "softlight"),
    Divide(7, "divide"),
    Add(8, "add"),
    Substract(9, "substract"),
    Diff(10, "diff"),
    Darken(11, "darken"),
    Lighten(12, "lighten"),
    V7_0(13, "v7_0"),
    V7_1021(14, "v7_1021"),
    V7_1017(15, "v7_1017");
    
    public String name;
    public int value;

    BlendModeType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
