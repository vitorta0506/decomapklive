package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJJ\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u000e\u0010\nR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u000f\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatRestrictions;", "", "adminsPromoteUsers", "", "onlyAdminsEditInfo", "onlyAdminsEditPin", "onlyAdminsInvite", "onlyAdminsKick", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getAdminsPromoteUsers", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getOnlyAdminsEditInfo", "getOnlyAdminsEditPin", "getOnlyAdminsInvite", "getOnlyAdminsKick", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesChatRestrictions;", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChatRestrictions {
    @SerializedName("admins_promote_users")
    @Nullable
    private final Boolean adminsPromoteUsers;
    @SerializedName("only_admins_edit_info")
    @Nullable
    private final Boolean onlyAdminsEditInfo;
    @SerializedName("only_admins_edit_pin")
    @Nullable
    private final Boolean onlyAdminsEditPin;
    @SerializedName("only_admins_invite")
    @Nullable
    private final Boolean onlyAdminsInvite;
    @SerializedName("only_admins_kick")
    @Nullable
    private final Boolean onlyAdminsKick;

    public MessagesChatRestrictions() {
        this(null, null, null, null, null, 31, null);
    }

    public MessagesChatRestrictions(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Boolean bool5) {
        this.adminsPromoteUsers = bool;
        this.onlyAdminsEditInfo = bool2;
        this.onlyAdminsEditPin = bool3;
        this.onlyAdminsInvite = bool4;
        this.onlyAdminsKick = bool5;
    }

    public static /* synthetic */ MessagesChatRestrictions copy$default(MessagesChatRestrictions messagesChatRestrictions, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = messagesChatRestrictions.adminsPromoteUsers;
        }
        if ((i9 & 2) != 0) {
            bool2 = messagesChatRestrictions.onlyAdminsEditInfo;
        }
        Boolean bool6 = bool2;
        if ((i9 & 4) != 0) {
            bool3 = messagesChatRestrictions.onlyAdminsEditPin;
        }
        Boolean bool7 = bool3;
        if ((i9 & 8) != 0) {
            bool4 = messagesChatRestrictions.onlyAdminsInvite;
        }
        Boolean bool8 = bool4;
        if ((i9 & 16) != 0) {
            bool5 = messagesChatRestrictions.onlyAdminsKick;
        }
        return messagesChatRestrictions.copy(bool, bool6, bool7, bool8, bool5);
    }

    @Nullable
    public final Boolean component1() {
        return this.adminsPromoteUsers;
    }

    @Nullable
    public final Boolean component2() {
        return this.onlyAdminsEditInfo;
    }

    @Nullable
    public final Boolean component3() {
        return this.onlyAdminsEditPin;
    }

    @Nullable
    public final Boolean component4() {
        return this.onlyAdminsInvite;
    }

    @Nullable
    public final Boolean component5() {
        return this.onlyAdminsKick;
    }

    @NotNull
    public final MessagesChatRestrictions copy(@Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Boolean bool5) {
        return new MessagesChatRestrictions(bool, bool2, bool3, bool4, bool5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChatRestrictions) {
            MessagesChatRestrictions messagesChatRestrictions = (MessagesChatRestrictions) obj;
            return Intrinsics.areEqual(this.adminsPromoteUsers, messagesChatRestrictions.adminsPromoteUsers) && Intrinsics.areEqual(this.onlyAdminsEditInfo, messagesChatRestrictions.onlyAdminsEditInfo) && Intrinsics.areEqual(this.onlyAdminsEditPin, messagesChatRestrictions.onlyAdminsEditPin) && Intrinsics.areEqual(this.onlyAdminsInvite, messagesChatRestrictions.onlyAdminsInvite) && Intrinsics.areEqual(this.onlyAdminsKick, messagesChatRestrictions.onlyAdminsKick);
        }
        return false;
    }

    @Nullable
    public final Boolean getAdminsPromoteUsers() {
        return this.adminsPromoteUsers;
    }

    @Nullable
    public final Boolean getOnlyAdminsEditInfo() {
        return this.onlyAdminsEditInfo;
    }

    @Nullable
    public final Boolean getOnlyAdminsEditPin() {
        return this.onlyAdminsEditPin;
    }

    @Nullable
    public final Boolean getOnlyAdminsInvite() {
        return this.onlyAdminsInvite;
    }

    @Nullable
    public final Boolean getOnlyAdminsKick() {
        return this.onlyAdminsKick;
    }

    public int hashCode() {
        Boolean bool = this.adminsPromoteUsers;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.onlyAdminsEditInfo;
        int hashCode2 = (hashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.onlyAdminsEditPin;
        int hashCode3 = (hashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.onlyAdminsInvite;
        int hashCode4 = (hashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.onlyAdminsKick;
        return hashCode4 + (bool5 != null ? bool5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Boolean bool = this.adminsPromoteUsers;
        Boolean bool2 = this.onlyAdminsEditInfo;
        Boolean bool3 = this.onlyAdminsEditPin;
        Boolean bool4 = this.onlyAdminsInvite;
        Boolean bool5 = this.onlyAdminsKick;
        return "MessagesChatRestrictions(adminsPromoteUsers=" + bool + ", onlyAdminsEditInfo=" + bool2 + ", onlyAdminsEditPin=" + bool3 + ", onlyAdminsInvite=" + bool4 + ", onlyAdminsKick=" + bool5 + ")";
    }

    public /* synthetic */ MessagesChatRestrictions(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : bool, (i9 & 2) != 0 ? null : bool2, (i9 & 4) != 0 ? null : bool3, (i9 & 8) != 0 ? null : bool4, (i9 & 16) != 0 ? null : bool5);
    }
}
