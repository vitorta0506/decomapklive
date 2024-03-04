package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\u0007\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesIsMessagesFromGroupAllowedResponse;", "", "isAllowed", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesIsMessagesFromGroupAllowedResponse {
    @SerializedName("is_allowed")
    @Nullable
    private final BaseBoolInt isAllowed;

    public MessagesIsMessagesFromGroupAllowedResponse() {
        this(null, 1, null);
    }

    public MessagesIsMessagesFromGroupAllowedResponse(@Nullable BaseBoolInt baseBoolInt) {
        this.isAllowed = baseBoolInt;
    }

    public static /* synthetic */ MessagesIsMessagesFromGroupAllowedResponse copy$default(MessagesIsMessagesFromGroupAllowedResponse messagesIsMessagesFromGroupAllowedResponse, BaseBoolInt baseBoolInt, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = messagesIsMessagesFromGroupAllowedResponse.isAllowed;
        }
        return messagesIsMessagesFromGroupAllowedResponse.copy(baseBoolInt);
    }

    @Nullable
    public final BaseBoolInt component1() {
        return this.isAllowed;
    }

    @NotNull
    public final MessagesIsMessagesFromGroupAllowedResponse copy(@Nullable BaseBoolInt baseBoolInt) {
        return new MessagesIsMessagesFromGroupAllowedResponse(baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessagesIsMessagesFromGroupAllowedResponse) && this.isAllowed == ((MessagesIsMessagesFromGroupAllowedResponse) obj).isAllowed;
    }

    public int hashCode() {
        BaseBoolInt baseBoolInt = this.isAllowed;
        if (baseBoolInt == null) {
            return 0;
        }
        return baseBoolInt.hashCode();
    }

    @Nullable
    public final BaseBoolInt isAllowed() {
        return this.isAllowed;
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.isAllowed;
        return "MessagesIsMessagesFromGroupAllowedResponse(isAllowed=" + baseBoolInt + ")";
    }

    public /* synthetic */ MessagesIsMessagesFromGroupAllowedResponse(BaseBoolInt baseBoolInt, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseBoolInt);
    }
}
