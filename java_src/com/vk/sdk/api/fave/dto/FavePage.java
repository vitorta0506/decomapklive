package com.vk.sdk.api.fave.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010\"\u001a\u0004\u0018\u00010\u000eHÆ\u0003JV\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\fHÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006*"}, d2 = {"Lcom/vk/sdk/api/fave/dto/FavePage;", "", "description", "", "tags", "", "Lcom/vk/sdk/api/fave/dto/FaveTag;", "type", "Lcom/vk/sdk/api/fave/dto/FavePageType;", "group", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "updatedDate", "", "user", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "(Ljava/lang/String;Ljava/util/List;Lcom/vk/sdk/api/fave/dto/FavePageType;Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V", "getDescription", "()Ljava/lang/String;", "getGroup", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "getTags", "()Ljava/util/List;", "getType", "()Lcom/vk/sdk/api/fave/dto/FavePageType;", "getUpdatedDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUser", "()Lcom/vk/sdk/api/users/dto/UsersUserFull;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/util/List;Lcom/vk/sdk/api/fave/dto/FavePageType;Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)Lcom/vk/sdk/api/fave/dto/FavePage;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FavePage {
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("group")
    @Nullable
    private final GroupsGroupFull group;
    @SerializedName("tags")
    @NotNull
    private final List<FaveTag> tags;
    @SerializedName("type")
    @NotNull
    private final FavePageType type;
    @SerializedName("updated_date")
    @Nullable
    private final Integer updatedDate;
    @SerializedName("user")
    @Nullable
    private final UsersUserFull user;

    public FavePage(@NotNull String description, @NotNull List<FaveTag> tags, @NotNull FavePageType type, @Nullable GroupsGroupFull groupsGroupFull, @Nullable Integer num, @Nullable UsersUserFull usersUserFull) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(type, "type");
        this.description = description;
        this.tags = tags;
        this.type = type;
        this.group = groupsGroupFull;
        this.updatedDate = num;
        this.user = usersUserFull;
    }

    public static /* synthetic */ FavePage copy$default(FavePage favePage, String str, List list, FavePageType favePageType, GroupsGroupFull groupsGroupFull, Integer num, UsersUserFull usersUserFull, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = favePage.description;
        }
        List<FaveTag> list2 = list;
        if ((i9 & 2) != 0) {
            list2 = favePage.tags;
        }
        List list3 = list2;
        if ((i9 & 4) != 0) {
            favePageType = favePage.type;
        }
        FavePageType favePageType2 = favePageType;
        if ((i9 & 8) != 0) {
            groupsGroupFull = favePage.group;
        }
        GroupsGroupFull groupsGroupFull2 = groupsGroupFull;
        if ((i9 & 16) != 0) {
            num = favePage.updatedDate;
        }
        Integer num2 = num;
        if ((i9 & 32) != 0) {
            usersUserFull = favePage.user;
        }
        return favePage.copy(str, list3, favePageType2, groupsGroupFull2, num2, usersUserFull);
    }

    @NotNull
    public final String component1() {
        return this.description;
    }

    @NotNull
    public final List<FaveTag> component2() {
        return this.tags;
    }

    @NotNull
    public final FavePageType component3() {
        return this.type;
    }

    @Nullable
    public final GroupsGroupFull component4() {
        return this.group;
    }

    @Nullable
    public final Integer component5() {
        return this.updatedDate;
    }

    @Nullable
    public final UsersUserFull component6() {
        return this.user;
    }

    @NotNull
    public final FavePage copy(@NotNull String description, @NotNull List<FaveTag> tags, @NotNull FavePageType type, @Nullable GroupsGroupFull groupsGroupFull, @Nullable Integer num, @Nullable UsersUserFull usersUserFull) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(type, "type");
        return new FavePage(description, tags, type, groupsGroupFull, num, usersUserFull);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FavePage) {
            FavePage favePage = (FavePage) obj;
            return Intrinsics.areEqual(this.description, favePage.description) && Intrinsics.areEqual(this.tags, favePage.tags) && this.type == favePage.type && Intrinsics.areEqual(this.group, favePage.group) && Intrinsics.areEqual(this.updatedDate, favePage.updatedDate) && Intrinsics.areEqual(this.user, favePage.user);
        }
        return false;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final GroupsGroupFull getGroup() {
        return this.group;
    }

    @NotNull
    public final List<FaveTag> getTags() {
        return this.tags;
    }

    @NotNull
    public final FavePageType getType() {
        return this.type;
    }

    @Nullable
    public final Integer getUpdatedDate() {
        return this.updatedDate;
    }

    @Nullable
    public final UsersUserFull getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode = ((((this.description.hashCode() * 31) + this.tags.hashCode()) * 31) + this.type.hashCode()) * 31;
        GroupsGroupFull groupsGroupFull = this.group;
        int hashCode2 = (hashCode + (groupsGroupFull == null ? 0 : groupsGroupFull.hashCode())) * 31;
        Integer num = this.updatedDate;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        UsersUserFull usersUserFull = this.user;
        return hashCode3 + (usersUserFull != null ? usersUserFull.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.description;
        List<FaveTag> list = this.tags;
        FavePageType favePageType = this.type;
        GroupsGroupFull groupsGroupFull = this.group;
        Integer num = this.updatedDate;
        UsersUserFull usersUserFull = this.user;
        return "FavePage(description=" + str + ", tags=" + list + ", type=" + favePageType + ", group=" + groupsGroupFull + ", updatedDate=" + num + ", user=" + usersUserFull + ")";
    }

    public /* synthetic */ FavePage(String str, List list, FavePageType favePageType, GroupsGroupFull groupsGroupFull, Integer num, UsersUserFull usersUserFull, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, favePageType, (i9 & 8) != 0 ? null : groupsGroupFull, (i9 & 16) != 0 ? null : num, (i9 & 32) != 0 ? null : usersUserFull);
    }
}
