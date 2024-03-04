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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\nHÆ\u0003JK\u0010\u0016\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\nHÖ\u0001R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetRecommendedResponse;", "", "items", "", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "nextFrom", "", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getGroups", "()Ljava/util/List;", "getItems", "getNextFrom", "()Ljava/lang/String;", "getProfiles", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedGetRecommendedResponse {
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @Nullable
    private final List<NewsfeedNewsfeedItem> items;
    @SerializedName("next_from")
    @Nullable
    private final String nextFrom;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public NewsfeedGetRecommendedResponse() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NewsfeedGetRecommendedResponse(@Nullable List<? extends NewsfeedNewsfeedItem> list, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3, @Nullable String str) {
        this.items = list;
        this.profiles = list2;
        this.groups = list3;
        this.nextFrom = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewsfeedGetRecommendedResponse copy$default(NewsfeedGetRecommendedResponse newsfeedGetRecommendedResponse, List list, List list2, List list3, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = newsfeedGetRecommendedResponse.items;
        }
        if ((i9 & 2) != 0) {
            list2 = newsfeedGetRecommendedResponse.profiles;
        }
        if ((i9 & 4) != 0) {
            list3 = newsfeedGetRecommendedResponse.groups;
        }
        if ((i9 & 8) != 0) {
            str = newsfeedGetRecommendedResponse.nextFrom;
        }
        return newsfeedGetRecommendedResponse.copy(list, list2, list3, str);
    }

    @Nullable
    public final List<NewsfeedNewsfeedItem> component1() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> component2() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component3() {
        return this.groups;
    }

    @Nullable
    public final String component4() {
        return this.nextFrom;
    }

    @NotNull
    public final NewsfeedGetRecommendedResponse copy(@Nullable List<? extends NewsfeedNewsfeedItem> list, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3, @Nullable String str) {
        return new NewsfeedGetRecommendedResponse(list, list2, list3, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedGetRecommendedResponse) {
            NewsfeedGetRecommendedResponse newsfeedGetRecommendedResponse = (NewsfeedGetRecommendedResponse) obj;
            return Intrinsics.areEqual(this.items, newsfeedGetRecommendedResponse.items) && Intrinsics.areEqual(this.profiles, newsfeedGetRecommendedResponse.profiles) && Intrinsics.areEqual(this.groups, newsfeedGetRecommendedResponse.groups) && Intrinsics.areEqual(this.nextFrom, newsfeedGetRecommendedResponse.nextFrom);
        }
        return false;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<NewsfeedNewsfeedItem> getItems() {
        return this.items;
    }

    @Nullable
    public final String getNextFrom() {
        return this.nextFrom;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        List<NewsfeedNewsfeedItem> list = this.items;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<UsersUserFull> list2 = this.profiles;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<GroupsGroupFull> list3 = this.groups;
        int hashCode3 = (hashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        String str = this.nextFrom;
        return hashCode3 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<NewsfeedNewsfeedItem> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        String str = this.nextFrom;
        return "NewsfeedGetRecommendedResponse(items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", nextFrom=" + str + ")";
    }

    public /* synthetic */ NewsfeedGetRecommendedResponse(List list, List list2, List list3, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : list3, (i9 & 8) != 0 ? null : str);
    }
}
