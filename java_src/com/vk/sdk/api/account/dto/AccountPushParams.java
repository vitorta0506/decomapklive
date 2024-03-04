package com.vk.sdk.api.account.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b6\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BÛ\u0002\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003¢\u0006\u0002\u0010\u0019J\u0011\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010/\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00100\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00102\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00104\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00105\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00106\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00107\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u00109\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003HÆ\u0003J\u0011\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003HÆ\u0003J\u0011\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003HÆ\u0003J\u0011\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0003HÆ\u0003J\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u0010@\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003Jß\u0002\u0010A\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00032\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0001J\u0013\u0010B\u001a\u00020C2\b\u0010D\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010E\u001a\u00020FHÖ\u0001J\t\u0010G\u001a\u00020HHÖ\u0001R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001bR\u001e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001bR\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001bR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001bR\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001bR\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001bR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001bR\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001bR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001bR\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001bR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001bR\u001e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001bR\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001bR\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001b¨\u0006I"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountPushParams;", "", "msg", "", "Lcom/vk/sdk/api/account/dto/AccountPushParamsMode;", "chat", "like", "Lcom/vk/sdk/api/account/dto/AccountPushParamsSettings;", "repost", "comment", "mention", "reply", "Lcom/vk/sdk/api/account/dto/AccountPushParamsOnoff;", "newPost", "wallPost", "wallPublish", "friend", "friendFound", "friendAccepted", "groupInvite", "groupAccepted", "birthday", "eventSoon", "appRequest", "sdkOpen", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getAppRequest", "()Ljava/util/List;", "getBirthday", "getChat", "getComment", "getEventSoon", "getFriend", "getFriendAccepted", "getFriendFound", "getGroupAccepted", "getGroupInvite", "getLike", "getMention", "getMsg", "getNewPost", "getReply", "getRepost", "getSdkOpen", "getWallPost", "getWallPublish", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountPushParams {
    @SerializedName("app_request")
    @Nullable
    private final List<AccountPushParamsOnoff> appRequest;
    @SerializedName("birthday")
    @Nullable
    private final List<AccountPushParamsOnoff> birthday;
    @SerializedName("chat")
    @Nullable
    private final List<AccountPushParamsMode> chat;
    @SerializedName("comment")
    @Nullable
    private final List<AccountPushParamsSettings> comment;
    @SerializedName("event_soon")
    @Nullable
    private final List<AccountPushParamsOnoff> eventSoon;
    @SerializedName("friend")
    @Nullable
    private final List<AccountPushParamsOnoff> friend;
    @SerializedName("friend_accepted")
    @Nullable
    private final List<AccountPushParamsOnoff> friendAccepted;
    @SerializedName("friend_found")
    @Nullable
    private final List<AccountPushParamsOnoff> friendFound;
    @SerializedName("group_accepted")
    @Nullable
    private final List<AccountPushParamsOnoff> groupAccepted;
    @SerializedName("group_invite")
    @Nullable
    private final List<AccountPushParamsOnoff> groupInvite;
    @SerializedName("like")
    @Nullable
    private final List<AccountPushParamsSettings> like;
    @SerializedName("mention")
    @Nullable
    private final List<AccountPushParamsSettings> mention;
    @SerializedName("msg")
    @Nullable
    private final List<AccountPushParamsMode> msg;
    @SerializedName("new_post")
    @Nullable
    private final List<AccountPushParamsOnoff> newPost;
    @SerializedName("reply")
    @Nullable
    private final List<AccountPushParamsOnoff> reply;
    @SerializedName("repost")
    @Nullable
    private final List<AccountPushParamsSettings> repost;
    @SerializedName("sdk_open")
    @Nullable
    private final List<AccountPushParamsOnoff> sdkOpen;
    @SerializedName("wall_post")
    @Nullable
    private final List<AccountPushParamsOnoff> wallPost;
    @SerializedName("wall_publish")
    @Nullable
    private final List<AccountPushParamsOnoff> wallPublish;

    public AccountPushParams() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 524287, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AccountPushParams(@Nullable List<? extends AccountPushParamsMode> list, @Nullable List<? extends AccountPushParamsMode> list2, @Nullable List<? extends AccountPushParamsSettings> list3, @Nullable List<? extends AccountPushParamsSettings> list4, @Nullable List<? extends AccountPushParamsSettings> list5, @Nullable List<? extends AccountPushParamsSettings> list6, @Nullable List<? extends AccountPushParamsOnoff> list7, @Nullable List<? extends AccountPushParamsOnoff> list8, @Nullable List<? extends AccountPushParamsOnoff> list9, @Nullable List<? extends AccountPushParamsOnoff> list10, @Nullable List<? extends AccountPushParamsOnoff> list11, @Nullable List<? extends AccountPushParamsOnoff> list12, @Nullable List<? extends AccountPushParamsOnoff> list13, @Nullable List<? extends AccountPushParamsOnoff> list14, @Nullable List<? extends AccountPushParamsOnoff> list15, @Nullable List<? extends AccountPushParamsOnoff> list16, @Nullable List<? extends AccountPushParamsOnoff> list17, @Nullable List<? extends AccountPushParamsOnoff> list18, @Nullable List<? extends AccountPushParamsOnoff> list19) {
        this.msg = list;
        this.chat = list2;
        this.like = list3;
        this.repost = list4;
        this.comment = list5;
        this.mention = list6;
        this.reply = list7;
        this.newPost = list8;
        this.wallPost = list9;
        this.wallPublish = list10;
        this.friend = list11;
        this.friendFound = list12;
        this.friendAccepted = list13;
        this.groupInvite = list14;
        this.groupAccepted = list15;
        this.birthday = list16;
        this.eventSoon = list17;
        this.appRequest = list18;
        this.sdkOpen = list19;
    }

    @Nullable
    public final List<AccountPushParamsMode> component1() {
        return this.msg;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component10() {
        return this.wallPublish;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component11() {
        return this.friend;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component12() {
        return this.friendFound;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component13() {
        return this.friendAccepted;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component14() {
        return this.groupInvite;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component15() {
        return this.groupAccepted;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component16() {
        return this.birthday;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component17() {
        return this.eventSoon;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component18() {
        return this.appRequest;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component19() {
        return this.sdkOpen;
    }

    @Nullable
    public final List<AccountPushParamsMode> component2() {
        return this.chat;
    }

    @Nullable
    public final List<AccountPushParamsSettings> component3() {
        return this.like;
    }

    @Nullable
    public final List<AccountPushParamsSettings> component4() {
        return this.repost;
    }

    @Nullable
    public final List<AccountPushParamsSettings> component5() {
        return this.comment;
    }

    @Nullable
    public final List<AccountPushParamsSettings> component6() {
        return this.mention;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component7() {
        return this.reply;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component8() {
        return this.newPost;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> component9() {
        return this.wallPost;
    }

    @NotNull
    public final AccountPushParams copy(@Nullable List<? extends AccountPushParamsMode> list, @Nullable List<? extends AccountPushParamsMode> list2, @Nullable List<? extends AccountPushParamsSettings> list3, @Nullable List<? extends AccountPushParamsSettings> list4, @Nullable List<? extends AccountPushParamsSettings> list5, @Nullable List<? extends AccountPushParamsSettings> list6, @Nullable List<? extends AccountPushParamsOnoff> list7, @Nullable List<? extends AccountPushParamsOnoff> list8, @Nullable List<? extends AccountPushParamsOnoff> list9, @Nullable List<? extends AccountPushParamsOnoff> list10, @Nullable List<? extends AccountPushParamsOnoff> list11, @Nullable List<? extends AccountPushParamsOnoff> list12, @Nullable List<? extends AccountPushParamsOnoff> list13, @Nullable List<? extends AccountPushParamsOnoff> list14, @Nullable List<? extends AccountPushParamsOnoff> list15, @Nullable List<? extends AccountPushParamsOnoff> list16, @Nullable List<? extends AccountPushParamsOnoff> list17, @Nullable List<? extends AccountPushParamsOnoff> list18, @Nullable List<? extends AccountPushParamsOnoff> list19) {
        return new AccountPushParams(list, list2, list3, list4, list5, list6, list7, list8, list9, list10, list11, list12, list13, list14, list15, list16, list17, list18, list19);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountPushParams) {
            AccountPushParams accountPushParams = (AccountPushParams) obj;
            return Intrinsics.areEqual(this.msg, accountPushParams.msg) && Intrinsics.areEqual(this.chat, accountPushParams.chat) && Intrinsics.areEqual(this.like, accountPushParams.like) && Intrinsics.areEqual(this.repost, accountPushParams.repost) && Intrinsics.areEqual(this.comment, accountPushParams.comment) && Intrinsics.areEqual(this.mention, accountPushParams.mention) && Intrinsics.areEqual(this.reply, accountPushParams.reply) && Intrinsics.areEqual(this.newPost, accountPushParams.newPost) && Intrinsics.areEqual(this.wallPost, accountPushParams.wallPost) && Intrinsics.areEqual(this.wallPublish, accountPushParams.wallPublish) && Intrinsics.areEqual(this.friend, accountPushParams.friend) && Intrinsics.areEqual(this.friendFound, accountPushParams.friendFound) && Intrinsics.areEqual(this.friendAccepted, accountPushParams.friendAccepted) && Intrinsics.areEqual(this.groupInvite, accountPushParams.groupInvite) && Intrinsics.areEqual(this.groupAccepted, accountPushParams.groupAccepted) && Intrinsics.areEqual(this.birthday, accountPushParams.birthday) && Intrinsics.areEqual(this.eventSoon, accountPushParams.eventSoon) && Intrinsics.areEqual(this.appRequest, accountPushParams.appRequest) && Intrinsics.areEqual(this.sdkOpen, accountPushParams.sdkOpen);
        }
        return false;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getAppRequest() {
        return this.appRequest;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getBirthday() {
        return this.birthday;
    }

    @Nullable
    public final List<AccountPushParamsMode> getChat() {
        return this.chat;
    }

    @Nullable
    public final List<AccountPushParamsSettings> getComment() {
        return this.comment;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getEventSoon() {
        return this.eventSoon;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getFriend() {
        return this.friend;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getFriendAccepted() {
        return this.friendAccepted;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getFriendFound() {
        return this.friendFound;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getGroupAccepted() {
        return this.groupAccepted;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getGroupInvite() {
        return this.groupInvite;
    }

    @Nullable
    public final List<AccountPushParamsSettings> getLike() {
        return this.like;
    }

    @Nullable
    public final List<AccountPushParamsSettings> getMention() {
        return this.mention;
    }

    @Nullable
    public final List<AccountPushParamsMode> getMsg() {
        return this.msg;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getNewPost() {
        return this.newPost;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getReply() {
        return this.reply;
    }

    @Nullable
    public final List<AccountPushParamsSettings> getRepost() {
        return this.repost;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getSdkOpen() {
        return this.sdkOpen;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getWallPost() {
        return this.wallPost;
    }

    @Nullable
    public final List<AccountPushParamsOnoff> getWallPublish() {
        return this.wallPublish;
    }

    public int hashCode() {
        List<AccountPushParamsMode> list = this.msg;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<AccountPushParamsMode> list2 = this.chat;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<AccountPushParamsSettings> list3 = this.like;
        int hashCode3 = (hashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<AccountPushParamsSettings> list4 = this.repost;
        int hashCode4 = (hashCode3 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<AccountPushParamsSettings> list5 = this.comment;
        int hashCode5 = (hashCode4 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<AccountPushParamsSettings> list6 = this.mention;
        int hashCode6 = (hashCode5 + (list6 == null ? 0 : list6.hashCode())) * 31;
        List<AccountPushParamsOnoff> list7 = this.reply;
        int hashCode7 = (hashCode6 + (list7 == null ? 0 : list7.hashCode())) * 31;
        List<AccountPushParamsOnoff> list8 = this.newPost;
        int hashCode8 = (hashCode7 + (list8 == null ? 0 : list8.hashCode())) * 31;
        List<AccountPushParamsOnoff> list9 = this.wallPost;
        int hashCode9 = (hashCode8 + (list9 == null ? 0 : list9.hashCode())) * 31;
        List<AccountPushParamsOnoff> list10 = this.wallPublish;
        int hashCode10 = (hashCode9 + (list10 == null ? 0 : list10.hashCode())) * 31;
        List<AccountPushParamsOnoff> list11 = this.friend;
        int hashCode11 = (hashCode10 + (list11 == null ? 0 : list11.hashCode())) * 31;
        List<AccountPushParamsOnoff> list12 = this.friendFound;
        int hashCode12 = (hashCode11 + (list12 == null ? 0 : list12.hashCode())) * 31;
        List<AccountPushParamsOnoff> list13 = this.friendAccepted;
        int hashCode13 = (hashCode12 + (list13 == null ? 0 : list13.hashCode())) * 31;
        List<AccountPushParamsOnoff> list14 = this.groupInvite;
        int hashCode14 = (hashCode13 + (list14 == null ? 0 : list14.hashCode())) * 31;
        List<AccountPushParamsOnoff> list15 = this.groupAccepted;
        int hashCode15 = (hashCode14 + (list15 == null ? 0 : list15.hashCode())) * 31;
        List<AccountPushParamsOnoff> list16 = this.birthday;
        int hashCode16 = (hashCode15 + (list16 == null ? 0 : list16.hashCode())) * 31;
        List<AccountPushParamsOnoff> list17 = this.eventSoon;
        int hashCode17 = (hashCode16 + (list17 == null ? 0 : list17.hashCode())) * 31;
        List<AccountPushParamsOnoff> list18 = this.appRequest;
        int hashCode18 = (hashCode17 + (list18 == null ? 0 : list18.hashCode())) * 31;
        List<AccountPushParamsOnoff> list19 = this.sdkOpen;
        return hashCode18 + (list19 != null ? list19.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<AccountPushParamsMode> list = this.msg;
        List<AccountPushParamsMode> list2 = this.chat;
        List<AccountPushParamsSettings> list3 = this.like;
        List<AccountPushParamsSettings> list4 = this.repost;
        List<AccountPushParamsSettings> list5 = this.comment;
        List<AccountPushParamsSettings> list6 = this.mention;
        List<AccountPushParamsOnoff> list7 = this.reply;
        List<AccountPushParamsOnoff> list8 = this.newPost;
        List<AccountPushParamsOnoff> list9 = this.wallPost;
        List<AccountPushParamsOnoff> list10 = this.wallPublish;
        List<AccountPushParamsOnoff> list11 = this.friend;
        List<AccountPushParamsOnoff> list12 = this.friendFound;
        List<AccountPushParamsOnoff> list13 = this.friendAccepted;
        List<AccountPushParamsOnoff> list14 = this.groupInvite;
        List<AccountPushParamsOnoff> list15 = this.groupAccepted;
        List<AccountPushParamsOnoff> list16 = this.birthday;
        List<AccountPushParamsOnoff> list17 = this.eventSoon;
        List<AccountPushParamsOnoff> list18 = this.appRequest;
        List<AccountPushParamsOnoff> list19 = this.sdkOpen;
        return "AccountPushParams(msg=" + list + ", chat=" + list2 + ", like=" + list3 + ", repost=" + list4 + ", comment=" + list5 + ", mention=" + list6 + ", reply=" + list7 + ", newPost=" + list8 + ", wallPost=" + list9 + ", wallPublish=" + list10 + ", friend=" + list11 + ", friendFound=" + list12 + ", friendAccepted=" + list13 + ", groupInvite=" + list14 + ", groupAccepted=" + list15 + ", birthday=" + list16 + ", eventSoon=" + list17 + ", appRequest=" + list18 + ", sdkOpen=" + list19 + ")";
    }

    public /* synthetic */ AccountPushParams(List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, List list10, List list11, List list12, List list13, List list14, List list15, List list16, List list17, List list18, List list19, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : list3, (i9 & 8) != 0 ? null : list4, (i9 & 16) != 0 ? null : list5, (i9 & 32) != 0 ? null : list6, (i9 & 64) != 0 ? null : list7, (i9 & 128) != 0 ? null : list8, (i9 & 256) != 0 ? null : list9, (i9 & 512) != 0 ? null : list10, (i9 & 1024) != 0 ? null : list11, (i9 & 2048) != 0 ? null : list12, (i9 & 4096) != 0 ? null : list13, (i9 & 8192) != 0 ? null : list14, (i9 & 16384) != 0 ? null : list15, (i9 & 32768) != 0 ? null : list16, (i9 & 65536) != 0 ? null : list17, (i9 & 131072) != 0 ? null : list18, (i9 & 262144) != 0 ? null : list19);
    }
}
