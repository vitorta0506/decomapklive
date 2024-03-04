package com.vk.sdk.api.account.dto;

import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b5\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BÅ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015JÎ\u0001\u00106\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00107J\u0013\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010;\u001a\u00020\u0003HÖ\u0001J\t\u0010<\u001a\u00020=HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0015R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0019\u0010\u0015R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001a\u0010\u0015R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001b\u0010\u0015R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001c\u0010\u0015R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001d\u0010\u0015R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001e\u0010\u0015R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001f\u0010\u0015R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b \u0010\u0015R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b!\u0010\u0015R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\"\u0010\u0015R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b#\u0010\u0015R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b$\u0010\u0015R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b%\u0010\u0015¨\u0006>"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountAccountCounters;", "", "appRequests", "", "events", "faves", NativeProtocol.AUDIENCE_FRIENDS, "friendsSuggestions", "friendsRecommendations", "gifts", "groups", "menuDiscoverBadge", "menuClipsBadge", "messages", "memories", "notes", "notifications", "photos", ServerProtocol.DIALOG_PARAM_SDK_VERSION, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAppRequests", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEvents", "getFaves", "getFriends", "getFriendsRecommendations", "getFriendsSuggestions", "getGifts", "getGroups", "getMemories", "getMenuClipsBadge", "getMenuDiscoverBadge", "getMessages", "getNotes", "getNotifications", "getPhotos", "getSdk", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/account/dto/AccountAccountCounters;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountAccountCounters {
    @SerializedName("app_requests")
    @Nullable
    private final Integer appRequests;
    @SerializedName("events")
    @Nullable
    private final Integer events;
    @SerializedName("faves")
    @Nullable
    private final Integer faves;
    @SerializedName(NativeProtocol.AUDIENCE_FRIENDS)
    @Nullable
    private final Integer friends;
    @SerializedName("friends_recommendations")
    @Nullable
    private final Integer friendsRecommendations;
    @SerializedName("friends_suggestions")
    @Nullable
    private final Integer friendsSuggestions;
    @SerializedName("gifts")
    @Nullable
    private final Integer gifts;
    @SerializedName("groups")
    @Nullable
    private final Integer groups;
    @SerializedName("memories")
    @Nullable
    private final Integer memories;
    @SerializedName("menu_clips_badge")
    @Nullable
    private final Integer menuClipsBadge;
    @SerializedName("menu_discover_badge")
    @Nullable
    private final Integer menuDiscoverBadge;
    @SerializedName("messages")
    @Nullable
    private final Integer messages;
    @SerializedName("notes")
    @Nullable
    private final Integer notes;
    @SerializedName("notifications")
    @Nullable
    private final Integer notifications;
    @SerializedName("photos")
    @Nullable
    private final Integer photos;
    @SerializedName(ServerProtocol.DIALOG_PARAM_SDK_VERSION)
    @Nullable
    private final Integer sdk;

    public AccountAccountCounters() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }

    public AccountAccountCounters(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable Integer num14, @Nullable Integer num15, @Nullable Integer num16) {
        this.appRequests = num;
        this.events = num2;
        this.faves = num3;
        this.friends = num4;
        this.friendsSuggestions = num5;
        this.friendsRecommendations = num6;
        this.gifts = num7;
        this.groups = num8;
        this.menuDiscoverBadge = num9;
        this.menuClipsBadge = num10;
        this.messages = num11;
        this.memories = num12;
        this.notes = num13;
        this.notifications = num14;
        this.photos = num15;
        this.sdk = num16;
    }

    @Nullable
    public final Integer component1() {
        return this.appRequests;
    }

    @Nullable
    public final Integer component10() {
        return this.menuClipsBadge;
    }

    @Nullable
    public final Integer component11() {
        return this.messages;
    }

    @Nullable
    public final Integer component12() {
        return this.memories;
    }

    @Nullable
    public final Integer component13() {
        return this.notes;
    }

    @Nullable
    public final Integer component14() {
        return this.notifications;
    }

    @Nullable
    public final Integer component15() {
        return this.photos;
    }

    @Nullable
    public final Integer component16() {
        return this.sdk;
    }

    @Nullable
    public final Integer component2() {
        return this.events;
    }

    @Nullable
    public final Integer component3() {
        return this.faves;
    }

    @Nullable
    public final Integer component4() {
        return this.friends;
    }

    @Nullable
    public final Integer component5() {
        return this.friendsSuggestions;
    }

    @Nullable
    public final Integer component6() {
        return this.friendsRecommendations;
    }

    @Nullable
    public final Integer component7() {
        return this.gifts;
    }

    @Nullable
    public final Integer component8() {
        return this.groups;
    }

    @Nullable
    public final Integer component9() {
        return this.menuDiscoverBadge;
    }

    @NotNull
    public final AccountAccountCounters copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable Integer num14, @Nullable Integer num15, @Nullable Integer num16) {
        return new AccountAccountCounters(num, num2, num3, num4, num5, num6, num7, num8, num9, num10, num11, num12, num13, num14, num15, num16);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountAccountCounters) {
            AccountAccountCounters accountAccountCounters = (AccountAccountCounters) obj;
            return Intrinsics.areEqual(this.appRequests, accountAccountCounters.appRequests) && Intrinsics.areEqual(this.events, accountAccountCounters.events) && Intrinsics.areEqual(this.faves, accountAccountCounters.faves) && Intrinsics.areEqual(this.friends, accountAccountCounters.friends) && Intrinsics.areEqual(this.friendsSuggestions, accountAccountCounters.friendsSuggestions) && Intrinsics.areEqual(this.friendsRecommendations, accountAccountCounters.friendsRecommendations) && Intrinsics.areEqual(this.gifts, accountAccountCounters.gifts) && Intrinsics.areEqual(this.groups, accountAccountCounters.groups) && Intrinsics.areEqual(this.menuDiscoverBadge, accountAccountCounters.menuDiscoverBadge) && Intrinsics.areEqual(this.menuClipsBadge, accountAccountCounters.menuClipsBadge) && Intrinsics.areEqual(this.messages, accountAccountCounters.messages) && Intrinsics.areEqual(this.memories, accountAccountCounters.memories) && Intrinsics.areEqual(this.notes, accountAccountCounters.notes) && Intrinsics.areEqual(this.notifications, accountAccountCounters.notifications) && Intrinsics.areEqual(this.photos, accountAccountCounters.photos) && Intrinsics.areEqual(this.sdk, accountAccountCounters.sdk);
        }
        return false;
    }

    @Nullable
    public final Integer getAppRequests() {
        return this.appRequests;
    }

    @Nullable
    public final Integer getEvents() {
        return this.events;
    }

    @Nullable
    public final Integer getFaves() {
        return this.faves;
    }

    @Nullable
    public final Integer getFriends() {
        return this.friends;
    }

    @Nullable
    public final Integer getFriendsRecommendations() {
        return this.friendsRecommendations;
    }

    @Nullable
    public final Integer getFriendsSuggestions() {
        return this.friendsSuggestions;
    }

    @Nullable
    public final Integer getGifts() {
        return this.gifts;
    }

    @Nullable
    public final Integer getGroups() {
        return this.groups;
    }

    @Nullable
    public final Integer getMemories() {
        return this.memories;
    }

    @Nullable
    public final Integer getMenuClipsBadge() {
        return this.menuClipsBadge;
    }

    @Nullable
    public final Integer getMenuDiscoverBadge() {
        return this.menuDiscoverBadge;
    }

    @Nullable
    public final Integer getMessages() {
        return this.messages;
    }

    @Nullable
    public final Integer getNotes() {
        return this.notes;
    }

    @Nullable
    public final Integer getNotifications() {
        return this.notifications;
    }

    @Nullable
    public final Integer getPhotos() {
        return this.photos;
    }

    @Nullable
    public final Integer getSdk() {
        return this.sdk;
    }

    public int hashCode() {
        Integer num = this.appRequests;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.events;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.faves;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.friends;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.friendsSuggestions;
        int hashCode5 = (hashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.friendsRecommendations;
        int hashCode6 = (hashCode5 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.gifts;
        int hashCode7 = (hashCode6 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.groups;
        int hashCode8 = (hashCode7 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.menuDiscoverBadge;
        int hashCode9 = (hashCode8 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.menuClipsBadge;
        int hashCode10 = (hashCode9 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.messages;
        int hashCode11 = (hashCode10 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.memories;
        int hashCode12 = (hashCode11 + (num12 == null ? 0 : num12.hashCode())) * 31;
        Integer num13 = this.notes;
        int hashCode13 = (hashCode12 + (num13 == null ? 0 : num13.hashCode())) * 31;
        Integer num14 = this.notifications;
        int hashCode14 = (hashCode13 + (num14 == null ? 0 : num14.hashCode())) * 31;
        Integer num15 = this.photos;
        int hashCode15 = (hashCode14 + (num15 == null ? 0 : num15.hashCode())) * 31;
        Integer num16 = this.sdk;
        return hashCode15 + (num16 != null ? num16.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.appRequests;
        Integer num2 = this.events;
        Integer num3 = this.faves;
        Integer num4 = this.friends;
        Integer num5 = this.friendsSuggestions;
        Integer num6 = this.friendsRecommendations;
        Integer num7 = this.gifts;
        Integer num8 = this.groups;
        Integer num9 = this.menuDiscoverBadge;
        Integer num10 = this.menuClipsBadge;
        Integer num11 = this.messages;
        Integer num12 = this.memories;
        Integer num13 = this.notes;
        Integer num14 = this.notifications;
        Integer num15 = this.photos;
        Integer num16 = this.sdk;
        return "AccountAccountCounters(appRequests=" + num + ", events=" + num2 + ", faves=" + num3 + ", friends=" + num4 + ", friendsSuggestions=" + num5 + ", friendsRecommendations=" + num6 + ", gifts=" + num7 + ", groups=" + num8 + ", menuDiscoverBadge=" + num9 + ", menuClipsBadge=" + num10 + ", messages=" + num11 + ", memories=" + num12 + ", notes=" + num13 + ", notifications=" + num14 + ", photos=" + num15 + ", sdk=" + num16 + ")";
    }

    public /* synthetic */ AccountAccountCounters(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, Integer num14, Integer num15, Integer num16, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : num5, (i9 & 32) != 0 ? null : num6, (i9 & 64) != 0 ? null : num7, (i9 & 128) != 0 ? null : num8, (i9 & 256) != 0 ? null : num9, (i9 & 512) != 0 ? null : num10, (i9 & 1024) != 0 ? null : num11, (i9 & 2048) != 0 ? null : num12, (i9 & 4096) != 0 ? null : num13, (i9 & 8192) != 0 ? null : num14, (i9 & 16384) != 0 ? null : num15, (i9 & 32768) != 0 ? null : num16);
    }
}
