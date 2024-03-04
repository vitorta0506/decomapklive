package com.vk.sdk.api.messages.dto;

import androidx.core.app.NotificationCompat;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001:\u0007./01234BY\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u000fHÆ\u0003J]\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020+HÖ\u0001J\t\u0010,\u001a\u00020-HÖ\u0001R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u00065"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions;", "", "invite", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Invite;", "changeInfo", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeInfo;", "changePin", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangePin;", "useMassMentions", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$UseMassMentions;", "seeInviteLink", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$SeeInviteLink;", NotificationCompat.CATEGORY_CALL, "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Call;", "changeAdmins", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeAdmins;", "(Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Invite;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeInfo;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangePin;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$UseMassMentions;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$SeeInviteLink;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Call;Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeAdmins;)V", "getCall", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Call;", "getChangeAdmins", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeAdmins;", "getChangeInfo", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeInfo;", "getChangePin", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangePin;", "getInvite", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Invite;", "getSeeInviteLink", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$SeeInviteLink;", "getUseMassMentions", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$UseMassMentions;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Call", "ChangeAdmins", "ChangeInfo", "ChangePin", "Invite", "SeeInviteLink", "UseMassMentions", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChatSettingsPermissions {
    @SerializedName(NotificationCompat.CATEGORY_CALL)
    @Nullable
    private final Call call;
    @SerializedName("change_admins")
    @Nullable
    private final ChangeAdmins changeAdmins;
    @SerializedName("change_info")
    @Nullable
    private final ChangeInfo changeInfo;
    @SerializedName("change_pin")
    @Nullable
    private final ChangePin changePin;
    @SerializedName("invite")
    @Nullable
    private final Invite invite;
    @SerializedName("see_invite_link")
    @Nullable
    private final SeeInviteLink seeInviteLink;
    @SerializedName("use_mass_mentions")
    @Nullable
    private final UseMassMentions useMassMentions;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Call;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OWNER", "OWNER_AND_ADMINS", "ALL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Call {
        OWNER("owner"),
        OWNER_AND_ADMINS("owner_and_admins"),
        ALL("all");
        
        @NotNull
        private final String value;

        Call(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeAdmins;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OWNER", "OWNER_AND_ADMINS", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum ChangeAdmins {
        OWNER("owner"),
        OWNER_AND_ADMINS("owner_and_admins");
        
        @NotNull
        private final String value;

        ChangeAdmins(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangeInfo;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OWNER", "OWNER_AND_ADMINS", "ALL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum ChangeInfo {
        OWNER("owner"),
        OWNER_AND_ADMINS("owner_and_admins"),
        ALL("all");
        
        @NotNull
        private final String value;

        ChangeInfo(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$ChangePin;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OWNER", "OWNER_AND_ADMINS", "ALL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum ChangePin {
        OWNER("owner"),
        OWNER_AND_ADMINS("owner_and_admins"),
        ALL("all");
        
        @NotNull
        private final String value;

        ChangePin(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$Invite;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OWNER", "OWNER_AND_ADMINS", "ALL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Invite {
        OWNER("owner"),
        OWNER_AND_ADMINS("owner_and_admins"),
        ALL("all");
        
        @NotNull
        private final String value;

        Invite(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$SeeInviteLink;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OWNER", "OWNER_AND_ADMINS", "ALL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum SeeInviteLink {
        OWNER("owner"),
        OWNER_AND_ADMINS("owner_and_admins"),
        ALL("all");
        
        @NotNull
        private final String value;

        SeeInviteLink(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPermissions$UseMassMentions;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OWNER", "OWNER_AND_ADMINS", "ALL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum UseMassMentions {
        OWNER("owner"),
        OWNER_AND_ADMINS("owner_and_admins"),
        ALL("all");
        
        @NotNull
        private final String value;

        UseMassMentions(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public MessagesChatSettingsPermissions() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public MessagesChatSettingsPermissions(@Nullable Invite invite, @Nullable ChangeInfo changeInfo, @Nullable ChangePin changePin, @Nullable UseMassMentions useMassMentions, @Nullable SeeInviteLink seeInviteLink, @Nullable Call call, @Nullable ChangeAdmins changeAdmins) {
        this.invite = invite;
        this.changeInfo = changeInfo;
        this.changePin = changePin;
        this.useMassMentions = useMassMentions;
        this.seeInviteLink = seeInviteLink;
        this.call = call;
        this.changeAdmins = changeAdmins;
    }

    public static /* synthetic */ MessagesChatSettingsPermissions copy$default(MessagesChatSettingsPermissions messagesChatSettingsPermissions, Invite invite, ChangeInfo changeInfo, ChangePin changePin, UseMassMentions useMassMentions, SeeInviteLink seeInviteLink, Call call, ChangeAdmins changeAdmins, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            invite = messagesChatSettingsPermissions.invite;
        }
        if ((i9 & 2) != 0) {
            changeInfo = messagesChatSettingsPermissions.changeInfo;
        }
        ChangeInfo changeInfo2 = changeInfo;
        if ((i9 & 4) != 0) {
            changePin = messagesChatSettingsPermissions.changePin;
        }
        ChangePin changePin2 = changePin;
        if ((i9 & 8) != 0) {
            useMassMentions = messagesChatSettingsPermissions.useMassMentions;
        }
        UseMassMentions useMassMentions2 = useMassMentions;
        if ((i9 & 16) != 0) {
            seeInviteLink = messagesChatSettingsPermissions.seeInviteLink;
        }
        SeeInviteLink seeInviteLink2 = seeInviteLink;
        if ((i9 & 32) != 0) {
            call = messagesChatSettingsPermissions.call;
        }
        Call call2 = call;
        if ((i9 & 64) != 0) {
            changeAdmins = messagesChatSettingsPermissions.changeAdmins;
        }
        return messagesChatSettingsPermissions.copy(invite, changeInfo2, changePin2, useMassMentions2, seeInviteLink2, call2, changeAdmins);
    }

    @Nullable
    public final Invite component1() {
        return this.invite;
    }

    @Nullable
    public final ChangeInfo component2() {
        return this.changeInfo;
    }

    @Nullable
    public final ChangePin component3() {
        return this.changePin;
    }

    @Nullable
    public final UseMassMentions component4() {
        return this.useMassMentions;
    }

    @Nullable
    public final SeeInviteLink component5() {
        return this.seeInviteLink;
    }

    @Nullable
    public final Call component6() {
        return this.call;
    }

    @Nullable
    public final ChangeAdmins component7() {
        return this.changeAdmins;
    }

    @NotNull
    public final MessagesChatSettingsPermissions copy(@Nullable Invite invite, @Nullable ChangeInfo changeInfo, @Nullable ChangePin changePin, @Nullable UseMassMentions useMassMentions, @Nullable SeeInviteLink seeInviteLink, @Nullable Call call, @Nullable ChangeAdmins changeAdmins) {
        return new MessagesChatSettingsPermissions(invite, changeInfo, changePin, useMassMentions, seeInviteLink, call, changeAdmins);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChatSettingsPermissions) {
            MessagesChatSettingsPermissions messagesChatSettingsPermissions = (MessagesChatSettingsPermissions) obj;
            return this.invite == messagesChatSettingsPermissions.invite && this.changeInfo == messagesChatSettingsPermissions.changeInfo && this.changePin == messagesChatSettingsPermissions.changePin && this.useMassMentions == messagesChatSettingsPermissions.useMassMentions && this.seeInviteLink == messagesChatSettingsPermissions.seeInviteLink && this.call == messagesChatSettingsPermissions.call && this.changeAdmins == messagesChatSettingsPermissions.changeAdmins;
        }
        return false;
    }

    @Nullable
    public final Call getCall() {
        return this.call;
    }

    @Nullable
    public final ChangeAdmins getChangeAdmins() {
        return this.changeAdmins;
    }

    @Nullable
    public final ChangeInfo getChangeInfo() {
        return this.changeInfo;
    }

    @Nullable
    public final ChangePin getChangePin() {
        return this.changePin;
    }

    @Nullable
    public final Invite getInvite() {
        return this.invite;
    }

    @Nullable
    public final SeeInviteLink getSeeInviteLink() {
        return this.seeInviteLink;
    }

    @Nullable
    public final UseMassMentions getUseMassMentions() {
        return this.useMassMentions;
    }

    public int hashCode() {
        Invite invite = this.invite;
        int hashCode = (invite == null ? 0 : invite.hashCode()) * 31;
        ChangeInfo changeInfo = this.changeInfo;
        int hashCode2 = (hashCode + (changeInfo == null ? 0 : changeInfo.hashCode())) * 31;
        ChangePin changePin = this.changePin;
        int hashCode3 = (hashCode2 + (changePin == null ? 0 : changePin.hashCode())) * 31;
        UseMassMentions useMassMentions = this.useMassMentions;
        int hashCode4 = (hashCode3 + (useMassMentions == null ? 0 : useMassMentions.hashCode())) * 31;
        SeeInviteLink seeInviteLink = this.seeInviteLink;
        int hashCode5 = (hashCode4 + (seeInviteLink == null ? 0 : seeInviteLink.hashCode())) * 31;
        Call call = this.call;
        int hashCode6 = (hashCode5 + (call == null ? 0 : call.hashCode())) * 31;
        ChangeAdmins changeAdmins = this.changeAdmins;
        return hashCode6 + (changeAdmins != null ? changeAdmins.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Invite invite = this.invite;
        ChangeInfo changeInfo = this.changeInfo;
        ChangePin changePin = this.changePin;
        UseMassMentions useMassMentions = this.useMassMentions;
        SeeInviteLink seeInviteLink = this.seeInviteLink;
        Call call = this.call;
        ChangeAdmins changeAdmins = this.changeAdmins;
        return "MessagesChatSettingsPermissions(invite=" + invite + ", changeInfo=" + changeInfo + ", changePin=" + changePin + ", useMassMentions=" + useMassMentions + ", seeInviteLink=" + seeInviteLink + ", call=" + call + ", changeAdmins=" + changeAdmins + ")";
    }

    public /* synthetic */ MessagesChatSettingsPermissions(Invite invite, ChangeInfo changeInfo, ChangePin changePin, UseMassMentions useMassMentions, SeeInviteLink seeInviteLink, Call call, ChangeAdmins changeAdmins, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : invite, (i9 & 2) != 0 ? null : changeInfo, (i9 & 4) != 0 ? null : changePin, (i9 & 8) != 0 ? null : useMassMentions, (i9 & 16) != 0 ? null : seeInviteLink, (i9 & 32) != 0 ? null : call, (i9 & 64) != 0 ? null : changeAdmins);
    }
}
