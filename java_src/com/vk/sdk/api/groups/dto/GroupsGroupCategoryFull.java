package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b¢\u0006\u0002\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bHÆ\u0003JI\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupCategoryFull;", "", "id", "", "name", "", "pageCount", "pagePreviews", "", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "subcategories", "Lcom/vk/sdk/api/groups/dto/GroupsGroupCategory;", "(ILjava/lang/String;ILjava/util/List;Ljava/util/List;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getPageCount", "getPagePreviews", "()Ljava/util/List;", "getSubcategories", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGroupCategoryFull {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35831id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("page_count")
    private final int pageCount;
    @SerializedName("page_previews")
    @NotNull
    private final List<GroupsGroup> pagePreviews;
    @SerializedName("subcategories")
    @Nullable
    private final List<GroupsGroupCategory> subcategories;

    public GroupsGroupCategoryFull(int i9, @NotNull String name, int i10, @NotNull List<GroupsGroup> pagePreviews, @Nullable List<GroupsGroupCategory> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(pagePreviews, "pagePreviews");
        this.f35831id = i9;
        this.name = name;
        this.pageCount = i10;
        this.pagePreviews = pagePreviews;
        this.subcategories = list;
    }

    public static /* synthetic */ GroupsGroupCategoryFull copy$default(GroupsGroupCategoryFull groupsGroupCategoryFull, int i9, String str, int i10, List list, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = groupsGroupCategoryFull.f35831id;
        }
        if ((i11 & 2) != 0) {
            str = groupsGroupCategoryFull.name;
        }
        String str2 = str;
        if ((i11 & 4) != 0) {
            i10 = groupsGroupCategoryFull.pageCount;
        }
        int i12 = i10;
        List<GroupsGroup> list3 = list;
        if ((i11 & 8) != 0) {
            list3 = groupsGroupCategoryFull.pagePreviews;
        }
        List list4 = list3;
        List<GroupsGroupCategory> list5 = list2;
        if ((i11 & 16) != 0) {
            list5 = groupsGroupCategoryFull.subcategories;
        }
        return groupsGroupCategoryFull.copy(i9, str2, i12, list4, list5);
    }

    public final int component1() {
        return this.f35831id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    public final int component3() {
        return this.pageCount;
    }

    @NotNull
    public final List<GroupsGroup> component4() {
        return this.pagePreviews;
    }

    @Nullable
    public final List<GroupsGroupCategory> component5() {
        return this.subcategories;
    }

    @NotNull
    public final GroupsGroupCategoryFull copy(int i9, @NotNull String name, int i10, @NotNull List<GroupsGroup> pagePreviews, @Nullable List<GroupsGroupCategory> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(pagePreviews, "pagePreviews");
        return new GroupsGroupCategoryFull(i9, name, i10, pagePreviews, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGroupCategoryFull) {
            GroupsGroupCategoryFull groupsGroupCategoryFull = (GroupsGroupCategoryFull) obj;
            return this.f35831id == groupsGroupCategoryFull.f35831id && Intrinsics.areEqual(this.name, groupsGroupCategoryFull.name) && this.pageCount == groupsGroupCategoryFull.pageCount && Intrinsics.areEqual(this.pagePreviews, groupsGroupCategoryFull.pagePreviews) && Intrinsics.areEqual(this.subcategories, groupsGroupCategoryFull.subcategories);
        }
        return false;
    }

    public final int getId() {
        return this.f35831id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getPageCount() {
        return this.pageCount;
    }

    @NotNull
    public final List<GroupsGroup> getPagePreviews() {
        return this.pagePreviews;
    }

    @Nullable
    public final List<GroupsGroupCategory> getSubcategories() {
        return this.subcategories;
    }

    public int hashCode() {
        int hashCode = ((((((this.f35831id * 31) + this.name.hashCode()) * 31) + this.pageCount) * 31) + this.pagePreviews.hashCode()) * 31;
        List<GroupsGroupCategory> list = this.subcategories;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.f35831id;
        String str = this.name;
        int i10 = this.pageCount;
        List<GroupsGroup> list = this.pagePreviews;
        List<GroupsGroupCategory> list2 = this.subcategories;
        return "GroupsGroupCategoryFull(id=" + i9 + ", name=" + str + ", pageCount=" + i10 + ", pagePreviews=" + list + ", subcategories=" + list2 + ")";
    }

    public /* synthetic */ GroupsGroupCategoryFull(int i9, String str, int i10, List list, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, i10, list, (i11 & 16) != 0 ? null : list2);
    }
}
