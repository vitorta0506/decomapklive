package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseUploadServer;", "", "uploadUrl", "", "(Ljava/lang/String;)V", "getUploadUrl", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseUploadServer {
    @SerializedName("upload_url")
    @NotNull
    private final String uploadUrl;

    public BaseUploadServer(@NotNull String uploadUrl) {
        Intrinsics.checkNotNullParameter(uploadUrl, "uploadUrl");
        this.uploadUrl = uploadUrl;
    }

    public static /* synthetic */ BaseUploadServer copy$default(BaseUploadServer baseUploadServer, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = baseUploadServer.uploadUrl;
        }
        return baseUploadServer.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.uploadUrl;
    }

    @NotNull
    public final BaseUploadServer copy(@NotNull String uploadUrl) {
        Intrinsics.checkNotNullParameter(uploadUrl, "uploadUrl");
        return new BaseUploadServer(uploadUrl);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BaseUploadServer) && Intrinsics.areEqual(this.uploadUrl, ((BaseUploadServer) obj).uploadUrl);
    }

    @NotNull
    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    public int hashCode() {
        return this.uploadUrl.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.uploadUrl;
        return "BaseUploadServer(uploadUrl=" + str + ")";
    }
}
