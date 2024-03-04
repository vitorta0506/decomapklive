package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0014Jl\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u000bHÖ\u0001J\t\u0010%\u001a\u00020&HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0007\u0010\u000fR\u001a\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\t\u0010\u000fR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\b\u0010\u000fR\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0017\u0010\u0014¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesConversationMember;", "", "memberId", "Lcom/vk/dto/common/id/UserId;", "canKick", "", "invitedBy", "isAdmin", "isOwner", "isMessageRequest", "joinDate", "", "requestDate", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCanKick", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getInvitedBy", "()Lcom/vk/dto/common/id/UserId;", "getJoinDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMemberId", "getRequestDate", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/messages/dto/MessagesConversationMember;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesConversationMember {
    @SerializedName("can_kick")
    @Nullable
    private final Boolean canKick;
    @SerializedName("invited_by")
    @Nullable
    private final UserId invitedBy;
    @SerializedName("is_admin")
    @Nullable
    private final Boolean isAdmin;
    @SerializedName("is_message_request")
    @Nullable
    private final Boolean isMessageRequest;
    @SerializedName("is_owner")
    @Nullable
    private final Boolean isOwner;
    @SerializedName("join_date")
    @Nullable
    private final Integer joinDate;
    @SerializedName("member_id")
    @NotNull
    private final UserId memberId;
    @SerializedName("request_date")
    @Nullable
    private final Integer requestDate;

    public MessagesConversationMember(@NotNull UserId memberId, @Nullable Boolean bool, @Nullable UserId userId, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(memberId, "memberId");
        this.memberId = memberId;
        this.canKick = bool;
        this.invitedBy = userId;
        this.isAdmin = bool2;
        this.isOwner = bool3;
        this.isMessageRequest = bool4;
        this.joinDate = num;
        this.requestDate = num2;
    }

    @NotNull
    public final UserId component1() {
        return this.memberId;
    }

    @Nullable
    public final Boolean component2() {
        return this.canKick;
    }

    @Nullable
    public final UserId component3() {
        return this.invitedBy;
    }

    @Nullable
    public final Boolean component4() {
        return this.isAdmin;
    }

    @Nullable
    public final Boolean component5() {
        return this.isOwner;
    }

    @Nullable
    public final Boolean component6() {
        return this.isMessageRequest;
    }

    @Nullable
    public final Integer component7() {
        return this.joinDate;
    }

    @Nullable
    public final Integer component8() {
        return this.requestDate;
    }

    @NotNull
    public final MessagesConversationMember copy(@NotNull UserId memberId, @Nullable Boolean bool, @Nullable UserId userId, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(memberId, "memberId");
        return new MessagesConversationMember(memberId, bool, userId, bool2, bool3, bool4, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesConversationMember) {
            MessagesConversationMember messagesConversationMember = (MessagesConversationMember) obj;
            return Intrinsics.areEqual(this.memberId, messagesConversationMember.memberId) && Intrinsics.areEqual(this.canKick, messagesConversationMember.canKick) && Intrinsics.areEqual(this.invitedBy, messagesConversationMember.invitedBy) && Intrinsics.areEqual(this.isAdmin, messagesConversationMember.isAdmin) && Intrinsics.areEqual(this.isOwner, messagesConversationMember.isOwner) && Intrinsics.areEqual(this.isMessageRequest, messagesConversationMember.isMessageRequest) && Intrinsics.areEqual(this.joinDate, messagesConversationMember.joinDate) && Intrinsics.areEqual(this.requestDate, messagesConversationMember.requestDate);
        }
        return false;
    }

    @Nullable
    public final Boolean getCanKick() {
        return this.canKick;
    }

    @Nullable
    public final UserId getInvitedBy() {
        return this.invitedBy;
    }

    @Nullable
    public final Integer getJoinDate() {
        return this.joinDate;
    }

    @NotNull
    public final UserId getMemberId() {
        return this.memberId;
    }

    @Nullable
    public final Integer getRequestDate() {
        return this.requestDate;
    }

    public int hashCode() {
        int hashCode = this.memberId.hashCode() * 31;
        Boolean bool = this.canKick;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        UserId userId = this.invitedBy;
        int hashCode3 = (hashCode2 + (userId == null ? 0 : userId.hashCode())) * 31;
        Boolean bool2 = this.isAdmin;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isOwner;
        int hashCode5 = (hashCode4 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.isMessageRequest;
        int hashCode6 = (hashCode5 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Integer num = this.joinDate;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.requestDate;
        return hashCode7 + (num2 != null ? num2.hashCode() : 0);
    }

    @Nullable
    public final Boolean isAdmin() {
        return this.isAdmin;
    }

    @Nullable
    public final Boolean isMessageRequest() {
        return this.isMessageRequest;
    }

    @Nullable
    public final Boolean isOwner() {
        return this.isOwner;
    }

    @NotNull
    public String toString() {
        UserId userId = this.memberId;
        Boolean bool = this.canKick;
        UserId userId2 = this.invitedBy;
        Boolean bool2 = this.isAdmin;
        Boolean bool3 = this.isOwner;
        Boolean bool4 = this.isMessageRequest;
        Integer num = this.joinDate;
        Integer num2 = this.requestDate;
        return "MessagesConversationMember(memberId=" + userId + ", canKick=" + bool + ", invitedBy=" + userId2 + ", isAdmin=" + bool2 + ", isOwner=" + bool3 + ", isMessageRequest=" + bool4 + ", joinDate=" + num + ", requestDate=" + num2 + ")";
    }

    public /* synthetic */ MessagesConversationMember(UserId userId, Boolean bool, UserId userId2, Boolean bool2, Boolean bool3, Boolean bool4, Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, (i9 & 2) != 0 ? null : bool, (i9 & 4) != 0 ? null : userId2, (i9 & 8) != 0 ? null : bool2, (i9 & 16) != 0 ? null : bool3, (i9 & 32) != 0 ? null : bool4, (i9 & 64) != 0 ? null : num, (i9 & 128) == 0 ? num2 : null);
    }
}
