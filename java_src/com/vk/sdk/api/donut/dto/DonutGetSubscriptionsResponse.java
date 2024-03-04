package com.vk.sdk.api.donut.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003JN\u0010\u0017\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/donut/dto/DonutGetSubscriptionsResponse;", "", "subscriptions", "", "Lcom/vk/sdk/api/donut/dto/DonutDonatorSubscriptionInfo;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroups", "()Ljava/util/List;", "getProfiles", "getSubscriptions", "component1", "component2", "component3", "component4", "copy", "(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/donut/dto/DonutGetSubscriptionsResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DonutGetSubscriptionsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;
    @SerializedName("subscriptions")
    @NotNull
    private final List<DonutDonatorSubscriptionInfo> subscriptions;

    public DonutGetSubscriptionsResponse(@NotNull List<DonutDonatorSubscriptionInfo> subscriptions, @Nullable Integer num, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
        this.subscriptions = subscriptions;
        this.count = num;
        this.profiles = list;
        this.groups = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DonutGetSubscriptionsResponse copy$default(DonutGetSubscriptionsResponse donutGetSubscriptionsResponse, List list, Integer num, List list2, List list3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = donutGetSubscriptionsResponse.subscriptions;
        }
        if ((i9 & 2) != 0) {
            num = donutGetSubscriptionsResponse.count;
        }
        if ((i9 & 4) != 0) {
            list2 = donutGetSubscriptionsResponse.profiles;
        }
        if ((i9 & 8) != 0) {
            list3 = donutGetSubscriptionsResponse.groups;
        }
        return donutGetSubscriptionsResponse.copy(list, num, list2, list3);
    }

    @NotNull
    public final List<DonutDonatorSubscriptionInfo> component1() {
        return this.subscriptions;
    }

    @Nullable
    public final Integer component2() {
        return this.count;
    }

    @Nullable
    public final List<UsersUserFull> component3() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component4() {
        return this.groups;
    }

    @NotNull
    public final DonutGetSubscriptionsResponse copy(@NotNull List<DonutDonatorSubscriptionInfo> subscriptions, @Nullable Integer num, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
        return new DonutGetSubscriptionsResponse(subscriptions, num, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DonutGetSubscriptionsResponse) {
            DonutGetSubscriptionsResponse donutGetSubscriptionsResponse = (DonutGetSubscriptionsResponse) obj;
            return Intrinsics.areEqual(this.subscriptions, donutGetSubscriptionsResponse.subscriptions) && Intrinsics.areEqual(this.count, donutGetSubscriptionsResponse.count) && Intrinsics.areEqual(this.profiles, donutGetSubscriptionsResponse.profiles) && Intrinsics.areEqual(this.groups, donutGetSubscriptionsResponse.groups);
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
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    @NotNull
    public final List<DonutDonatorSubscriptionInfo> getSubscriptions() {
        return this.subscriptions;
    }

    public int hashCode() {
        int hashCode = this.subscriptions.hashCode() * 31;
        Integer num = this.count;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        List<UsersUserFull> list = this.profiles;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        return hashCode3 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<DonutDonatorSubscriptionInfo> list = this.subscriptions;
        Integer num = this.count;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "DonutGetSubscriptionsResponse(subscriptions=" + list + ", count=" + num + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }

    public /* synthetic */ DonutGetSubscriptionsResponse(List list, Integer num, List list2, List list3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : list2, (i9 & 8) != 0 ? null : list3);
    }
}
