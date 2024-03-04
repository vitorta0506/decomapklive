package com.vk.sdk.api.appWidgets.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetGroupImageUploadServerResponse;", "", "uploadUrl", "", "(Ljava/lang/String;)V", "getUploadUrl", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppWidgetsGetGroupImageUploadServerResponse {
    @SerializedName("upload_url")
    @Nullable
    private final String uploadUrl;

    public AppWidgetsGetGroupImageUploadServerResponse() {
        this(null, 1, null);
    }

    public AppWidgetsGetGroupImageUploadServerResponse(@Nullable String str) {
        this.uploadUrl = str;
    }

    public static /* synthetic */ AppWidgetsGetGroupImageUploadServerResponse copy$default(AppWidgetsGetGroupImageUploadServerResponse appWidgetsGetGroupImageUploadServerResponse, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = appWidgetsGetGroupImageUploadServerResponse.uploadUrl;
        }
        return appWidgetsGetGroupImageUploadServerResponse.copy(str);
    }

    @Nullable
    public final String component1() {
        return this.uploadUrl;
    }

    @NotNull
    public final AppWidgetsGetGroupImageUploadServerResponse copy(@Nullable String str) {
        return new AppWidgetsGetGroupImageUploadServerResponse(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AppWidgetsGetGroupImageUploadServerResponse) && Intrinsics.areEqual(this.uploadUrl, ((AppWidgetsGetGroupImageUploadServerResponse) obj).uploadUrl);
    }

    @Nullable
    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    public int hashCode() {
        String str = this.uploadUrl;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.uploadUrl;
        return "AppWidgetsGetGroupImageUploadServerResponse(uploadUrl=" + str + ")";
    }

    public /* synthetic */ AppWidgetsGetGroupImageUploadServerResponse(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str);
    }
}
