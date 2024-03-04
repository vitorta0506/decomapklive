package com.vk.sdk.api.base.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.link.dto.LinkTargetObject;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.video.dto.VideoVideo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BÁ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010\u001bJ\t\u00104\u001a\u00020\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0010\u0010:\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010;\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010B\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003JÌ\u0001\u0010D\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÆ\u0001¢\u0006\u0002\u0010EJ\u0013\u0010F\u001a\u00020\f2\b\u0010G\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010H\u001a\u00020IHÖ\u0001J\t\u0010J\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010!R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010!R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010%\u001a\u0004\b\u0018\u0010$R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010%\u001a\u0004\b\u000b\u0010$R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010!R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010!R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010!R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010!R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103¨\u0006K"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLink;", "", "url", "", "application", "Lcom/vk/sdk/api/base/dto/BaseLinkApplication;", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", ShareConstants.FEED_CAPTION_PARAM, "description", "id", "isFavorite", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "previewPage", "previewUrl", "product", "Lcom/vk/sdk/api/base/dto/BaseLinkProduct;", "rating", "Lcom/vk/sdk/api/base/dto/BaseLinkRating;", "title", "targetObject", "Lcom/vk/sdk/api/link/dto/LinkTargetObject;", "isExternal", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideo;", "(Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkApplication;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkProduct;Lcom/vk/sdk/api/base/dto/BaseLinkRating;Ljava/lang/String;Lcom/vk/sdk/api/link/dto/LinkTargetObject;Ljava/lang/Boolean;Lcom/vk/sdk/api/video/dto/VideoVideo;)V", "getApplication", "()Lcom/vk/sdk/api/base/dto/BaseLinkApplication;", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getCaption", "()Ljava/lang/String;", "getDescription", "getId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getPreviewPage", "getPreviewUrl", "getProduct", "()Lcom/vk/sdk/api/base/dto/BaseLinkProduct;", "getRating", "()Lcom/vk/sdk/api/base/dto/BaseLinkRating;", "getTargetObject", "()Lcom/vk/sdk/api/link/dto/LinkTargetObject;", "getTitle", "getUrl", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideo;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkApplication;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkProduct;Lcom/vk/sdk/api/base/dto/BaseLinkRating;Ljava/lang/String;Lcom/vk/sdk/api/link/dto/LinkTargetObject;Ljava/lang/Boolean;Lcom/vk/sdk/api/video/dto/VideoVideo;)Lcom/vk/sdk/api/base/dto/BaseLink;", "equals", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLink {
    @SerializedName("application")
    @Nullable
    private final BaseLinkApplication application;
    @SerializedName("button")
    @Nullable
    private final BaseLinkButton button;
    @SerializedName(ShareConstants.FEED_CAPTION_PARAM)
    @Nullable
    private final String caption;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f35745id;
    @SerializedName("is_external")
    @Nullable
    private final Boolean isExternal;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("preview_page")
    @Nullable
    private final String previewPage;
    @SerializedName("preview_url")
    @Nullable
    private final String previewUrl;
    @SerializedName("product")
    @Nullable
    private final BaseLinkProduct product;
    @SerializedName("rating")
    @Nullable
    private final BaseLinkRating rating;
    @SerializedName("target_object")
    @Nullable
    private final LinkTargetObject targetObject;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("url")
    @NotNull
    private final String url;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideo video;

    public BaseLink(@NotNull String url, @Nullable BaseLinkApplication baseLinkApplication, @Nullable BaseLinkButton baseLinkButton, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool, @Nullable PhotosPhoto photosPhoto, @Nullable String str4, @Nullable String str5, @Nullable BaseLinkProduct baseLinkProduct, @Nullable BaseLinkRating baseLinkRating, @Nullable String str6, @Nullable LinkTargetObject linkTargetObject, @Nullable Boolean bool2, @Nullable VideoVideo videoVideo) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.application = baseLinkApplication;
        this.button = baseLinkButton;
        this.caption = str;
        this.description = str2;
        this.f35745id = str3;
        this.isFavorite = bool;
        this.photo = photosPhoto;
        this.previewPage = str4;
        this.previewUrl = str5;
        this.product = baseLinkProduct;
        this.rating = baseLinkRating;
        this.title = str6;
        this.targetObject = linkTargetObject;
        this.isExternal = bool2;
        this.video = videoVideo;
    }

    @NotNull
    public final String component1() {
        return this.url;
    }

    @Nullable
    public final String component10() {
        return this.previewUrl;
    }

    @Nullable
    public final BaseLinkProduct component11() {
        return this.product;
    }

    @Nullable
    public final BaseLinkRating component12() {
        return this.rating;
    }

    @Nullable
    public final String component13() {
        return this.title;
    }

    @Nullable
    public final LinkTargetObject component14() {
        return this.targetObject;
    }

    @Nullable
    public final Boolean component15() {
        return this.isExternal;
    }

    @Nullable
    public final VideoVideo component16() {
        return this.video;
    }

    @Nullable
    public final BaseLinkApplication component2() {
        return this.application;
    }

    @Nullable
    public final BaseLinkButton component3() {
        return this.button;
    }

    @Nullable
    public final String component4() {
        return this.caption;
    }

    @Nullable
    public final String component5() {
        return this.description;
    }

    @Nullable
    public final String component6() {
        return this.f35745id;
    }

    @Nullable
    public final Boolean component7() {
        return this.isFavorite;
    }

    @Nullable
    public final PhotosPhoto component8() {
        return this.photo;
    }

    @Nullable
    public final String component9() {
        return this.previewPage;
    }

    @NotNull
    public final BaseLink copy(@NotNull String url, @Nullable BaseLinkApplication baseLinkApplication, @Nullable BaseLinkButton baseLinkButton, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool, @Nullable PhotosPhoto photosPhoto, @Nullable String str4, @Nullable String str5, @Nullable BaseLinkProduct baseLinkProduct, @Nullable BaseLinkRating baseLinkRating, @Nullable String str6, @Nullable LinkTargetObject linkTargetObject, @Nullable Boolean bool2, @Nullable VideoVideo videoVideo) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new BaseLink(url, baseLinkApplication, baseLinkButton, str, str2, str3, bool, photosPhoto, str4, str5, baseLinkProduct, baseLinkRating, str6, linkTargetObject, bool2, videoVideo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLink) {
            BaseLink baseLink = (BaseLink) obj;
            return Intrinsics.areEqual(this.url, baseLink.url) && Intrinsics.areEqual(this.application, baseLink.application) && Intrinsics.areEqual(this.button, baseLink.button) && Intrinsics.areEqual(this.caption, baseLink.caption) && Intrinsics.areEqual(this.description, baseLink.description) && Intrinsics.areEqual(this.f35745id, baseLink.f35745id) && Intrinsics.areEqual(this.isFavorite, baseLink.isFavorite) && Intrinsics.areEqual(this.photo, baseLink.photo) && Intrinsics.areEqual(this.previewPage, baseLink.previewPage) && Intrinsics.areEqual(this.previewUrl, baseLink.previewUrl) && Intrinsics.areEqual(this.product, baseLink.product) && Intrinsics.areEqual(this.rating, baseLink.rating) && Intrinsics.areEqual(this.title, baseLink.title) && Intrinsics.areEqual(this.targetObject, baseLink.targetObject) && Intrinsics.areEqual(this.isExternal, baseLink.isExternal) && Intrinsics.areEqual(this.video, baseLink.video);
        }
        return false;
    }

    @Nullable
    public final BaseLinkApplication getApplication() {
        return this.application;
    }

    @Nullable
    public final BaseLinkButton getButton() {
        return this.button;
    }

    @Nullable
    public final String getCaption() {
        return this.caption;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getId() {
        return this.f35745id;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getPreviewPage() {
        return this.previewPage;
    }

    @Nullable
    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    @Nullable
    public final BaseLinkProduct getProduct() {
        return this.product;
    }

    @Nullable
    public final BaseLinkRating getRating() {
        return this.rating;
    }

    @Nullable
    public final LinkTargetObject getTargetObject() {
        return this.targetObject;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final VideoVideo getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = this.url.hashCode() * 31;
        BaseLinkApplication baseLinkApplication = this.application;
        int hashCode2 = (hashCode + (baseLinkApplication == null ? 0 : baseLinkApplication.hashCode())) * 31;
        BaseLinkButton baseLinkButton = this.button;
        int hashCode3 = (hashCode2 + (baseLinkButton == null ? 0 : baseLinkButton.hashCode())) * 31;
        String str = this.caption;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.description;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f35745id;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.isFavorite;
        int hashCode7 = (hashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode8 = (hashCode7 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        String str4 = this.previewPage;
        int hashCode9 = (hashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.previewUrl;
        int hashCode10 = (hashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        BaseLinkProduct baseLinkProduct = this.product;
        int hashCode11 = (hashCode10 + (baseLinkProduct == null ? 0 : baseLinkProduct.hashCode())) * 31;
        BaseLinkRating baseLinkRating = this.rating;
        int hashCode12 = (hashCode11 + (baseLinkRating == null ? 0 : baseLinkRating.hashCode())) * 31;
        String str6 = this.title;
        int hashCode13 = (hashCode12 + (str6 == null ? 0 : str6.hashCode())) * 31;
        LinkTargetObject linkTargetObject = this.targetObject;
        int hashCode14 = (hashCode13 + (linkTargetObject == null ? 0 : linkTargetObject.hashCode())) * 31;
        Boolean bool2 = this.isExternal;
        int hashCode15 = (hashCode14 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        VideoVideo videoVideo = this.video;
        return hashCode15 + (videoVideo != null ? videoVideo.hashCode() : 0);
    }

    @Nullable
    public final Boolean isExternal() {
        return this.isExternal;
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @NotNull
    public String toString() {
        String str = this.url;
        BaseLinkApplication baseLinkApplication = this.application;
        BaseLinkButton baseLinkButton = this.button;
        String str2 = this.caption;
        String str3 = this.description;
        String str4 = this.f35745id;
        Boolean bool = this.isFavorite;
        PhotosPhoto photosPhoto = this.photo;
        String str5 = this.previewPage;
        String str6 = this.previewUrl;
        BaseLinkProduct baseLinkProduct = this.product;
        BaseLinkRating baseLinkRating = this.rating;
        String str7 = this.title;
        LinkTargetObject linkTargetObject = this.targetObject;
        Boolean bool2 = this.isExternal;
        VideoVideo videoVideo = this.video;
        return "BaseLink(url=" + str + ", application=" + baseLinkApplication + ", button=" + baseLinkButton + ", caption=" + str2 + ", description=" + str3 + ", id=" + str4 + ", isFavorite=" + bool + ", photo=" + photosPhoto + ", previewPage=" + str5 + ", previewUrl=" + str6 + ", product=" + baseLinkProduct + ", rating=" + baseLinkRating + ", title=" + str7 + ", targetObject=" + linkTargetObject + ", isExternal=" + bool2 + ", video=" + videoVideo + ")";
    }

    public /* synthetic */ BaseLink(String str, BaseLinkApplication baseLinkApplication, BaseLinkButton baseLinkButton, String str2, String str3, String str4, Boolean bool, PhotosPhoto photosPhoto, String str5, String str6, BaseLinkProduct baseLinkProduct, BaseLinkRating baseLinkRating, String str7, LinkTargetObject linkTargetObject, Boolean bool2, VideoVideo videoVideo, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : baseLinkApplication, (i9 & 4) != 0 ? null : baseLinkButton, (i9 & 8) != 0 ? null : str2, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : str4, (i9 & 64) != 0 ? null : bool, (i9 & 128) != 0 ? null : photosPhoto, (i9 & 256) != 0 ? null : str5, (i9 & 512) != 0 ? null : str6, (i9 & 1024) != 0 ? null : baseLinkProduct, (i9 & 2048) != 0 ? null : baseLinkRating, (i9 & 4096) != 0 ? null : str7, (i9 & 8192) != 0 ? null : linkTargetObject, (i9 & 16384) != 0 ? null : bool2, (i9 & 32768) == 0 ? videoVideo : null);
    }
}
