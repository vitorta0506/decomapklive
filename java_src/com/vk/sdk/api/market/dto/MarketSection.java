package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketSection;", "", "id", "", "name", "", "(ILjava/lang/String;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketSection {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35896id;
    @SerializedName("name")
    @NotNull
    private final String name;

    public MarketSection(int i9, @NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f35896id = i9;
        this.name = name;
    }

    public static /* synthetic */ MarketSection copy$default(MarketSection marketSection, int i9, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = marketSection.f35896id;
        }
        if ((i10 & 2) != 0) {
            str = marketSection.name;
        }
        return marketSection.copy(i9, str);
    }

    public final int component1() {
        return this.f35896id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final MarketSection copy(int i9, @NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new MarketSection(i9, name);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketSection) {
            MarketSection marketSection = (MarketSection) obj;
            return this.f35896id == marketSection.f35896id && Intrinsics.areEqual(this.name, marketSection.name);
        }
        return false;
    }

    public final int getId() {
        return this.f35896id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (this.f35896id * 31) + this.name.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.f35896id;
        String str = this.name;
        return "MarketSection(id=" + i9 + ", name=" + str + ")";
    }
}
