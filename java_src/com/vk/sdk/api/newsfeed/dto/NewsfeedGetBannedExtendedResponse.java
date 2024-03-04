package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u0011\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J-\u0010\r\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetBannedExtendedResponse;", "", "profiles", "", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(Ljava/util/List;Ljava/util/List;)V", "getGroups", "()Ljava/util/List;", "getProfiles", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedGetBannedExtendedResponse {
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public NewsfeedGetBannedExtendedResponse() {
        this(null, null, 3, null);
    }

    public NewsfeedGetBannedExtendedResponse(@Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        this.profiles = list;
        this.groups = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewsfeedGetBannedExtendedResponse copy$default(NewsfeedGetBannedExtendedResponse newsfeedGetBannedExtendedResponse, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = newsfeedGetBannedExtendedResponse.profiles;
        }
        if ((i9 & 2) != 0) {
            list2 = newsfeedGetBannedExtendedResponse.groups;
        }
        return newsfeedGetBannedExtendedResponse.copy(list, list2);
    }

    @Nullable
    public final List<UsersUserFull> component1() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component2() {
        return this.groups;
    }

    @NotNull
    public final NewsfeedGetBannedExtendedResponse copy(@Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        return new NewsfeedGetBannedExtendedResponse(list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedGetBannedExtendedResponse) {
            NewsfeedGetBannedExtendedResponse newsfeedGetBannedExtendedResponse = (NewsfeedGetBannedExtendedResponse) obj;
            return Intrinsics.areEqual(this.profiles, newsfeedGetBannedExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, newsfeedGetBannedExtendedResponse.groups);
        }
        return false;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        List<UsersUserFull> list = this.profiles;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        return hashCode + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<UsersUserFull> list = this.profiles;
        List<GroupsGroupFull> list2 = this.groups;
        return "NewsfeedGetBannedExtendedResponse(profiles=" + list + ", groups=" + list2 + ")";
    }

    public /* synthetic */ NewsfeedGetBannedExtendedResponse(List list, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2);
    }
}
