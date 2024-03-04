package com.vk.sdk.api.appWidgets.dto;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetGroupImageUploadServerImageType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "SIXTEEN_0X160", "SIXTEEN_0X240", "TWENTY_FOUR_X24", "FIFTYZERO_X50", "FIFTY_ONE_0X128", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AppWidgetsGetGroupImageUploadServerImageType {
    SIXTEEN_0X160("160x160"),
    SIXTEEN_0X240("160x240"),
    TWENTY_FOUR_X24("24x24"),
    FIFTYZERO_X50("50x50"),
    FIFTY_ONE_0X128("510x128");
    
    @NotNull
    private final String value;

    AppWidgetsGetGroupImageUploadServerImageType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}