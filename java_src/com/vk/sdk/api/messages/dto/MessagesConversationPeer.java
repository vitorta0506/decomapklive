package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ.\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesConversationPeer;", "", "id", "", "type", "Lcom/vk/sdk/api/messages/dto/MessagesConversationPeerType;", "localId", "(ILcom/vk/sdk/api/messages/dto/MessagesConversationPeerType;Ljava/lang/Integer;)V", "getId", "()I", "getLocalId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getType", "()Lcom/vk/sdk/api/messages/dto/MessagesConversationPeerType;", "component1", "component2", "component3", "copy", "(ILcom/vk/sdk/api/messages/dto/MessagesConversationPeerType;Ljava/lang/Integer;)Lcom/vk/sdk/api/messages/dto/MessagesConversationPeer;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesConversationPeer {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35907id;
    @SerializedName("local_id")
    @Nullable
    private final Integer localId;
    @SerializedName("type")
    @NotNull
    private final MessagesConversationPeerType type;

    public MessagesConversationPeer(int i9, @NotNull MessagesConversationPeerType type, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f35907id = i9;
        this.type = type;
        this.localId = num;
    }

    public static /* synthetic */ MessagesConversationPeer copy$default(MessagesConversationPeer messagesConversationPeer, int i9, MessagesConversationPeerType messagesConversationPeerType, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = messagesConversationPeer.f35907id;
        }
        if ((i10 & 2) != 0) {
            messagesConversationPeerType = messagesConversationPeer.type;
        }
        if ((i10 & 4) != 0) {
            num = messagesConversationPeer.localId;
        }
        return messagesConversationPeer.copy(i9, messagesConversationPeerType, num);
    }

    public final int component1() {
        return this.f35907id;
    }

    @NotNull
    public final MessagesConversationPeerType component2() {
        return this.type;
    }

    @Nullable
    public final Integer component3() {
        return this.localId;
    }

    @NotNull
    public final MessagesConversationPeer copy(int i9, @NotNull MessagesConversationPeerType type, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MessagesConversationPeer(i9, type, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesConversationPeer) {
            MessagesConversationPeer messagesConversationPeer = (MessagesConversationPeer) obj;
            return this.f35907id == messagesConversationPeer.f35907id && this.type == messagesConversationPeer.type && Intrinsics.areEqual(this.localId, messagesConversationPeer.localId);
        }
        return false;
    }

    public final int getId() {
        return this.f35907id;
    }

    @Nullable
    public final Integer getLocalId() {
        return this.localId;
    }

    @NotNull
    public final MessagesConversationPeerType getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.f35907id * 31) + this.type.hashCode()) * 31;
        Integer num = this.localId;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.f35907id;
        MessagesConversationPeerType messagesConversationPeerType = this.type;
        Integer num = this.localId;
        return "MessagesConversationPeer(id=" + i9 + ", type=" + messagesConversationPeerType + ", localId=" + num + ")";
    }

    public /* synthetic */ MessagesConversationPeer(int i9, MessagesConversationPeerType messagesConversationPeerType, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, messagesConversationPeerType, (i10 & 4) != 0 ? null : num);
    }
}
