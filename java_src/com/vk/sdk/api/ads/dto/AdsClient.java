package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsClient;", "", "allLimit", "", "dayLimit", "id", "", "name", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getAllLimit", "()Ljava/lang/String;", "getDayLimit", "getId", "()I", "getName", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsClient {
    @SerializedName("all_limit")
    @NotNull
    private final String allLimit;
    @SerializedName("day_limit")
    @NotNull
    private final String dayLimit;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35666id;
    @SerializedName("name")
    @NotNull
    private final String name;

    public AdsClient(@NotNull String allLimit, @NotNull String dayLimit, int i9, @NotNull String name) {
        Intrinsics.checkNotNullParameter(allLimit, "allLimit");
        Intrinsics.checkNotNullParameter(dayLimit, "dayLimit");
        Intrinsics.checkNotNullParameter(name, "name");
        this.allLimit = allLimit;
        this.dayLimit = dayLimit;
        this.f35666id = i9;
        this.name = name;
    }

    public static /* synthetic */ AdsClient copy$default(AdsClient adsClient, String str, String str2, int i9, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = adsClient.allLimit;
        }
        if ((i10 & 2) != 0) {
            str2 = adsClient.dayLimit;
        }
        if ((i10 & 4) != 0) {
            i9 = adsClient.f35666id;
        }
        if ((i10 & 8) != 0) {
            str3 = adsClient.name;
        }
        return adsClient.copy(str, str2, i9, str3);
    }

    @NotNull
    public final String component1() {
        return this.allLimit;
    }

    @NotNull
    public final String component2() {
        return this.dayLimit;
    }

    public final int component3() {
        return this.f35666id;
    }

    @NotNull
    public final String component4() {
        return this.name;
    }

    @NotNull
    public final AdsClient copy(@NotNull String allLimit, @NotNull String dayLimit, int i9, @NotNull String name) {
        Intrinsics.checkNotNullParameter(allLimit, "allLimit");
        Intrinsics.checkNotNullParameter(dayLimit, "dayLimit");
        Intrinsics.checkNotNullParameter(name, "name");
        return new AdsClient(allLimit, dayLimit, i9, name);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsClient) {
            AdsClient adsClient = (AdsClient) obj;
            return Intrinsics.areEqual(this.allLimit, adsClient.allLimit) && Intrinsics.areEqual(this.dayLimit, adsClient.dayLimit) && this.f35666id == adsClient.f35666id && Intrinsics.areEqual(this.name, adsClient.name);
        }
        return false;
    }

    @NotNull
    public final String getAllLimit() {
        return this.allLimit;
    }

    @NotNull
    public final String getDayLimit() {
        return this.dayLimit;
    }

    public final int getId() {
        return this.f35666id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((((this.allLimit.hashCode() * 31) + this.dayLimit.hashCode()) * 31) + this.f35666id) * 31) + this.name.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.allLimit;
        String str2 = this.dayLimit;
        int i9 = this.f35666id;
        String str3 = this.name;
        return "AdsClient(allLimit=" + str + ", dayLimit=" + str2 + ", id=" + i9 + ", name=" + str3 + ")";
    }
}
