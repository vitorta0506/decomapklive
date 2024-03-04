package com.linecorp.linesdk.message.template;

import com.vk.api.sdk.exceptions.VKApiCodes;
/* loaded from: classes4.dex */
public enum Type {
    BUTTONS("buttons"),
    CONFIRM(VKApiCodes.EXTRA_CONFIRM),
    CAROUSEL("carousel"),
    IMAGE_CAROUSEL("image_carousel");
    
    private final String serverKey;

    Type(String str) {
        this.serverKey = str;
    }

    public String getServerKey() {
        return this.serverKey;
    }
}
