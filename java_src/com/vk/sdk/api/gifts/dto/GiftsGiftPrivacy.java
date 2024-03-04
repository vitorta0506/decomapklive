package com.vk.sdk.api.gifts.dto;

import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/gifts/dto/GiftsGiftPrivacy;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NAME_AND_MESSAGE_FOR_ALL", "NAME_FOR_ALL", "NAME_AND_MESSAGE_FOR_RECIPIENT_ONLY", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum GiftsGiftPrivacy {
    NAME_AND_MESSAGE_FOR_ALL(0),
    NAME_FOR_ALL(1),
    NAME_AND_MESSAGE_FOR_RECIPIENT_ONLY(2);
    
    private final int value;

    GiftsGiftPrivacy(int i9) {
        this.value = i9;
    }

    public final int getValue() {
        return this.value;
    }
}
