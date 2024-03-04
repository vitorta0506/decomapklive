package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseObjectWithName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J/\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupCategory;", "", "id", "", "name", "", "subcategories", "", "Lcom/vk/sdk/api/base/dto/BaseObjectWithName;", "(ILjava/lang/String;Ljava/util/List;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getSubcategories", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGroupCategory {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35830id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("subcategories")
    @Nullable
    private final List<BaseObjectWithName> subcategories;

    public GroupsGroupCategory(int i9, @NotNull String name, @Nullable List<BaseObjectWithName> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f35830id = i9;
        this.name = name;
        this.subcategories = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GroupsGroupCategory copy$default(GroupsGroupCategory groupsGroupCategory, int i9, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = groupsGroupCategory.f35830id;
        }
        if ((i10 & 2) != 0) {
            str = groupsGroupCategory.name;
        }
        if ((i10 & 4) != 0) {
            list = groupsGroupCategory.subcategories;
        }
        return groupsGroupCategory.copy(i9, str, list);
    }

    public final int component1() {
        return this.f35830id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final List<BaseObjectWithName> component3() {
        return this.subcategories;
    }

    @NotNull
    public final GroupsGroupCategory copy(int i9, @NotNull String name, @Nullable List<BaseObjectWithName> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new GroupsGroupCategory(i9, name, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGroupCategory) {
            GroupsGroupCategory groupsGroupCategory = (GroupsGroupCategory) obj;
            return this.f35830id == groupsGroupCategory.f35830id && Intrinsics.areEqual(this.name, groupsGroupCategory.name) && Intrinsics.areEqual(this.subcategories, groupsGroupCategory.subcategories);
        }
        return false;
    }

    public final int getId() {
        return this.f35830id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final List<BaseObjectWithName> getSubcategories() {
        return this.subcategories;
    }

    public int hashCode() {
        int hashCode = ((this.f35830id * 31) + this.name.hashCode()) * 31;
        List<BaseObjectWithName> list = this.subcategories;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.f35830id;
        String str = this.name;
        List<BaseObjectWithName> list = this.subcategories;
        return "GroupsGroupCategory(id=" + i9 + ", name=" + str + ", subcategories=" + list + ")";
    }

    public /* synthetic */ GroupsGroupCategory(int i9, String str, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, (i10 & 4) != 0 ? null : list);
    }
}
