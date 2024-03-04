package com.guochao.faceshow.aaspring.modulars.videomatch;

import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;", "", "videoUrl", "", Contants.USER_ID, "videoId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "getVideoId", "setVideoId", "getVideoUrl", "setVideoUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoModel {
    @NotNull
    private String userId;
    @NotNull
    private String videoId;
    @NotNull
    private String videoUrl;

    public VideoModel(@NotNull String videoUrl, @NotNull String userId, @NotNull String videoId) {
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        this.videoUrl = videoUrl;
        this.userId = userId;
        this.videoId = videoId;
    }

    public static /* synthetic */ VideoModel copy$default(VideoModel videoModel, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = videoModel.videoUrl;
        }
        if ((i9 & 2) != 0) {
            str2 = videoModel.userId;
        }
        if ((i9 & 4) != 0) {
            str3 = videoModel.videoId;
        }
        return videoModel.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.videoUrl;
    }

    @NotNull
    public final String component2() {
        return this.userId;
    }

    @NotNull
    public final String component3() {
        return this.videoId;
    }

    @NotNull
    public final VideoModel copy(@NotNull String videoUrl, @NotNull String userId, @NotNull String videoId) {
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        return new VideoModel(videoUrl, userId, videoId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoModel) {
            VideoModel videoModel = (VideoModel) obj;
            return Intrinsics.areEqual(this.videoUrl, videoModel.videoUrl) && Intrinsics.areEqual(this.userId, videoModel.userId) && Intrinsics.areEqual(this.videoId, videoModel.videoId);
        }
        return false;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final String getVideoId() {
        return this.videoId;
    }

    @NotNull
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        return (((this.videoUrl.hashCode() * 31) + this.userId.hashCode()) * 31) + this.videoId.hashCode();
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    public final void setVideoId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.videoId = str;
    }

    public final void setVideoUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.videoUrl = str;
    }

    @NotNull
    public String toString() {
        return "VideoModel(videoUrl=" + this.videoUrl + ", userId=" + this.userId + ", videoId=" + this.videoId + ')';
    }
}
