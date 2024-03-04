package com.vk.sdk.api.friends.dto;

import com.facebook.GraphResponse;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0004#$%&B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u000bHÆ\u0003JC\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse;", "", GraphResponse.SUCCESS_KEY, "", "friendDeleted", "Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$FriendDeleted;", "outRequestDeleted", "Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$OutRequestDeleted;", "inRequestDeleted", "Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$InRequestDeleted;", "suggestionDeleted", "Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$SuggestionDeleted;", "(ILcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$FriendDeleted;Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$OutRequestDeleted;Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$InRequestDeleted;Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$SuggestionDeleted;)V", "getFriendDeleted", "()Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$FriendDeleted;", "getInRequestDeleted", "()Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$InRequestDeleted;", "getOutRequestDeleted", "()Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$OutRequestDeleted;", "getSuccess", "()I", "getSuggestionDeleted", "()Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$SuggestionDeleted;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "FriendDeleted", "InRequestDeleted", "OutRequestDeleted", "SuggestionDeleted", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FriendsDeleteResponse {
    @SerializedName("friend_deleted")
    @Nullable
    private final FriendDeleted friendDeleted;
    @SerializedName("in_request_deleted")
    @Nullable
    private final InRequestDeleted inRequestDeleted;
    @SerializedName("out_request_deleted")
    @Nullable
    private final OutRequestDeleted outRequestDeleted;
    @SerializedName(GraphResponse.SUCCESS_KEY)
    private final int success;
    @SerializedName("suggestion_deleted")
    @Nullable
    private final SuggestionDeleted suggestionDeleted;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$FriendDeleted;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum FriendDeleted {
        OK(1);
        
        private final int value;

        FriendDeleted(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$InRequestDeleted;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum InRequestDeleted {
        OK(1);
        
        private final int value;

        InRequestDeleted(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$OutRequestDeleted;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum OutRequestDeleted {
        OK(1);
        
        private final int value;

        OutRequestDeleted(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse$SuggestionDeleted;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum SuggestionDeleted {
        OK(1);
        
        private final int value;

        SuggestionDeleted(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public FriendsDeleteResponse(int i9, @Nullable FriendDeleted friendDeleted, @Nullable OutRequestDeleted outRequestDeleted, @Nullable InRequestDeleted inRequestDeleted, @Nullable SuggestionDeleted suggestionDeleted) {
        this.success = i9;
        this.friendDeleted = friendDeleted;
        this.outRequestDeleted = outRequestDeleted;
        this.inRequestDeleted = inRequestDeleted;
        this.suggestionDeleted = suggestionDeleted;
    }

    public static /* synthetic */ FriendsDeleteResponse copy$default(FriendsDeleteResponse friendsDeleteResponse, int i9, FriendDeleted friendDeleted, OutRequestDeleted outRequestDeleted, InRequestDeleted inRequestDeleted, SuggestionDeleted suggestionDeleted, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = friendsDeleteResponse.success;
        }
        if ((i10 & 2) != 0) {
            friendDeleted = friendsDeleteResponse.friendDeleted;
        }
        FriendDeleted friendDeleted2 = friendDeleted;
        if ((i10 & 4) != 0) {
            outRequestDeleted = friendsDeleteResponse.outRequestDeleted;
        }
        OutRequestDeleted outRequestDeleted2 = outRequestDeleted;
        if ((i10 & 8) != 0) {
            inRequestDeleted = friendsDeleteResponse.inRequestDeleted;
        }
        InRequestDeleted inRequestDeleted2 = inRequestDeleted;
        if ((i10 & 16) != 0) {
            suggestionDeleted = friendsDeleteResponse.suggestionDeleted;
        }
        return friendsDeleteResponse.copy(i9, friendDeleted2, outRequestDeleted2, inRequestDeleted2, suggestionDeleted);
    }

    public final int component1() {
        return this.success;
    }

    @Nullable
    public final FriendDeleted component2() {
        return this.friendDeleted;
    }

    @Nullable
    public final OutRequestDeleted component3() {
        return this.outRequestDeleted;
    }

    @Nullable
    public final InRequestDeleted component4() {
        return this.inRequestDeleted;
    }

    @Nullable
    public final SuggestionDeleted component5() {
        return this.suggestionDeleted;
    }

    @NotNull
    public final FriendsDeleteResponse copy(int i9, @Nullable FriendDeleted friendDeleted, @Nullable OutRequestDeleted outRequestDeleted, @Nullable InRequestDeleted inRequestDeleted, @Nullable SuggestionDeleted suggestionDeleted) {
        return new FriendsDeleteResponse(i9, friendDeleted, outRequestDeleted, inRequestDeleted, suggestionDeleted);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendsDeleteResponse) {
            FriendsDeleteResponse friendsDeleteResponse = (FriendsDeleteResponse) obj;
            return this.success == friendsDeleteResponse.success && this.friendDeleted == friendsDeleteResponse.friendDeleted && this.outRequestDeleted == friendsDeleteResponse.outRequestDeleted && this.inRequestDeleted == friendsDeleteResponse.inRequestDeleted && this.suggestionDeleted == friendsDeleteResponse.suggestionDeleted;
        }
        return false;
    }

    @Nullable
    public final FriendDeleted getFriendDeleted() {
        return this.friendDeleted;
    }

    @Nullable
    public final InRequestDeleted getInRequestDeleted() {
        return this.inRequestDeleted;
    }

    @Nullable
    public final OutRequestDeleted getOutRequestDeleted() {
        return this.outRequestDeleted;
    }

    public final int getSuccess() {
        return this.success;
    }

    @Nullable
    public final SuggestionDeleted getSuggestionDeleted() {
        return this.suggestionDeleted;
    }

    public int hashCode() {
        int i9 = this.success * 31;
        FriendDeleted friendDeleted = this.friendDeleted;
        int hashCode = (i9 + (friendDeleted == null ? 0 : friendDeleted.hashCode())) * 31;
        OutRequestDeleted outRequestDeleted = this.outRequestDeleted;
        int hashCode2 = (hashCode + (outRequestDeleted == null ? 0 : outRequestDeleted.hashCode())) * 31;
        InRequestDeleted inRequestDeleted = this.inRequestDeleted;
        int hashCode3 = (hashCode2 + (inRequestDeleted == null ? 0 : inRequestDeleted.hashCode())) * 31;
        SuggestionDeleted suggestionDeleted = this.suggestionDeleted;
        return hashCode3 + (suggestionDeleted != null ? suggestionDeleted.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.success;
        FriendDeleted friendDeleted = this.friendDeleted;
        OutRequestDeleted outRequestDeleted = this.outRequestDeleted;
        InRequestDeleted inRequestDeleted = this.inRequestDeleted;
        SuggestionDeleted suggestionDeleted = this.suggestionDeleted;
        return "FriendsDeleteResponse(success=" + i9 + ", friendDeleted=" + friendDeleted + ", outRequestDeleted=" + outRequestDeleted + ", inRequestDeleted=" + inRequestDeleted + ", suggestionDeleted=" + suggestionDeleted + ")";
    }

    public /* synthetic */ FriendsDeleteResponse(int i9, FriendDeleted friendDeleted, OutRequestDeleted outRequestDeleted, InRequestDeleted inRequestDeleted, SuggestionDeleted suggestionDeleted, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : friendDeleted, (i10 & 4) != 0 ? null : outRequestDeleted, (i10 & 8) != 0 ? null : inRequestDeleted, (i10 & 16) != 0 ? null : suggestionDeleted);
    }
}
