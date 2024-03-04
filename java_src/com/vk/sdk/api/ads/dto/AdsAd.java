package com.vk.sdk.api.ads.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bí\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010\u001eJ\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u000b\u0010E\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\u0010\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u000b\u0010J\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\t\u0010L\u001a\u00020\u0006HÆ\u0003J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\tHÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\t\u0010P\u001a\u00020\fHÆ\u0003J\t\u0010Q\u001a\u00020\u000eHÆ\u0003J\u0010\u0010R\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\"J\u0086\u0002\u0010S\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0018HÆ\u0001¢\u0006\u0002\u0010TJ\u0013\u0010U\u001a\u00020V2\b\u0010W\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010X\u001a\u00020\u0003HÖ\u0001J\t\u0010Y\u001a\u00020\fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010 R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b'\u0010\"R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010 R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b)\u0010\"R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b*\u0010\"R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b-\u0010\"R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b.\u0010\"R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b/\u0010\"R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00101R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00101R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010 R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b5\u0010\"R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00101R\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b9\u0010\"R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u00101¨\u0006Z"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsAd;", "", "adFormat", "", "allLimit", "approved", "Lcom/vk/sdk/api/ads/dto/AdsAdApproved;", "campaignId", "costType", "Lcom/vk/sdk/api/ads/dto/AdsAdCostType;", "id", "name", "", "status", "Lcom/vk/sdk/api/ads/dto/AdsAdStatus;", "adPlatform", "category1Id", "category2Id", "cpc", "cpm", "cpa", "ocpm", "autobiddingMaxCost", "disclaimerMedical", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "disclaimerSpecialist", "disclaimerSupplements", "impressionsLimit", "impressionsLimited", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "(IILcom/vk/sdk/api/ads/dto/AdsAdApproved;ILcom/vk/sdk/api/ads/dto/AdsAdCostType;ILjava/lang/String;Lcom/vk/sdk/api/ads/dto/AdsAdStatus;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getAdFormat", "()I", "getAdPlatform", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAllLimit", "getApproved", "()Lcom/vk/sdk/api/ads/dto/AdsAdApproved;", "getAutobiddingMaxCost", "getCampaignId", "getCategory1Id", "getCategory2Id", "getCostType", "()Lcom/vk/sdk/api/ads/dto/AdsAdCostType;", "getCpa", "getCpc", "getCpm", "getDisclaimerMedical", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getDisclaimerSpecialist", "getDisclaimerSupplements", "getId", "getImpressionsLimit", "getImpressionsLimited", "getName", "()Ljava/lang/String;", "getOcpm", "getStatus", "()Lcom/vk/sdk/api/ads/dto/AdsAdStatus;", "getVideo", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IILcom/vk/sdk/api/ads/dto/AdsAdApproved;ILcom/vk/sdk/api/ads/dto/AdsAdCostType;ILjava/lang/String;Lcom/vk/sdk/api/ads/dto/AdsAdStatus;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/ads/dto/AdsAd;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsAd {
    @SerializedName("ad_format")
    private final int adFormat;
    @SerializedName("ad_platform")
    @Nullable
    private final Integer adPlatform;
    @SerializedName("all_limit")
    private final int allLimit;
    @SerializedName("approved")
    @NotNull
    private final AdsAdApproved approved;
    @SerializedName("autobidding_max_cost")
    @Nullable
    private final Integer autobiddingMaxCost;
    @SerializedName("campaign_id")
    private final int campaignId;
    @SerializedName("category1_id")
    @Nullable
    private final Integer category1Id;
    @SerializedName("category2_id")
    @Nullable
    private final Integer category2Id;
    @SerializedName("cost_type")
    @NotNull
    private final AdsAdCostType costType;
    @SerializedName("cpa")
    @Nullable
    private final Integer cpa;
    @SerializedName("cpc")
    @Nullable
    private final Integer cpc;
    @SerializedName("cpm")
    @Nullable
    private final Integer cpm;
    @SerializedName("disclaimer_medical")
    @Nullable
    private final BaseBoolInt disclaimerMedical;
    @SerializedName("disclaimer_specialist")
    @Nullable
    private final BaseBoolInt disclaimerSpecialist;
    @SerializedName("disclaimer_supplements")
    @Nullable
    private final BaseBoolInt disclaimerSupplements;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35662id;
    @SerializedName("impressions_limit")
    @Nullable
    private final Integer impressionsLimit;
    @SerializedName("impressions_limited")
    @Nullable
    private final BaseBoolInt impressionsLimited;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("ocpm")
    @Nullable
    private final Integer ocpm;
    @SerializedName("status")
    @NotNull
    private final AdsAdStatus status;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final BaseBoolInt video;

    public AdsAd(int i9, int i10, @NotNull AdsAdApproved approved, int i11, @NotNull AdsAdCostType costType, int i12, @NotNull String name, @NotNull AdsAdStatus status, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num9, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5) {
        Intrinsics.checkNotNullParameter(approved, "approved");
        Intrinsics.checkNotNullParameter(costType, "costType");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(status, "status");
        this.adFormat = i9;
        this.allLimit = i10;
        this.approved = approved;
        this.campaignId = i11;
        this.costType = costType;
        this.f35662id = i12;
        this.name = name;
        this.status = status;
        this.adPlatform = num;
        this.category1Id = num2;
        this.category2Id = num3;
        this.cpc = num4;
        this.cpm = num5;
        this.cpa = num6;
        this.ocpm = num7;
        this.autobiddingMaxCost = num8;
        this.disclaimerMedical = baseBoolInt;
        this.disclaimerSpecialist = baseBoolInt2;
        this.disclaimerSupplements = baseBoolInt3;
        this.impressionsLimit = num9;
        this.impressionsLimited = baseBoolInt4;
        this.video = baseBoolInt5;
    }

    public final int component1() {
        return this.adFormat;
    }

    @Nullable
    public final Integer component10() {
        return this.category1Id;
    }

    @Nullable
    public final Integer component11() {
        return this.category2Id;
    }

    @Nullable
    public final Integer component12() {
        return this.cpc;
    }

    @Nullable
    public final Integer component13() {
        return this.cpm;
    }

    @Nullable
    public final Integer component14() {
        return this.cpa;
    }

    @Nullable
    public final Integer component15() {
        return this.ocpm;
    }

    @Nullable
    public final Integer component16() {
        return this.autobiddingMaxCost;
    }

    @Nullable
    public final BaseBoolInt component17() {
        return this.disclaimerMedical;
    }

    @Nullable
    public final BaseBoolInt component18() {
        return this.disclaimerSpecialist;
    }

    @Nullable
    public final BaseBoolInt component19() {
        return this.disclaimerSupplements;
    }

    public final int component2() {
        return this.allLimit;
    }

    @Nullable
    public final Integer component20() {
        return this.impressionsLimit;
    }

    @Nullable
    public final BaseBoolInt component21() {
        return this.impressionsLimited;
    }

    @Nullable
    public final BaseBoolInt component22() {
        return this.video;
    }

    @NotNull
    public final AdsAdApproved component3() {
        return this.approved;
    }

    public final int component4() {
        return this.campaignId;
    }

    @NotNull
    public final AdsAdCostType component5() {
        return this.costType;
    }

    public final int component6() {
        return this.f35662id;
    }

    @NotNull
    public final String component7() {
        return this.name;
    }

    @NotNull
    public final AdsAdStatus component8() {
        return this.status;
    }

    @Nullable
    public final Integer component9() {
        return this.adPlatform;
    }

    @NotNull
    public final AdsAd copy(int i9, int i10, @NotNull AdsAdApproved approved, int i11, @NotNull AdsAdCostType costType, int i12, @NotNull String name, @NotNull AdsAdStatus status, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num9, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5) {
        Intrinsics.checkNotNullParameter(approved, "approved");
        Intrinsics.checkNotNullParameter(costType, "costType");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(status, "status");
        return new AdsAd(i9, i10, approved, i11, costType, i12, name, status, num, num2, num3, num4, num5, num6, num7, num8, baseBoolInt, baseBoolInt2, baseBoolInt3, num9, baseBoolInt4, baseBoolInt5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsAd) {
            AdsAd adsAd = (AdsAd) obj;
            return this.adFormat == adsAd.adFormat && this.allLimit == adsAd.allLimit && this.approved == adsAd.approved && this.campaignId == adsAd.campaignId && this.costType == adsAd.costType && this.f35662id == adsAd.f35662id && Intrinsics.areEqual(this.name, adsAd.name) && this.status == adsAd.status && Intrinsics.areEqual(this.adPlatform, adsAd.adPlatform) && Intrinsics.areEqual(this.category1Id, adsAd.category1Id) && Intrinsics.areEqual(this.category2Id, adsAd.category2Id) && Intrinsics.areEqual(this.cpc, adsAd.cpc) && Intrinsics.areEqual(this.cpm, adsAd.cpm) && Intrinsics.areEqual(this.cpa, adsAd.cpa) && Intrinsics.areEqual(this.ocpm, adsAd.ocpm) && Intrinsics.areEqual(this.autobiddingMaxCost, adsAd.autobiddingMaxCost) && this.disclaimerMedical == adsAd.disclaimerMedical && this.disclaimerSpecialist == adsAd.disclaimerSpecialist && this.disclaimerSupplements == adsAd.disclaimerSupplements && Intrinsics.areEqual(this.impressionsLimit, adsAd.impressionsLimit) && this.impressionsLimited == adsAd.impressionsLimited && this.video == adsAd.video;
        }
        return false;
    }

    public final int getAdFormat() {
        return this.adFormat;
    }

    @Nullable
    public final Integer getAdPlatform() {
        return this.adPlatform;
    }

    public final int getAllLimit() {
        return this.allLimit;
    }

    @NotNull
    public final AdsAdApproved getApproved() {
        return this.approved;
    }

    @Nullable
    public final Integer getAutobiddingMaxCost() {
        return this.autobiddingMaxCost;
    }

    public final int getCampaignId() {
        return this.campaignId;
    }

    @Nullable
    public final Integer getCategory1Id() {
        return this.category1Id;
    }

    @Nullable
    public final Integer getCategory2Id() {
        return this.category2Id;
    }

    @NotNull
    public final AdsAdCostType getCostType() {
        return this.costType;
    }

    @Nullable
    public final Integer getCpa() {
        return this.cpa;
    }

    @Nullable
    public final Integer getCpc() {
        return this.cpc;
    }

    @Nullable
    public final Integer getCpm() {
        return this.cpm;
    }

    @Nullable
    public final BaseBoolInt getDisclaimerMedical() {
        return this.disclaimerMedical;
    }

    @Nullable
    public final BaseBoolInt getDisclaimerSpecialist() {
        return this.disclaimerSpecialist;
    }

    @Nullable
    public final BaseBoolInt getDisclaimerSupplements() {
        return this.disclaimerSupplements;
    }

    public final int getId() {
        return this.f35662id;
    }

    @Nullable
    public final Integer getImpressionsLimit() {
        return this.impressionsLimit;
    }

    @Nullable
    public final BaseBoolInt getImpressionsLimited() {
        return this.impressionsLimited;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Integer getOcpm() {
        return this.ocpm;
    }

    @NotNull
    public final AdsAdStatus getStatus() {
        return this.status;
    }

    @Nullable
    public final BaseBoolInt getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((this.adFormat * 31) + this.allLimit) * 31) + this.approved.hashCode()) * 31) + this.campaignId) * 31) + this.costType.hashCode()) * 31) + this.f35662id) * 31) + this.name.hashCode()) * 31) + this.status.hashCode()) * 31;
        Integer num = this.adPlatform;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.category1Id;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.category2Id;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.cpc;
        int hashCode5 = (hashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.cpm;
        int hashCode6 = (hashCode5 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.cpa;
        int hashCode7 = (hashCode6 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.ocpm;
        int hashCode8 = (hashCode7 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.autobiddingMaxCost;
        int hashCode9 = (hashCode8 + (num8 == null ? 0 : num8.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.disclaimerMedical;
        int hashCode10 = (hashCode9 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.disclaimerSpecialist;
        int hashCode11 = (hashCode10 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.disclaimerSupplements;
        int hashCode12 = (hashCode11 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        Integer num9 = this.impressionsLimit;
        int hashCode13 = (hashCode12 + (num9 == null ? 0 : num9.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.impressionsLimited;
        int hashCode14 = (hashCode13 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        BaseBoolInt baseBoolInt5 = this.video;
        return hashCode14 + (baseBoolInt5 != null ? baseBoolInt5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.adFormat;
        int i10 = this.allLimit;
        AdsAdApproved adsAdApproved = this.approved;
        int i11 = this.campaignId;
        AdsAdCostType adsAdCostType = this.costType;
        int i12 = this.f35662id;
        String str = this.name;
        AdsAdStatus adsAdStatus = this.status;
        Integer num = this.adPlatform;
        Integer num2 = this.category1Id;
        Integer num3 = this.category2Id;
        Integer num4 = this.cpc;
        Integer num5 = this.cpm;
        Integer num6 = this.cpa;
        Integer num7 = this.ocpm;
        Integer num8 = this.autobiddingMaxCost;
        BaseBoolInt baseBoolInt = this.disclaimerMedical;
        BaseBoolInt baseBoolInt2 = this.disclaimerSpecialist;
        BaseBoolInt baseBoolInt3 = this.disclaimerSupplements;
        Integer num9 = this.impressionsLimit;
        BaseBoolInt baseBoolInt4 = this.impressionsLimited;
        BaseBoolInt baseBoolInt5 = this.video;
        return "AdsAd(adFormat=" + i9 + ", allLimit=" + i10 + ", approved=" + adsAdApproved + ", campaignId=" + i11 + ", costType=" + adsAdCostType + ", id=" + i12 + ", name=" + str + ", status=" + adsAdStatus + ", adPlatform=" + num + ", category1Id=" + num2 + ", category2Id=" + num3 + ", cpc=" + num4 + ", cpm=" + num5 + ", cpa=" + num6 + ", ocpm=" + num7 + ", autobiddingMaxCost=" + num8 + ", disclaimerMedical=" + baseBoolInt + ", disclaimerSpecialist=" + baseBoolInt2 + ", disclaimerSupplements=" + baseBoolInt3 + ", impressionsLimit=" + num9 + ", impressionsLimited=" + baseBoolInt4 + ", video=" + baseBoolInt5 + ")";
    }

    public /* synthetic */ AdsAd(int i9, int i10, AdsAdApproved adsAdApproved, int i11, AdsAdCostType adsAdCostType, int i12, String str, AdsAdStatus adsAdStatus, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Integer num8, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, Integer num9, BaseBoolInt baseBoolInt4, BaseBoolInt baseBoolInt5, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, adsAdApproved, i11, adsAdCostType, i12, str, adsAdStatus, (i13 & 256) != 0 ? null : num, (i13 & 512) != 0 ? null : num2, (i13 & 1024) != 0 ? null : num3, (i13 & 2048) != 0 ? null : num4, (i13 & 4096) != 0 ? null : num5, (i13 & 8192) != 0 ? null : num6, (i13 & 16384) != 0 ? null : num7, (32768 & i13) != 0 ? null : num8, (65536 & i13) != 0 ? null : baseBoolInt, (131072 & i13) != 0 ? null : baseBoolInt2, (262144 & i13) != 0 ? null : baseBoolInt3, (524288 & i13) != 0 ? null : num9, (1048576 & i13) != 0 ? null : baseBoolInt4, (i13 & 2097152) != 0 ? null : baseBoolInt5);
    }
}
