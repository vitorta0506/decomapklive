package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketMarketCategory;", "", "id", "", "name", "", "section", "Lcom/vk/sdk/api/market/dto/MarketSection;", "(ILjava/lang/String;Lcom/vk/sdk/api/market/dto/MarketSection;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getSection", "()Lcom/vk/sdk/api/market/dto/MarketSection;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketMarketCategory {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35892id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("section")
    @NotNull
    private final MarketSection section;

    public MarketMarketCategory(int i9, @NotNull String name, @NotNull MarketSection section) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(section, "section");
        this.f35892id = i9;
        this.name = name;
        this.section = section;
    }

    public static /* synthetic */ MarketMarketCategory copy$default(MarketMarketCategory marketMarketCategory, int i9, String str, MarketSection marketSection, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = marketMarketCategory.f35892id;
        }
        if ((i10 & 2) != 0) {
            str = marketMarketCategory.name;
        }
        if ((i10 & 4) != 0) {
            marketSection = marketMarketCategory.section;
        }
        return marketMarketCategory.copy(i9, str, marketSection);
    }

    public final int component1() {
        return this.f35892id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final MarketSection component3() {
        return this.section;
    }

    @NotNull
    public final MarketMarketCategory copy(int i9, @NotNull String name, @NotNull MarketSection section) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(section, "section");
        return new MarketMarketCategory(i9, name, section);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketMarketCategory) {
            MarketMarketCategory marketMarketCategory = (MarketMarketCategory) obj;
            return this.f35892id == marketMarketCategory.f35892id && Intrinsics.areEqual(this.name, marketMarketCategory.name) && Intrinsics.areEqual(this.section, marketMarketCategory.section);
        }
        return false;
    }

    public final int getId() {
        return this.f35892id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final MarketSection getSection() {
        return this.section;
    }

    public int hashCode() {
        return (((this.f35892id * 31) + this.name.hashCode()) * 31) + this.section.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.f35892id;
        String str = this.name;
        MarketSection marketSection = this.section;
        return "MarketMarketCategory(id=" + i9 + ", name=" + str + ", section=" + marketSection + ")";
    }
}
