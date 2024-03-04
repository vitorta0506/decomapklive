package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikes;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\bR\b\u0086\b\u0018\u00002\u00020\u0001BÅ\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010+J\t\u0010U\u001a\u00020\u0003HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010/J\u0010\u0010[\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010/J\u000b\u0010\\\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010/J\u000b\u0010_\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010`\u001a\u00020\u0005HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010/J\u000b\u0010c\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010%HÆ\u0003¢\u0006\u0002\u0010BJ\u000b\u0010e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010g\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010/J\u0010\u0010h\u001a\u0004\u0018\u00010%HÆ\u0003¢\u0006\u0002\u0010BJ\u000b\u0010i\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010j\u001a\u00020\u0007HÆ\u0003J\t\u0010k\u001a\u00020\tHÆ\u0003J\t\u0010l\u001a\u00020\u000bHÆ\u0003J\t\u0010m\u001a\u00020\rHÆ\u0003J\t\u0010n\u001a\u00020\u0007HÆ\u0003J\u0011\u0010o\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0010HÆ\u0003J\u0011\u0010p\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0010HÆ\u0003JÜ\u0002\u0010q\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00072\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00102\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010rJ\u0013\u0010s\u001a\u00020%2\b\u0010t\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010u\u001a\u00020\tHÖ\u0001J\t\u0010v\u001a\u00020\u0007HÖ\u0001R\u0018\u0010 \u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001a\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00100\u001a\u0004\b.\u0010/R\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0018\u0010!\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010-R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00107R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u001a\u0010\"\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00100\u001a\u0004\b=\u0010/R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010-R\u0018\u0010#\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010-R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u001a\u0010$\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010C\u001a\u0004\b$\u0010BR\u001a\u0010)\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010C\u001a\u0004\b)\u0010BR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u00102R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bI\u0010JR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010LR\u0018\u0010*\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u0010-R\u0018\u0010&\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010-R\u0016\u0010\u000e\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010-R\u0018\u0010'\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u0010-R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010-R\u001a\u0010(\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00100\u001a\u0004\bR\u0010/R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00100\u001a\u0004\bS\u0010/R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00100\u001a\u0004\bT\u0010/¨\u0006w"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketMarketItemFull;", "", "availability", "Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;", "category", "Lcom/vk/sdk/api/market/dto/MarketMarketCategory;", "description", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", InAppPurchaseMetaData.KEY_PRICE, "Lcom/vk/sdk/api/market/dto/MarketPrice;", "title", "albumsIds", "", "photos", "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "canRepost", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikes;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "viewsCount", "wishlistItemId", "cancelInfo", "Lcom/vk/sdk/api/base/dto/BaseLink;", "userAgreementInfo", "adId", "accessKey", "buttonTitle", "date", "externalId", "isFavorite", "", "thumbPhoto", "url", "variantsGroupingId", "isMainVariant", "sku", "(Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;Lcom/vk/sdk/api/market/dto/MarketMarketCategory;Ljava/lang/String;ILcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLink;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V", "getAccessKey", "()Ljava/lang/String;", "getAdId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAlbumsIds", "()Ljava/util/List;", "getAvailability", "()Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;", "getButtonTitle", "getCanComment", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCanRepost", "getCancelInfo", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getCategory", "()Lcom/vk/sdk/api/market/dto/MarketMarketCategory;", "getDate", "getDescription", "getExternalId", "getId", "()I", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikes;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhotos", "getPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getSku", "getThumbPhoto", "getTitle", "getUrl", "getUserAgreementInfo", "getVariantsGroupingId", "getViewsCount", "getWishlistItemId", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;Lcom/vk/sdk/api/market/dto/MarketMarketCategory;Ljava/lang/String;ILcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLink;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vk/sdk/api/market/dto/MarketMarketItemFull;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketMarketItemFull {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("ad_id")
    @Nullable
    private final Integer adId;
    @SerializedName("albums_ids")
    @Nullable
    private final List<Integer> albumsIds;
    @SerializedName("availability")
    @NotNull
    private final MarketMarketItemAvailability availability;
    @SerializedName("button_title")
    @Nullable
    private final String buttonTitle;
    @SerializedName("can_comment")
    @Nullable
    private final BaseBoolInt canComment;
    @SerializedName("can_repost")
    @Nullable
    private final BaseBoolInt canRepost;
    @SerializedName("cancel_info")
    @Nullable
    private final BaseLink cancelInfo;
    @SerializedName("category")
    @NotNull
    private final MarketMarketCategory category;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("external_id")
    @Nullable
    private final String externalId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35894id;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName("is_main_variant")
    @Nullable
    private final Boolean isMainVariant;
    @SerializedName("likes")
    @Nullable
    private final BaseLikes likes;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("photos")
    @Nullable
    private final List<PhotosPhoto> photos;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @NotNull
    private final MarketPrice price;
    @SerializedName("reposts")
    @Nullable
    private final BaseRepostsInfo reposts;
    @SerializedName("sku")
    @Nullable
    private final String sku;
    @SerializedName("thumb_photo")
    @Nullable
    private final String thumbPhoto;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("url")
    @Nullable
    private final String url;
    @SerializedName("user_agreement_info")
    @Nullable
    private final String userAgreementInfo;
    @SerializedName("variants_grouping_id")
    @Nullable
    private final Integer variantsGroupingId;
    @SerializedName("views_count")
    @Nullable
    private final Integer viewsCount;
    @SerializedName("wishlist_item_id")
    @Nullable
    private final Integer wishlistItemId;

    public MarketMarketItemFull(@NotNull MarketMarketItemAvailability availability, @NotNull MarketMarketCategory category, @NotNull String description, int i9, @NotNull UserId ownerId, @NotNull MarketPrice price, @NotNull String title, @Nullable List<Integer> list, @Nullable List<PhotosPhoto> list2, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable Integer num, @Nullable Integer num2, @Nullable BaseLink baseLink, @Nullable String str, @Nullable Integer num3, @Nullable String str2, @Nullable String str3, @Nullable Integer num4, @Nullable String str4, @Nullable Boolean bool, @Nullable String str5, @Nullable String str6, @Nullable Integer num5, @Nullable Boolean bool2, @Nullable String str7) {
        Intrinsics.checkNotNullParameter(availability, "availability");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(title, "title");
        this.availability = availability;
        this.category = category;
        this.description = description;
        this.f35894id = i9;
        this.ownerId = ownerId;
        this.price = price;
        this.title = title;
        this.albumsIds = list;
        this.photos = list2;
        this.canComment = baseBoolInt;
        this.canRepost = baseBoolInt2;
        this.likes = baseLikes;
        this.reposts = baseRepostsInfo;
        this.viewsCount = num;
        this.wishlistItemId = num2;
        this.cancelInfo = baseLink;
        this.userAgreementInfo = str;
        this.adId = num3;
        this.accessKey = str2;
        this.buttonTitle = str3;
        this.date = num4;
        this.externalId = str4;
        this.isFavorite = bool;
        this.thumbPhoto = str5;
        this.url = str6;
        this.variantsGroupingId = num5;
        this.isMainVariant = bool2;
        this.sku = str7;
    }

    @NotNull
    public final MarketMarketItemAvailability component1() {
        return this.availability;
    }

    @Nullable
    public final BaseBoolInt component10() {
        return this.canComment;
    }

    @Nullable
    public final BaseBoolInt component11() {
        return this.canRepost;
    }

    @Nullable
    public final BaseLikes component12() {
        return this.likes;
    }

    @Nullable
    public final BaseRepostsInfo component13() {
        return this.reposts;
    }

    @Nullable
    public final Integer component14() {
        return this.viewsCount;
    }

    @Nullable
    public final Integer component15() {
        return this.wishlistItemId;
    }

    @Nullable
    public final BaseLink component16() {
        return this.cancelInfo;
    }

    @Nullable
    public final String component17() {
        return this.userAgreementInfo;
    }

    @Nullable
    public final Integer component18() {
        return this.adId;
    }

    @Nullable
    public final String component19() {
        return this.accessKey;
    }

    @NotNull
    public final MarketMarketCategory component2() {
        return this.category;
    }

    @Nullable
    public final String component20() {
        return this.buttonTitle;
    }

    @Nullable
    public final Integer component21() {
        return this.date;
    }

    @Nullable
    public final String component22() {
        return this.externalId;
    }

    @Nullable
    public final Boolean component23() {
        return this.isFavorite;
    }

    @Nullable
    public final String component24() {
        return this.thumbPhoto;
    }

    @Nullable
    public final String component25() {
        return this.url;
    }

    @Nullable
    public final Integer component26() {
        return this.variantsGroupingId;
    }

    @Nullable
    public final Boolean component27() {
        return this.isMainVariant;
    }

    @Nullable
    public final String component28() {
        return this.sku;
    }

    @NotNull
    public final String component3() {
        return this.description;
    }

    public final int component4() {
        return this.f35894id;
    }

    @NotNull
    public final UserId component5() {
        return this.ownerId;
    }

    @NotNull
    public final MarketPrice component6() {
        return this.price;
    }

    @NotNull
    public final String component7() {
        return this.title;
    }

    @Nullable
    public final List<Integer> component8() {
        return this.albumsIds;
    }

    @Nullable
    public final List<PhotosPhoto> component9() {
        return this.photos;
    }

    @NotNull
    public final MarketMarketItemFull copy(@NotNull MarketMarketItemAvailability availability, @NotNull MarketMarketCategory category, @NotNull String description, int i9, @NotNull UserId ownerId, @NotNull MarketPrice price, @NotNull String title, @Nullable List<Integer> list, @Nullable List<PhotosPhoto> list2, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable Integer num, @Nullable Integer num2, @Nullable BaseLink baseLink, @Nullable String str, @Nullable Integer num3, @Nullable String str2, @Nullable String str3, @Nullable Integer num4, @Nullable String str4, @Nullable Boolean bool, @Nullable String str5, @Nullable String str6, @Nullable Integer num5, @Nullable Boolean bool2, @Nullable String str7) {
        Intrinsics.checkNotNullParameter(availability, "availability");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(title, "title");
        return new MarketMarketItemFull(availability, category, description, i9, ownerId, price, title, list, list2, baseBoolInt, baseBoolInt2, baseLikes, baseRepostsInfo, num, num2, baseLink, str, num3, str2, str3, num4, str4, bool, str5, str6, num5, bool2, str7);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketMarketItemFull) {
            MarketMarketItemFull marketMarketItemFull = (MarketMarketItemFull) obj;
            return this.availability == marketMarketItemFull.availability && Intrinsics.areEqual(this.category, marketMarketItemFull.category) && Intrinsics.areEqual(this.description, marketMarketItemFull.description) && this.f35894id == marketMarketItemFull.f35894id && Intrinsics.areEqual(this.ownerId, marketMarketItemFull.ownerId) && Intrinsics.areEqual(this.price, marketMarketItemFull.price) && Intrinsics.areEqual(this.title, marketMarketItemFull.title) && Intrinsics.areEqual(this.albumsIds, marketMarketItemFull.albumsIds) && Intrinsics.areEqual(this.photos, marketMarketItemFull.photos) && this.canComment == marketMarketItemFull.canComment && this.canRepost == marketMarketItemFull.canRepost && Intrinsics.areEqual(this.likes, marketMarketItemFull.likes) && Intrinsics.areEqual(this.reposts, marketMarketItemFull.reposts) && Intrinsics.areEqual(this.viewsCount, marketMarketItemFull.viewsCount) && Intrinsics.areEqual(this.wishlistItemId, marketMarketItemFull.wishlistItemId) && Intrinsics.areEqual(this.cancelInfo, marketMarketItemFull.cancelInfo) && Intrinsics.areEqual(this.userAgreementInfo, marketMarketItemFull.userAgreementInfo) && Intrinsics.areEqual(this.adId, marketMarketItemFull.adId) && Intrinsics.areEqual(this.accessKey, marketMarketItemFull.accessKey) && Intrinsics.areEqual(this.buttonTitle, marketMarketItemFull.buttonTitle) && Intrinsics.areEqual(this.date, marketMarketItemFull.date) && Intrinsics.areEqual(this.externalId, marketMarketItemFull.externalId) && Intrinsics.areEqual(this.isFavorite, marketMarketItemFull.isFavorite) && Intrinsics.areEqual(this.thumbPhoto, marketMarketItemFull.thumbPhoto) && Intrinsics.areEqual(this.url, marketMarketItemFull.url) && Intrinsics.areEqual(this.variantsGroupingId, marketMarketItemFull.variantsGroupingId) && Intrinsics.areEqual(this.isMainVariant, marketMarketItemFull.isMainVariant) && Intrinsics.areEqual(this.sku, marketMarketItemFull.sku);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final Integer getAdId() {
        return this.adId;
    }

    @Nullable
    public final List<Integer> getAlbumsIds() {
        return this.albumsIds;
    }

    @NotNull
    public final MarketMarketItemAvailability getAvailability() {
        return this.availability;
    }

    @Nullable
    public final String getButtonTitle() {
        return this.buttonTitle;
    }

    @Nullable
    public final BaseBoolInt getCanComment() {
        return this.canComment;
    }

    @Nullable
    public final BaseBoolInt getCanRepost() {
        return this.canRepost;
    }

    @Nullable
    public final BaseLink getCancelInfo() {
        return this.cancelInfo;
    }

    @NotNull
    public final MarketMarketCategory getCategory() {
        return this.category;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getExternalId() {
        return this.externalId;
    }

    public final int getId() {
        return this.f35894id;
    }

    @Nullable
    public final BaseLikes getLikes() {
        return this.likes;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final List<PhotosPhoto> getPhotos() {
        return this.photos;
    }

    @NotNull
    public final MarketPrice getPrice() {
        return this.price;
    }

    @Nullable
    public final BaseRepostsInfo getReposts() {
        return this.reposts;
    }

    @Nullable
    public final String getSku() {
        return this.sku;
    }

    @Nullable
    public final String getThumbPhoto() {
        return this.thumbPhoto;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final String getUserAgreementInfo() {
        return this.userAgreementInfo;
    }

    @Nullable
    public final Integer getVariantsGroupingId() {
        return this.variantsGroupingId;
    }

    @Nullable
    public final Integer getViewsCount() {
        return this.viewsCount;
    }

    @Nullable
    public final Integer getWishlistItemId() {
        return this.wishlistItemId;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.availability.hashCode() * 31) + this.category.hashCode()) * 31) + this.description.hashCode()) * 31) + this.f35894id) * 31) + this.ownerId.hashCode()) * 31) + this.price.hashCode()) * 31) + this.title.hashCode()) * 31;
        List<Integer> list = this.albumsIds;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<PhotosPhoto> list2 = this.photos;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode4 = (hashCode3 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.canRepost;
        int hashCode5 = (hashCode4 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseLikes baseLikes = this.likes;
        int hashCode6 = (hashCode5 + (baseLikes == null ? 0 : baseLikes.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode7 = (hashCode6 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        Integer num = this.viewsCount;
        int hashCode8 = (hashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.wishlistItemId;
        int hashCode9 = (hashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        BaseLink baseLink = this.cancelInfo;
        int hashCode10 = (hashCode9 + (baseLink == null ? 0 : baseLink.hashCode())) * 31;
        String str = this.userAgreementInfo;
        int hashCode11 = (hashCode10 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.adId;
        int hashCode12 = (hashCode11 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.accessKey;
        int hashCode13 = (hashCode12 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.buttonTitle;
        int hashCode14 = (hashCode13 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num4 = this.date;
        int hashCode15 = (hashCode14 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str4 = this.externalId;
        int hashCode16 = (hashCode15 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool = this.isFavorite;
        int hashCode17 = (hashCode16 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str5 = this.thumbPhoto;
        int hashCode18 = (hashCode17 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.url;
        int hashCode19 = (hashCode18 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num5 = this.variantsGroupingId;
        int hashCode20 = (hashCode19 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Boolean bool2 = this.isMainVariant;
        int hashCode21 = (hashCode20 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str7 = this.sku;
        return hashCode21 + (str7 != null ? str7.hashCode() : 0);
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @Nullable
    public final Boolean isMainVariant() {
        return this.isMainVariant;
    }

    @NotNull
    public String toString() {
        MarketMarketItemAvailability marketMarketItemAvailability = this.availability;
        MarketMarketCategory marketMarketCategory = this.category;
        String str = this.description;
        int i9 = this.f35894id;
        UserId userId = this.ownerId;
        MarketPrice marketPrice = this.price;
        String str2 = this.title;
        List<Integer> list = this.albumsIds;
        List<PhotosPhoto> list2 = this.photos;
        BaseBoolInt baseBoolInt = this.canComment;
        BaseBoolInt baseBoolInt2 = this.canRepost;
        BaseLikes baseLikes = this.likes;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        Integer num = this.viewsCount;
        Integer num2 = this.wishlistItemId;
        BaseLink baseLink = this.cancelInfo;
        String str3 = this.userAgreementInfo;
        Integer num3 = this.adId;
        String str4 = this.accessKey;
        String str5 = this.buttonTitle;
        Integer num4 = this.date;
        String str6 = this.externalId;
        Boolean bool = this.isFavorite;
        String str7 = this.thumbPhoto;
        String str8 = this.url;
        Integer num5 = this.variantsGroupingId;
        Boolean bool2 = this.isMainVariant;
        String str9 = this.sku;
        return "MarketMarketItemFull(availability=" + marketMarketItemAvailability + ", category=" + marketMarketCategory + ", description=" + str + ", id=" + i9 + ", ownerId=" + userId + ", price=" + marketPrice + ", title=" + str2 + ", albumsIds=" + list + ", photos=" + list2 + ", canComment=" + baseBoolInt + ", canRepost=" + baseBoolInt2 + ", likes=" + baseLikes + ", reposts=" + baseRepostsInfo + ", viewsCount=" + num + ", wishlistItemId=" + num2 + ", cancelInfo=" + baseLink + ", userAgreementInfo=" + str3 + ", adId=" + num3 + ", accessKey=" + str4 + ", buttonTitle=" + str5 + ", date=" + num4 + ", externalId=" + str6 + ", isFavorite=" + bool + ", thumbPhoto=" + str7 + ", url=" + str8 + ", variantsGroupingId=" + num5 + ", isMainVariant=" + bool2 + ", sku=" + str9 + ")";
    }

    public /* synthetic */ MarketMarketItemFull(MarketMarketItemAvailability marketMarketItemAvailability, MarketMarketCategory marketMarketCategory, String str, int i9, UserId userId, MarketPrice marketPrice, String str2, List list, List list2, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseLikes baseLikes, BaseRepostsInfo baseRepostsInfo, Integer num, Integer num2, BaseLink baseLink, String str3, Integer num3, String str4, String str5, Integer num4, String str6, Boolean bool, String str7, String str8, Integer num5, Boolean bool2, String str9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(marketMarketItemAvailability, marketMarketCategory, str, i9, userId, marketPrice, str2, (i10 & 128) != 0 ? null : list, (i10 & 256) != 0 ? null : list2, (i10 & 512) != 0 ? null : baseBoolInt, (i10 & 1024) != 0 ? null : baseBoolInt2, (i10 & 2048) != 0 ? null : baseLikes, (i10 & 4096) != 0 ? null : baseRepostsInfo, (i10 & 8192) != 0 ? null : num, (i10 & 16384) != 0 ? null : num2, (32768 & i10) != 0 ? null : baseLink, (65536 & i10) != 0 ? null : str3, (131072 & i10) != 0 ? null : num3, (262144 & i10) != 0 ? null : str4, (524288 & i10) != 0 ? null : str5, (1048576 & i10) != 0 ? null : num4, (2097152 & i10) != 0 ? null : str6, (4194304 & i10) != 0 ? null : bool, (8388608 & i10) != 0 ? null : str7, (16777216 & i10) != 0 ? null : str8, (33554432 & i10) != 0 ? null : num5, (67108864 & i10) != 0 ? null : bool2, (i10 & 134217728) != 0 ? null : str9);
    }
}
