package com.vk.sdk.api.notifications.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError;", "", "code", "Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError$Code;", "description", "", "(Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError$Code;Ljava/lang/String;)V", "getCode", "()Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError$Code;", "getDescription", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Code", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotificationsSendMessageError {
    @SerializedName("code")
    @Nullable
    private final Code code;
    @SerializedName("description")
    @Nullable
    private final String description;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageError$Code;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NOTIFICATIONS_DISABLED", "FLOOD_CONTROL_PER_HOUR", "FLOOD_CONTROL_PER_DAY", "APP_IS_NOT_INSTALLED", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Code {
        NOTIFICATIONS_DISABLED(1),
        FLOOD_CONTROL_PER_HOUR(2),
        FLOOD_CONTROL_PER_DAY(3),
        APP_IS_NOT_INSTALLED(4);
        
        private final int value;

        Code(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public NotificationsSendMessageError() {
        this(null, null, 3, null);
    }

    public NotificationsSendMessageError(@Nullable Code code, @Nullable String str) {
        this.code = code;
        this.description = str;
    }

    public static /* synthetic */ NotificationsSendMessageError copy$default(NotificationsSendMessageError notificationsSendMessageError, Code code, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            code = notificationsSendMessageError.code;
        }
        if ((i9 & 2) != 0) {
            str = notificationsSendMessageError.description;
        }
        return notificationsSendMessageError.copy(code, str);
    }

    @Nullable
    public final Code component1() {
        return this.code;
    }

    @Nullable
    public final String component2() {
        return this.description;
    }

    @NotNull
    public final NotificationsSendMessageError copy(@Nullable Code code, @Nullable String str) {
        return new NotificationsSendMessageError(code, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationsSendMessageError) {
            NotificationsSendMessageError notificationsSendMessageError = (NotificationsSendMessageError) obj;
            return this.code == notificationsSendMessageError.code && Intrinsics.areEqual(this.description, notificationsSendMessageError.description);
        }
        return false;
    }

    @Nullable
    public final Code getCode() {
        return this.code;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    public int hashCode() {
        Code code = this.code;
        int hashCode = (code == null ? 0 : code.hashCode()) * 31;
        String str = this.description;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Code code = this.code;
        String str = this.description;
        return "NotificationsSendMessageError(code=" + code + ", description=" + str + ")";
    }

    public /* synthetic */ NotificationsSendMessageError(Code code, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : code, (i9 & 2) != 0 ? null : str);
    }
}
