package com.vk.sdk.api.messages.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b$\b\u0086\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010(\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010*\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0011\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u000b\u0010-\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010/\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0098\u0001\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u00020\u00052\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u00020\u0007HÖ\u0001J\t\u00106\u001a\u00020\fHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0010\u0010\u0019R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0011\u0010\u0019R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\r\u0010\u0019R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b!\u0010\u001dR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%¨\u00067"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatPreview;", "", "adminId", "Lcom/vk/dto/common/id/UserId;", "joined", "", "localId", "", "members", "", "membersCount", "title", "", "isMember", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;", "isDon", "isGroupChannel", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)V", "getAdminId", "()Lcom/vk/dto/common/id/UserId;", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getJoined", "getLocalId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMembers", "()Ljava/util/List;", "getMembersCount", "getPhoto", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;", "getTitle", "()Ljava/lang/String;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)Lcom/vk/sdk/api/messages/dto/MessagesChatPreview;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChatPreview {
    @SerializedName("admin_id")
    @Nullable
    private final UserId adminId;
    @SerializedName("button")
    @Nullable
    private final BaseLinkButton button;
    @SerializedName("is_don")
    @Nullable
    private final Boolean isDon;
    @SerializedName("is_group_channel")
    @Nullable
    private final Boolean isGroupChannel;
    @SerializedName("is_member")
    @Nullable
    private final Boolean isMember;
    @SerializedName("joined")
    @Nullable
    private final Boolean joined;
    @SerializedName("local_id")
    @Nullable
    private final Integer localId;
    @SerializedName("members")
    @Nullable
    private final List<UserId> members;
    @SerializedName("members_count")
    @Nullable
    private final Integer membersCount;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final MessagesChatSettingsPhoto photo;
    @SerializedName("title")
    @Nullable
    private final String title;

    public MessagesChatPreview() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public MessagesChatPreview(@Nullable UserId userId, @Nullable Boolean bool, @Nullable Integer num, @Nullable List<UserId> list, @Nullable Integer num2, @Nullable String str, @Nullable Boolean bool2, @Nullable MessagesChatSettingsPhoto messagesChatSettingsPhoto, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable BaseLinkButton baseLinkButton) {
        this.adminId = userId;
        this.joined = bool;
        this.localId = num;
        this.members = list;
        this.membersCount = num2;
        this.title = str;
        this.isMember = bool2;
        this.photo = messagesChatSettingsPhoto;
        this.isDon = bool3;
        this.isGroupChannel = bool4;
        this.button = baseLinkButton;
    }

    @Nullable
    public final UserId component1() {
        return this.adminId;
    }

    @Nullable
    public final Boolean component10() {
        return this.isGroupChannel;
    }

    @Nullable
    public final BaseLinkButton component11() {
        return this.button;
    }

    @Nullable
    public final Boolean component2() {
        return this.joined;
    }

    @Nullable
    public final Integer component3() {
        return this.localId;
    }

    @Nullable
    public final List<UserId> component4() {
        return this.members;
    }

    @Nullable
    public final Integer component5() {
        return this.membersCount;
    }

    @Nullable
    public final String component6() {
        return this.title;
    }

    @Nullable
    public final Boolean component7() {
        return this.isMember;
    }

    @Nullable
    public final MessagesChatSettingsPhoto component8() {
        return this.photo;
    }

    @Nullable
    public final Boolean component9() {
        return this.isDon;
    }

    @NotNull
    public final MessagesChatPreview copy(@Nullable UserId userId, @Nullable Boolean bool, @Nullable Integer num, @Nullable List<UserId> list, @Nullable Integer num2, @Nullable String str, @Nullable Boolean bool2, @Nullable MessagesChatSettingsPhoto messagesChatSettingsPhoto, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable BaseLinkButton baseLinkButton) {
        return new MessagesChatPreview(userId, bool, num, list, num2, str, bool2, messagesChatSettingsPhoto, bool3, bool4, baseLinkButton);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChatPreview) {
            MessagesChatPreview messagesChatPreview = (MessagesChatPreview) obj;
            return Intrinsics.areEqual(this.adminId, messagesChatPreview.adminId) && Intrinsics.areEqual(this.joined, messagesChatPreview.joined) && Intrinsics.areEqual(this.localId, messagesChatPreview.localId) && Intrinsics.areEqual(this.members, messagesChatPreview.members) && Intrinsics.areEqual(this.membersCount, messagesChatPreview.membersCount) && Intrinsics.areEqual(this.title, messagesChatPreview.title) && Intrinsics.areEqual(this.isMember, messagesChatPreview.isMember) && Intrinsics.areEqual(this.photo, messagesChatPreview.photo) && Intrinsics.areEqual(this.isDon, messagesChatPreview.isDon) && Intrinsics.areEqual(this.isGroupChannel, messagesChatPreview.isGroupChannel) && Intrinsics.areEqual(this.button, messagesChatPreview.button);
        }
        return false;
    }

    @Nullable
    public final UserId getAdminId() {
        return this.adminId;
    }

    @Nullable
    public final BaseLinkButton getButton() {
        return this.button;
    }

    @Nullable
    public final Boolean getJoined() {
        return this.joined;
    }

    @Nullable
    public final Integer getLocalId() {
        return this.localId;
    }

    @Nullable
    public final List<UserId> getMembers() {
        return this.members;
    }

    @Nullable
    public final Integer getMembersCount() {
        return this.membersCount;
    }

    @Nullable
    public final MessagesChatSettingsPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        UserId userId = this.adminId;
        int hashCode = (userId == null ? 0 : userId.hashCode()) * 31;
        Boolean bool = this.joined;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num = this.localId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        List<UserId> list = this.members;
        int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num2 = this.membersCount;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.title;
        int hashCode6 = (hashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool2 = this.isMember;
        int hashCode7 = (hashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        MessagesChatSettingsPhoto messagesChatSettingsPhoto = this.photo;
        int hashCode8 = (hashCode7 + (messagesChatSettingsPhoto == null ? 0 : messagesChatSettingsPhoto.hashCode())) * 31;
        Boolean bool3 = this.isDon;
        int hashCode9 = (hashCode8 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.isGroupChannel;
        int hashCode10 = (hashCode9 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        BaseLinkButton baseLinkButton = this.button;
        return hashCode10 + (baseLinkButton != null ? baseLinkButton.hashCode() : 0);
    }

    @Nullable
    public final Boolean isDon() {
        return this.isDon;
    }

    @Nullable
    public final Boolean isGroupChannel() {
        return this.isGroupChannel;
    }

    @Nullable
    public final Boolean isMember() {
        return this.isMember;
    }

    @NotNull
    public String toString() {
        UserId userId = this.adminId;
        Boolean bool = this.joined;
        Integer num = this.localId;
        List<UserId> list = this.members;
        Integer num2 = this.membersCount;
        String str = this.title;
        Boolean bool2 = this.isMember;
        MessagesChatSettingsPhoto messagesChatSettingsPhoto = this.photo;
        Boolean bool3 = this.isDon;
        Boolean bool4 = this.isGroupChannel;
        BaseLinkButton baseLinkButton = this.button;
        return "MessagesChatPreview(adminId=" + userId + ", joined=" + bool + ", localId=" + num + ", members=" + list + ", membersCount=" + num2 + ", title=" + str + ", isMember=" + bool2 + ", photo=" + messagesChatSettingsPhoto + ", isDon=" + bool3 + ", isGroupChannel=" + bool4 + ", button=" + baseLinkButton + ")";
    }

    public /* synthetic */ MessagesChatPreview(UserId userId, Boolean bool, Integer num, List list, Integer num2, String str, Boolean bool2, MessagesChatSettingsPhoto messagesChatSettingsPhoto, Boolean bool3, Boolean bool4, BaseLinkButton baseLinkButton, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : userId, (i9 & 2) != 0 ? null : bool, (i9 & 4) != 0 ? null : num, (i9 & 8) != 0 ? null : list, (i9 & 16) != 0 ? null : num2, (i9 & 32) != 0 ? null : str, (i9 & 64) != 0 ? null : bool2, (i9 & 128) != 0 ? null : messagesChatSettingsPhoto, (i9 & 256) != 0 ? null : bool3, (i9 & 512) != 0 ? null : bool4, (i9 & 1024) == 0 ? baseLinkButton : null);
    }
}
