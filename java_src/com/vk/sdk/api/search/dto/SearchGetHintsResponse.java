package com.vk.sdk.api.search.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J5\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/search/dto/SearchGetHintsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/search/dto/SearchHint;", "suggestedQueries", "", "(ILjava/util/List;Ljava/util/List;)V", "getCount", "()I", "getItems", "()Ljava/util/List;", "getSuggestedQueries", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SearchGetHintsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("items")
    @NotNull
    private final List<SearchHint> items;
    @SerializedName("suggested_queries")
    @Nullable
    private final List<String> suggestedQueries;

    public SearchGetHintsResponse(int i9, @NotNull List<SearchHint> items, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.suggestedQueries = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchGetHintsResponse copy$default(SearchGetHintsResponse searchGetHintsResponse, int i9, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = searchGetHintsResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = searchGetHintsResponse.items;
        }
        if ((i10 & 4) != 0) {
            list2 = searchGetHintsResponse.suggestedQueries;
        }
        return searchGetHintsResponse.copy(i9, list, list2);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<SearchHint> component2() {
        return this.items;
    }

    @Nullable
    public final List<String> component3() {
        return this.suggestedQueries;
    }

    @NotNull
    public final SearchGetHintsResponse copy(int i9, @NotNull List<SearchHint> items, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new SearchGetHintsResponse(i9, items, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SearchGetHintsResponse) {
            SearchGetHintsResponse searchGetHintsResponse = (SearchGetHintsResponse) obj;
            return this.count == searchGetHintsResponse.count && Intrinsics.areEqual(this.items, searchGetHintsResponse.items) && Intrinsics.areEqual(this.suggestedQueries, searchGetHintsResponse.suggestedQueries);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<SearchHint> getItems() {
        return this.items;
    }

    @Nullable
    public final List<String> getSuggestedQueries() {
        return this.suggestedQueries;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        List<String> list = this.suggestedQueries;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<SearchHint> list = this.items;
        List<String> list2 = this.suggestedQueries;
        return "SearchGetHintsResponse(count=" + i9 + ", items=" + list + ", suggestedQueries=" + list2 + ")";
    }

    public /* synthetic */ SearchGetHintsResponse(int i9, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : list2);
    }
}
