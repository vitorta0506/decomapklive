package com.vk.sdk.api.notifications.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bHÆ\u0003JJ\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020\u000bHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006$"}, d2 = {"Lcom/vk/sdk/api/notifications/dto/NotificationsNotificationItem;", "", "date", "", "feedback", "Lcom/vk/sdk/api/notifications/dto/NotificationsFeedback;", "parent", "Lcom/vk/sdk/api/notifications/dto/NotificationsNotification;", "reply", "Lcom/vk/sdk/api/notifications/dto/NotificationsReply;", "type", "", "(Ljava/lang/Integer;Lcom/vk/sdk/api/notifications/dto/NotificationsFeedback;Lcom/vk/sdk/api/notifications/dto/NotificationsNotification;Lcom/vk/sdk/api/notifications/dto/NotificationsReply;Ljava/lang/String;)V", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getFeedback", "()Lcom/vk/sdk/api/notifications/dto/NotificationsFeedback;", "getParent", "()Lcom/vk/sdk/api/notifications/dto/NotificationsNotification;", "getReply", "()Lcom/vk/sdk/api/notifications/dto/NotificationsReply;", "getType", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Lcom/vk/sdk/api/notifications/dto/NotificationsFeedback;Lcom/vk/sdk/api/notifications/dto/NotificationsNotification;Lcom/vk/sdk/api/notifications/dto/NotificationsReply;Ljava/lang/String;)Lcom/vk/sdk/api/notifications/dto/NotificationsNotificationItem;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotificationsNotificationItem {
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("feedback")
    @Nullable
    private final NotificationsFeedback feedback;
    @SerializedName("parent")
    @Nullable
    private final NotificationsNotification parent;
    @SerializedName("reply")
    @Nullable
    private final NotificationsReply reply;
    @SerializedName("type")
    @Nullable
    private final String type;

    public NotificationsNotificationItem() {
        this(null, null, null, null, null, 31, null);
    }

    public NotificationsNotificationItem(@Nullable Integer num, @Nullable NotificationsFeedback notificationsFeedback, @Nullable NotificationsNotification notificationsNotification, @Nullable NotificationsReply notificationsReply, @Nullable String str) {
        this.date = num;
        this.feedback = notificationsFeedback;
        this.parent = notificationsNotification;
        this.reply = notificationsReply;
        this.type = str;
    }

    public static /* synthetic */ NotificationsNotificationItem copy$default(NotificationsNotificationItem notificationsNotificationItem, Integer num, NotificationsFeedback notificationsFeedback, NotificationsNotification notificationsNotification, NotificationsReply notificationsReply, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = notificationsNotificationItem.date;
        }
        if ((i9 & 2) != 0) {
            notificationsFeedback = notificationsNotificationItem.feedback;
        }
        NotificationsFeedback notificationsFeedback2 = notificationsFeedback;
        if ((i9 & 4) != 0) {
            notificationsNotification = notificationsNotificationItem.parent;
        }
        NotificationsNotification notificationsNotification2 = notificationsNotification;
        if ((i9 & 8) != 0) {
            notificationsReply = notificationsNotificationItem.reply;
        }
        NotificationsReply notificationsReply2 = notificationsReply;
        if ((i9 & 16) != 0) {
            str = notificationsNotificationItem.type;
        }
        return notificationsNotificationItem.copy(num, notificationsFeedback2, notificationsNotification2, notificationsReply2, str);
    }

    @Nullable
    public final Integer component1() {
        return this.date;
    }

    @Nullable
    public final NotificationsFeedback component2() {
        return this.feedback;
    }

    @Nullable
    public final NotificationsNotification component3() {
        return this.parent;
    }

    @Nullable
    public final NotificationsReply component4() {
        return this.reply;
    }

    @Nullable
    public final String component5() {
        return this.type;
    }

    @NotNull
    public final NotificationsNotificationItem copy(@Nullable Integer num, @Nullable NotificationsFeedback notificationsFeedback, @Nullable NotificationsNotification notificationsNotification, @Nullable NotificationsReply notificationsReply, @Nullable String str) {
        return new NotificationsNotificationItem(num, notificationsFeedback, notificationsNotification, notificationsReply, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationsNotificationItem) {
            NotificationsNotificationItem notificationsNotificationItem = (NotificationsNotificationItem) obj;
            return Intrinsics.areEqual(this.date, notificationsNotificationItem.date) && Intrinsics.areEqual(this.feedback, notificationsNotificationItem.feedback) && Intrinsics.areEqual(this.parent, notificationsNotificationItem.parent) && Intrinsics.areEqual(this.reply, notificationsNotificationItem.reply) && Intrinsics.areEqual(this.type, notificationsNotificationItem.type);
        }
        return false;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final NotificationsFeedback getFeedback() {
        return this.feedback;
    }

    @Nullable
    public final NotificationsNotification getParent() {
        return this.parent;
    }

    @Nullable
    public final NotificationsReply getReply() {
        return this.reply;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.date;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        NotificationsFeedback notificationsFeedback = this.feedback;
        int hashCode2 = (hashCode + (notificationsFeedback == null ? 0 : notificationsFeedback.hashCode())) * 31;
        NotificationsNotification notificationsNotification = this.parent;
        int hashCode3 = (hashCode2 + (notificationsNotification == null ? 0 : notificationsNotification.hashCode())) * 31;
        NotificationsReply notificationsReply = this.reply;
        int hashCode4 = (hashCode3 + (notificationsReply == null ? 0 : notificationsReply.hashCode())) * 31;
        String str = this.type;
        return hashCode4 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.date;
        NotificationsFeedback notificationsFeedback = this.feedback;
        NotificationsNotification notificationsNotification = this.parent;
        NotificationsReply notificationsReply = this.reply;
        String str = this.type;
        return "NotificationsNotificationItem(date=" + num + ", feedback=" + notificationsFeedback + ", parent=" + notificationsNotification + ", reply=" + notificationsReply + ", type=" + str + ")";
    }

    public /* synthetic */ NotificationsNotificationItem(Integer num, NotificationsFeedback notificationsFeedback, NotificationsNotification notificationsNotification, NotificationsReply notificationsReply, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : notificationsFeedback, (i9 & 4) != 0 ? null : notificationsNotification, (i9 & 8) != 0 ? null : notificationsReply, (i9 & 16) != 0 ? null : str);
    }
}
