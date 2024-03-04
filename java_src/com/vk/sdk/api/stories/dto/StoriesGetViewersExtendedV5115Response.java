package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesGetViewersExtendedV5115Response;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/stories/dto/StoriesViewersItem;", "hiddenReason", "", "nextFrom", "(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getCount", "()I", "getHiddenReason", "()Ljava/lang/String;", "getItems", "()Ljava/util/List;", "getNextFrom", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesGetViewersExtendedV5115Response {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("hidden_reason")
    @Nullable
    private final String hiddenReason;
    @SerializedName("items")
    @NotNull
    private final List<StoriesViewersItem> items;
    @SerializedName("next_from")
    @Nullable
    private final String nextFrom;

    public StoriesGetViewersExtendedV5115Response(int i9, @NotNull List<StoriesViewersItem> items, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.hiddenReason = str;
        this.nextFrom = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StoriesGetViewersExtendedV5115Response copy$default(StoriesGetViewersExtendedV5115Response storiesGetViewersExtendedV5115Response, int i9, List list, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = storiesGetViewersExtendedV5115Response.count;
        }
        if ((i10 & 2) != 0) {
            list = storiesGetViewersExtendedV5115Response.items;
        }
        if ((i10 & 4) != 0) {
            str = storiesGetViewersExtendedV5115Response.hiddenReason;
        }
        if ((i10 & 8) != 0) {
            str2 = storiesGetViewersExtendedV5115Response.nextFrom;
        }
        return storiesGetViewersExtendedV5115Response.copy(i9, list, str, str2);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<StoriesViewersItem> component2() {
        return this.items;
    }

    @Nullable
    public final String component3() {
        return this.hiddenReason;
    }

    @Nullable
    public final String component4() {
        return this.nextFrom;
    }

    @NotNull
    public final StoriesGetViewersExtendedV5115Response copy(int i9, @NotNull List<StoriesViewersItem> items, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new StoriesGetViewersExtendedV5115Response(i9, items, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesGetViewersExtendedV5115Response) {
            StoriesGetViewersExtendedV5115Response storiesGetViewersExtendedV5115Response = (StoriesGetViewersExtendedV5115Response) obj;
            return this.count == storiesGetViewersExtendedV5115Response.count && Intrinsics.areEqual(this.items, storiesGetViewersExtendedV5115Response.items) && Intrinsics.areEqual(this.hiddenReason, storiesGetViewersExtendedV5115Response.hiddenReason) && Intrinsics.areEqual(this.nextFrom, storiesGetViewersExtendedV5115Response.nextFrom);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final String getHiddenReason() {
        return this.hiddenReason;
    }

    @NotNull
    public final List<StoriesViewersItem> getItems() {
        return this.items;
    }

    @Nullable
    public final String getNextFrom() {
        return this.nextFrom;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        String str = this.hiddenReason;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.nextFrom;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<StoriesViewersItem> list = this.items;
        String str = this.hiddenReason;
        String str2 = this.nextFrom;
        return "StoriesGetViewersExtendedV5115Response(count=" + i9 + ", items=" + list + ", hiddenReason=" + str + ", nextFrom=" + str2 + ")";
    }

    public /* synthetic */ StoriesGetViewersExtendedV5115Response(int i9, List list, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : str2);
    }
}
