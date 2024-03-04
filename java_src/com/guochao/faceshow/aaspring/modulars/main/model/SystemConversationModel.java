package com.guochao.faceshow.aaspring.modulars.main.model;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Entity(tableName = "system_conversation")
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J0\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;", "", "conversationId", "", "lastMsgTime", "", "content", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getConversationId", "getLastMsgTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;", "equals", "", "other", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemConversationModel {
    @Nullable
    private final String content;
    @PrimaryKey
    @NotNull
    private final String conversationId;
    @Nullable
    private final Long lastMsgTime;

    public SystemConversationModel(@NotNull String conversationId, @Nullable Long l10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(conversationId, "conversationId");
        this.conversationId = conversationId;
        this.lastMsgTime = l10;
        this.content = str;
    }

    public static /* synthetic */ SystemConversationModel copy$default(SystemConversationModel systemConversationModel, String str, Long l10, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = systemConversationModel.conversationId;
        }
        if ((i9 & 2) != 0) {
            l10 = systemConversationModel.lastMsgTime;
        }
        if ((i9 & 4) != 0) {
            str2 = systemConversationModel.content;
        }
        return systemConversationModel.copy(str, l10, str2);
    }

    @NotNull
    public final String component1() {
        return this.conversationId;
    }

    @Nullable
    public final Long component2() {
        return this.lastMsgTime;
    }

    @Nullable
    public final String component3() {
        return this.content;
    }

    @NotNull
    public final SystemConversationModel copy(@NotNull String conversationId, @Nullable Long l10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(conversationId, "conversationId");
        return new SystemConversationModel(conversationId, l10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SystemConversationModel) {
            SystemConversationModel systemConversationModel = (SystemConversationModel) obj;
            return Intrinsics.areEqual(this.conversationId, systemConversationModel.conversationId) && Intrinsics.areEqual(this.lastMsgTime, systemConversationModel.lastMsgTime) && Intrinsics.areEqual(this.content, systemConversationModel.content);
        }
        return false;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getConversationId() {
        return this.conversationId;
    }

    @Nullable
    public final Long getLastMsgTime() {
        return this.lastMsgTime;
    }

    public int hashCode() {
        int hashCode = this.conversationId.hashCode() * 31;
        Long l10 = this.lastMsgTime;
        int hashCode2 = (hashCode + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str = this.content;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "SystemConversationModel(conversationId=" + this.conversationId + ", lastMsgTime=" + this.lastMsgTime + ", content=" + this.content + ')';
    }
}
