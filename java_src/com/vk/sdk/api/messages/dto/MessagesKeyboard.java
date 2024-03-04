package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u0015\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010JF\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "", "oneTime", "", "buttons", "", "Lcom/vk/sdk/api/messages/dto/MessagesKeyboardButton;", "authorId", "Lcom/vk/dto/common/id/UserId;", "inline", "(ZLjava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)V", "getAuthorId", "()Lcom/vk/dto/common/id/UserId;", "getButtons", "()Ljava/util/List;", "getInline", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getOneTime", "()Z", "component1", "component2", "component3", "component4", "copy", "(ZLjava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesKeyboard {
    @SerializedName("author_id")
    @Nullable
    private final UserId authorId;
    @SerializedName("buttons")
    @NotNull
    private final List<List<MessagesKeyboardButton>> buttons;
    @SerializedName("inline")
    @Nullable
    private final Boolean inline;
    @SerializedName("one_time")
    private final boolean oneTime;

    /* JADX WARN: Multi-variable type inference failed */
    public MessagesKeyboard(boolean z10, @NotNull List<? extends List<MessagesKeyboardButton>> buttons, @Nullable UserId userId, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(buttons, "buttons");
        this.oneTime = z10;
        this.buttons = buttons;
        this.authorId = userId;
        this.inline = bool;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MessagesKeyboard copy$default(MessagesKeyboard messagesKeyboard, boolean z10, List list, UserId userId, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = messagesKeyboard.oneTime;
        }
        if ((i9 & 2) != 0) {
            list = messagesKeyboard.buttons;
        }
        if ((i9 & 4) != 0) {
            userId = messagesKeyboard.authorId;
        }
        if ((i9 & 8) != 0) {
            bool = messagesKeyboard.inline;
        }
        return messagesKeyboard.copy(z10, list, userId, bool);
    }

    public final boolean component1() {
        return this.oneTime;
    }

    @NotNull
    public final List<List<MessagesKeyboardButton>> component2() {
        return this.buttons;
    }

    @Nullable
    public final UserId component3() {
        return this.authorId;
    }

    @Nullable
    public final Boolean component4() {
        return this.inline;
    }

    @NotNull
    public final MessagesKeyboard copy(boolean z10, @NotNull List<? extends List<MessagesKeyboardButton>> buttons, @Nullable UserId userId, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(buttons, "buttons");
        return new MessagesKeyboard(z10, buttons, userId, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesKeyboard) {
            MessagesKeyboard messagesKeyboard = (MessagesKeyboard) obj;
            return this.oneTime == messagesKeyboard.oneTime && Intrinsics.areEqual(this.buttons, messagesKeyboard.buttons) && Intrinsics.areEqual(this.authorId, messagesKeyboard.authorId) && Intrinsics.areEqual(this.inline, messagesKeyboard.inline);
        }
        return false;
    }

    @Nullable
    public final UserId getAuthorId() {
        return this.authorId;
    }

    @NotNull
    public final List<List<MessagesKeyboardButton>> getButtons() {
        return this.buttons;
    }

    @Nullable
    public final Boolean getInline() {
        return this.inline;
    }

    public final boolean getOneTime() {
        return this.oneTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public int hashCode() {
        boolean z10 = this.oneTime;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int hashCode = ((r02 * 31) + this.buttons.hashCode()) * 31;
        UserId userId = this.authorId;
        int hashCode2 = (hashCode + (userId == null ? 0 : userId.hashCode())) * 31;
        Boolean bool = this.inline;
        return hashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        boolean z10 = this.oneTime;
        List<List<MessagesKeyboardButton>> list = this.buttons;
        UserId userId = this.authorId;
        Boolean bool = this.inline;
        return "MessagesKeyboard(oneTime=" + z10 + ", buttons=" + list + ", authorId=" + userId + ", inline=" + bool + ")";
    }

    public /* synthetic */ MessagesKeyboard(boolean z10, List list, UserId userId, Boolean bool, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, list, (i9 & 4) != 0 ? null : userId, (i9 & 8) != 0 ? null : bool);
    }
}
