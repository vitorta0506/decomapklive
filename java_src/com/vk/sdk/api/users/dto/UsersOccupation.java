package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersOccupation;", "", "id", "", "name", "", "type", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "getType", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/users/dto/UsersOccupation;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersOccupation {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36102id;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("type")
    @Nullable
    private final String type;

    public UsersOccupation() {
        this(null, null, null, 7, null);
    }

    public UsersOccupation(@Nullable Integer num, @Nullable String str, @Nullable String str2) {
        this.f36102id = num;
        this.name = str;
        this.type = str2;
    }

    public static /* synthetic */ UsersOccupation copy$default(UsersOccupation usersOccupation, Integer num, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = usersOccupation.f36102id;
        }
        if ((i9 & 2) != 0) {
            str = usersOccupation.name;
        }
        if ((i9 & 4) != 0) {
            str2 = usersOccupation.type;
        }
        return usersOccupation.copy(num, str, str2);
    }

    @Nullable
    public final Integer component1() {
        return this.f36102id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final String component3() {
        return this.type;
    }

    @NotNull
    public final UsersOccupation copy(@Nullable Integer num, @Nullable String str, @Nullable String str2) {
        return new UsersOccupation(num, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersOccupation) {
            UsersOccupation usersOccupation = (UsersOccupation) obj;
            return Intrinsics.areEqual(this.f36102id, usersOccupation.f36102id) && Intrinsics.areEqual(this.name, usersOccupation.name) && Intrinsics.areEqual(this.type, usersOccupation.type);
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f36102id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.f36102id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.type;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f36102id;
        String str = this.name;
        String str2 = this.type;
        return "UsersOccupation(id=" + num + ", name=" + str + ", type=" + str2 + ")";
    }

    public /* synthetic */ UsersOccupation(Integer num, String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2);
    }
}
