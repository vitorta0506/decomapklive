package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketCurrency;", "", "id", "", "name", "", "title", "(ILjava/lang/String;Ljava/lang/String;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getTitle", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketCurrency {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35890id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("title")
    @NotNull
    private final String title;

    public MarketCurrency(int i9, @NotNull String name, @NotNull String title) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f35890id = i9;
        this.name = name;
        this.title = title;
    }

    public static /* synthetic */ MarketCurrency copy$default(MarketCurrency marketCurrency, int i9, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = marketCurrency.f35890id;
        }
        if ((i10 & 2) != 0) {
            str = marketCurrency.name;
        }
        if ((i10 & 4) != 0) {
            str2 = marketCurrency.title;
        }
        return marketCurrency.copy(i9, str, str2);
    }

    public final int component1() {
        return this.f35890id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.title;
    }

    @NotNull
    public final MarketCurrency copy(int i9, @NotNull String name, @NotNull String title) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(title, "title");
        return new MarketCurrency(i9, name, title);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketCurrency) {
            MarketCurrency marketCurrency = (MarketCurrency) obj;
            return this.f35890id == marketCurrency.f35890id && Intrinsics.areEqual(this.name, marketCurrency.name) && Intrinsics.areEqual(this.title, marketCurrency.title);
        }
        return false;
    }

    public final int getId() {
        return this.f35890id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((this.f35890id * 31) + this.name.hashCode()) * 31) + this.title.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.f35890id;
        String str = this.name;
        String str2 = this.title;
        return "MarketCurrency(id=" + i9 + ", name=" + str + ", title=" + str2 + ")";
    }
}
