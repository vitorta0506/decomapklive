package com.linecorp.linesdk.message.flex.component;

import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public enum FlexMessageComponent$Size {
    XXS("xxs"),
    XS("xs"),
    SM("sm"),
    MD("md"),
    LG("lg"),
    XL("xl"),
    XXL("xxl"),
    XL3("3xl"),
    XL4("4xl"),
    XL5("5xl"),
    FULL("full");
    
    private String value;

    FlexMessageComponent$Size(@NonNull String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
