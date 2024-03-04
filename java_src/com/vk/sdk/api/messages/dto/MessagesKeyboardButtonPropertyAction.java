package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0017B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction;", "", "hash", "", "type", "Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction$Type;", "payload", "(Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction$Type;Ljava/lang/String;)V", "getHash", "()Ljava/lang/String;", "getPayload", "getType", "()Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction$Type;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesKeyboardButtonPropertyAction {
    @SerializedName("hash")
    @NotNull
    private final String hash;
    @SerializedName("payload")
    @Nullable
    private final String payload;
    @SerializedName("type")
    @NotNull
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "VKPAY", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        VKPAY("vkpay");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public MessagesKeyboardButtonPropertyAction(@NotNull String hash, @NotNull Type type, @Nullable String str) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(type, "type");
        this.hash = hash;
        this.type = type;
        this.payload = str;
    }

    public static /* synthetic */ MessagesKeyboardButtonPropertyAction copy$default(MessagesKeyboardButtonPropertyAction messagesKeyboardButtonPropertyAction, String str, Type type, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = messagesKeyboardButtonPropertyAction.hash;
        }
        if ((i9 & 2) != 0) {
            type = messagesKeyboardButtonPropertyAction.type;
        }
        if ((i9 & 4) != 0) {
            str2 = messagesKeyboardButtonPropertyAction.payload;
        }
        return messagesKeyboardButtonPropertyAction.copy(str, type, str2);
    }

    @NotNull
    public final String component1() {
        return this.hash;
    }

    @NotNull
    public final Type component2() {
        return this.type;
    }

    @Nullable
    public final String component3() {
        return this.payload;
    }

    @NotNull
    public final MessagesKeyboardButtonPropertyAction copy(@NotNull String hash, @NotNull Type type, @Nullable String str) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(type, "type");
        return new MessagesKeyboardButtonPropertyAction(hash, type, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesKeyboardButtonPropertyAction) {
            MessagesKeyboardButtonPropertyAction messagesKeyboardButtonPropertyAction = (MessagesKeyboardButtonPropertyAction) obj;
            return Intrinsics.areEqual(this.hash, messagesKeyboardButtonPropertyAction.hash) && this.type == messagesKeyboardButtonPropertyAction.type && Intrinsics.areEqual(this.payload, messagesKeyboardButtonPropertyAction.payload);
        }
        return false;
    }

    @NotNull
    public final String getHash() {
        return this.hash;
    }

    @Nullable
    public final String getPayload() {
        return this.payload;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.hash.hashCode() * 31) + this.type.hashCode()) * 31;
        String str = this.payload;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.hash;
        Type type = this.type;
        String str2 = this.payload;
        return "MessagesKeyboardButtonPropertyAction(hash=" + str + ", type=" + type + ", payload=" + str2 + ")";
    }

    public /* synthetic */ MessagesKeyboardButtonPropertyAction(String str, Type type, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, type, (i9 & 4) != 0 ? null : str2);
    }
}
