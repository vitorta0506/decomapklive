package com.vk.sdk.api.notifications.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageItem;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "status", "", "error", "Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError;)V", "getError", "()Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError;", "getStatus", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError;)Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageItem;", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotificationsSendMessageItem {
    @SerializedName("error")
    @Nullable
    private final NotificationsSendMessageError error;
    @SerializedName("status")
    @Nullable
    private final Boolean status;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;

    public NotificationsSendMessageItem() {
        this(null, null, null, 7, null);
    }

    public NotificationsSendMessageItem(@Nullable UserId userId, @Nullable Boolean bool, @Nullable NotificationsSendMessageError notificationsSendMessageError) {
        this.userId = userId;
        this.status = bool;
        this.error = notificationsSendMessageError;
    }

    public static /* synthetic */ NotificationsSendMessageItem copy$default(NotificationsSendMessageItem notificationsSendMessageItem, UserId userId, Boolean bool, NotificationsSendMessageError notificationsSendMessageError, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = notificationsSendMessageItem.userId;
        }
        if ((i9 & 2) != 0) {
            bool = notificationsSendMessageItem.status;
        }
        if ((i9 & 4) != 0) {
            notificationsSendMessageError = notificationsSendMessageItem.error;
        }
        return notificationsSendMessageItem.copy(userId, bool, notificationsSendMessageError);
    }

    @Nullable
    public final UserId component1() {
        return this.userId;
    }

    @Nullable
    public final Boolean component2() {
        return this.status;
    }

    @Nullable
    public final NotificationsSendMessageError component3() {
        return this.error;
    }

    @NotNull
    public final NotificationsSendMessageItem copy(@Nullable UserId userId, @Nullable Boolean bool, @Nullable NotificationsSendMessageError notificationsSendMessageError) {
        return new NotificationsSendMessageItem(userId, bool, notificationsSendMessageError);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationsSendMessageItem) {
            NotificationsSendMessageItem notificationsSendMessageItem = (NotificationsSendMessageItem) obj;
            return Intrinsics.areEqual(this.userId, notificationsSendMessageItem.userId) && Intrinsics.areEqual(this.status, notificationsSendMessageItem.status) && Intrinsics.areEqual(this.error, notificationsSendMessageItem.error);
        }
        return false;
    }

    @Nullable
    public final NotificationsSendMessageError getError() {
        return this.error;
    }

    @Nullable
    public final Boolean getStatus() {
        return this.status;
    }

    @Nullable
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        UserId userId = this.userId;
        int hashCode = (userId == null ? 0 : userId.hashCode()) * 31;
        Boolean bool = this.status;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        NotificationsSendMessageError notificationsSendMessageError = this.error;
        return hashCode2 + (notificationsSendMessageError != null ? notificationsSendMessageError.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        Boolean bool = this.status;
        NotificationsSendMessageError notificationsSendMessageError = this.error;
        return "NotificationsSendMessageItem(userId=" + userId + ", status=" + bool + ", error=" + notificationsSendMessageError + ")";
    }

    public /* synthetic */ NotificationsSendMessageItem(UserId userId, Boolean bool, NotificationsSendMessageError notificationsSendMessageError, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : userId, (i9 & 2) != 0 ? null : bool, (i9 & 4) != 0 ? null : notificationsSendMessageError);
    }
}
