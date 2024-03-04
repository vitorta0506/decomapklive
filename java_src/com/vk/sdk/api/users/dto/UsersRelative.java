package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001cB1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J7\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersRelative;", "", "type", "Lcom/vk/sdk/api/users/dto/UsersRelative$Type;", "birthDate", "", "id", "Lcom/vk/dto/common/id/UserId;", "name", "(Lcom/vk/sdk/api/users/dto/UsersRelative$Type;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)V", "getBirthDate", "()Ljava/lang/String;", "getId", "()Lcom/vk/dto/common/id/UserId;", "getName", "getType", "()Lcom/vk/sdk/api/users/dto/UsersRelative$Type;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersRelative {
    @SerializedName("birth_date")
    @Nullable
    private final String birthDate;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final UserId f36103id;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("type")
    @NotNull
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersRelative$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PARENT", "CHILD", "GRANDPARENT", "GRANDCHILD", "SIBLING", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        PARENT("parent"),
        CHILD("child"),
        GRANDPARENT("grandparent"),
        GRANDCHILD("grandchild"),
        SIBLING("sibling");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public UsersRelative(@NotNull Type type, @Nullable String str, @Nullable UserId userId, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.birthDate = str;
        this.f36103id = userId;
        this.name = str2;
    }

    public static /* synthetic */ UsersRelative copy$default(UsersRelative usersRelative, Type type, String str, UserId userId, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            type = usersRelative.type;
        }
        if ((i9 & 2) != 0) {
            str = usersRelative.birthDate;
        }
        if ((i9 & 4) != 0) {
            userId = usersRelative.f36103id;
        }
        if ((i9 & 8) != 0) {
            str2 = usersRelative.name;
        }
        return usersRelative.copy(type, str, userId, str2);
    }

    @NotNull
    public final Type component1() {
        return this.type;
    }

    @Nullable
    public final String component2() {
        return this.birthDate;
    }

    @Nullable
    public final UserId component3() {
        return this.f36103id;
    }

    @Nullable
    public final String component4() {
        return this.name;
    }

    @NotNull
    public final UsersRelative copy(@NotNull Type type, @Nullable String str, @Nullable UserId userId, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new UsersRelative(type, str, userId, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersRelative) {
            UsersRelative usersRelative = (UsersRelative) obj;
            return this.type == usersRelative.type && Intrinsics.areEqual(this.birthDate, usersRelative.birthDate) && Intrinsics.areEqual(this.f36103id, usersRelative.f36103id) && Intrinsics.areEqual(this.name, usersRelative.name);
        }
        return false;
    }

    @Nullable
    public final String getBirthDate() {
        return this.birthDate;
    }

    @Nullable
    public final UserId getId() {
        return this.f36103id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        String str = this.birthDate;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        UserId userId = this.f36103id;
        int hashCode3 = (hashCode2 + (userId == null ? 0 : userId.hashCode())) * 31;
        String str2 = this.name;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Type type = this.type;
        String str = this.birthDate;
        UserId userId = this.f36103id;
        String str2 = this.name;
        return "UsersRelative(type=" + type + ", birthDate=" + str + ", id=" + userId + ", name=" + str2 + ")";
    }

    public /* synthetic */ UsersRelative(Type type, String str, UserId userId, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(type, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : userId, (i9 & 8) != 0 ? null : str2);
    }
}
