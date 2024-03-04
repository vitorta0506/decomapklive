package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J8\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupPublicCategoryList;", "", "id", "", "name", "", "subcategories", "", "Lcom/vk/sdk/api/groups/dto/GroupsGroupCategoryType;", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "getSubcategories", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vk/sdk/api/groups/dto/GroupsGroupPublicCategoryList;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGroupPublicCategoryList {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35834id;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("subcategories")
    @Nullable
    private final List<GroupsGroupCategoryType> subcategories;

    public GroupsGroupPublicCategoryList() {
        this(null, null, null, 7, null);
    }

    public GroupsGroupPublicCategoryList(@Nullable Integer num, @Nullable String str, @Nullable List<GroupsGroupCategoryType> list) {
        this.f35834id = num;
        this.name = str;
        this.subcategories = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GroupsGroupPublicCategoryList copy$default(GroupsGroupPublicCategoryList groupsGroupPublicCategoryList, Integer num, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = groupsGroupPublicCategoryList.f35834id;
        }
        if ((i9 & 2) != 0) {
            str = groupsGroupPublicCategoryList.name;
        }
        if ((i9 & 4) != 0) {
            list = groupsGroupPublicCategoryList.subcategories;
        }
        return groupsGroupPublicCategoryList.copy(num, str, list);
    }

    @Nullable
    public final Integer component1() {
        return this.f35834id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final List<GroupsGroupCategoryType> component3() {
        return this.subcategories;
    }

    @NotNull
    public final GroupsGroupPublicCategoryList copy(@Nullable Integer num, @Nullable String str, @Nullable List<GroupsGroupCategoryType> list) {
        return new GroupsGroupPublicCategoryList(num, str, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGroupPublicCategoryList) {
            GroupsGroupPublicCategoryList groupsGroupPublicCategoryList = (GroupsGroupPublicCategoryList) obj;
            return Intrinsics.areEqual(this.f35834id, groupsGroupPublicCategoryList.f35834id) && Intrinsics.areEqual(this.name, groupsGroupPublicCategoryList.name) && Intrinsics.areEqual(this.subcategories, groupsGroupPublicCategoryList.subcategories);
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f35834id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final List<GroupsGroupCategoryType> getSubcategories() {
        return this.subcategories;
    }

    public int hashCode() {
        Integer num = this.f35834id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<GroupsGroupCategoryType> list = this.subcategories;
        return hashCode2 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f35834id;
        String str = this.name;
        List<GroupsGroupCategoryType> list = this.subcategories;
        return "GroupsGroupPublicCategoryList(id=" + num + ", name=" + str + ", subcategories=" + list + ")";
    }

    public /* synthetic */ GroupsGroupPublicCategoryList(Integer num, String str, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : list);
    }
}
