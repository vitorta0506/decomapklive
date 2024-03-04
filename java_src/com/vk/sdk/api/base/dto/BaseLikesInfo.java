package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "", "canLike", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "userLikes", "canPublish", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;IILcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getCanLike", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCanPublish", "getCount", "()I", "getUserLikes", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLikesInfo {
    @SerializedName("can_like")
    @NotNull
    private final BaseBoolInt canLike;
    @SerializedName("can_publish")
    @Nullable
    private final BaseBoolInt canPublish;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("user_likes")
    private final int userLikes;

    public BaseLikesInfo(@NotNull BaseBoolInt canLike, int i9, int i10, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(canLike, "canLike");
        this.canLike = canLike;
        this.count = i9;
        this.userLikes = i10;
        this.canPublish = baseBoolInt;
    }

    public static /* synthetic */ BaseLikesInfo copy$default(BaseLikesInfo baseLikesInfo, BaseBoolInt baseBoolInt, int i9, int i10, BaseBoolInt baseBoolInt2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            baseBoolInt = baseLikesInfo.canLike;
        }
        if ((i11 & 2) != 0) {
            i9 = baseLikesInfo.count;
        }
        if ((i11 & 4) != 0) {
            i10 = baseLikesInfo.userLikes;
        }
        if ((i11 & 8) != 0) {
            baseBoolInt2 = baseLikesInfo.canPublish;
        }
        return baseLikesInfo.copy(baseBoolInt, i9, i10, baseBoolInt2);
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.canLike;
    }

    public final int component2() {
        return this.count;
    }

    public final int component3() {
        return this.userLikes;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.canPublish;
    }

    @NotNull
    public final BaseLikesInfo copy(@NotNull BaseBoolInt canLike, int i9, int i10, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(canLike, "canLike");
        return new BaseLikesInfo(canLike, i9, i10, baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLikesInfo) {
            BaseLikesInfo baseLikesInfo = (BaseLikesInfo) obj;
            return this.canLike == baseLikesInfo.canLike && this.count == baseLikesInfo.count && this.userLikes == baseLikesInfo.userLikes && this.canPublish == baseLikesInfo.canPublish;
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getCanLike() {
        return this.canLike;
    }

    @Nullable
    public final BaseBoolInt getCanPublish() {
        return this.canPublish;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getUserLikes() {
        return this.userLikes;
    }

    public int hashCode() {
        int hashCode = ((((this.canLike.hashCode() * 31) + this.count) * 31) + this.userLikes) * 31;
        BaseBoolInt baseBoolInt = this.canPublish;
        return hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode());
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.canLike;
        int i9 = this.count;
        int i10 = this.userLikes;
        BaseBoolInt baseBoolInt2 = this.canPublish;
        return "BaseLikesInfo(canLike=" + baseBoolInt + ", count=" + i9 + ", userLikes=" + i10 + ", canPublish=" + baseBoolInt2 + ")";
    }

    public /* synthetic */ BaseLikesInfo(BaseBoolInt baseBoolInt, int i9, int i10, BaseBoolInt baseBoolInt2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseBoolInt, i9, i10, (i11 & 8) != 0 ? null : baseBoolInt2);
    }
}
