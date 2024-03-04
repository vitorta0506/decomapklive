package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010 \u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u000fJ`\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\u000b2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\bHÖ\u0001J\t\u0010&\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\u000fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersUserMin;", "", "id", "Lcom/vk/dto/common/id/UserId;", "deactivated", "", "firstName", "hidden", "", "lastName", "canAccessClosed", "", "isClosed", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getCanAccessClosed", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getDeactivated", "()Ljava/lang/String;", "getFirstName", "getHidden", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "()Lcom/vk/dto/common/id/UserId;", "getLastName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/users/dto/UsersUserMin;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersUserMin {
    @SerializedName("can_access_closed")
    @Nullable
    private final Boolean canAccessClosed;
    @SerializedName("deactivated")
    @Nullable
    private final String deactivated;
    @SerializedName("first_name")
    @Nullable
    private final String firstName;
    @SerializedName("hidden")
    @Nullable
    private final Integer hidden;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final UserId f36110id;
    @SerializedName("is_closed")
    @Nullable
    private final Boolean isClosed;
    @SerializedName("last_name")
    @Nullable
    private final String lastName;

    public UsersUserMin(@NotNull UserId id2, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f36110id = id2;
        this.deactivated = str;
        this.firstName = str2;
        this.hidden = num;
        this.lastName = str3;
        this.canAccessClosed = bool;
        this.isClosed = bool2;
    }

    public static /* synthetic */ UsersUserMin copy$default(UsersUserMin usersUserMin, UserId userId, String str, String str2, Integer num, String str3, Boolean bool, Boolean bool2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = usersUserMin.f36110id;
        }
        if ((i9 & 2) != 0) {
            str = usersUserMin.deactivated;
        }
        String str4 = str;
        if ((i9 & 4) != 0) {
            str2 = usersUserMin.firstName;
        }
        String str5 = str2;
        if ((i9 & 8) != 0) {
            num = usersUserMin.hidden;
        }
        Integer num2 = num;
        if ((i9 & 16) != 0) {
            str3 = usersUserMin.lastName;
        }
        String str6 = str3;
        if ((i9 & 32) != 0) {
            bool = usersUserMin.canAccessClosed;
        }
        Boolean bool3 = bool;
        if ((i9 & 64) != 0) {
            bool2 = usersUserMin.isClosed;
        }
        return usersUserMin.copy(userId, str4, str5, num2, str6, bool3, bool2);
    }

    @NotNull
    public final UserId component1() {
        return this.f36110id;
    }

    @Nullable
    public final String component2() {
        return this.deactivated;
    }

    @Nullable
    public final String component3() {
        return this.firstName;
    }

    @Nullable
    public final Integer component4() {
        return this.hidden;
    }

    @Nullable
    public final String component5() {
        return this.lastName;
    }

    @Nullable
    public final Boolean component6() {
        return this.canAccessClosed;
    }

    @Nullable
    public final Boolean component7() {
        return this.isClosed;
    }

    @NotNull
    public final UsersUserMin copy(@NotNull UserId id2, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        return new UsersUserMin(id2, str, str2, num, str3, bool, bool2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersUserMin) {
            UsersUserMin usersUserMin = (UsersUserMin) obj;
            return Intrinsics.areEqual(this.f36110id, usersUserMin.f36110id) && Intrinsics.areEqual(this.deactivated, usersUserMin.deactivated) && Intrinsics.areEqual(this.firstName, usersUserMin.firstName) && Intrinsics.areEqual(this.hidden, usersUserMin.hidden) && Intrinsics.areEqual(this.lastName, usersUserMin.lastName) && Intrinsics.areEqual(this.canAccessClosed, usersUserMin.canAccessClosed) && Intrinsics.areEqual(this.isClosed, usersUserMin.isClosed);
        }
        return false;
    }

    @Nullable
    public final Boolean getCanAccessClosed() {
        return this.canAccessClosed;
    }

    @Nullable
    public final String getDeactivated() {
        return this.deactivated;
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @Nullable
    public final Integer getHidden() {
        return this.hidden;
    }

    @NotNull
    public final UserId getId() {
        return this.f36110id;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    public int hashCode() {
        int hashCode = this.f36110id.hashCode() * 31;
        String str = this.deactivated;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.firstName;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.hidden;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.lastName;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.canAccessClosed;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isClosed;
        return hashCode6 + (bool2 != null ? bool2.hashCode() : 0);
    }

    @Nullable
    public final Boolean isClosed() {
        return this.isClosed;
    }

    @NotNull
    public String toString() {
        UserId userId = this.f36110id;
        String str = this.deactivated;
        String str2 = this.firstName;
        Integer num = this.hidden;
        String str3 = this.lastName;
        Boolean bool = this.canAccessClosed;
        Boolean bool2 = this.isClosed;
        return "UsersUserMin(id=" + userId + ", deactivated=" + str + ", firstName=" + str2 + ", hidden=" + num + ", lastName=" + str3 + ", canAccessClosed=" + bool + ", isClosed=" + bool2 + ")";
    }

    public /* synthetic */ UsersUserMin(UserId userId, String str, String str2, Integer num, String str3, Boolean bool, Boolean bool2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : bool, (i9 & 64) == 0 ? bool2 : null);
    }
}
