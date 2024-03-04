package com.vk.sdk.api.likes.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/likes/dto/LikesIsLikedResponse;", "", "liked", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "copied", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getCopied", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getLiked", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LikesIsLikedResponse {
    @SerializedName("copied")
    @NotNull
    private final BaseBoolInt copied;
    @SerializedName("liked")
    @NotNull
    private final BaseBoolInt liked;

    public LikesIsLikedResponse(@NotNull BaseBoolInt liked, @NotNull BaseBoolInt copied) {
        Intrinsics.checkNotNullParameter(liked, "liked");
        Intrinsics.checkNotNullParameter(copied, "copied");
        this.liked = liked;
        this.copied = copied;
    }

    public static /* synthetic */ LikesIsLikedResponse copy$default(LikesIsLikedResponse likesIsLikedResponse, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = likesIsLikedResponse.liked;
        }
        if ((i9 & 2) != 0) {
            baseBoolInt2 = likesIsLikedResponse.copied;
        }
        return likesIsLikedResponse.copy(baseBoolInt, baseBoolInt2);
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.liked;
    }

    @NotNull
    public final BaseBoolInt component2() {
        return this.copied;
    }

    @NotNull
    public final LikesIsLikedResponse copy(@NotNull BaseBoolInt liked, @NotNull BaseBoolInt copied) {
        Intrinsics.checkNotNullParameter(liked, "liked");
        Intrinsics.checkNotNullParameter(copied, "copied");
        return new LikesIsLikedResponse(liked, copied);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LikesIsLikedResponse) {
            LikesIsLikedResponse likesIsLikedResponse = (LikesIsLikedResponse) obj;
            return this.liked == likesIsLikedResponse.liked && this.copied == likesIsLikedResponse.copied;
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getCopied() {
        return this.copied;
    }

    @NotNull
    public final BaseBoolInt getLiked() {
        return this.liked;
    }

    public int hashCode() {
        return (this.liked.hashCode() * 31) + this.copied.hashCode();
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.liked;
        BaseBoolInt baseBoolInt2 = this.copied;
        return "LikesIsLikedResponse(liked=" + baseBoolInt + ", copied=" + baseBoolInt2 + ")";
    }
}
