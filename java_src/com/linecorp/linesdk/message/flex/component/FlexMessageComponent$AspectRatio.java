package com.linecorp.linesdk.message.flex.component;

import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public enum FlexMessageComponent$AspectRatio {
    RATIO_1x1("1:1"),
    RATIO_1_51x1("1.51:1"),
    RATIO_1_91x1("1.91:1"),
    RATIO_4x3("4:3"),
    RATIO_16x9("16:9"),
    RATIO_20x13("20:13"),
    RATIO_2x1("2:1"),
    RATIO_3x1("3:1"),
    RATIO_3x4("3:4"),
    RATIO_9x16("9:16"),
    RATIO_1x2("1:2"),
    RATIO_1x3("1:3");
    
    private String value;

    FlexMessageComponent$AspectRatio(@NonNull String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
