package com.vk.sdk.api.video.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.TCConstants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0014JV\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\nHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoSaveResult;", "", "accessKey", "", "description", "ownerId", "Lcom/vk/dto/common/id/UserId;", "title", "uploadUrl", "videoId", "", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getDescription", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "getUploadUrl", "getVideoId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/video/dto/VideoSaveResult;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoSaveResult {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("upload_url")
    @Nullable
    private final String uploadUrl;
    @SerializedName(TCConstants.PLAYER_VIDEO_ID)
    @Nullable
    private final Integer videoId;

    public VideoSaveResult() {
        this(null, null, null, null, null, null, 63, null);
    }

    public VideoSaveResult(@Nullable String str, @Nullable String str2, @Nullable UserId userId, @Nullable String str3, @Nullable String str4, @Nullable Integer num) {
        this.accessKey = str;
        this.description = str2;
        this.ownerId = userId;
        this.title = str3;
        this.uploadUrl = str4;
        this.videoId = num;
    }

    public static /* synthetic */ VideoSaveResult copy$default(VideoSaveResult videoSaveResult, String str, String str2, UserId userId, String str3, String str4, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = videoSaveResult.accessKey;
        }
        if ((i9 & 2) != 0) {
            str2 = videoSaveResult.description;
        }
        String str5 = str2;
        if ((i9 & 4) != 0) {
            userId = videoSaveResult.ownerId;
        }
        UserId userId2 = userId;
        if ((i9 & 8) != 0) {
            str3 = videoSaveResult.title;
        }
        String str6 = str3;
        if ((i9 & 16) != 0) {
            str4 = videoSaveResult.uploadUrl;
        }
        String str7 = str4;
        if ((i9 & 32) != 0) {
            num = videoSaveResult.videoId;
        }
        return videoSaveResult.copy(str, str5, userId2, str6, str7, num);
    }

    @Nullable
    public final String component1() {
        return this.accessKey;
    }

    @Nullable
    public final String component2() {
        return this.description;
    }

    @Nullable
    public final UserId component3() {
        return this.ownerId;
    }

    @Nullable
    public final String component4() {
        return this.title;
    }

    @Nullable
    public final String component5() {
        return this.uploadUrl;
    }

    @Nullable
    public final Integer component6() {
        return this.videoId;
    }

    @NotNull
    public final VideoSaveResult copy(@Nullable String str, @Nullable String str2, @Nullable UserId userId, @Nullable String str3, @Nullable String str4, @Nullable Integer num) {
        return new VideoSaveResult(str, str2, userId, str3, str4, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSaveResult) {
            VideoSaveResult videoSaveResult = (VideoSaveResult) obj;
            return Intrinsics.areEqual(this.accessKey, videoSaveResult.accessKey) && Intrinsics.areEqual(this.description, videoSaveResult.description) && Intrinsics.areEqual(this.ownerId, videoSaveResult.ownerId) && Intrinsics.areEqual(this.title, videoSaveResult.title) && Intrinsics.areEqual(this.uploadUrl, videoSaveResult.uploadUrl) && Intrinsics.areEqual(this.videoId, videoSaveResult.videoId);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    @Nullable
    public final Integer getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        String str = this.accessKey;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        UserId userId = this.ownerId;
        int hashCode3 = (hashCode2 + (userId == null ? 0 : userId.hashCode())) * 31;
        String str3 = this.title;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.uploadUrl;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.videoId;
        return hashCode5 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.accessKey;
        String str2 = this.description;
        UserId userId = this.ownerId;
        String str3 = this.title;
        String str4 = this.uploadUrl;
        Integer num = this.videoId;
        return "VideoSaveResult(accessKey=" + str + ", description=" + str2 + ", ownerId=" + userId + ", title=" + str3 + ", uploadUrl=" + str4 + ", videoId=" + num + ")";
    }

    public /* synthetic */ VideoSaveResult(String str, String str2, UserId userId, String str3, String str4, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : userId, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : str4, (i9 & 32) != 0 ? null : num);
    }
}
