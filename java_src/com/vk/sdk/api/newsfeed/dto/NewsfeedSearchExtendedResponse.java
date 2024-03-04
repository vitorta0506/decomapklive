package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import com.vk.sdk.api.wall.dto.WallWallpostFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000fJ\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010!\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0011Jz\u0010\"\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\rHÖ\u0001J\t\u0010(\u001a\u00020\nHÖ\u0001R\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001a\u0010\u0011¨\u0006)"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedSearchExtendedResponse;", "", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "suggestedQueries", "", "nextFrom", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "totalCount", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroups", "()Ljava/util/List;", "getItems", "getNextFrom", "()Ljava/lang/String;", "getProfiles", "getSuggestedQueries", "getTotalCount", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedSearchExtendedResponse;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedSearchExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @Nullable
    private final List<WallWallpostFull> items;
    @SerializedName("next_from")
    @Nullable
    private final String nextFrom;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;
    @SerializedName("suggested_queries")
    @Nullable
    private final List<String> suggestedQueries;
    @SerializedName("total_count")
    @Nullable
    private final Integer totalCount;

    public NewsfeedSearchExtendedResponse() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public NewsfeedSearchExtendedResponse(@Nullable List<WallWallpostFull> list, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3, @Nullable List<String> list4, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        this.items = list;
        this.profiles = list2;
        this.groups = list3;
        this.suggestedQueries = list4;
        this.nextFrom = str;
        this.count = num;
        this.totalCount = num2;
    }

    public static /* synthetic */ NewsfeedSearchExtendedResponse copy$default(NewsfeedSearchExtendedResponse newsfeedSearchExtendedResponse, List list, List list2, List list3, List list4, String str, Integer num, Integer num2, int i9, Object obj) {
        List<WallWallpostFull> list5 = list;
        if ((i9 & 1) != 0) {
            list5 = newsfeedSearchExtendedResponse.items;
        }
        List<UsersUserFull> list6 = list2;
        if ((i9 & 2) != 0) {
            list6 = newsfeedSearchExtendedResponse.profiles;
        }
        List list7 = list6;
        List<GroupsGroupFull> list8 = list3;
        if ((i9 & 4) != 0) {
            list8 = newsfeedSearchExtendedResponse.groups;
        }
        List list9 = list8;
        List<String> list10 = list4;
        if ((i9 & 8) != 0) {
            list10 = newsfeedSearchExtendedResponse.suggestedQueries;
        }
        List list11 = list10;
        if ((i9 & 16) != 0) {
            str = newsfeedSearchExtendedResponse.nextFrom;
        }
        String str2 = str;
        if ((i9 & 32) != 0) {
            num = newsfeedSearchExtendedResponse.count;
        }
        Integer num3 = num;
        if ((i9 & 64) != 0) {
            num2 = newsfeedSearchExtendedResponse.totalCount;
        }
        return newsfeedSearchExtendedResponse.copy(list5, list7, list9, list11, str2, num3, num2);
    }

    @Nullable
    public final List<WallWallpostFull> component1() {
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
    public final List<String> component4() {
        return this.suggestedQueries;
    }

    @Nullable
    public final String component5() {
        return this.nextFrom;
    }

    @Nullable
    public final Integer component6() {
        return this.count;
    }

    @Nullable
    public final Integer component7() {
        return this.totalCount;
    }

    @NotNull
    public final NewsfeedSearchExtendedResponse copy(@Nullable List<WallWallpostFull> list, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3, @Nullable List<String> list4, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        return new NewsfeedSearchExtendedResponse(list, list2, list3, list4, str, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedSearchExtendedResponse) {
            NewsfeedSearchExtendedResponse newsfeedSearchExtendedResponse = (NewsfeedSearchExtendedResponse) obj;
            return Intrinsics.areEqual(this.items, newsfeedSearchExtendedResponse.items) && Intrinsics.areEqual(this.profiles, newsfeedSearchExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, newsfeedSearchExtendedResponse.groups) && Intrinsics.areEqual(this.suggestedQueries, newsfeedSearchExtendedResponse.suggestedQueries) && Intrinsics.areEqual(this.nextFrom, newsfeedSearchExtendedResponse.nextFrom) && Intrinsics.areEqual(this.count, newsfeedSearchExtendedResponse.count) && Intrinsics.areEqual(this.totalCount, newsfeedSearchExtendedResponse.totalCount);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<WallWallpostFull> getItems() {
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

    @Nullable
    public final List<String> getSuggestedQueries() {
        return this.suggestedQueries;
    }

    @Nullable
    public final Integer getTotalCount() {
        return this.totalCount;
    }

    public int hashCode() {
        List<WallWallpostFull> list = this.items;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<UsersUserFull> list2 = this.profiles;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<GroupsGroupFull> list3 = this.groups;
        int hashCode3 = (hashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<String> list4 = this.suggestedQueries;
        int hashCode4 = (hashCode3 + (list4 == null ? 0 : list4.hashCode())) * 31;
        String str = this.nextFrom;
        int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.count;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.totalCount;
        return hashCode6 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<WallWallpostFull> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        List<String> list4 = this.suggestedQueries;
        String str = this.nextFrom;
        Integer num = this.count;
        Integer num2 = this.totalCount;
        return "NewsfeedSearchExtendedResponse(items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", suggestedQueries=" + list4 + ", nextFrom=" + str + ", count=" + num + ", totalCount=" + num2 + ")";
    }

    public /* synthetic */ NewsfeedSearchExtendedResponse(List list, List list2, List list3, List list4, String str, Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : list3, (i9 & 8) != 0 ? null : list4, (i9 & 16) != 0 ? null : str, (i9 & 32) != 0 ? null : num, (i9 & 64) != 0 ? null : num2);
    }
}
