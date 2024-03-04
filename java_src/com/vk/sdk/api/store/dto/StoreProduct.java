package com.vk.sdk.api.store.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseImage;
import com.vk.sdk.api.base.dto.BaseStickerNew;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b3\b\u0086\b\u0018\u00002\u00020\u0001:\u0001FBÉ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0019J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u0011\u00102\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010HÆ\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0010HÆ\u0003J\u0011\u00104\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0010HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u000b\u00106\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\t\u00108\u001a\u00020\u0005HÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001dJ\u000b\u0010:\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010(J\u000b\u0010>\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003JÖ\u0001\u0010@\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00102\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00102\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u0010AJ\u0013\u0010B\u001a\u00020\u00072\b\u0010C\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010D\u001a\u00020\u0003HÖ\u0001J\t\u0010E\u001a\u00020\u000eHÖ\u0001R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u0006\u0010\u001dR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010 R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001bR\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010 R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010 R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010$R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010$R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100¨\u0006G"}, d2 = {"Lcom/vk/sdk/api/store/dto/StoreProduct;", "", "id", "", "type", "Lcom/vk/sdk/api/store/dto/StoreProduct$Type;", "isNew", "", "purchased", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "active", "promoted", "purchaseDate", "title", "", "stickers", "", "Lcom/vk/sdk/api/base/dto/BaseStickerNew;", "styleStickerIds", RemoteMessageConst.Notification.ICON, "Lcom/vk/sdk/api/base/dto/BaseImage;", "previews", "hasAnimation", "subtitle", "paymentRegion", "(ILcom/vk/sdk/api/store/dto/StoreProduct$Type;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V", "getActive", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getHasAnimation", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getIcon", "()Ljava/util/List;", "getId", "()I", "getPaymentRegion", "()Ljava/lang/String;", "getPreviews", "getPromoted", "getPurchaseDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPurchased", "getStickers", "getStyleStickerIds", "getSubtitle", "getTitle", "getType", "()Lcom/vk/sdk/api/store/dto/StoreProduct$Type;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILcom/vk/sdk/api/store/dto/StoreProduct$Type;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/store/dto/StoreProduct;", "equals", "other", "hashCode", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoreProduct {
    @SerializedName("active")
    @Nullable
    private final BaseBoolInt active;
    @SerializedName("has_animation")
    @Nullable
    private final Boolean hasAnimation;
    @SerializedName(RemoteMessageConst.Notification.ICON)
    @Nullable
    private final List<BaseImage> icon;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36089id;
    @SerializedName("is_new")
    @Nullable
    private final Boolean isNew;
    @SerializedName("payment_region")
    @Nullable
    private final String paymentRegion;
    @SerializedName("previews")
    @Nullable
    private final List<BaseImage> previews;
    @SerializedName("promoted")
    @Nullable
    private final BaseBoolInt promoted;
    @SerializedName("purchase_date")
    @Nullable
    private final Integer purchaseDate;
    @SerializedName("purchased")
    @Nullable
    private final BaseBoolInt purchased;
    @SerializedName("stickers")
    @Nullable
    private final List<BaseStickerNew> stickers;
    @SerializedName("style_sticker_ids")
    @Nullable
    private final List<Integer> styleStickerIds;
    @SerializedName("subtitle")
    @Nullable
    private final String subtitle;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("type")
    @NotNull
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/store/dto/StoreProduct$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "STICKERS", "VOTES", "SUBSCRIPRIONS", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        STICKERS("stickers"),
        VOTES("votes"),
        SUBSCRIPRIONS("subscriprions");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public StoreProduct(int i9, @NotNull Type type, @Nullable Boolean bool, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num, @Nullable String str, @Nullable List<BaseStickerNew> list, @Nullable List<Integer> list2, @Nullable List<BaseImage> list3, @Nullable List<BaseImage> list4, @Nullable Boolean bool2, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f36089id = i9;
        this.type = type;
        this.isNew = bool;
        this.purchased = baseBoolInt;
        this.active = baseBoolInt2;
        this.promoted = baseBoolInt3;
        this.purchaseDate = num;
        this.title = str;
        this.stickers = list;
        this.styleStickerIds = list2;
        this.icon = list3;
        this.previews = list4;
        this.hasAnimation = bool2;
        this.subtitle = str2;
        this.paymentRegion = str3;
    }

    public final int component1() {
        return this.f36089id;
    }

    @Nullable
    public final List<Integer> component10() {
        return this.styleStickerIds;
    }

    @Nullable
    public final List<BaseImage> component11() {
        return this.icon;
    }

    @Nullable
    public final List<BaseImage> component12() {
        return this.previews;
    }

    @Nullable
    public final Boolean component13() {
        return this.hasAnimation;
    }

    @Nullable
    public final String component14() {
        return this.subtitle;
    }

    @Nullable
    public final String component15() {
        return this.paymentRegion;
    }

    @NotNull
    public final Type component2() {
        return this.type;
    }

    @Nullable
    public final Boolean component3() {
        return this.isNew;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.purchased;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.active;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.promoted;
    }

    @Nullable
    public final Integer component7() {
        return this.purchaseDate;
    }

    @Nullable
    public final String component8() {
        return this.title;
    }

    @Nullable
    public final List<BaseStickerNew> component9() {
        return this.stickers;
    }

    @NotNull
    public final StoreProduct copy(int i9, @NotNull Type type, @Nullable Boolean bool, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num, @Nullable String str, @Nullable List<BaseStickerNew> list, @Nullable List<Integer> list2, @Nullable List<BaseImage> list3, @Nullable List<BaseImage> list4, @Nullable Boolean bool2, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new StoreProduct(i9, type, bool, baseBoolInt, baseBoolInt2, baseBoolInt3, num, str, list, list2, list3, list4, bool2, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoreProduct) {
            StoreProduct storeProduct = (StoreProduct) obj;
            return this.f36089id == storeProduct.f36089id && this.type == storeProduct.type && Intrinsics.areEqual(this.isNew, storeProduct.isNew) && this.purchased == storeProduct.purchased && this.active == storeProduct.active && this.promoted == storeProduct.promoted && Intrinsics.areEqual(this.purchaseDate, storeProduct.purchaseDate) && Intrinsics.areEqual(this.title, storeProduct.title) && Intrinsics.areEqual(this.stickers, storeProduct.stickers) && Intrinsics.areEqual(this.styleStickerIds, storeProduct.styleStickerIds) && Intrinsics.areEqual(this.icon, storeProduct.icon) && Intrinsics.areEqual(this.previews, storeProduct.previews) && Intrinsics.areEqual(this.hasAnimation, storeProduct.hasAnimation) && Intrinsics.areEqual(this.subtitle, storeProduct.subtitle) && Intrinsics.areEqual(this.paymentRegion, storeProduct.paymentRegion);
        }
        return false;
    }

    @Nullable
    public final BaseBoolInt getActive() {
        return this.active;
    }

    @Nullable
    public final Boolean getHasAnimation() {
        return this.hasAnimation;
    }

    @Nullable
    public final List<BaseImage> getIcon() {
        return this.icon;
    }

    public final int getId() {
        return this.f36089id;
    }

    @Nullable
    public final String getPaymentRegion() {
        return this.paymentRegion;
    }

    @Nullable
    public final List<BaseImage> getPreviews() {
        return this.previews;
    }

    @Nullable
    public final BaseBoolInt getPromoted() {
        return this.promoted;
    }

    @Nullable
    public final Integer getPurchaseDate() {
        return this.purchaseDate;
    }

    @Nullable
    public final BaseBoolInt getPurchased() {
        return this.purchased;
    }

    @Nullable
    public final List<BaseStickerNew> getStickers() {
        return this.stickers;
    }

    @Nullable
    public final List<Integer> getStyleStickerIds() {
        return this.styleStickerIds;
    }

    @Nullable
    public final String getSubtitle() {
        return this.subtitle;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.f36089id * 31) + this.type.hashCode()) * 31;
        Boolean bool = this.isNew;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.purchased;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.active;
        int hashCode4 = (hashCode3 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.promoted;
        int hashCode5 = (hashCode4 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        Integer num = this.purchaseDate;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.title;
        int hashCode7 = (hashCode6 + (str == null ? 0 : str.hashCode())) * 31;
        List<BaseStickerNew> list = this.stickers;
        int hashCode8 = (hashCode7 + (list == null ? 0 : list.hashCode())) * 31;
        List<Integer> list2 = this.styleStickerIds;
        int hashCode9 = (hashCode8 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<BaseImage> list3 = this.icon;
        int hashCode10 = (hashCode9 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<BaseImage> list4 = this.previews;
        int hashCode11 = (hashCode10 + (list4 == null ? 0 : list4.hashCode())) * 31;
        Boolean bool2 = this.hasAnimation;
        int hashCode12 = (hashCode11 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str2 = this.subtitle;
        int hashCode13 = (hashCode12 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.paymentRegion;
        return hashCode13 + (str3 != null ? str3.hashCode() : 0);
    }

    @Nullable
    public final Boolean isNew() {
        return this.isNew;
    }

    @NotNull
    public String toString() {
        int i9 = this.f36089id;
        Type type = this.type;
        Boolean bool = this.isNew;
        BaseBoolInt baseBoolInt = this.purchased;
        BaseBoolInt baseBoolInt2 = this.active;
        BaseBoolInt baseBoolInt3 = this.promoted;
        Integer num = this.purchaseDate;
        String str = this.title;
        List<BaseStickerNew> list = this.stickers;
        List<Integer> list2 = this.styleStickerIds;
        List<BaseImage> list3 = this.icon;
        List<BaseImage> list4 = this.previews;
        Boolean bool2 = this.hasAnimation;
        String str2 = this.subtitle;
        String str3 = this.paymentRegion;
        return "StoreProduct(id=" + i9 + ", type=" + type + ", isNew=" + bool + ", purchased=" + baseBoolInt + ", active=" + baseBoolInt2 + ", promoted=" + baseBoolInt3 + ", purchaseDate=" + num + ", title=" + str + ", stickers=" + list + ", styleStickerIds=" + list2 + ", icon=" + list3 + ", previews=" + list4 + ", hasAnimation=" + bool2 + ", subtitle=" + str2 + ", paymentRegion=" + str3 + ")";
    }

    public /* synthetic */ StoreProduct(int i9, Type type, Boolean bool, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, Integer num, String str, List list, List list2, List list3, List list4, Boolean bool2, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, type, (i10 & 4) != 0 ? null : bool, (i10 & 8) != 0 ? null : baseBoolInt, (i10 & 16) != 0 ? null : baseBoolInt2, (i10 & 32) != 0 ? null : baseBoolInt3, (i10 & 64) != 0 ? null : num, (i10 & 128) != 0 ? null : str, (i10 & 256) != 0 ? null : list, (i10 & 512) != 0 ? null : list2, (i10 & 1024) != 0 ? null : list3, (i10 & 2048) != 0 ? null : list4, (i10 & 4096) != 0 ? null : bool2, (i10 & 8192) != 0 ? null : str2, (i10 & 16384) != 0 ? null : str3);
    }
}
