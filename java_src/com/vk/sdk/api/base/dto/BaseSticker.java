package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001Bk\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\nHÆ\u0003J\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010\u0016Jt\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u000e2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\nHÖ\u0001R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\r\u0010\u0016R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019¨\u0006)"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseSticker;", "", "stickerId", "", InAppPurchaseMetaData.KEY_PRODUCT_ID, "images", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "imagesWithBackground", "animationUrl", "", "animations", "Lcom/vk/sdk/api/base/dto/BaseStickerAnimation;", "isAllowed", "", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V", "getAnimationUrl", "()Ljava/lang/String;", "getAnimations", "()Ljava/util/List;", "getImages", "getImagesWithBackground", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getProductId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStickerId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/sdk/api/base/dto/BaseSticker;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseSticker {
    @SerializedName("animation_url")
    @Nullable
    private final String animationUrl;
    @SerializedName("animations")
    @Nullable
    private final List<BaseStickerAnimation> animations;
    @SerializedName("images")
    @Nullable
    private final List<BaseImage> images;
    @SerializedName("images_with_background")
    @Nullable
    private final List<BaseImage> imagesWithBackground;
    @SerializedName("is_allowed")
    @Nullable
    private final Boolean isAllowed;
    @SerializedName("product_id")
    @Nullable
    private final Integer productId;
    @SerializedName("sticker_id")
    @Nullable
    private final Integer stickerId;

    public BaseSticker() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public BaseSticker(@Nullable Integer num, @Nullable Integer num2, @Nullable List<BaseImage> list, @Nullable List<BaseImage> list2, @Nullable String str, @Nullable List<BaseStickerAnimation> list3, @Nullable Boolean bool) {
        this.stickerId = num;
        this.productId = num2;
        this.images = list;
        this.imagesWithBackground = list2;
        this.animationUrl = str;
        this.animations = list3;
        this.isAllowed = bool;
    }

    public static /* synthetic */ BaseSticker copy$default(BaseSticker baseSticker, Integer num, Integer num2, List list, List list2, String str, List list3, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = baseSticker.stickerId;
        }
        if ((i9 & 2) != 0) {
            num2 = baseSticker.productId;
        }
        Integer num3 = num2;
        List<BaseImage> list4 = list;
        if ((i9 & 4) != 0) {
            list4 = baseSticker.images;
        }
        List list5 = list4;
        List<BaseImage> list6 = list2;
        if ((i9 & 8) != 0) {
            list6 = baseSticker.imagesWithBackground;
        }
        List list7 = list6;
        if ((i9 & 16) != 0) {
            str = baseSticker.animationUrl;
        }
        String str2 = str;
        List<BaseStickerAnimation> list8 = list3;
        if ((i9 & 32) != 0) {
            list8 = baseSticker.animations;
        }
        List list9 = list8;
        if ((i9 & 64) != 0) {
            bool = baseSticker.isAllowed;
        }
        return baseSticker.copy(num, num3, list5, list7, str2, list9, bool);
    }

    @Nullable
    public final Integer component1() {
        return this.stickerId;
    }

    @Nullable
    public final Integer component2() {
        return this.productId;
    }

    @Nullable
    public final List<BaseImage> component3() {
        return this.images;
    }

    @Nullable
    public final List<BaseImage> component4() {
        return this.imagesWithBackground;
    }

    @Nullable
    public final String component5() {
        return this.animationUrl;
    }

    @Nullable
    public final List<BaseStickerAnimation> component6() {
        return this.animations;
    }

    @Nullable
    public final Boolean component7() {
        return this.isAllowed;
    }

    @NotNull
    public final BaseSticker copy(@Nullable Integer num, @Nullable Integer num2, @Nullable List<BaseImage> list, @Nullable List<BaseImage> list2, @Nullable String str, @Nullable List<BaseStickerAnimation> list3, @Nullable Boolean bool) {
        return new BaseSticker(num, num2, list, list2, str, list3, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseSticker) {
            BaseSticker baseSticker = (BaseSticker) obj;
            return Intrinsics.areEqual(this.stickerId, baseSticker.stickerId) && Intrinsics.areEqual(this.productId, baseSticker.productId) && Intrinsics.areEqual(this.images, baseSticker.images) && Intrinsics.areEqual(this.imagesWithBackground, baseSticker.imagesWithBackground) && Intrinsics.areEqual(this.animationUrl, baseSticker.animationUrl) && Intrinsics.areEqual(this.animations, baseSticker.animations) && Intrinsics.areEqual(this.isAllowed, baseSticker.isAllowed);
        }
        return false;
    }

    @Nullable
    public final String getAnimationUrl() {
        return this.animationUrl;
    }

    @Nullable
    public final List<BaseStickerAnimation> getAnimations() {
        return this.animations;
    }

    @Nullable
    public final List<BaseImage> getImages() {
        return this.images;
    }

    @Nullable
    public final List<BaseImage> getImagesWithBackground() {
        return this.imagesWithBackground;
    }

    @Nullable
    public final Integer getProductId() {
        return this.productId;
    }

    @Nullable
    public final Integer getStickerId() {
        return this.stickerId;
    }

    public int hashCode() {
        Integer num = this.stickerId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.productId;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<BaseImage> list = this.images;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<BaseImage> list2 = this.imagesWithBackground;
        int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.animationUrl;
        int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        List<BaseStickerAnimation> list3 = this.animations;
        int hashCode6 = (hashCode5 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Boolean bool = this.isAllowed;
        return hashCode6 + (bool != null ? bool.hashCode() : 0);
    }

    @Nullable
    public final Boolean isAllowed() {
        return this.isAllowed;
    }

    @NotNull
    public String toString() {
        Integer num = this.stickerId;
        Integer num2 = this.productId;
        List<BaseImage> list = this.images;
        List<BaseImage> list2 = this.imagesWithBackground;
        String str = this.animationUrl;
        List<BaseStickerAnimation> list3 = this.animations;
        Boolean bool = this.isAllowed;
        return "BaseSticker(stickerId=" + num + ", productId=" + num2 + ", images=" + list + ", imagesWithBackground=" + list2 + ", animationUrl=" + str + ", animations=" + list3 + ", isAllowed=" + bool + ")";
    }

    public /* synthetic */ BaseSticker(Integer num, Integer num2, List list, List list2, String str, List list3, Boolean bool, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : list, (i9 & 8) != 0 ? null : list2, (i9 & 16) != 0 ? null : str, (i9 & 32) != 0 ? null : list3, (i9 & 64) != 0 ? null : bool);
    }
}
