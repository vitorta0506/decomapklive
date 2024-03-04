package com.vk.sdk.api.apps.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.users.dto.UsersUser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J>\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/apps/dto/AppsLeaderboard;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUser;", "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getItems", "()Ljava/util/List;", "getProfiles", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardExtendedResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsGetLeaderboardExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("items")
    @Nullable
    private final List<AppsLeaderboard> items;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUser> profiles;

    public AppsGetLeaderboardExtendedResponse() {
        this(null, null, null, 7, null);
    }

    public AppsGetLeaderboardExtendedResponse(@Nullable Integer num, @Nullable List<AppsLeaderboard> list, @Nullable List<UsersUser> list2) {
        this.count = num;
        this.items = list;
        this.profiles = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AppsGetLeaderboardExtendedResponse copy$default(AppsGetLeaderboardExtendedResponse appsGetLeaderboardExtendedResponse, Integer num, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = appsGetLeaderboardExtendedResponse.count;
        }
        if ((i9 & 2) != 0) {
            list = appsGetLeaderboardExtendedResponse.items;
        }
        if ((i9 & 4) != 0) {
            list2 = appsGetLeaderboardExtendedResponse.profiles;
        }
        return appsGetLeaderboardExtendedResponse.copy(num, list, list2);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final List<AppsLeaderboard> component2() {
        return this.items;
    }

    @Nullable
    public final List<UsersUser> component3() {
        return this.profiles;
    }

    @NotNull
    public final AppsGetLeaderboardExtendedResponse copy(@Nullable Integer num, @Nullable List<AppsLeaderboard> list, @Nullable List<UsersUser> list2) {
        return new AppsGetLeaderboardExtendedResponse(num, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppsGetLeaderboardExtendedResponse) {
            AppsGetLeaderboardExtendedResponse appsGetLeaderboardExtendedResponse = (AppsGetLeaderboardExtendedResponse) obj;
            return Intrinsics.areEqual(this.count, appsGetLeaderboardExtendedResponse.count) && Intrinsics.areEqual(this.items, appsGetLeaderboardExtendedResponse.items) && Intrinsics.areEqual(this.profiles, appsGetLeaderboardExtendedResponse.profiles);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<AppsLeaderboard> getItems() {
        return this.items;
    }

    @Nullable
    public final List<UsersUser> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<AppsLeaderboard> list = this.items;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<UsersUser> list2 = this.profiles;
        return hashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<AppsLeaderboard> list = this.items;
        List<UsersUser> list2 = this.profiles;
        return "AppsGetLeaderboardExtendedResponse(count=" + num + ", items=" + list + ", profiles=" + list2 + ")";
    }

    public /* synthetic */ AppsGetLeaderboardExtendedResponse(Integer num, List list, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : list2);
    }
}
