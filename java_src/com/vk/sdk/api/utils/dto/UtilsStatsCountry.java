package com.vk.sdk.api.utils.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J&\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\t\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/utils/dto/UtilsStatsCountry;", "", "countryId", "", AdUnitActivity.EXTRA_VIEWS, "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCountryId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getViews", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/utils/dto/UtilsStatsCountry;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UtilsStatsCountry {
    @SerializedName("country_id")
    @Nullable
    private final Integer countryId;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final Integer views;

    public UtilsStatsCountry() {
        this(null, null, 3, null);
    }

    public UtilsStatsCountry(@Nullable Integer num, @Nullable Integer num2) {
        this.countryId = num;
        this.views = num2;
    }

    public static /* synthetic */ UtilsStatsCountry copy$default(UtilsStatsCountry utilsStatsCountry, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = utilsStatsCountry.countryId;
        }
        if ((i9 & 2) != 0) {
            num2 = utilsStatsCountry.views;
        }
        return utilsStatsCountry.copy(num, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.countryId;
    }

    @Nullable
    public final Integer component2() {
        return this.views;
    }

    @NotNull
    public final UtilsStatsCountry copy(@Nullable Integer num, @Nullable Integer num2) {
        return new UtilsStatsCountry(num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UtilsStatsCountry) {
            UtilsStatsCountry utilsStatsCountry = (UtilsStatsCountry) obj;
            return Intrinsics.areEqual(this.countryId, utilsStatsCountry.countryId) && Intrinsics.areEqual(this.views, utilsStatsCountry.views);
        }
        return false;
    }

    @Nullable
    public final Integer getCountryId() {
        return this.countryId;
    }

    @Nullable
    public final Integer getViews() {
        return this.views;
    }

    public int hashCode() {
        Integer num = this.countryId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.views;
        return hashCode + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.countryId;
        Integer num2 = this.views;
        return "UtilsStatsCountry(countryId=" + num + ", views=" + num2 + ")";
    }

    public /* synthetic */ UtilsStatsCountry(Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2);
    }
}
