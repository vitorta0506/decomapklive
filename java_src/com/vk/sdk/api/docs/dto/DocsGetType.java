package com.vk.sdk.api.docs.dto;

import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsGetType;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ALL", "TEXT", "ARCHIVE", "GIF", ShareConstants.IMAGE_URL, "AUDIO", ShareConstants.VIDEO_URL, "EBOOK", "DEFAULT", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum DocsGetType {
    ALL(0),
    TEXT(1),
    ARCHIVE(2),
    GIF(3),
    IMAGE(4),
    AUDIO(5),
    VIDEO(6),
    EBOOK(7),
    DEFAULT(8);
    
    private final int value;

    DocsGetType(int i9) {
        this.value = i9;
    }

    public final int getValue() {
        return this.value;
    }
}
