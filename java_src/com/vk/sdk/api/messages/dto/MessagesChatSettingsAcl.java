package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b)\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J~\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020\u00032\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020/HÖ\u0001R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0010R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0010¨\u00060"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsAcl;", "", "canChangeInfo", "", "canChangeInviteLink", "canChangePin", "canInvite", "canPromoteUsers", "canSeeInviteLink", "canModerate", "canCopyChat", "canCall", "canUseMassMentions", "canChangeServiceType", "(ZZZZZZZZZZLjava/lang/Boolean;)V", "getCanCall", "()Z", "getCanChangeInfo", "getCanChangeInviteLink", "getCanChangePin", "getCanChangeServiceType", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCanCopyChat", "getCanInvite", "getCanModerate", "getCanPromoteUsers", "getCanSeeInviteLink", "getCanUseMassMentions", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ZZZZZZZZZZLjava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsAcl;", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChatSettingsAcl {
    @SerializedName("can_call")
    private final boolean canCall;
    @SerializedName("can_change_info")
    private final boolean canChangeInfo;
    @SerializedName("can_change_invite_link")
    private final boolean canChangeInviteLink;
    @SerializedName("can_change_pin")
    private final boolean canChangePin;
    @SerializedName("can_change_service_type")
    @Nullable
    private final Boolean canChangeServiceType;
    @SerializedName("can_copy_chat")
    private final boolean canCopyChat;
    @SerializedName("can_invite")
    private final boolean canInvite;
    @SerializedName("can_moderate")
    private final boolean canModerate;
    @SerializedName("can_promote_users")
    private final boolean canPromoteUsers;
    @SerializedName("can_see_invite_link")
    private final boolean canSeeInviteLink;
    @SerializedName("can_use_mass_mentions")
    private final boolean canUseMassMentions;

    public MessagesChatSettingsAcl(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, @Nullable Boolean bool) {
        this.canChangeInfo = z10;
        this.canChangeInviteLink = z11;
        this.canChangePin = z12;
        this.canInvite = z13;
        this.canPromoteUsers = z14;
        this.canSeeInviteLink = z15;
        this.canModerate = z16;
        this.canCopyChat = z17;
        this.canCall = z18;
        this.canUseMassMentions = z19;
        this.canChangeServiceType = bool;
    }

    public final boolean component1() {
        return this.canChangeInfo;
    }

    public final boolean component10() {
        return this.canUseMassMentions;
    }

    @Nullable
    public final Boolean component11() {
        return this.canChangeServiceType;
    }

    public final boolean component2() {
        return this.canChangeInviteLink;
    }

    public final boolean component3() {
        return this.canChangePin;
    }

    public final boolean component4() {
        return this.canInvite;
    }

    public final boolean component5() {
        return this.canPromoteUsers;
    }

    public final boolean component6() {
        return this.canSeeInviteLink;
    }

    public final boolean component7() {
        return this.canModerate;
    }

    public final boolean component8() {
        return this.canCopyChat;
    }

    public final boolean component9() {
        return this.canCall;
    }

    @NotNull
    public final MessagesChatSettingsAcl copy(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, @Nullable Boolean bool) {
        return new MessagesChatSettingsAcl(z10, z11, z12, z13, z14, z15, z16, z17, z18, z19, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChatSettingsAcl) {
            MessagesChatSettingsAcl messagesChatSettingsAcl = (MessagesChatSettingsAcl) obj;
            return this.canChangeInfo == messagesChatSettingsAcl.canChangeInfo && this.canChangeInviteLink == messagesChatSettingsAcl.canChangeInviteLink && this.canChangePin == messagesChatSettingsAcl.canChangePin && this.canInvite == messagesChatSettingsAcl.canInvite && this.canPromoteUsers == messagesChatSettingsAcl.canPromoteUsers && this.canSeeInviteLink == messagesChatSettingsAcl.canSeeInviteLink && this.canModerate == messagesChatSettingsAcl.canModerate && this.canCopyChat == messagesChatSettingsAcl.canCopyChat && this.canCall == messagesChatSettingsAcl.canCall && this.canUseMassMentions == messagesChatSettingsAcl.canUseMassMentions && Intrinsics.areEqual(this.canChangeServiceType, messagesChatSettingsAcl.canChangeServiceType);
        }
        return false;
    }

    public final boolean getCanCall() {
        return this.canCall;
    }

    public final boolean getCanChangeInfo() {
        return this.canChangeInfo;
    }

    public final boolean getCanChangeInviteLink() {
        return this.canChangeInviteLink;
    }

    public final boolean getCanChangePin() {
        return this.canChangePin;
    }

    @Nullable
    public final Boolean getCanChangeServiceType() {
        return this.canChangeServiceType;
    }

    public final boolean getCanCopyChat() {
        return this.canCopyChat;
    }

    public final boolean getCanInvite() {
        return this.canInvite;
    }

    public final boolean getCanModerate() {
        return this.canModerate;
    }

    public final boolean getCanPromoteUsers() {
        return this.canPromoteUsers;
    }

    public final boolean getCanSeeInviteLink() {
        return this.canSeeInviteLink;
    }

    public final boolean getCanUseMassMentions() {
        return this.canUseMassMentions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v8, types: [boolean] */
    public int hashCode() {
        boolean z10 = this.canChangeInfo;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        ?? r22 = this.canChangeInviteLink;
        int i10 = r22;
        if (r22 != 0) {
            i10 = 1;
        }
        int i11 = (i9 + i10) * 31;
        ?? r23 = this.canChangePin;
        int i12 = r23;
        if (r23 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        ?? r24 = this.canInvite;
        int i14 = r24;
        if (r24 != 0) {
            i14 = 1;
        }
        int i15 = (i13 + i14) * 31;
        ?? r25 = this.canPromoteUsers;
        int i16 = r25;
        if (r25 != 0) {
            i16 = 1;
        }
        int i17 = (i15 + i16) * 31;
        ?? r26 = this.canSeeInviteLink;
        int i18 = r26;
        if (r26 != 0) {
            i18 = 1;
        }
        int i19 = (i17 + i18) * 31;
        ?? r27 = this.canModerate;
        int i20 = r27;
        if (r27 != 0) {
            i20 = 1;
        }
        int i21 = (i19 + i20) * 31;
        ?? r28 = this.canCopyChat;
        int i22 = r28;
        if (r28 != 0) {
            i22 = 1;
        }
        int i23 = (i21 + i22) * 31;
        ?? r29 = this.canCall;
        int i24 = r29;
        if (r29 != 0) {
            i24 = 1;
        }
        int i25 = (i23 + i24) * 31;
        boolean z11 = this.canUseMassMentions;
        int i26 = (i25 + (z11 ? 1 : z11 ? 1 : 0)) * 31;
        Boolean bool = this.canChangeServiceType;
        return i26 + (bool == null ? 0 : bool.hashCode());
    }

    @NotNull
    public String toString() {
        boolean z10 = this.canChangeInfo;
        boolean z11 = this.canChangeInviteLink;
        boolean z12 = this.canChangePin;
        boolean z13 = this.canInvite;
        boolean z14 = this.canPromoteUsers;
        boolean z15 = this.canSeeInviteLink;
        boolean z16 = this.canModerate;
        boolean z17 = this.canCopyChat;
        boolean z18 = this.canCall;
        boolean z19 = this.canUseMassMentions;
        Boolean bool = this.canChangeServiceType;
        return "MessagesChatSettingsAcl(canChangeInfo=" + z10 + ", canChangeInviteLink=" + z11 + ", canChangePin=" + z12 + ", canInvite=" + z13 + ", canPromoteUsers=" + z14 + ", canSeeInviteLink=" + z15 + ", canModerate=" + z16 + ", canCopyChat=" + z17 + ", canCall=" + z18 + ", canUseMassMentions=" + z19 + ", canChangeServiceType=" + bool + ")";
    }

    public /* synthetic */ MessagesChatSettingsAcl(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, Boolean bool, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, z12, z13, z14, z15, z16, z17, z18, z19, (i9 & 1024) != 0 ? null : bool);
    }
}
