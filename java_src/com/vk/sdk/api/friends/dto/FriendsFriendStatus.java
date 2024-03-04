package com.vk.sdk.api.friends.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsFriendStatus;", "", "friendStatus", "Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "sign", "", "(Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)V", "getFriendStatus", "()Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", "getSign", "()Ljava/lang/String;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FriendsFriendStatus {
    @SerializedName("friend_status")
    @NotNull
    private final FriendsFriendStatusStatus friendStatus;
    @SerializedName("sign")
    @Nullable
    private final String sign;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public FriendsFriendStatus(@NotNull FriendsFriendStatusStatus friendStatus, @NotNull UserId userId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(friendStatus, "friendStatus");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.friendStatus = friendStatus;
        this.userId = userId;
        this.sign = str;
    }

    public static /* synthetic */ FriendsFriendStatus copy$default(FriendsFriendStatus friendsFriendStatus, FriendsFriendStatusStatus friendsFriendStatusStatus, UserId userId, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            friendsFriendStatusStatus = friendsFriendStatus.friendStatus;
        }
        if ((i9 & 2) != 0) {
            userId = friendsFriendStatus.userId;
        }
        if ((i9 & 4) != 0) {
            str = friendsFriendStatus.sign;
        }
        return friendsFriendStatus.copy(friendsFriendStatusStatus, userId, str);
    }

    @NotNull
    public final FriendsFriendStatusStatus component1() {
        return this.friendStatus;
    }

    @NotNull
    public final UserId component2() {
        return this.userId;
    }

    @Nullable
    public final String component3() {
        return this.sign;
    }

    @NotNull
    public final FriendsFriendStatus copy(@NotNull FriendsFriendStatusStatus friendStatus, @NotNull UserId userId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(friendStatus, "friendStatus");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new FriendsFriendStatus(friendStatus, userId, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendsFriendStatus) {
            FriendsFriendStatus friendsFriendStatus = (FriendsFriendStatus) obj;
            return this.friendStatus == friendsFriendStatus.friendStatus && Intrinsics.areEqual(this.userId, friendsFriendStatus.userId) && Intrinsics.areEqual(this.sign, friendsFriendStatus.sign);
        }
        return false;
    }

    @NotNull
    public final FriendsFriendStatusStatus getFriendStatus() {
        return this.friendStatus;
    }

    @Nullable
    public final String getSign() {
        return this.sign;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((this.friendStatus.hashCode() * 31) + this.userId.hashCode()) * 31;
        String str = this.sign;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        FriendsFriendStatusStatus friendsFriendStatusStatus = this.friendStatus;
        UserId userId = this.userId;
        String str = this.sign;
        return "FriendsFriendStatus(friendStatus=" + friendsFriendStatusStatus + ", userId=" + userId + ", sign=" + str + ")";
    }

    public /* synthetic */ FriendsFriendStatus(FriendsFriendStatusStatus friendsFriendStatusStatus, UserId userId, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(friendsFriendStatusStatus, userId, (i9 & 4) != 0 ? null : str);
    }
}
