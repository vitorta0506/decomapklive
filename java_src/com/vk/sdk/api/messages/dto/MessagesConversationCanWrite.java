package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ$\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesConversationCanWrite;", "", "allowed", "", "reason", "", "(ZLjava/lang/Integer;)V", "getAllowed", "()Z", "getReason", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(ZLjava/lang/Integer;)Lcom/vk/sdk/api/messages/dto/MessagesConversationCanWrite;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesConversationCanWrite {
    @SerializedName("allowed")
    private final boolean allowed;
    @SerializedName("reason")
    @Nullable
    private final Integer reason;

    public MessagesConversationCanWrite(boolean z10, @Nullable Integer num) {
        this.allowed = z10;
        this.reason = num;
    }

    public static /* synthetic */ MessagesConversationCanWrite copy$default(MessagesConversationCanWrite messagesConversationCanWrite, boolean z10, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = messagesConversationCanWrite.allowed;
        }
        if ((i9 & 2) != 0) {
            num = messagesConversationCanWrite.reason;
        }
        return messagesConversationCanWrite.copy(z10, num);
    }

    public final boolean component1() {
        return this.allowed;
    }

    @Nullable
    public final Integer component2() {
        return this.reason;
    }

    @NotNull
    public final MessagesConversationCanWrite copy(boolean z10, @Nullable Integer num) {
        return new MessagesConversationCanWrite(z10, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesConversationCanWrite) {
            MessagesConversationCanWrite messagesConversationCanWrite = (MessagesConversationCanWrite) obj;
            return this.allowed == messagesConversationCanWrite.allowed && Intrinsics.areEqual(this.reason, messagesConversationCanWrite.reason);
        }
        return false;
    }

    public final boolean getAllowed() {
        return this.allowed;
    }

    @Nullable
    public final Integer getReason() {
        return this.reason;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z10 = this.allowed;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        Integer num = this.reason;
        return i9 + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        boolean z10 = this.allowed;
        Integer num = this.reason;
        return "MessagesConversationCanWrite(allowed=" + z10 + ", reason=" + num + ")";
    }

    public /* synthetic */ MessagesConversationCanWrite(boolean z10, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i9 & 2) != 0 ? null : num);
    }
}
