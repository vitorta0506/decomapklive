package com.vk.sdk.api.appWidgets.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsUpdateType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "COMPACT_LIST", "COVER_LIST", "DONATION", "LIST", "MATCH", "MATCHES", "TABLE", "TEXT", "TILES", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AppWidgetsUpdateType {
    COMPACT_LIST("compact_list"),
    COVER_LIST("cover_list"),
    DONATION("donation"),
    LIST("list"),
    MATCH("match"),
    MATCHES("matches"),
    TABLE("table"),
    TEXT(ViewHierarchyConstants.TEXT_KEY),
    TILES("tiles");
    
    @NotNull
    private final String value;

    AppWidgetsUpdateType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
