package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001#BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003JT\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0005HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\b\u0010\u000fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0006\u0010\u000fR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0011\u0010\rR\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;", "", "visible", "", "lastSeen", "", "isOnline", "appId", "isMobile", "status", "Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;", "(ZLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;)V", "getAppId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLastSeen", "getStatus", "()Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;", "getVisible", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(ZLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;)Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;", "equals", "other", "hashCode", "toString", "", "Status", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersOnlineInfo {
    @SerializedName("app_id")
    @Nullable
    private final Integer appId;
    @SerializedName("is_mobile")
    @Nullable
    private final Boolean isMobile;
    @SerializedName("is_online")
    @Nullable
    private final Boolean isOnline;
    @SerializedName("last_seen")
    @Nullable
    private final Integer lastSeen;
    @SerializedName("status")
    @Nullable
    private final Status status;
    @SerializedName("visible")
    private final boolean visible;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersOnlineInfo$Status;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "RECENTLY", "LAST_WEEK", "LAST_MONTH", "LONG_AGO", "NOT_SHOW", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Status {
        RECENTLY("recently"),
        LAST_WEEK("last_week"),
        LAST_MONTH("last_month"),
        LONG_AGO("long_ago"),
        NOT_SHOW("not_show");
        
        @NotNull
        private final String value;

        Status(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public UsersOnlineInfo(boolean z10, @Nullable Integer num, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Boolean bool2, @Nullable Status status) {
        this.visible = z10;
        this.lastSeen = num;
        this.isOnline = bool;
        this.appId = num2;
        this.isMobile = bool2;
        this.status = status;
    }

    public static /* synthetic */ UsersOnlineInfo copy$default(UsersOnlineInfo usersOnlineInfo, boolean z10, Integer num, Boolean bool, Integer num2, Boolean bool2, Status status, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = usersOnlineInfo.visible;
        }
        if ((i9 & 2) != 0) {
            num = usersOnlineInfo.lastSeen;
        }
        Integer num3 = num;
        if ((i9 & 4) != 0) {
            bool = usersOnlineInfo.isOnline;
        }
        Boolean bool3 = bool;
        if ((i9 & 8) != 0) {
            num2 = usersOnlineInfo.appId;
        }
        Integer num4 = num2;
        if ((i9 & 16) != 0) {
            bool2 = usersOnlineInfo.isMobile;
        }
        Boolean bool4 = bool2;
        if ((i9 & 32) != 0) {
            status = usersOnlineInfo.status;
        }
        return usersOnlineInfo.copy(z10, num3, bool3, num4, bool4, status);
    }

    public final boolean component1() {
        return this.visible;
    }

    @Nullable
    public final Integer component2() {
        return this.lastSeen;
    }

    @Nullable
    public final Boolean component3() {
        return this.isOnline;
    }

    @Nullable
    public final Integer component4() {
        return this.appId;
    }

    @Nullable
    public final Boolean component5() {
        return this.isMobile;
    }

    @Nullable
    public final Status component6() {
        return this.status;
    }

    @NotNull
    public final UsersOnlineInfo copy(boolean z10, @Nullable Integer num, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Boolean bool2, @Nullable Status status) {
        return new UsersOnlineInfo(z10, num, bool, num2, bool2, status);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersOnlineInfo) {
            UsersOnlineInfo usersOnlineInfo = (UsersOnlineInfo) obj;
            return this.visible == usersOnlineInfo.visible && Intrinsics.areEqual(this.lastSeen, usersOnlineInfo.lastSeen) && Intrinsics.areEqual(this.isOnline, usersOnlineInfo.isOnline) && Intrinsics.areEqual(this.appId, usersOnlineInfo.appId) && Intrinsics.areEqual(this.isMobile, usersOnlineInfo.isMobile) && this.status == usersOnlineInfo.status;
        }
        return false;
    }

    @Nullable
    public final Integer getAppId() {
        return this.appId;
    }

    @Nullable
    public final Integer getLastSeen() {
        return this.lastSeen;
    }

    @Nullable
    public final Status getStatus() {
        return this.status;
    }

    public final boolean getVisible() {
        return this.visible;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    public int hashCode() {
        boolean z10 = this.visible;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        Integer num = this.lastSeen;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.isOnline;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num2 = this.appId;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool2 = this.isMobile;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Status status = this.status;
        return hashCode4 + (status != null ? status.hashCode() : 0);
    }

    @Nullable
    public final Boolean isMobile() {
        return this.isMobile;
    }

    @Nullable
    public final Boolean isOnline() {
        return this.isOnline;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.visible;
        Integer num = this.lastSeen;
        Boolean bool = this.isOnline;
        Integer num2 = this.appId;
        Boolean bool2 = this.isMobile;
        Status status = this.status;
        return "UsersOnlineInfo(visible=" + z10 + ", lastSeen=" + num + ", isOnline=" + bool + ", appId=" + num2 + ", isMobile=" + bool2 + ", status=" + status + ")";
    }

    public /* synthetic */ UsersOnlineInfo(boolean z10, Integer num, Boolean bool, Integer num2, Boolean bool2, Status status, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : bool, (i9 & 8) != 0 ? null : num2, (i9 & 16) != 0 ? null : bool2, (i9 & 32) == 0 ? status : null);
    }
}
