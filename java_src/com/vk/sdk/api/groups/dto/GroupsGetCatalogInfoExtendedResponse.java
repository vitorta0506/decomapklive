package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;", "", "enabled", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "categories", "", "Lcom/vk/sdk/api/groups/dto/GroupsGroupCategoryFull;", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;)V", "getCategories", "()Ljava/util/List;", "getEnabled", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGetCatalogInfoExtendedResponse {
    @SerializedName("categories")
    @Nullable
    private final List<GroupsGroupCategoryFull> categories;
    @SerializedName("enabled")
    @NotNull
    private final BaseBoolInt enabled;

    public GroupsGetCatalogInfoExtendedResponse(@NotNull BaseBoolInt enabled, @Nullable List<GroupsGroupCategoryFull> list) {
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        this.enabled = enabled;
        this.categories = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GroupsGetCatalogInfoExtendedResponse copy$default(GroupsGetCatalogInfoExtendedResponse groupsGetCatalogInfoExtendedResponse, BaseBoolInt baseBoolInt, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = groupsGetCatalogInfoExtendedResponse.enabled;
        }
        if ((i9 & 2) != 0) {
            list = groupsGetCatalogInfoExtendedResponse.categories;
        }
        return groupsGetCatalogInfoExtendedResponse.copy(baseBoolInt, list);
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.enabled;
    }

    @Nullable
    public final List<GroupsGroupCategoryFull> component2() {
        return this.categories;
    }

    @NotNull
    public final GroupsGetCatalogInfoExtendedResponse copy(@NotNull BaseBoolInt enabled, @Nullable List<GroupsGroupCategoryFull> list) {
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        return new GroupsGetCatalogInfoExtendedResponse(enabled, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGetCatalogInfoExtendedResponse) {
            GroupsGetCatalogInfoExtendedResponse groupsGetCatalogInfoExtendedResponse = (GroupsGetCatalogInfoExtendedResponse) obj;
            return this.enabled == groupsGetCatalogInfoExtendedResponse.enabled && Intrinsics.areEqual(this.categories, groupsGetCatalogInfoExtendedResponse.categories);
        }
        return false;
    }

    @Nullable
    public final List<GroupsGroupCategoryFull> getCategories() {
        return this.categories;
    }

    @NotNull
    public final BaseBoolInt getEnabled() {
        return this.enabled;
    }

    public int hashCode() {
        int hashCode = this.enabled.hashCode() * 31;
        List<GroupsGroupCategoryFull> list = this.categories;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.enabled;
        List<GroupsGroupCategoryFull> list = this.categories;
        return "GroupsGetCatalogInfoExtendedResponse(enabled=" + baseBoolInt + ", categories=" + list + ")";
    }

    public /* synthetic */ GroupsGetCatalogInfoExtendedResponse(BaseBoolInt baseBoolInt, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseBoolInt, (i9 & 2) != 0 ? null : list);
    }
}
