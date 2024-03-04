package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.wall.dto.WallWallpostFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\rJV\u0010\u001a\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\tHÖ\u0001J\t\u0010 \u001a\u00020\u0006HÖ\u0001R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u001a\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0014\u0010\r¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedSearchResponse;", "", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "suggestedQueries", "", "nextFrom", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "totalCount", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getItems", "()Ljava/util/List;", "getNextFrom", "()Ljava/lang/String;", "getSuggestedQueries", "getTotalCount", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedSearchResponse;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedSearchResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("items")
    @Nullable
    private final List<WallWallpostFull> items;
    @SerializedName("next_from")
    @Nullable
    private final String nextFrom;
    @SerializedName("suggested_queries")
    @Nullable
    private final List<String> suggestedQueries;
    @SerializedName("total_count")
    @Nullable
    private final Integer totalCount;

    public NewsfeedSearchResponse() {
        this(null, null, null, null, null, 31, null);
    }

    public NewsfeedSearchResponse(@Nullable List<WallWallpostFull> list, @Nullable List<String> list2, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        this.items = list;
        this.suggestedQueries = list2;
        this.nextFrom = str;
        this.count = num;
        this.totalCount = num2;
    }

    public static /* synthetic */ NewsfeedSearchResponse copy$default(NewsfeedSearchResponse newsfeedSearchResponse, List list, List list2, String str, Integer num, Integer num2, int i9, Object obj) {
        List<WallWallpostFull> list3 = list;
        if ((i9 & 1) != 0) {
            list3 = newsfeedSearchResponse.items;
        }
        List<String> list4 = list2;
        if ((i9 & 2) != 0) {
            list4 = newsfeedSearchResponse.suggestedQueries;
        }
        List list5 = list4;
        if ((i9 & 4) != 0) {
            str = newsfeedSearchResponse.nextFrom;
        }
        String str2 = str;
        if ((i9 & 8) != 0) {
            num = newsfeedSearchResponse.count;
        }
        Integer num3 = num;
        if ((i9 & 16) != 0) {
            num2 = newsfeedSearchResponse.totalCount;
        }
        return newsfeedSearchResponse.copy(list3, list5, str2, num3, num2);
    }

    @Nullable
    public final List<WallWallpostFull> component1() {
        return this.items;
    }

    @Nullable
    public final List<String> component2() {
        return this.suggestedQueries;
    }

    @Nullable
    public final String component3() {
        return this.nextFrom;
    }

    @Nullable
    public final Integer component4() {
        return this.count;
    }

    @Nullable
    public final Integer component5() {
        return this.totalCount;
    }

    @NotNull
    public final NewsfeedSearchResponse copy(@Nullable List<WallWallpostFull> list, @Nullable List<String> list2, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        return new NewsfeedSearchResponse(list, list2, str, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedSearchResponse) {
            NewsfeedSearchResponse newsfeedSearchResponse = (NewsfeedSearchResponse) obj;
            return Intrinsics.areEqual(this.items, newsfeedSearchResponse.items) && Intrinsics.areEqual(this.suggestedQueries, newsfeedSearchResponse.suggestedQueries) && Intrinsics.areEqual(this.nextFrom, newsfeedSearchResponse.nextFrom) && Intrinsics.areEqual(this.count, newsfeedSearchResponse.count) && Intrinsics.areEqual(this.totalCount, newsfeedSearchResponse.totalCount);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
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
        List<String> list2 = this.suggestedQueries;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.nextFrom;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.count;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.totalCount;
        return hashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<WallWallpostFull> list = this.items;
        List<String> list2 = this.suggestedQueries;
        String str = this.nextFrom;
        Integer num = this.count;
        Integer num2 = this.totalCount;
        return "NewsfeedSearchResponse(items=" + list + ", suggestedQueries=" + list2 + ", nextFrom=" + str + ", count=" + num + ", totalCount=" + num2 + ")";
    }

    public /* synthetic */ NewsfeedSearchResponse(List list, List list2, String str, Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : num2);
    }
}
