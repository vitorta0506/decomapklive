package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J,\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsGetTypesResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/docs/dto/DocsDocTypes;", "(Ljava/lang/Integer;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getItems", "()Ljava/util/List;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/docs/dto/DocsGetTypesResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsGetTypesResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("items")
    @Nullable
    private final List<DocsDocTypes> items;

    public DocsGetTypesResponse() {
        this(null, null, 3, null);
    }

    public DocsGetTypesResponse(@Nullable Integer num, @Nullable List<DocsDocTypes> list) {
        this.count = num;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DocsGetTypesResponse copy$default(DocsGetTypesResponse docsGetTypesResponse, Integer num, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = docsGetTypesResponse.count;
        }
        if ((i9 & 2) != 0) {
            list = docsGetTypesResponse.items;
        }
        return docsGetTypesResponse.copy(num, list);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final List<DocsDocTypes> component2() {
        return this.items;
    }

    @NotNull
    public final DocsGetTypesResponse copy(@Nullable Integer num, @Nullable List<DocsDocTypes> list) {
        return new DocsGetTypesResponse(num, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsGetTypesResponse) {
            DocsGetTypesResponse docsGetTypesResponse = (DocsGetTypesResponse) obj;
            return Intrinsics.areEqual(this.count, docsGetTypesResponse.count) && Intrinsics.areEqual(this.items, docsGetTypesResponse.items);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<DocsDocTypes> getItems() {
        return this.items;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<DocsDocTypes> list = this.items;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<DocsDocTypes> list = this.items;
        return "DocsGetTypesResponse(count=" + num + ", items=" + list + ")";
    }

    public /* synthetic */ DocsGetTypesResponse(Integer num, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list);
    }
}
