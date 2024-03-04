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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J:\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0006\u0010\rR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsFriendExtendedStatus;", "", "friendStatus", "Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "isRequestUnread", "", "sign", "", "(Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;)V", "getFriendStatus", "()Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getSign", "()Ljava/lang/String;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "component4", "copy", "(Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vk/sdk/api/friends/dto/FriendsFriendExtendedStatus;", "equals", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FriendsFriendExtendedStatus {
    @SerializedName("friend_status")
    @NotNull
    private final FriendsFriendStatusStatus friendStatus;
    @SerializedName("is_request_unread")
    @Nullable
    private final Boolean isRequestUnread;
    @SerializedName("sign")
    @Nullable
    private final String sign;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public FriendsFriendExtendedStatus(@NotNull FriendsFriendStatusStatus friendStatus, @NotNull UserId userId, @Nullable Boolean bool, @Nullable String str) {
        Intrinsics.checkNotNullParameter(friendStatus, "friendStatus");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.friendStatus = friendStatus;
        this.userId = userId;
        this.isRequestUnread = bool;
        this.sign = str;
    }

    public static /* synthetic */ FriendsFriendExtendedStatus copy$default(FriendsFriendExtendedStatus friendsFriendExtendedStatus, FriendsFriendStatusStatus friendsFriendStatusStatus, UserId userId, Boolean bool, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            friendsFriendStatusStatus = friendsFriendExtendedStatus.friendStatus;
        }
        if ((i9 & 2) != 0) {
            userId = friendsFriendExtendedStatus.userId;
        }
        if ((i9 & 4) != 0) {
            bool = friendsFriendExtendedStatus.isRequestUnread;
        }
        if ((i9 & 8) != 0) {
            str = friendsFriendExtendedStatus.sign;
        }
        return friendsFriendExtendedStatus.copy(friendsFriendStatusStatus, userId, bool, str);
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
    public final Boolean component3() {
        return this.isRequestUnread;
    }

    @Nullable
    public final String component4() {
        return this.sign;
    }

    @NotNull
    public final FriendsFriendExtendedStatus copy(@NotNull FriendsFriendStatusStatus friendStatus, @NotNull UserId userId, @Nullable Boolean bool, @Nullable String str) {
        Intrinsics.checkNotNullParameter(friendStatus, "friendStatus");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new FriendsFriendExtendedStatus(friendStatus, userId, bool, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendsFriendExtendedStatus) {
            FriendsFriendExtendedStatus friendsFriendExtendedStatus = (FriendsFriendExtendedStatus) obj;
            return this.friendStatus == friendsFriendExtendedStatus.friendStatus && Intrinsics.areEqual(this.userId, friendsFriendExtendedStatus.userId) && Intrinsics.areEqual(this.isRequestUnread, friendsFriendExtendedStatus.isRequestUnread) && Intrinsics.areEqual(this.sign, friendsFriendExtendedStatus.sign);
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
        Boolean bool = this.isRequestUnread;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.sign;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @Nullable
    public final Boolean isRequestUnread() {
        return this.isRequestUnread;
    }

    @NotNull
    public String toString() {
        FriendsFriendStatusStatus friendsFriendStatusStatus = this.friendStatus;
        UserId userId = this.userId;
        Boolean bool = this.isRequestUnread;
        String str = this.sign;
        return "FriendsFriendExtendedStatus(friendStatus=" + friendsFriendStatusStatus + ", userId=" + userId + ", isRequestUnread=" + bool + ", sign=" + str + ")";
    }

    public /* synthetic */ FriendsFriendExtendedStatus(FriendsFriendStatusStatus friendsFriendStatusStatus, UserId userId, Boolean bool, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(friendsFriendStatusStatus, userId, (i9 & 4) != 0 ? null : bool, (i9 & 8) != 0 ? null : str);
    }
}
