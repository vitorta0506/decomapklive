package com.guochao.faceshow.aaspring.beans;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020\u0006HÖ\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0004R\u001e\u0010\u0014\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0004R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0012\"\u0004\b\u0019\u0010\u0004R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\n¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;", "", "messageType", "", "(I)V", "content", "", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "contentDate", "", "getContentDate", "()J", "setContentDate", "(J)V", "getMessageType", "()I", "setMessageType", "typeId", "getTypeId", "setTypeId", "unreadCount", "getUnreadCount", "setUnreadCount", "userNickName", "getUserNickName", "setUserNickName", "component1", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemConversationMessage {
    @Nullable
    private String content;
    private long contentDate;
    private int messageType;
    @SerializedName(alternate = {"type"}, value = "typeId")
    private int typeId;
    private int unreadCount;
    @NotNull
    private String userNickName;

    public SystemConversationMessage() {
        this(0, 1, null);
    }

    public SystemConversationMessage(int i9) {
        this.messageType = i9;
        this.userNickName = "";
        this.content = "";
    }

    public static /* synthetic */ SystemConversationMessage copy$default(SystemConversationMessage systemConversationMessage, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = systemConversationMessage.messageType;
        }
        return systemConversationMessage.copy(i9);
    }

    public final int component1() {
        return this.messageType;
    }

    @NotNull
    public final SystemConversationMessage copy(int i9) {
        return new SystemConversationMessage(i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SystemConversationMessage) && this.messageType == ((SystemConversationMessage) obj).messageType;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    public final long getContentDate() {
        return this.contentDate;
    }

    public final int getMessageType() {
        return this.messageType;
    }

    public final int getTypeId() {
        return this.typeId;
    }

    public final int getUnreadCount() {
        return this.unreadCount;
    }

    @NotNull
    public final String getUserNickName() {
        return this.userNickName;
    }

    public int hashCode() {
        return this.messageType;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setContentDate(long j10) {
        this.contentDate = j10;
    }

    public final void setMessageType(int i9) {
        this.messageType = i9;
    }

    public final void setTypeId(int i9) {
        this.typeId = i9;
    }

    public final void setUnreadCount(int i9) {
        this.unreadCount = i9;
    }

    public final void setUserNickName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userNickName = str;
    }

    @NotNull
    public String toString() {
        return "SystemConversationMessage(messageType=" + this.messageType + ')';
    }

    public /* synthetic */ SystemConversationMessage(int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1 : i9);
    }
}
