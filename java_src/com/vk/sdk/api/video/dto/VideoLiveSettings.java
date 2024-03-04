package com.vk.sdk.api.video.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000bJ2\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\tR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoLiveSettings;", "", "canRewind", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "isEndless", "maxDuration", "", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;)V", "getCanRewind", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getMaxDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;)Lcom/vk/sdk/api/video/dto/VideoLiveSettings;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoLiveSettings {
    @SerializedName("can_rewind")
    @Nullable
    private final BaseBoolInt canRewind;
    @SerializedName("is_endless")
    @Nullable
    private final BaseBoolInt isEndless;
    @SerializedName("max_duration")
    @Nullable
    private final Integer maxDuration;

    public VideoLiveSettings() {
        this(null, null, null, 7, null);
    }

    public VideoLiveSettings(@Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num) {
        this.canRewind = baseBoolInt;
        this.isEndless = baseBoolInt2;
        this.maxDuration = num;
    }

    public static /* synthetic */ VideoLiveSettings copy$default(VideoLiveSettings videoLiveSettings, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = videoLiveSettings.canRewind;
        }
        if ((i9 & 2) != 0) {
            baseBoolInt2 = videoLiveSettings.isEndless;
        }
        if ((i9 & 4) != 0) {
            num = videoLiveSettings.maxDuration;
        }
        return videoLiveSettings.copy(baseBoolInt, baseBoolInt2, num);
    }

    @Nullable
    public final BaseBoolInt component1() {
        return this.canRewind;
    }

    @Nullable
    public final BaseBoolInt component2() {
        return this.isEndless;
    }

    @Nullable
    public final Integer component3() {
        return this.maxDuration;
    }

    @NotNull
    public final VideoLiveSettings copy(@Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num) {
        return new VideoLiveSettings(baseBoolInt, baseBoolInt2, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoLiveSettings) {
            VideoLiveSettings videoLiveSettings = (VideoLiveSettings) obj;
            return this.canRewind == videoLiveSettings.canRewind && this.isEndless == videoLiveSettings.isEndless && Intrinsics.areEqual(this.maxDuration, videoLiveSettings.maxDuration);
        }
        return false;
    }

    @Nullable
    public final BaseBoolInt getCanRewind() {
        return this.canRewind;
    }

    @Nullable
    public final Integer getMaxDuration() {
        return this.maxDuration;
    }

    public int hashCode() {
        BaseBoolInt baseBoolInt = this.canRewind;
        int hashCode = (baseBoolInt == null ? 0 : baseBoolInt.hashCode()) * 31;
        BaseBoolInt baseBoolInt2 = this.isEndless;
        int hashCode2 = (hashCode + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        Integer num = this.maxDuration;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    @Nullable
    public final BaseBoolInt isEndless() {
        return this.isEndless;
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.canRewind;
        BaseBoolInt baseBoolInt2 = this.isEndless;
        Integer num = this.maxDuration;
        return "VideoLiveSettings(canRewind=" + baseBoolInt + ", isEndless=" + baseBoolInt2 + ", maxDuration=" + num + ")";
    }

    public /* synthetic */ VideoLiveSettings(BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseBoolInt, (i9 & 2) != 0 ? null : baseBoolInt2, (i9 & 4) != 0 ? null : num);
    }
}
