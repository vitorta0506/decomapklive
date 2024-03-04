package com.vk.sdk.api.account.dto;

import com.facebook.appevents.UserDataStore;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b*\b\u0086\b\u0018\u00002\u00020\u0001B§\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010.\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0013HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00103\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010%J\u0010\u00104\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u00105\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u00106\u001a\u0004\u0018\u00010\u0001HÆ\u0003J°\u0001\u00107\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0013HÆ\u0001¢\u0006\u0002\u00108J\u0013\u00109\u001a\u00020\n2\b\u0010:\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010;\u001a\u00020\fHÖ\u0001J\t\u0010<\u001a\u00020\u0006HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b \u0010\u001cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0016R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0016R\u001a\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b#\u0010\u001cR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b$\u0010%R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0016¨\u0006="}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountInfo;", "", "wishlistsAePromoBannerShow", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "2faRequired", UserDataStore.COUNTRY, "", "httpsRequired", Contants.USER_intro, "showVkAppsIntro", "", "miniAppsAdsSlotId", "", "qrPromotion", "linkRedirects", VKApiCodes.PARAM_LANG, "noWallReplies", "ownPostsDefault", "subscriptions", "", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;)V", "get2faRequired", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCountry", "()Ljava/lang/String;", "getHttpsRequired", "getIntro", "getLang", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLinkRedirects", "()Ljava/lang/Object;", "getMiniAppsAdsSlotId", "getNoWallReplies", "getOwnPostsDefault", "getQrPromotion", "getShowVkAppsIntro", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getSubscriptions", "()Ljava/util/List;", "getWishlistsAePromoBannerShow", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;)Lcom/vk/sdk/api/account/dto/AccountInfo;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountInfo {
    @SerializedName("2fa_required")
    @Nullable

    /* renamed from: 2faRequired  reason: not valid java name */
    private final BaseBoolInt f22faRequired;
    @SerializedName(UserDataStore.COUNTRY)
    @Nullable
    private final String country;
    @SerializedName("https_required")
    @Nullable
    private final BaseBoolInt httpsRequired;
    @SerializedName(Contants.USER_intro)
    @Nullable
    private final BaseBoolInt intro;
    @SerializedName(VKApiCodes.PARAM_LANG)
    @Nullable
    private final Integer lang;
    @SerializedName("link_redirects")
    @Nullable
    private final Object linkRedirects;
    @SerializedName("mini_apps_ads_slot_id")
    @Nullable
    private final Integer miniAppsAdsSlotId;
    @SerializedName("no_wall_replies")
    @Nullable
    private final BaseBoolInt noWallReplies;
    @SerializedName("own_posts_default")
    @Nullable
    private final BaseBoolInt ownPostsDefault;
    @SerializedName("qr_promotion")
    @Nullable
    private final Integer qrPromotion;
    @SerializedName("show_vk_apps_intro")
    @Nullable
    private final Boolean showVkAppsIntro;
    @SerializedName("subscriptions")
    @Nullable
    private final List<Integer> subscriptions;
    @SerializedName("wishlists_ae_promo_banner_show")
    @Nullable
    private final BaseBoolInt wishlistsAePromoBannerShow;

    public AccountInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public AccountInfo(@Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Object obj, @Nullable Integer num3, @Nullable BaseBoolInt baseBoolInt5, @Nullable BaseBoolInt baseBoolInt6, @Nullable List<Integer> list) {
        this.wishlistsAePromoBannerShow = baseBoolInt;
        this.f22faRequired = baseBoolInt2;
        this.country = str;
        this.httpsRequired = baseBoolInt3;
        this.intro = baseBoolInt4;
        this.showVkAppsIntro = bool;
        this.miniAppsAdsSlotId = num;
        this.qrPromotion = num2;
        this.linkRedirects = obj;
        this.lang = num3;
        this.noWallReplies = baseBoolInt5;
        this.ownPostsDefault = baseBoolInt6;
        this.subscriptions = list;
    }

    @Nullable
    public final BaseBoolInt component1() {
        return this.wishlistsAePromoBannerShow;
    }

    @Nullable
    public final Integer component10() {
        return this.lang;
    }

    @Nullable
    public final BaseBoolInt component11() {
        return this.noWallReplies;
    }

    @Nullable
    public final BaseBoolInt component12() {
        return this.ownPostsDefault;
    }

    @Nullable
    public final List<Integer> component13() {
        return this.subscriptions;
    }

    @Nullable
    public final BaseBoolInt component2() {
        return this.f22faRequired;
    }

    @Nullable
    public final String component3() {
        return this.country;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.httpsRequired;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.intro;
    }

    @Nullable
    public final Boolean component6() {
        return this.showVkAppsIntro;
    }

    @Nullable
    public final Integer component7() {
        return this.miniAppsAdsSlotId;
    }

    @Nullable
    public final Integer component8() {
        return this.qrPromotion;
    }

    @Nullable
    public final Object component9() {
        return this.linkRedirects;
    }

    @NotNull
    public final AccountInfo copy(@Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Object obj, @Nullable Integer num3, @Nullable BaseBoolInt baseBoolInt5, @Nullable BaseBoolInt baseBoolInt6, @Nullable List<Integer> list) {
        return new AccountInfo(baseBoolInt, baseBoolInt2, str, baseBoolInt3, baseBoolInt4, bool, num, num2, obj, num3, baseBoolInt5, baseBoolInt6, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfo) {
            AccountInfo accountInfo = (AccountInfo) obj;
            return this.wishlistsAePromoBannerShow == accountInfo.wishlistsAePromoBannerShow && this.f22faRequired == accountInfo.f22faRequired && Intrinsics.areEqual(this.country, accountInfo.country) && this.httpsRequired == accountInfo.httpsRequired && this.intro == accountInfo.intro && Intrinsics.areEqual(this.showVkAppsIntro, accountInfo.showVkAppsIntro) && Intrinsics.areEqual(this.miniAppsAdsSlotId, accountInfo.miniAppsAdsSlotId) && Intrinsics.areEqual(this.qrPromotion, accountInfo.qrPromotion) && Intrinsics.areEqual(this.linkRedirects, accountInfo.linkRedirects) && Intrinsics.areEqual(this.lang, accountInfo.lang) && this.noWallReplies == accountInfo.noWallReplies && this.ownPostsDefault == accountInfo.ownPostsDefault && Intrinsics.areEqual(this.subscriptions, accountInfo.subscriptions);
        }
        return false;
    }

    @Nullable
    public final BaseBoolInt get2faRequired() {
        return this.f22faRequired;
    }

    @Nullable
    public final String getCountry() {
        return this.country;
    }

    @Nullable
    public final BaseBoolInt getHttpsRequired() {
        return this.httpsRequired;
    }

    @Nullable
    public final BaseBoolInt getIntro() {
        return this.intro;
    }

    @Nullable
    public final Integer getLang() {
        return this.lang;
    }

    @Nullable
    public final Object getLinkRedirects() {
        return this.linkRedirects;
    }

    @Nullable
    public final Integer getMiniAppsAdsSlotId() {
        return this.miniAppsAdsSlotId;
    }

    @Nullable
    public final BaseBoolInt getNoWallReplies() {
        return this.noWallReplies;
    }

    @Nullable
    public final BaseBoolInt getOwnPostsDefault() {
        return this.ownPostsDefault;
    }

    @Nullable
    public final Integer getQrPromotion() {
        return this.qrPromotion;
    }

    @Nullable
    public final Boolean getShowVkAppsIntro() {
        return this.showVkAppsIntro;
    }

    @Nullable
    public final List<Integer> getSubscriptions() {
        return this.subscriptions;
    }

    @Nullable
    public final BaseBoolInt getWishlistsAePromoBannerShow() {
        return this.wishlistsAePromoBannerShow;
    }

    public int hashCode() {
        BaseBoolInt baseBoolInt = this.wishlistsAePromoBannerShow;
        int hashCode = (baseBoolInt == null ? 0 : baseBoolInt.hashCode()) * 31;
        BaseBoolInt baseBoolInt2 = this.f22faRequired;
        int hashCode2 = (hashCode + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        String str = this.country;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.httpsRequired;
        int hashCode4 = (hashCode3 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.intro;
        int hashCode5 = (hashCode4 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        Boolean bool = this.showVkAppsIntro;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num = this.miniAppsAdsSlotId;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.qrPromotion;
        int hashCode8 = (hashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Object obj = this.linkRedirects;
        int hashCode9 = (hashCode8 + (obj == null ? 0 : obj.hashCode())) * 31;
        Integer num3 = this.lang;
        int hashCode10 = (hashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        BaseBoolInt baseBoolInt5 = this.noWallReplies;
        int hashCode11 = (hashCode10 + (baseBoolInt5 == null ? 0 : baseBoolInt5.hashCode())) * 31;
        BaseBoolInt baseBoolInt6 = this.ownPostsDefault;
        int hashCode12 = (hashCode11 + (baseBoolInt6 == null ? 0 : baseBoolInt6.hashCode())) * 31;
        List<Integer> list = this.subscriptions;
        return hashCode12 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.wishlistsAePromoBannerShow;
        BaseBoolInt baseBoolInt2 = this.f22faRequired;
        String str = this.country;
        BaseBoolInt baseBoolInt3 = this.httpsRequired;
        BaseBoolInt baseBoolInt4 = this.intro;
        Boolean bool = this.showVkAppsIntro;
        Integer num = this.miniAppsAdsSlotId;
        Integer num2 = this.qrPromotion;
        Object obj = this.linkRedirects;
        Integer num3 = this.lang;
        BaseBoolInt baseBoolInt5 = this.noWallReplies;
        BaseBoolInt baseBoolInt6 = this.ownPostsDefault;
        List<Integer> list = this.subscriptions;
        return "AccountInfo(wishlistsAePromoBannerShow=" + baseBoolInt + ", 2faRequired=" + baseBoolInt2 + ", country=" + str + ", httpsRequired=" + baseBoolInt3 + ", intro=" + baseBoolInt4 + ", showVkAppsIntro=" + bool + ", miniAppsAdsSlotId=" + num + ", qrPromotion=" + num2 + ", linkRedirects=" + obj + ", lang=" + num3 + ", noWallReplies=" + baseBoolInt5 + ", ownPostsDefault=" + baseBoolInt6 + ", subscriptions=" + list + ")";
    }

    public /* synthetic */ AccountInfo(BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, String str, BaseBoolInt baseBoolInt3, BaseBoolInt baseBoolInt4, Boolean bool, Integer num, Integer num2, Object obj, Integer num3, BaseBoolInt baseBoolInt5, BaseBoolInt baseBoolInt6, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseBoolInt, (i9 & 2) != 0 ? null : baseBoolInt2, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : baseBoolInt3, (i9 & 16) != 0 ? null : baseBoolInt4, (i9 & 32) != 0 ? null : bool, (i9 & 64) != 0 ? null : num, (i9 & 128) != 0 ? null : num2, (i9 & 256) != 0 ? null : obj, (i9 & 512) != 0 ? null : num3, (i9 & 1024) != 0 ? null : baseBoolInt5, (i9 & 2048) != 0 ? null : baseBoolInt6, (i9 & 4096) == 0 ? list : null);
    }
}
