package com.vk.sdk.api.messages.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b+\b\u0086\b\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0017J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u00101\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010\u001cJ\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0007HÆ\u0003J\u000f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0007HÆ\u0003J²\u0001\u0010:\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\b\b\u0002\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÆ\u0001¢\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020\u00152\b\u0010=\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010>\u001a\u00020\u0005HÖ\u0001J\t\u0010?\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u0014\u0010\u001cR\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u0016\u0010\u001cR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010#R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010#R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010#R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u0006@"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChat;", "", "adminId", "Lcom/vk/dto/common/id/UserId;", "id", "", "type", "", "users", "", "membersCount", "kicked", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "photo100", "photo200", "photo50", "pushSettings", "Lcom/vk/sdk/api/messages/dto/MessagesChatPushSettings;", "title", "isDefaultPhoto", "", "isGroupChannel", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/util/List;ILcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesChatPushSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getAdminId", "()Lcom/vk/dto/common/id/UserId;", "getId", "()I", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getKicked", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getLeft", "getMembersCount", "getPhoto100", "()Ljava/lang/String;", "getPhoto200", "getPhoto50", "getPushSettings", "()Lcom/vk/sdk/api/messages/dto/MessagesChatPushSettings;", "getTitle", "getType", "getUsers", "()Ljava/util/List;", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/util/List;ILcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesChatPushSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesChat;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChat {
    @SerializedName("admin_id")
    @NotNull
    private final UserId adminId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35906id;
    @SerializedName("is_default_photo")
    @Nullable
    private final Boolean isDefaultPhoto;
    @SerializedName("is_group_channel")
    @Nullable
    private final Boolean isGroupChannel;
    @SerializedName("kicked")
    @Nullable
    private final BaseBoolInt kicked;
    @SerializedName(ViewHierarchyConstants.DIMENSION_LEFT_KEY)
    @Nullable
    private final BaseBoolInt left;
    @SerializedName("members_count")
    private final int membersCount;
    @SerializedName("photo_100")
    @Nullable
    private final String photo100;
    @SerializedName("photo_200")
    @Nullable
    private final String photo200;
    @SerializedName("photo_50")
    @Nullable
    private final String photo50;
    @SerializedName("push_settings")
    @Nullable
    private final MessagesChatPushSettings pushSettings;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("type")
    @NotNull
    private final String type;
    @SerializedName("users")
    @NotNull
    private final List<UserId> users;

    public MessagesChat(@NotNull UserId adminId, int i9, @NotNull String type, @NotNull List<UserId> users, int i10, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable MessagesChatPushSettings messagesChatPushSettings, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(adminId, "adminId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(users, "users");
        this.adminId = adminId;
        this.f35906id = i9;
        this.type = type;
        this.users = users;
        this.membersCount = i10;
        this.kicked = baseBoolInt;
        this.left = baseBoolInt2;
        this.photo100 = str;
        this.photo200 = str2;
        this.photo50 = str3;
        this.pushSettings = messagesChatPushSettings;
        this.title = str4;
        this.isDefaultPhoto = bool;
        this.isGroupChannel = bool2;
    }

    @NotNull
    public final UserId component1() {
        return this.adminId;
    }

    @Nullable
    public final String component10() {
        return this.photo50;
    }

    @Nullable
    public final MessagesChatPushSettings component11() {
        return this.pushSettings;
    }

    @Nullable
    public final String component12() {
        return this.title;
    }

    @Nullable
    public final Boolean component13() {
        return this.isDefaultPhoto;
    }

    @Nullable
    public final Boolean component14() {
        return this.isGroupChannel;
    }

    public final int component2() {
        return this.f35906id;
    }

    @NotNull
    public final String component3() {
        return this.type;
    }

    @NotNull
    public final List<UserId> component4() {
        return this.users;
    }

    public final int component5() {
        return this.membersCount;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.kicked;
    }

    @Nullable
    public final BaseBoolInt component7() {
        return this.left;
    }

    @Nullable
    public final String component8() {
        return this.photo100;
    }

    @Nullable
    public final String component9() {
        return this.photo200;
    }

    @NotNull
    public final MessagesChat copy(@NotNull UserId adminId, int i9, @NotNull String type, @NotNull List<UserId> users, int i10, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable MessagesChatPushSettings messagesChatPushSettings, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(adminId, "adminId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(users, "users");
        return new MessagesChat(adminId, i9, type, users, i10, baseBoolInt, baseBoolInt2, str, str2, str3, messagesChatPushSettings, str4, bool, bool2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChat) {
            MessagesChat messagesChat = (MessagesChat) obj;
            return Intrinsics.areEqual(this.adminId, messagesChat.adminId) && this.f35906id == messagesChat.f35906id && Intrinsics.areEqual(this.type, messagesChat.type) && Intrinsics.areEqual(this.users, messagesChat.users) && this.membersCount == messagesChat.membersCount && this.kicked == messagesChat.kicked && this.left == messagesChat.left && Intrinsics.areEqual(this.photo100, messagesChat.photo100) && Intrinsics.areEqual(this.photo200, messagesChat.photo200) && Intrinsics.areEqual(this.photo50, messagesChat.photo50) && Intrinsics.areEqual(this.pushSettings, messagesChat.pushSettings) && Intrinsics.areEqual(this.title, messagesChat.title) && Intrinsics.areEqual(this.isDefaultPhoto, messagesChat.isDefaultPhoto) && Intrinsics.areEqual(this.isGroupChannel, messagesChat.isGroupChannel);
        }
        return false;
    }

    @NotNull
    public final UserId getAdminId() {
        return this.adminId;
    }

    public final int getId() {
        return this.f35906id;
    }

    @Nullable
    public final BaseBoolInt getKicked() {
        return this.kicked;
    }

    @Nullable
    public final BaseBoolInt getLeft() {
        return this.left;
    }

    public final int getMembersCount() {
        return this.membersCount;
    }

    @Nullable
    public final String getPhoto100() {
        return this.photo100;
    }

    @Nullable
    public final String getPhoto200() {
        return this.photo200;
    }

    @Nullable
    public final String getPhoto50() {
        return this.photo50;
    }

    @Nullable
    public final MessagesChatPushSettings getPushSettings() {
        return this.pushSettings;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @NotNull
    public final List<UserId> getUsers() {
        return this.users;
    }

    public int hashCode() {
        int hashCode = ((((((((this.adminId.hashCode() * 31) + this.f35906id) * 31) + this.type.hashCode()) * 31) + this.users.hashCode()) * 31) + this.membersCount) * 31;
        BaseBoolInt baseBoolInt = this.kicked;
        int hashCode2 = (hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.left;
        int hashCode3 = (hashCode2 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        String str = this.photo100;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photo200;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo50;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        MessagesChatPushSettings messagesChatPushSettings = this.pushSettings;
        int hashCode7 = (hashCode6 + (messagesChatPushSettings == null ? 0 : messagesChatPushSettings.hashCode())) * 31;
        String str4 = this.title;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool = this.isDefaultPhoto;
        int hashCode9 = (hashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isGroupChannel;
        return hashCode9 + (bool2 != null ? bool2.hashCode() : 0);
    }

    @Nullable
    public final Boolean isDefaultPhoto() {
        return this.isDefaultPhoto;
    }

    @Nullable
    public final Boolean isGroupChannel() {
        return this.isGroupChannel;
    }

    @NotNull
    public String toString() {
        UserId userId = this.adminId;
        int i9 = this.f35906id;
        String str = this.type;
        List<UserId> list = this.users;
        int i10 = this.membersCount;
        BaseBoolInt baseBoolInt = this.kicked;
        BaseBoolInt baseBoolInt2 = this.left;
        String str2 = this.photo100;
        String str3 = this.photo200;
        String str4 = this.photo50;
        MessagesChatPushSettings messagesChatPushSettings = this.pushSettings;
        String str5 = this.title;
        Boolean bool = this.isDefaultPhoto;
        Boolean bool2 = this.isGroupChannel;
        return "MessagesChat(adminId=" + userId + ", id=" + i9 + ", type=" + str + ", users=" + list + ", membersCount=" + i10 + ", kicked=" + baseBoolInt + ", left=" + baseBoolInt2 + ", photo100=" + str2 + ", photo200=" + str3 + ", photo50=" + str4 + ", pushSettings=" + messagesChatPushSettings + ", title=" + str5 + ", isDefaultPhoto=" + bool + ", isGroupChannel=" + bool2 + ")";
    }

    public /* synthetic */ MessagesChat(UserId userId, int i9, String str, List list, int i10, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, String str2, String str3, String str4, MessagesChatPushSettings messagesChatPushSettings, String str5, Boolean bool, Boolean bool2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, i9, str, list, i10, (i11 & 32) != 0 ? null : baseBoolInt, (i11 & 64) != 0 ? null : baseBoolInt2, (i11 & 128) != 0 ? null : str2, (i11 & 256) != 0 ? null : str3, (i11 & 512) != 0 ? null : str4, (i11 & 1024) != 0 ? null : messagesChatPushSettings, (i11 & 2048) != 0 ? null : str5, (i11 & 4096) != 0 ? null : bool, (i11 & 8192) != 0 ? null : bool2);
    }
}
