package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesGetVideoUploadServerResponse;", "", "uploadUrl", "", "userIds", "", "", "(Ljava/lang/String;Ljava/util/List;)V", "getUploadUrl", "()Ljava/lang/String;", "getUserIds", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesGetVideoUploadServerResponse {
    @SerializedName("upload_url")
    @NotNull
    private final String uploadUrl;
    @SerializedName("user_ids")
    @NotNull
    private final List<Integer> userIds;

    public StoriesGetVideoUploadServerResponse(@NotNull String uploadUrl, @NotNull List<Integer> userIds) {
        Intrinsics.checkNotNullParameter(uploadUrl, "uploadUrl");
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        this.uploadUrl = uploadUrl;
        this.userIds = userIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StoriesGetVideoUploadServerResponse copy$default(StoriesGetVideoUploadServerResponse storiesGetVideoUploadServerResponse, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = storiesGetVideoUploadServerResponse.uploadUrl;
        }
        if ((i9 & 2) != 0) {
            list = storiesGetVideoUploadServerResponse.userIds;
        }
        return storiesGetVideoUploadServerResponse.copy(str, list);
    }

    @NotNull
    public final String component1() {
        return this.uploadUrl;
    }

    @NotNull
    public final List<Integer> component2() {
        return this.userIds;
    }

    @NotNull
    public final StoriesGetVideoUploadServerResponse copy(@NotNull String uploadUrl, @NotNull List<Integer> userIds) {
        Intrinsics.checkNotNullParameter(uploadUrl, "uploadUrl");
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        return new StoriesGetVideoUploadServerResponse(uploadUrl, userIds);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesGetVideoUploadServerResponse) {
            StoriesGetVideoUploadServerResponse storiesGetVideoUploadServerResponse = (StoriesGetVideoUploadServerResponse) obj;
            return Intrinsics.areEqual(this.uploadUrl, storiesGetVideoUploadServerResponse.uploadUrl) && Intrinsics.areEqual(this.userIds, storiesGetVideoUploadServerResponse.userIds);
        }
        return false;
    }

    @NotNull
    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    @NotNull
    public final List<Integer> getUserIds() {
        return this.userIds;
    }

    public int hashCode() {
        return (this.uploadUrl.hashCode() * 31) + this.userIds.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.uploadUrl;
        List<Integer> list = this.userIds;
        return "StoriesGetVideoUploadServerResponse(uploadUrl=" + str + ", userIds=" + list + ")";
    }
}
