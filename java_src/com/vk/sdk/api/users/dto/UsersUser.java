package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseSex;
import com.vk.sdk.api.friends.dto.FriendsFriendStatusStatus;
import com.vk.sdk.api.friends.dto.FriendsRequestsMutual;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b9\b\u0086\b\u0018\u00002\u00020\u0001Bå\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0002\u0010\u001eJ\t\u0010<\u001a\u00020\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010C\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010(J\u000b\u0010D\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010E\u001a\u0004\u0018\u00010\u001cHÆ\u0003¢\u0006\u0002\u0010 J\u0010\u0010F\u001a\u0004\u0018\u00010\u001cHÆ\u0003¢\u0006\u0002\u0010 J\u000b\u0010G\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010(Jð\u0001\u0010O\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001cHÆ\u0001¢\u0006\u0002\u0010PJ\u0013\u0010Q\u001a\u00020\u001c2\b\u0010R\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010S\u001a\u00020\u0010HÖ\u0001J\t\u0010T\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001f\u0010 R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001d\u0010 R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010#R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b1\u0010(R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00100R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010#R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010#R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010#R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u00100R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u00100¨\u0006U"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersUser;", "", "id", "Lcom/vk/dto/common/id/UserId;", "sex", "Lcom/vk/sdk/api/base/dto/BaseSex;", "screenName", "", "photo50", "photo100", "onlineInfo", "Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;", "online", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "onlineMobile", "onlineApp", "", "verified", "trending", "friendStatus", "Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", "mutual", "Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;", "deactivated", "firstName", "hidden", "lastName", "canAccessClosed", "", "isClosed", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/base/dto/BaseSex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getCanAccessClosed", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getDeactivated", "()Ljava/lang/String;", "getFirstName", "getFriendStatus", "()Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", "getHidden", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "()Lcom/vk/dto/common/id/UserId;", "getLastName", "getMutual", "()Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;", "getOnline", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getOnlineApp", "getOnlineInfo", "()Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;", "getOnlineMobile", "getPhoto100", "getPhoto50", "getScreenName", "getSex", "()Lcom/vk/sdk/api/base/dto/BaseSex;", "getTrending", "getVerified", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/base/dto/BaseSex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/users/dto/UsersUser;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersUser {
    @SerializedName("can_access_closed")
    @Nullable
    private final Boolean canAccessClosed;
    @SerializedName("deactivated")
    @Nullable
    private final String deactivated;
    @SerializedName("first_name")
    @Nullable
    private final String firstName;
    @SerializedName("friend_status")
    @Nullable
    private final FriendsFriendStatusStatus friendStatus;
    @SerializedName("hidden")
    @Nullable
    private final Integer hidden;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final UserId f36108id;
    @SerializedName("is_closed")
    @Nullable
    private final Boolean isClosed;
    @SerializedName("last_name")
    @Nullable
    private final String lastName;
    @SerializedName("mutual")
    @Nullable
    private final FriendsRequestsMutual mutual;
    @SerializedName("online")
    @Nullable
    private final BaseBoolInt online;
    @SerializedName("online_app")
    @Nullable
    private final Integer onlineApp;
    @SerializedName("online_info")
    @Nullable
    private final UsersOnlineInfo onlineInfo;
    @SerializedName("online_mobile")
    @Nullable
    private final BaseBoolInt onlineMobile;
    @SerializedName("photo_100")
    @Nullable
    private final String photo100;
    @SerializedName("photo_50")
    @Nullable
    private final String photo50;
    @SerializedName("screen_name")
    @Nullable
    private final String screenName;
    @SerializedName("sex")
    @Nullable
    private final BaseSex sex;
    @SerializedName("trending")
    @Nullable
    private final BaseBoolInt trending;
    @SerializedName("verified")
    @Nullable
    private final BaseBoolInt verified;

    public UsersUser(@NotNull UserId id2, @Nullable BaseSex baseSex, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable UsersOnlineInfo usersOnlineInfo, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable FriendsFriendStatusStatus friendsFriendStatusStatus, @Nullable FriendsRequestsMutual friendsRequestsMutual, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable String str6, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f36108id = id2;
        this.sex = baseSex;
        this.screenName = str;
        this.photo50 = str2;
        this.photo100 = str3;
        this.onlineInfo = usersOnlineInfo;
        this.online = baseBoolInt;
        this.onlineMobile = baseBoolInt2;
        this.onlineApp = num;
        this.verified = baseBoolInt3;
        this.trending = baseBoolInt4;
        this.friendStatus = friendsFriendStatusStatus;
        this.mutual = friendsRequestsMutual;
        this.deactivated = str4;
        this.firstName = str5;
        this.hidden = num2;
        this.lastName = str6;
        this.canAccessClosed = bool;
        this.isClosed = bool2;
    }

    @NotNull
    public final UserId component1() {
        return this.f36108id;
    }

    @Nullable
    public final BaseBoolInt component10() {
        return this.verified;
    }

    @Nullable
    public final BaseBoolInt component11() {
        return this.trending;
    }

    @Nullable
    public final FriendsFriendStatusStatus component12() {
        return this.friendStatus;
    }

    @Nullable
    public final FriendsRequestsMutual component13() {
        return this.mutual;
    }

    @Nullable
    public final String component14() {
        return this.deactivated;
    }

    @Nullable
    public final String component15() {
        return this.firstName;
    }

    @Nullable
    public final Integer component16() {
        return this.hidden;
    }

    @Nullable
    public final String component17() {
        return this.lastName;
    }

    @Nullable
    public final Boolean component18() {
        return this.canAccessClosed;
    }

    @Nullable
    public final Boolean component19() {
        return this.isClosed;
    }

    @Nullable
    public final BaseSex component2() {
        return this.sex;
    }

    @Nullable
    public final String component3() {
        return this.screenName;
    }

    @Nullable
    public final String component4() {
        return this.photo50;
    }

    @Nullable
    public final String component5() {
        return this.photo100;
    }

    @Nullable
    public final UsersOnlineInfo component6() {
        return this.onlineInfo;
    }

    @Nullable
    public final BaseBoolInt component7() {
        return this.online;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.onlineMobile;
    }

    @Nullable
    public final Integer component9() {
        return this.onlineApp;
    }

    @NotNull
    public final UsersUser copy(@NotNull UserId id2, @Nullable BaseSex baseSex, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable UsersOnlineInfo usersOnlineInfo, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable FriendsFriendStatusStatus friendsFriendStatusStatus, @Nullable FriendsRequestsMutual friendsRequestsMutual, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable String str6, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        return new UsersUser(id2, baseSex, str, str2, str3, usersOnlineInfo, baseBoolInt, baseBoolInt2, num, baseBoolInt3, baseBoolInt4, friendsFriendStatusStatus, friendsRequestsMutual, str4, str5, num2, str6, bool, bool2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersUser) {
            UsersUser usersUser = (UsersUser) obj;
            return Intrinsics.areEqual(this.f36108id, usersUser.f36108id) && this.sex == usersUser.sex && Intrinsics.areEqual(this.screenName, usersUser.screenName) && Intrinsics.areEqual(this.photo50, usersUser.photo50) && Intrinsics.areEqual(this.photo100, usersUser.photo100) && Intrinsics.areEqual(this.onlineInfo, usersUser.onlineInfo) && this.online == usersUser.online && this.onlineMobile == usersUser.onlineMobile && Intrinsics.areEqual(this.onlineApp, usersUser.onlineApp) && this.verified == usersUser.verified && this.trending == usersUser.trending && this.friendStatus == usersUser.friendStatus && Intrinsics.areEqual(this.mutual, usersUser.mutual) && Intrinsics.areEqual(this.deactivated, usersUser.deactivated) && Intrinsics.areEqual(this.firstName, usersUser.firstName) && Intrinsics.areEqual(this.hidden, usersUser.hidden) && Intrinsics.areEqual(this.lastName, usersUser.lastName) && Intrinsics.areEqual(this.canAccessClosed, usersUser.canAccessClosed) && Intrinsics.areEqual(this.isClosed, usersUser.isClosed);
        }
        return false;
    }

    @Nullable
    public final Boolean getCanAccessClosed() {
        return this.canAccessClosed;
    }

    @Nullable
    public final String getDeactivated() {
        return this.deactivated;
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @Nullable
    public final FriendsFriendStatusStatus getFriendStatus() {
        return this.friendStatus;
    }

    @Nullable
    public final Integer getHidden() {
        return this.hidden;
    }

    @NotNull
    public final UserId getId() {
        return this.f36108id;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    @Nullable
    public final FriendsRequestsMutual getMutual() {
        return this.mutual;
    }

    @Nullable
    public final BaseBoolInt getOnline() {
        return this.online;
    }

    @Nullable
    public final Integer getOnlineApp() {
        return this.onlineApp;
    }

    @Nullable
    public final UsersOnlineInfo getOnlineInfo() {
        return this.onlineInfo;
    }

    @Nullable
    public final BaseBoolInt getOnlineMobile() {
        return this.onlineMobile;
    }

    @Nullable
    public final String getPhoto100() {
        return this.photo100;
    }

    @Nullable
    public final String getPhoto50() {
        return this.photo50;
    }

    @Nullable
    public final String getScreenName() {
        return this.screenName;
    }

    @Nullable
    public final BaseSex getSex() {
        return this.sex;
    }

    @Nullable
    public final BaseBoolInt getTrending() {
        return this.trending;
    }

    @Nullable
    public final BaseBoolInt getVerified() {
        return this.verified;
    }

    public int hashCode() {
        int hashCode = this.f36108id.hashCode() * 31;
        BaseSex baseSex = this.sex;
        int hashCode2 = (hashCode + (baseSex == null ? 0 : baseSex.hashCode())) * 31;
        String str = this.screenName;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photo50;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo100;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        UsersOnlineInfo usersOnlineInfo = this.onlineInfo;
        int hashCode6 = (hashCode5 + (usersOnlineInfo == null ? 0 : usersOnlineInfo.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.online;
        int hashCode7 = (hashCode6 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.onlineMobile;
        int hashCode8 = (hashCode7 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        Integer num = this.onlineApp;
        int hashCode9 = (hashCode8 + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.verified;
        int hashCode10 = (hashCode9 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.trending;
        int hashCode11 = (hashCode10 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        FriendsFriendStatusStatus friendsFriendStatusStatus = this.friendStatus;
        int hashCode12 = (hashCode11 + (friendsFriendStatusStatus == null ? 0 : friendsFriendStatusStatus.hashCode())) * 31;
        FriendsRequestsMutual friendsRequestsMutual = this.mutual;
        int hashCode13 = (hashCode12 + (friendsRequestsMutual == null ? 0 : friendsRequestsMutual.hashCode())) * 31;
        String str4 = this.deactivated;
        int hashCode14 = (hashCode13 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.firstName;
        int hashCode15 = (hashCode14 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.hidden;
        int hashCode16 = (hashCode15 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str6 = this.lastName;
        int hashCode17 = (hashCode16 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Boolean bool = this.canAccessClosed;
        int hashCode18 = (hashCode17 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isClosed;
        return hashCode18 + (bool2 != null ? bool2.hashCode() : 0);
    }

    @Nullable
    public final Boolean isClosed() {
        return this.isClosed;
    }

    @NotNull
    public String toString() {
        UserId userId = this.f36108id;
        BaseSex baseSex = this.sex;
        String str = this.screenName;
        String str2 = this.photo50;
        String str3 = this.photo100;
        UsersOnlineInfo usersOnlineInfo = this.onlineInfo;
        BaseBoolInt baseBoolInt = this.online;
        BaseBoolInt baseBoolInt2 = this.onlineMobile;
        Integer num = this.onlineApp;
        BaseBoolInt baseBoolInt3 = this.verified;
        BaseBoolInt baseBoolInt4 = this.trending;
        FriendsFriendStatusStatus friendsFriendStatusStatus = this.friendStatus;
        FriendsRequestsMutual friendsRequestsMutual = this.mutual;
        String str4 = this.deactivated;
        String str5 = this.firstName;
        Integer num2 = this.hidden;
        String str6 = this.lastName;
        Boolean bool = this.canAccessClosed;
        Boolean bool2 = this.isClosed;
        return "UsersUser(id=" + userId + ", sex=" + baseSex + ", screenName=" + str + ", photo50=" + str2 + ", photo100=" + str3 + ", onlineInfo=" + usersOnlineInfo + ", online=" + baseBoolInt + ", onlineMobile=" + baseBoolInt2 + ", onlineApp=" + num + ", verified=" + baseBoolInt3 + ", trending=" + baseBoolInt4 + ", friendStatus=" + friendsFriendStatusStatus + ", mutual=" + friendsRequestsMutual + ", deactivated=" + str4 + ", firstName=" + str5 + ", hidden=" + num2 + ", lastName=" + str6 + ", canAccessClosed=" + bool + ", isClosed=" + bool2 + ")";
    }

    public /* synthetic */ UsersUser(UserId userId, BaseSex baseSex, String str, String str2, String str3, UsersOnlineInfo usersOnlineInfo, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, Integer num, BaseBoolInt baseBoolInt3, BaseBoolInt baseBoolInt4, FriendsFriendStatusStatus friendsFriendStatusStatus, FriendsRequestsMutual friendsRequestsMutual, String str4, String str5, Integer num2, String str6, Boolean bool, Boolean bool2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, (i9 & 2) != 0 ? null : baseSex, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : str2, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : usersOnlineInfo, (i9 & 64) != 0 ? null : baseBoolInt, (i9 & 128) != 0 ? null : baseBoolInt2, (i9 & 256) != 0 ? null : num, (i9 & 512) != 0 ? null : baseBoolInt3, (i9 & 1024) != 0 ? null : baseBoolInt4, (i9 & 2048) != 0 ? null : friendsFriendStatusStatus, (i9 & 4096) != 0 ? null : friendsRequestsMutual, (i9 & 8192) != 0 ? null : str4, (i9 & 16384) != 0 ? null : str5, (i9 & 32768) != 0 ? null : num2, (i9 & 65536) != 0 ? null : str6, (i9 & 131072) != 0 ? null : bool, (i9 & 262144) == 0 ? bool2 : null);
    }
}
