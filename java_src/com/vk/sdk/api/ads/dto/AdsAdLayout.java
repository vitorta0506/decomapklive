package com.vk.sdk.api.ads.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0006HÆ\u0003J\t\u0010)\u001a\u00020\bHÆ\u0003J\t\u0010*\u001a\u00020\bHÆ\u0003J\t\u0010+\u001a\u00020\bHÆ\u0003J\t\u0010,\u001a\u00020\bHÆ\u0003J\t\u0010-\u001a\u00020\bHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0089\u0001\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0003HÖ\u0001J\t\u00104\u001a\u00020\bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0016\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0018\u0010\r\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0016\u0010\f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u00065"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsAdLayout;", "", "adFormat", "", "campaignId", "costType", "Lcom/vk/sdk/api/ads/dto/AdsAdCostType;", "description", "", "id", "imageSrc", "linkUrl", "title", "imageSrc2x", "linkDomain", "previewLink", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "(IILcom/vk/sdk/api/ads/dto/AdsAdCostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getAdFormat", "()I", "getCampaignId", "getCostType", "()Lcom/vk/sdk/api/ads/dto/AdsAdCostType;", "getDescription", "()Ljava/lang/String;", "getId", "getImageSrc", "getImageSrc2x", "getLinkDomain", "getLinkUrl", "getPreviewLink", "getTitle", "getVideo", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsAdLayout {
    @SerializedName("ad_format")
    private final int adFormat;
    @SerializedName("campaign_id")
    private final int campaignId;
    @SerializedName("cost_type")
    @NotNull
    private final AdsAdCostType costType;
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35663id;
    @SerializedName("image_src")
    @NotNull
    private final String imageSrc;
    @SerializedName("image_src_2x")
    @Nullable
    private final String imageSrc2x;
    @SerializedName("link_domain")
    @Nullable
    private final String linkDomain;
    @SerializedName("link_url")
    @NotNull
    private final String linkUrl;
    @SerializedName("preview_link")
    @Nullable
    private final String previewLink;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final BaseBoolInt video;

    public AdsAdLayout(int i9, int i10, @NotNull AdsAdCostType costType, @NotNull String description, @NotNull String id2, @NotNull String imageSrc, @NotNull String linkUrl, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(costType, "costType");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(imageSrc, "imageSrc");
        Intrinsics.checkNotNullParameter(linkUrl, "linkUrl");
        Intrinsics.checkNotNullParameter(title, "title");
        this.adFormat = i9;
        this.campaignId = i10;
        this.costType = costType;
        this.description = description;
        this.f35663id = id2;
        this.imageSrc = imageSrc;
        this.linkUrl = linkUrl;
        this.title = title;
        this.imageSrc2x = str;
        this.linkDomain = str2;
        this.previewLink = str3;
        this.video = baseBoolInt;
    }

    public final int component1() {
        return this.adFormat;
    }

    @Nullable
    public final String component10() {
        return this.linkDomain;
    }

    @Nullable
    public final String component11() {
        return this.previewLink;
    }

    @Nullable
    public final BaseBoolInt component12() {
        return this.video;
    }

    public final int component2() {
        return this.campaignId;
    }

    @NotNull
    public final AdsAdCostType component3() {
        return this.costType;
    }

    @NotNull
    public final String component4() {
        return this.description;
    }

    @NotNull
    public final String component5() {
        return this.f35663id;
    }

    @NotNull
    public final String component6() {
        return this.imageSrc;
    }

    @NotNull
    public final String component7() {
        return this.linkUrl;
    }

    @NotNull
    public final String component8() {
        return this.title;
    }

    @Nullable
    public final String component9() {
        return this.imageSrc2x;
    }

    @NotNull
    public final AdsAdLayout copy(int i9, int i10, @NotNull AdsAdCostType costType, @NotNull String description, @NotNull String id2, @NotNull String imageSrc, @NotNull String linkUrl, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(costType, "costType");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(imageSrc, "imageSrc");
        Intrinsics.checkNotNullParameter(linkUrl, "linkUrl");
        Intrinsics.checkNotNullParameter(title, "title");
        return new AdsAdLayout(i9, i10, costType, description, id2, imageSrc, linkUrl, title, str, str2, str3, baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsAdLayout) {
            AdsAdLayout adsAdLayout = (AdsAdLayout) obj;
            return this.adFormat == adsAdLayout.adFormat && this.campaignId == adsAdLayout.campaignId && this.costType == adsAdLayout.costType && Intrinsics.areEqual(this.description, adsAdLayout.description) && Intrinsics.areEqual(this.f35663id, adsAdLayout.f35663id) && Intrinsics.areEqual(this.imageSrc, adsAdLayout.imageSrc) && Intrinsics.areEqual(this.linkUrl, adsAdLayout.linkUrl) && Intrinsics.areEqual(this.title, adsAdLayout.title) && Intrinsics.areEqual(this.imageSrc2x, adsAdLayout.imageSrc2x) && Intrinsics.areEqual(this.linkDomain, adsAdLayout.linkDomain) && Intrinsics.areEqual(this.previewLink, adsAdLayout.previewLink) && this.video == adsAdLayout.video;
        }
        return false;
    }

    public final int getAdFormat() {
        return this.adFormat;
    }

    public final int getCampaignId() {
        return this.campaignId;
    }

    @NotNull
    public final AdsAdCostType getCostType() {
        return this.costType;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getId() {
        return this.f35663id;
    }

    @NotNull
    public final String getImageSrc() {
        return this.imageSrc;
    }

    @Nullable
    public final String getImageSrc2x() {
        return this.imageSrc2x;
    }

    @Nullable
    public final String getLinkDomain() {
        return this.linkDomain;
    }

    @NotNull
    public final String getLinkUrl() {
        return this.linkUrl;
    }

    @Nullable
    public final String getPreviewLink() {
        return this.previewLink;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final BaseBoolInt getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((this.adFormat * 31) + this.campaignId) * 31) + this.costType.hashCode()) * 31) + this.description.hashCode()) * 31) + this.f35663id.hashCode()) * 31) + this.imageSrc.hashCode()) * 31) + this.linkUrl.hashCode()) * 31) + this.title.hashCode()) * 31;
        String str = this.imageSrc2x;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.linkDomain;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.previewLink;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.video;
        return hashCode4 + (baseBoolInt != null ? baseBoolInt.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.adFormat;
        int i10 = this.campaignId;
        AdsAdCostType adsAdCostType = this.costType;
        String str = this.description;
        String str2 = this.f35663id;
        String str3 = this.imageSrc;
        String str4 = this.linkUrl;
        String str5 = this.title;
        String str6 = this.imageSrc2x;
        String str7 = this.linkDomain;
        String str8 = this.previewLink;
        BaseBoolInt baseBoolInt = this.video;
        return "AdsAdLayout(adFormat=" + i9 + ", campaignId=" + i10 + ", costType=" + adsAdCostType + ", description=" + str + ", id=" + str2 + ", imageSrc=" + str3 + ", linkUrl=" + str4 + ", title=" + str5 + ", imageSrc2x=" + str6 + ", linkDomain=" + str7 + ", previewLink=" + str8 + ", video=" + baseBoolInt + ")";
    }

    public /* synthetic */ AdsAdLayout(int i9, int i10, AdsAdCostType adsAdCostType, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, BaseBoolInt baseBoolInt, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, adsAdCostType, str, str2, str3, str4, str5, (i11 & 256) != 0 ? null : str6, (i11 & 512) != 0 ? null : str7, (i11 & 1024) != 0 ? null : str8, (i11 & 2048) != 0 ? null : baseBoolInt);
    }
}
