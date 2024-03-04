package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.datereport.UGCDataReportDef;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B¡\u0001\u0012\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0003¢\u0006\u0002\u0010\u0015J\u0017\u0010'\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0018\u00010\u0003HÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010+\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0003HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010/\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u00100\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010#Jª\u0001\u00101\u001a\u00020\u00002\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u00020\u00122\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u00020\u0004HÖ\u0001J\t\u00106\u001a\u000207HÖ\u0001R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017R$\u0010\u0002\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b%\u0010\u001cR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0017¨\u00068"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGetLongPollHistoryResponse;", "", "history", "", "", "messages", "Lcom/vk/sdk/api/messages/dto/MessagesLongpollMessages;", "credentials", "Lcom/vk/sdk/api/messages/dto/MessagesLongpollParams;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "chats", "Lcom/vk/sdk/api/messages/dto/MessagesChat;", "newPts", "fromPts", "more", "", "conversations", "Lcom/vk/sdk/api/messages/dto/MessagesConversation;", "(Ljava/util/List;Lcom/vk/sdk/api/messages/dto/MessagesLongpollMessages;Lcom/vk/sdk/api/messages/dto/MessagesLongpollParams;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)V", "getChats", "()Ljava/util/List;", "getConversations", "getCredentials", "()Lcom/vk/sdk/api/messages/dto/MessagesLongpollParams;", "getFromPts", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroups", "getHistory", "getMessages", "()Lcom/vk/sdk/api/messages/dto/MessagesLongpollMessages;", "getMore", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getNewPts", "getProfiles", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/util/List;Lcom/vk/sdk/api/messages/dto/MessagesLongpollMessages;Lcom/vk/sdk/api/messages/dto/MessagesLongpollParams;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)Lcom/vk/sdk/api/messages/dto/MessagesGetLongPollHistoryResponse;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGetLongPollHistoryResponse {
    @SerializedName("chats")
    @Nullable
    private final List<MessagesChat> chats;
    @SerializedName("conversations")
    @Nullable
    private final List<MessagesConversation> conversations;
    @SerializedName("credentials")
    @Nullable
    private final MessagesLongpollParams credentials;
    @SerializedName("from_pts")
    @Nullable
    private final Integer fromPts;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("history")
    @Nullable
    private final List<List<Integer>> history;
    @SerializedName("messages")
    @Nullable
    private final MessagesLongpollMessages messages;
    @SerializedName("more")
    @Nullable
    private final Boolean more;
    @SerializedName("new_pts")
    @Nullable
    private final Integer newPts;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public MessagesGetLongPollHistoryResponse() {
        this(null, null, null, null, null, null, null, null, null, null, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MessagesGetLongPollHistoryResponse(@Nullable List<? extends List<Integer>> list, @Nullable MessagesLongpollMessages messagesLongpollMessages, @Nullable MessagesLongpollParams messagesLongpollParams, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3, @Nullable List<MessagesChat> list4, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable List<MessagesConversation> list5) {
        this.history = list;
        this.messages = messagesLongpollMessages;
        this.credentials = messagesLongpollParams;
        this.profiles = list2;
        this.groups = list3;
        this.chats = list4;
        this.newPts = num;
        this.fromPts = num2;
        this.more = bool;
        this.conversations = list5;
    }

    @Nullable
    public final List<List<Integer>> component1() {
        return this.history;
    }

    @Nullable
    public final List<MessagesConversation> component10() {
        return this.conversations;
    }

    @Nullable
    public final MessagesLongpollMessages component2() {
        return this.messages;
    }

    @Nullable
    public final MessagesLongpollParams component3() {
        return this.credentials;
    }

    @Nullable
    public final List<UsersUserFull> component4() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component5() {
        return this.groups;
    }

    @Nullable
    public final List<MessagesChat> component6() {
        return this.chats;
    }

    @Nullable
    public final Integer component7() {
        return this.newPts;
    }

    @Nullable
    public final Integer component8() {
        return this.fromPts;
    }

    @Nullable
    public final Boolean component9() {
        return this.more;
    }

    @NotNull
    public final MessagesGetLongPollHistoryResponse copy(@Nullable List<? extends List<Integer>> list, @Nullable MessagesLongpollMessages messagesLongpollMessages, @Nullable MessagesLongpollParams messagesLongpollParams, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3, @Nullable List<MessagesChat> list4, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable List<MessagesConversation> list5) {
        return new MessagesGetLongPollHistoryResponse(list, messagesLongpollMessages, messagesLongpollParams, list2, list3, list4, num, num2, bool, list5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGetLongPollHistoryResponse) {
            MessagesGetLongPollHistoryResponse messagesGetLongPollHistoryResponse = (MessagesGetLongPollHistoryResponse) obj;
            return Intrinsics.areEqual(this.history, messagesGetLongPollHistoryResponse.history) && Intrinsics.areEqual(this.messages, messagesGetLongPollHistoryResponse.messages) && Intrinsics.areEqual(this.credentials, messagesGetLongPollHistoryResponse.credentials) && Intrinsics.areEqual(this.profiles, messagesGetLongPollHistoryResponse.profiles) && Intrinsics.areEqual(this.groups, messagesGetLongPollHistoryResponse.groups) && Intrinsics.areEqual(this.chats, messagesGetLongPollHistoryResponse.chats) && Intrinsics.areEqual(this.newPts, messagesGetLongPollHistoryResponse.newPts) && Intrinsics.areEqual(this.fromPts, messagesGetLongPollHistoryResponse.fromPts) && Intrinsics.areEqual(this.more, messagesGetLongPollHistoryResponse.more) && Intrinsics.areEqual(this.conversations, messagesGetLongPollHistoryResponse.conversations);
        }
        return false;
    }

    @Nullable
    public final List<MessagesChat> getChats() {
        return this.chats;
    }

    @Nullable
    public final List<MessagesConversation> getConversations() {
        return this.conversations;
    }

    @Nullable
    public final MessagesLongpollParams getCredentials() {
        return this.credentials;
    }

    @Nullable
    public final Integer getFromPts() {
        return this.fromPts;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<List<Integer>> getHistory() {
        return this.history;
    }

    @Nullable
    public final MessagesLongpollMessages getMessages() {
        return this.messages;
    }

    @Nullable
    public final Boolean getMore() {
        return this.more;
    }

    @Nullable
    public final Integer getNewPts() {
        return this.newPts;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        List<List<Integer>> list = this.history;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        MessagesLongpollMessages messagesLongpollMessages = this.messages;
        int hashCode2 = (hashCode + (messagesLongpollMessages == null ? 0 : messagesLongpollMessages.hashCode())) * 31;
        MessagesLongpollParams messagesLongpollParams = this.credentials;
        int hashCode3 = (hashCode2 + (messagesLongpollParams == null ? 0 : messagesLongpollParams.hashCode())) * 31;
        List<UsersUserFull> list2 = this.profiles;
        int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<GroupsGroupFull> list3 = this.groups;
        int hashCode5 = (hashCode4 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<MessagesChat> list4 = this.chats;
        int hashCode6 = (hashCode5 + (list4 == null ? 0 : list4.hashCode())) * 31;
        Integer num = this.newPts;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.fromPts;
        int hashCode8 = (hashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool = this.more;
        int hashCode9 = (hashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<MessagesConversation> list5 = this.conversations;
        return hashCode9 + (list5 != null ? list5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<List<Integer>> list = this.history;
        MessagesLongpollMessages messagesLongpollMessages = this.messages;
        MessagesLongpollParams messagesLongpollParams = this.credentials;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        List<MessagesChat> list4 = this.chats;
        Integer num = this.newPts;
        Integer num2 = this.fromPts;
        Boolean bool = this.more;
        List<MessagesConversation> list5 = this.conversations;
        return "MessagesGetLongPollHistoryResponse(history=" + list + ", messages=" + messagesLongpollMessages + ", credentials=" + messagesLongpollParams + ", profiles=" + list2 + ", groups=" + list3 + ", chats=" + list4 + ", newPts=" + num + ", fromPts=" + num2 + ", more=" + bool + ", conversations=" + list5 + ")";
    }

    public /* synthetic */ MessagesGetLongPollHistoryResponse(List list, MessagesLongpollMessages messagesLongpollMessages, MessagesLongpollParams messagesLongpollParams, List list2, List list3, List list4, Integer num, Integer num2, Boolean bool, List list5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : messagesLongpollMessages, (i9 & 4) != 0 ? null : messagesLongpollParams, (i9 & 8) != 0 ? null : list2, (i9 & 16) != 0 ? null : list3, (i9 & 32) != 0 ? null : list4, (i9 & 64) != 0 ? null : num, (i9 & 128) != 0 ? null : num2, (i9 & 256) != 0 ? null : bool, (i9 & 512) == 0 ? list5 : null);
    }
}
