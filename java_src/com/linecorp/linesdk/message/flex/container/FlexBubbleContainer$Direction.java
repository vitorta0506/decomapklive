package com.linecorp.linesdk.message.flex.container;
/* loaded from: classes4.dex */
public enum FlexBubbleContainer$Direction {
    LEFT_TO_RIGHT("ltr"),
    RIGHT_TO_LEFT("rtl");
    
    private String value;

    FlexBubbleContainer$Direction(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
