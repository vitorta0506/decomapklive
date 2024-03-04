package com.vk.sdk.api.messages.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b5\b\u0086\b\u0018\u00002\u00020\u0001B½\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u001cJ\t\u00106\u001a\u00020\u0003HÆ\u0003J\u0011\u00107\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010'J\u000b\u00109\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0010\u0010:\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010'J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010'J\t\u0010>\u001a\u00020\u0005HÆ\u0003J\t\u0010?\u001a\u00020\u0007HÆ\u0003J\u000f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\t\u0010A\u001a\u00020\u000bHÆ\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010%J\u0010\u0010C\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010%J\u000b\u0010D\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0012HÆ\u0003JÐ\u0001\u0010F\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0015HÆ\u0001¢\u0006\u0002\u0010GJ\u0013\u0010H\u001a\u00020\u00152\b\u0010I\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010J\u001a\u00020\rHÖ\u0001J\t\u0010K\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b$\u0010%R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b\u0018\u0010'R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b\u0014\u0010'R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b\u001b\u0010'R\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b)\u0010%R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010#R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010#¨\u0006L"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettings;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "title", "", ServerProtocol.DIALOG_PARAM_STATE, "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsState;", "activeIds", "", "acl", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsAcl;", "membersCount", "", "friendsCount", "pinnedMessage", "Lcom/vk/sdk/api/messages/dto/MessagesPinnedMessage;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;", "adminIds", "isGroupChannel", "", "permissions", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions;", "isDisappearing", "theme", "disappearingChatLink", "isService", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsState;Ljava/util/List;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsAcl;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesPinnedMessage;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;Ljava/util/List;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getAcl", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsAcl;", "getActiveIds", "()Ljava/util/List;", "getAdminIds", "getDisappearingChatLink", "()Ljava/lang/String;", "getFriendsCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMembersCount", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPermissions", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions;", "getPhoto", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;", "getPinnedMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesPinnedMessage;", "getState", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsState;", "getTheme", "getTitle", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsState;Ljava/util/List;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsAcl;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesPinnedMessage;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;Ljava/util/List;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesChatSettings;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChatSettings {
    @SerializedName("acl")
    @NotNull
    private final MessagesChatSettingsAcl acl;
    @SerializedName("active_ids")
    @NotNull
    private final List<UserId> activeIds;
    @SerializedName("admin_ids")
    @Nullable
    private final List<UserId> adminIds;
    @SerializedName("disappearing_chat_link")
    @Nullable
    private final String disappearingChatLink;
    @SerializedName("friends_count")
    @Nullable
    private final Integer friendsCount;
    @SerializedName("is_disappearing")
    @Nullable
    private final Boolean isDisappearing;
    @SerializedName("is_group_channel")
    @Nullable
    private final Boolean isGroupChannel;
    @SerializedName("is_service")
    @Nullable
    private final Boolean isService;
    @SerializedName("members_count")
    @Nullable
    private final Integer membersCount;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("permissions")
    @Nullable
    private final MessagesChatSettingsPermissions permissions;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final MessagesChatSettingsPhoto photo;
    @SerializedName("pinned_message")
    @Nullable
    private final MessagesPinnedMessage pinnedMessage;
    @SerializedName(ServerProtocol.DIALOG_PARAM_STATE)
    @NotNull
    private final MessagesChatSettingsState state;
    @SerializedName("theme")
    @Nullable
    private final String theme;
    @SerializedName("title")
    @NotNull
    private final String title;

    public MessagesChatSettings(@NotNull UserId ownerId, @NotNull String title, @NotNull MessagesChatSettingsState state, @NotNull List<UserId> activeIds, @NotNull MessagesChatSettingsAcl acl, @Nullable Integer num, @Nullable Integer num2, @Nullable MessagesPinnedMessage messagesPinnedMessage, @Nullable MessagesChatSettingsPhoto messagesChatSettingsPhoto, @Nullable List<UserId> list, @Nullable Boolean bool, @Nullable MessagesChatSettingsPermissions messagesChatSettingsPermissions, @Nullable Boolean bool2, @Nullable String str, @Nullable String str2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(activeIds, "activeIds");
        Intrinsics.checkNotNullParameter(acl, "acl");
        this.ownerId = ownerId;
        this.title = title;
        this.state = state;
        this.activeIds = activeIds;
        this.acl = acl;
        this.membersCount = num;
        this.friendsCount = num2;
        this.pinnedMessage = messagesPinnedMessage;
        this.photo = messagesChatSettingsPhoto;
        this.adminIds = list;
        this.isGroupChannel = bool;
        this.permissions = messagesChatSettingsPermissions;
        this.isDisappearing = bool2;
        this.theme = str;
        this.disappearingChatLink = str2;
        this.isService = bool3;
    }

    @NotNull
    public final UserId component1() {
        return this.ownerId;
    }

    @Nullable
    public final List<UserId> component10() {
        return this.adminIds;
    }

    @Nullable
    public final Boolean component11() {
        return this.isGroupChannel;
    }

    @Nullable
    public final MessagesChatSettingsPermissions component12() {
        return this.permissions;
    }

    @Nullable
    public final Boolean component13() {
        return this.isDisappearing;
    }

    @Nullable
    public final String component14() {
        return this.theme;
    }

    @Nullable
    public final String component15() {
        return this.disappearingChatLink;
    }

    @Nullable
    public final Boolean component16() {
        return this.isService;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final MessagesChatSettingsState component3() {
        return this.state;
    }

    @NotNull
    public final List<UserId> component4() {
        return this.activeIds;
    }

    @NotNull
    public final MessagesChatSettingsAcl component5() {
        return this.acl;
    }

    @Nullable
    public final Integer component6() {
        return this.membersCount;
    }

    @Nullable
    public final Integer component7() {
        return this.friendsCount;
    }

    @Nullable
    public final MessagesPinnedMessage component8() {
        return this.pinnedMessage;
    }

    @Nullable
    public final MessagesChatSettingsPhoto component9() {
        return this.photo;
    }

    @NotNull
    public final MessagesChatSettings copy(@NotNull UserId ownerId, @NotNull String title, @NotNull MessagesChatSettingsState state, @NotNull List<UserId> activeIds, @NotNull MessagesChatSettingsAcl acl, @Nullable Integer num, @Nullable Integer num2, @Nullable MessagesPinnedMessage messagesPinnedMessage, @Nullable MessagesChatSettingsPhoto messagesChatSettingsPhoto, @Nullable List<UserId> list, @Nullable Boolean bool, @Nullable MessagesChatSettingsPermissions messagesChatSettingsPermissions, @Nullable Boolean bool2, @Nullable String str, @Nullable String str2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(activeIds, "activeIds");
        Intrinsics.checkNotNullParameter(acl, "acl");
        return new MessagesChatSettings(ownerId, title, state, activeIds, acl, num, num2, messagesPinnedMessage, messagesChatSettingsPhoto, list, bool, messagesChatSettingsPermissions, bool2, str, str2, bool3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChatSettings) {
            MessagesChatSettings messagesChatSettings = (MessagesChatSettings) obj;
            return Intrinsics.areEqual(this.ownerId, messagesChatSettings.ownerId) && Intrinsics.areEqual(this.title, messagesChatSettings.title) && this.state == messagesChatSettings.state && Intrinsics.areEqual(this.activeIds, messagesChatSettings.activeIds) && Intrinsics.areEqual(this.acl, messagesChatSettings.acl) && Intrinsics.areEqual(this.membersCount, messagesChatSettings.membersCount) && Intrinsics.areEqual(this.friendsCount, messagesChatSettings.friendsCount) && Intrinsics.areEqual(this.pinnedMessage, messagesChatSettings.pinnedMessage) && Intrinsics.areEqual(this.photo, messagesChatSettings.photo) && Intrinsics.areEqual(this.adminIds, messagesChatSettings.adminIds) && Intrinsics.areEqual(this.isGroupChannel, messagesChatSettings.isGroupChannel) && Intrinsics.areEqual(this.permissions, messagesChatSettings.permissions) && Intrinsics.areEqual(this.isDisappearing, messagesChatSettings.isDisappearing) && Intrinsics.areEqual(this.theme, messagesChatSettings.theme) && Intrinsics.areEqual(this.disappearingChatLink, messagesChatSettings.disappearingChatLink) && Intrinsics.areEqual(this.isService, messagesChatSettings.isService);
        }
        return false;
    }

    @NotNull
    public final MessagesChatSettingsAcl getAcl() {
        return this.acl;
    }

    @NotNull
    public final List<UserId> getActiveIds() {
        return this.activeIds;
    }

    @Nullable
    public final List<UserId> getAdminIds() {
        return this.adminIds;
    }

    @Nullable
    public final String getDisappearingChatLink() {
        return this.disappearingChatLink;
    }

    @Nullable
    public final Integer getFriendsCount() {
        return this.friendsCount;
    }

    @Nullable
    public final Integer getMembersCount() {
        return this.membersCount;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final MessagesChatSettingsPermissions getPermissions() {
        return this.permissions;
    }

    @Nullable
    public final MessagesChatSettingsPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final MessagesPinnedMessage getPinnedMessage() {
        return this.pinnedMessage;
    }

    @NotNull
    public final MessagesChatSettingsState getState() {
        return this.state;
    }

    @Nullable
    public final String getTheme() {
        return this.theme;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((((((((this.ownerId.hashCode() * 31) + this.title.hashCode()) * 31) + this.state.hashCode()) * 31) + this.activeIds.hashCode()) * 31) + this.acl.hashCode()) * 31;
        Integer num = this.membersCount;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.friendsCount;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        MessagesPinnedMessage messagesPinnedMessage = this.pinnedMessage;
        int hashCode4 = (hashCode3 + (messagesPinnedMessage == null ? 0 : messagesPinnedMessage.hashCode())) * 31;
        MessagesChatSettingsPhoto messagesChatSettingsPhoto = this.photo;
        int hashCode5 = (hashCode4 + (messagesChatSettingsPhoto == null ? 0 : messagesChatSettingsPhoto.hashCode())) * 31;
        List<UserId> list = this.adminIds;
        int hashCode6 = (hashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool = this.isGroupChannel;
        int hashCode7 = (hashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        MessagesChatSettingsPermissions messagesChatSettingsPermissions = this.permissions;
        int hashCode8 = (hashCode7 + (messagesChatSettingsPermissions == null ? 0 : messagesChatSettingsPermissions.hashCode())) * 31;
        Boolean bool2 = this.isDisappearing;
        int hashCode9 = (hashCode8 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str = this.theme;
        int hashCode10 = (hashCode9 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.disappearingChatLink;
        int hashCode11 = (hashCode10 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool3 = this.isService;
        return hashCode11 + (bool3 != null ? bool3.hashCode() : 0);
    }

    @Nullable
    public final Boolean isDisappearing() {
        return this.isDisappearing;
    }

    @Nullable
    public final Boolean isGroupChannel() {
        return this.isGroupChannel;
    }

    @Nullable
    public final Boolean isService() {
        return this.isService;
    }

    @NotNull
    public String toString() {
        UserId userId = this.ownerId;
        String str = this.title;
        MessagesChatSettingsState messagesChatSettingsState = this.state;
        List<UserId> list = this.activeIds;
        MessagesChatSettingsAcl messagesChatSettingsAcl = this.acl;
        Integer num = this.membersCount;
        Integer num2 = this.friendsCount;
        MessagesPinnedMessage messagesPinnedMessage = this.pinnedMessage;
        MessagesChatSettingsPhoto messagesChatSettingsPhoto = this.photo;
        List<UserId> list2 = this.adminIds;
        Boolean bool = this.isGroupChannel;
        MessagesChatSettingsPermissions messagesChatSettingsPermissions = this.permissions;
        Boolean bool2 = this.isDisappearing;
        String str2 = this.theme;
        String str3 = this.disappearingChatLink;
        Boolean bool3 = this.isService;
        return "MessagesChatSettings(ownerId=" + userId + ", title=" + str + ", state=" + messagesChatSettingsState + ", activeIds=" + list + ", acl=" + messagesChatSettingsAcl + ", membersCount=" + num + ", friendsCount=" + num2 + ", pinnedMessage=" + messagesPinnedMessage + ", photo=" + messagesChatSettingsPhoto + ", adminIds=" + list2 + ", isGroupChannel=" + bool + ", permissions=" + messagesChatSettingsPermissions + ", isDisappearing=" + bool2 + ", theme=" + str2 + ", disappearingChatLink=" + str3 + ", isService=" + bool3 + ")";
    }

    public /* synthetic */ MessagesChatSettings(UserId userId, String str, MessagesChatSettingsState messagesChatSettingsState, List list, MessagesChatSettingsAcl messagesChatSettingsAcl, Integer num, Integer num2, MessagesPinnedMessage messagesPinnedMessage, MessagesChatSettingsPhoto messagesChatSettingsPhoto, List list2, Boolean bool, MessagesChatSettingsPermissions messagesChatSettingsPermissions, Boolean bool2, String str2, String str3, Boolean bool3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, str, messagesChatSettingsState, list, messagesChatSettingsAcl, (i9 & 32) != 0 ? null : num, (i9 & 64) != 0 ? null : num2, (i9 & 128) != 0 ? null : messagesPinnedMessage, (i9 & 256) != 0 ? null : messagesChatSettingsPhoto, (i9 & 512) != 0 ? null : list2, (i9 & 1024) != 0 ? null : bool, (i9 & 2048) != 0 ? null : messagesChatSettingsPermissions, (i9 & 4096) != 0 ? null : bool2, (i9 & 8192) != 0 ? null : str2, (i9 & 16384) != 0 ? null : str3, (i9 & 32768) != 0 ? null : bool3);
    }
}
