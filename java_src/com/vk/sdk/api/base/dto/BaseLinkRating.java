package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ&\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkRating;", "", "reviewsCount", "", "stars", "", "(Ljava/lang/Integer;Ljava/lang/Float;)V", "getReviewsCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStars", "()Ljava/lang/Float;", "Ljava/lang/Float;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/Float;)Lcom/vk/sdk/api/base/dto/BaseLinkRating;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLinkRating {
    @SerializedName("reviews_count")
    @Nullable
    private final Integer reviewsCount;
    @SerializedName("stars")
    @Nullable
    private final Float stars;

    public BaseLinkRating() {
        this(null, null, 3, null);
    }

    public BaseLinkRating(@Nullable Integer num, @Nullable Float f10) {
        this.reviewsCount = num;
        this.stars = f10;
    }

    public static /* synthetic */ BaseLinkRating copy$default(BaseLinkRating baseLinkRating, Integer num, Float f10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = baseLinkRating.reviewsCount;
        }
        if ((i9 & 2) != 0) {
            f10 = baseLinkRating.stars;
        }
        return baseLinkRating.copy(num, f10);
    }

    @Nullable
    public final Integer component1() {
        return this.reviewsCount;
    }

    @Nullable
    public final Float component2() {
        return this.stars;
    }

    @NotNull
    public final BaseLinkRating copy(@Nullable Integer num, @Nullable Float f10) {
        return new BaseLinkRating(num, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLinkRating) {
            BaseLinkRating baseLinkRating = (BaseLinkRating) obj;
            return Intrinsics.areEqual(this.reviewsCount, baseLinkRating.reviewsCount) && Intrinsics.areEqual((Object) this.stars, (Object) baseLinkRating.stars);
        }
        return false;
    }

    @Nullable
    public final Integer getReviewsCount() {
        return this.reviewsCount;
    }

    @Nullable
    public final Float getStars() {
        return this.stars;
    }

    public int hashCode() {
        Integer num = this.reviewsCount;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Float f10 = this.stars;
        return hashCode + (f10 != null ? f10.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.reviewsCount;
        Float f10 = this.stars;
        return "BaseLinkRating(reviewsCount=" + num + ", stars=" + f10 + ")";
    }

    public /* synthetic */ BaseLinkRating(Integer num, Float f10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : f10);
    }
}
