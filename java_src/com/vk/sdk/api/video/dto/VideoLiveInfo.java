package com.vk.sdk.api.video.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoLiveInfo;", "", "enabled", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "isNotificationsBlocked", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getEnabled", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoLiveInfo {
    @SerializedName("enabled")
    @NotNull
    private final BaseBoolInt enabled;
    @SerializedName("is_notifications_blocked")
    @Nullable
    private final BaseBoolInt isNotificationsBlocked;

    public VideoLiveInfo(@NotNull BaseBoolInt enabled, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        this.enabled = enabled;
        this.isNotificationsBlocked = baseBoolInt;
    }

    public static /* synthetic */ VideoLiveInfo copy$default(VideoLiveInfo videoLiveInfo, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = videoLiveInfo.enabled;
        }
        if ((i9 & 2) != 0) {
            baseBoolInt2 = videoLiveInfo.isNotificationsBlocked;
        }
        return videoLiveInfo.copy(baseBoolInt, baseBoolInt2);
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.enabled;
    }

    @Nullable
    public final BaseBoolInt component2() {
        return this.isNotificationsBlocked;
    }

    @NotNull
    public final VideoLiveInfo copy(@NotNull BaseBoolInt enabled, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        return new VideoLiveInfo(enabled, baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoLiveInfo) {
            VideoLiveInfo videoLiveInfo = (VideoLiveInfo) obj;
            return this.enabled == videoLiveInfo.enabled && this.isNotificationsBlocked == videoLiveInfo.isNotificationsBlocked;
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getEnabled() {
        return this.enabled;
    }

    public int hashCode() {
        int hashCode = this.enabled.hashCode() * 31;
        BaseBoolInt baseBoolInt = this.isNotificationsBlocked;
        return hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode());
    }

    @Nullable
    public final BaseBoolInt isNotificationsBlocked() {
        return this.isNotificationsBlocked;
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.enabled;
        BaseBoolInt baseBoolInt2 = this.isNotificationsBlocked;
        return "VideoLiveInfo(enabled=" + baseBoolInt + ", isNotificationsBlocked=" + baseBoolInt2 + ")";
    }

    public /* synthetic */ VideoLiveInfo(BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseBoolInt, (i9 & 2) != 0 ? null : baseBoolInt2);
    }
}
