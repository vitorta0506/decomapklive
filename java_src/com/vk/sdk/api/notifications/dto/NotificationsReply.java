package com.vk.sdk.api.notifications.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ2\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\bR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u000b\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/notifications/dto/NotificationsReply;", "", "date", "", "id", ViewHierarchyConstants.TEXT_KEY, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getText", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/notifications/dto/NotificationsReply;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotificationsReply {
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35963id;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final Integer text;

    public NotificationsReply() {
        this(null, null, null, 7, null);
    }

    public NotificationsReply(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        this.date = num;
        this.f35963id = num2;
        this.text = num3;
    }

    public static /* synthetic */ NotificationsReply copy$default(NotificationsReply notificationsReply, Integer num, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = notificationsReply.date;
        }
        if ((i9 & 2) != 0) {
            num2 = notificationsReply.f35963id;
        }
        if ((i9 & 4) != 0) {
            num3 = notificationsReply.text;
        }
        return notificationsReply.copy(num, num2, num3);
    }

    @Nullable
    public final Integer component1() {
        return this.date;
    }

    @Nullable
    public final Integer component2() {
        return this.f35963id;
    }

    @Nullable
    public final Integer component3() {
        return this.text;
    }

    @NotNull
    public final NotificationsReply copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        return new NotificationsReply(num, num2, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationsReply) {
            NotificationsReply notificationsReply = (NotificationsReply) obj;
            return Intrinsics.areEqual(this.date, notificationsReply.date) && Intrinsics.areEqual(this.f35963id, notificationsReply.f35963id) && Intrinsics.areEqual(this.text, notificationsReply.text);
        }
        return false;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getId() {
        return this.f35963id;
    }

    @Nullable
    public final Integer getText() {
        return this.text;
    }

    public int hashCode() {
        Integer num = this.date;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.f35963id;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.text;
        return hashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.date;
        Integer num2 = this.f35963id;
        Integer num3 = this.text;
        return "NotificationsReply(date=" + num + ", id=" + num2 + ", text=" + num3 + ")";
    }

    public /* synthetic */ NotificationsReply(Integer num, Integer num2, Integer num3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3);
    }
}
