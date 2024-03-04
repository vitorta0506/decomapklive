package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsGetCategoriesResponse;", "", "v1", "", "Lcom/vk/sdk/api/ads/dto/AdsCategory;", "v2", "(Ljava/util/List;Ljava/util/List;)V", "getV1", "()Ljava/util/List;", "getV2", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsGetCategoriesResponse {
    @SerializedName("v1")
    @Nullable

    /* renamed from: v1  reason: collision with root package name */
    private final List<AdsCategory> f35671v1;
    @SerializedName("v2")
    @Nullable

    /* renamed from: v2  reason: collision with root package name */
    private final List<AdsCategory> f35672v2;

    public AdsGetCategoriesResponse() {
        this(null, null, 3, null);
    }

    public AdsGetCategoriesResponse(@Nullable List<AdsCategory> list, @Nullable List<AdsCategory> list2) {
        this.f35671v1 = list;
        this.f35672v2 = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdsGetCategoriesResponse copy$default(AdsGetCategoriesResponse adsGetCategoriesResponse, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = adsGetCategoriesResponse.f35671v1;
        }
        if ((i9 & 2) != 0) {
            list2 = adsGetCategoriesResponse.f35672v2;
        }
        return adsGetCategoriesResponse.copy(list, list2);
    }

    @Nullable
    public final List<AdsCategory> component1() {
        return this.f35671v1;
    }

    @Nullable
    public final List<AdsCategory> component2() {
        return this.f35672v2;
    }

    @NotNull
    public final AdsGetCategoriesResponse copy(@Nullable List<AdsCategory> list, @Nullable List<AdsCategory> list2) {
        return new AdsGetCategoriesResponse(list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsGetCategoriesResponse) {
            AdsGetCategoriesResponse adsGetCategoriesResponse = (AdsGetCategoriesResponse) obj;
            return Intrinsics.areEqual(this.f35671v1, adsGetCategoriesResponse.f35671v1) && Intrinsics.areEqual(this.f35672v2, adsGetCategoriesResponse.f35672v2);
        }
        return false;
    }

    @Nullable
    public final List<AdsCategory> getV1() {
        return this.f35671v1;
    }

    @Nullable
    public final List<AdsCategory> getV2() {
        return this.f35672v2;
    }

    public int hashCode() {
        List<AdsCategory> list = this.f35671v1;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<AdsCategory> list2 = this.f35672v2;
        return hashCode + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<AdsCategory> list = this.f35671v1;
        List<AdsCategory> list2 = this.f35672v2;
        return "AdsGetCategoriesResponse(v1=" + list + ", v2=" + list2 + ")";
    }

    public /* synthetic */ AdsGetCategoriesResponse(List list, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2);
    }
}
