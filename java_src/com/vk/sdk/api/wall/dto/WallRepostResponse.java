package com.vk.sdk.api.wall.dto;

import com.facebook.GraphResponse;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJN\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000bR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0012\u0010\r¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallRepostResponse;", "", GraphResponse.SUCCESS_KEY, "", ShareConstants.RESULT_POST_ID, "repostsCount", "likesCount", "wallRepostCount", "mailRepostCount", "(IIIILjava/lang/Integer;Ljava/lang/Integer;)V", "getLikesCount", "()I", "getMailRepostCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPostId", "getRepostsCount", "getSuccess", "getWallRepostCount", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(IIIILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/wall/dto/WallRepostResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallRepostResponse {
    @SerializedName("likes_count")
    private final int likesCount;
    @SerializedName("mail_repost_count")
    @Nullable
    private final Integer mailRepostCount;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    private final int postId;
    @SerializedName("reposts_count")
    private final int repostsCount;
    @SerializedName(GraphResponse.SUCCESS_KEY)
    private final int success;
    @SerializedName("wall_repost_count")
    @Nullable
    private final Integer wallRepostCount;

    public WallRepostResponse(int i9, int i10, int i11, int i12, @Nullable Integer num, @Nullable Integer num2) {
        this.success = i9;
        this.postId = i10;
        this.repostsCount = i11;
        this.likesCount = i12;
        this.wallRepostCount = num;
        this.mailRepostCount = num2;
    }

    public static /* synthetic */ WallRepostResponse copy$default(WallRepostResponse wallRepostResponse, int i9, int i10, int i11, int i12, Integer num, Integer num2, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i9 = wallRepostResponse.success;
        }
        if ((i13 & 2) != 0) {
            i10 = wallRepostResponse.postId;
        }
        int i14 = i10;
        if ((i13 & 4) != 0) {
            i11 = wallRepostResponse.repostsCount;
        }
        int i15 = i11;
        if ((i13 & 8) != 0) {
            i12 = wallRepostResponse.likesCount;
        }
        int i16 = i12;
        if ((i13 & 16) != 0) {
            num = wallRepostResponse.wallRepostCount;
        }
        Integer num3 = num;
        if ((i13 & 32) != 0) {
            num2 = wallRepostResponse.mailRepostCount;
        }
        return wallRepostResponse.copy(i9, i14, i15, i16, num3, num2);
    }

    public final int component1() {
        return this.success;
    }

    public final int component2() {
        return this.postId;
    }

    public final int component3() {
        return this.repostsCount;
    }

    public final int component4() {
        return this.likesCount;
    }

    @Nullable
    public final Integer component5() {
        return this.wallRepostCount;
    }

    @Nullable
    public final Integer component6() {
        return this.mailRepostCount;
    }

    @NotNull
    public final WallRepostResponse copy(int i9, int i10, int i11, int i12, @Nullable Integer num, @Nullable Integer num2) {
        return new WallRepostResponse(i9, i10, i11, i12, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallRepostResponse) {
            WallRepostResponse wallRepostResponse = (WallRepostResponse) obj;
            return this.success == wallRepostResponse.success && this.postId == wallRepostResponse.postId && this.repostsCount == wallRepostResponse.repostsCount && this.likesCount == wallRepostResponse.likesCount && Intrinsics.areEqual(this.wallRepostCount, wallRepostResponse.wallRepostCount) && Intrinsics.areEqual(this.mailRepostCount, wallRepostResponse.mailRepostCount);
        }
        return false;
    }

    public final int getLikesCount() {
        return this.likesCount;
    }

    @Nullable
    public final Integer getMailRepostCount() {
        return this.mailRepostCount;
    }

    public final int getPostId() {
        return this.postId;
    }

    public final int getRepostsCount() {
        return this.repostsCount;
    }

    public final int getSuccess() {
        return this.success;
    }

    @Nullable
    public final Integer getWallRepostCount() {
        return this.wallRepostCount;
    }

    public int hashCode() {
        int i9 = ((((((this.success * 31) + this.postId) * 31) + this.repostsCount) * 31) + this.likesCount) * 31;
        Integer num = this.wallRepostCount;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.mailRepostCount;
        return hashCode + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.success;
        int i10 = this.postId;
        int i11 = this.repostsCount;
        int i12 = this.likesCount;
        Integer num = this.wallRepostCount;
        Integer num2 = this.mailRepostCount;
        return "WallRepostResponse(success=" + i9 + ", postId=" + i10 + ", repostsCount=" + i11 + ", likesCount=" + i12 + ", wallRepostCount=" + num + ", mailRepostCount=" + num2 + ")";
    }

    public /* synthetic */ WallRepostResponse(int i9, int i10, int i11, int i12, Integer num, Integer num2, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, i12, (i13 & 16) != 0 ? null : num, (i13 & 32) != 0 ? null : num2);
    }
}
