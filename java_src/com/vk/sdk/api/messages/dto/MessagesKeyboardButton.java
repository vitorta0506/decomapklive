package com.vk.sdk.api.messages.dto;

import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButton;", "", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction;", "color", "Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButton$Color;", "(Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction;Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButton$Color;)V", "getAction", "()Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButtonPropertyAction;", "getColor", "()Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButton$Color;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Color", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesKeyboardButton {
    @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
    @NotNull
    private final MessagesKeyboardButtonPropertyAction action;
    @SerializedName("color")
    @Nullable
    private final Color color;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButton$Color;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "DEFAULT", "POSITIVE", "NEGATIVE", "PRIMARY", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Color {
        DEFAULT(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND),
        POSITIVE("positive"),
        NEGATIVE("negative"),
        PRIMARY("primary");
        
        @NotNull
        private final String value;

        Color(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public MessagesKeyboardButton(@NotNull MessagesKeyboardButtonPropertyAction action, @Nullable Color color) {
        Intrinsics.checkNotNullParameter(action, "action");
        this.action = action;
        this.color = color;
    }

    public static /* synthetic */ MessagesKeyboardButton copy$default(MessagesKeyboardButton messagesKeyboardButton, MessagesKeyboardButtonPropertyAction messagesKeyboardButtonPropertyAction, Color color, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            messagesKeyboardButtonPropertyAction = messagesKeyboardButton.action;
        }
        if ((i9 & 2) != 0) {
            color = messagesKeyboardButton.color;
        }
        return messagesKeyboardButton.copy(messagesKeyboardButtonPropertyAction, color);
    }

    @NotNull
    public final MessagesKeyboardButtonPropertyAction component1() {
        return this.action;
    }

    @Nullable
    public final Color component2() {
        return this.color;
    }

    @NotNull
    public final MessagesKeyboardButton copy(@NotNull MessagesKeyboardButtonPropertyAction action, @Nullable Color color) {
        Intrinsics.checkNotNullParameter(action, "action");
        return new MessagesKeyboardButton(action, color);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesKeyboardButton) {
            MessagesKeyboardButton messagesKeyboardButton = (MessagesKeyboardButton) obj;
            return Intrinsics.areEqual(this.action, messagesKeyboardButton.action) && this.color == messagesKeyboardButton.color;
        }
        return false;
    }

    @NotNull
    public final MessagesKeyboardButtonPropertyAction getAction() {
        return this.action;
    }

    @Nullable
    public final Color getColor() {
        return this.color;
    }

    public int hashCode() {
        int hashCode = this.action.hashCode() * 31;
        Color color = this.color;
        return hashCode + (color == null ? 0 : color.hashCode());
    }

    @NotNull
    public String toString() {
        MessagesKeyboardButtonPropertyAction messagesKeyboardButtonPropertyAction = this.action;
        Color color = this.color;
        return "MessagesKeyboardButton(action=" + messagesKeyboardButtonPropertyAction + ", color=" + color + ")";
    }

    public /* synthetic */ MessagesKeyboardButton(MessagesKeyboardButtonPropertyAction messagesKeyboardButtonPropertyAction, Color color, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesKeyboardButtonPropertyAction, (i9 & 2) != 0 ? null : color);
    }
}
