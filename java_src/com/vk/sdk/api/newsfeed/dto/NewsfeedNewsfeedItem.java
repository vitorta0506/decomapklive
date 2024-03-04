package com.vk.sdk.api.newsfeed.dto;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.aliexpress.dto.AliexpressBlockPanel;
import com.vk.sdk.api.aliexpress.dto.AliexpressCarouselItem;
import com.vk.sdk.api.aliexpress.dto.AliexpressPromoCard;
import com.vk.sdk.api.aliexpress.dto.AliexpressSocialFooter;
import com.vk.sdk.api.apps.dto.AppsApp;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseCommentsInfo;
import com.vk.sdk.api.base.dto.BaseImage;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import com.vk.sdk.api.classifieds.dto.ClassifiedsWorkiCarouselItem;
import com.vk.sdk.api.classifieds.dto.ClassifiedsYoulaCarouselBlockGroup;
import com.vk.sdk.api.classifieds.dto.ClassifiedsYoulaGroupsBlock;
import com.vk.sdk.api.classifieds.dto.ClassifiedsYoulaItemExtended;
import com.vk.sdk.api.discover.dto.DiscoverCarouselButton;
import com.vk.sdk.api.discover.dto.DiscoverCarouselItem;
import com.vk.sdk.api.discover.dto.DiscoverCarouselObjectsType;
import com.vk.sdk.api.groups.dto.GroupsSuggestion;
import com.vk.sdk.api.messages.dto.MessagesChatSuggestion;
import com.vk.sdk.api.photos.dto.PhotosTagsSuggestionItem;
import com.vk.sdk.api.photos.dto.PhotosTagsSuggestionItemEndCard;
import com.vk.sdk.api.stories.dto.StoriesStory;
import com.vk.sdk.api.textlives.dto.TextlivesTextliveTextpostBlock;
import com.vk.sdk.api.video.dto.VideoVideo;
import com.vk.sdk.api.video.dto.VideoVideoFull;
import com.vk.sdk.api.wall.dto.WallGeo;
import com.vk.sdk.api.wall.dto.WallPostCopyright;
import com.vk.sdk.api.wall.dto.WallPostSource;
import com.vk.sdk.api.wall.dto.WallPostType;
import com.vk.sdk.api.wall.dto.WallViews;
import com.vk.sdk.api.wall.dto.WallWallpostAttachment;
import com.vk.sdk.api.wall.dto.WallWallpostDonut;
import com.vk.sdk.api.wall.dto.WallWallpostFull;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u001b\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dB\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u001a\u001e\u001f !\"#$%&'()*+,-./01234567¨\u00068"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "", "()V", "Deserializer", "NewsfeedItemAliexpressCarouselBlock", "NewsfeedItemAnimatedBlock", "NewsfeedItemAppsCarousel", "NewsfeedItemAudio", "NewsfeedItemClipsBlock", "NewsfeedItemDigest", "NewsfeedItemExpertCardWidget", "NewsfeedItemFeedbackPoll", "NewsfeedItemFriend", "NewsfeedItemPhoto", "NewsfeedItemPhotoTag", "NewsfeedItemPromoButton", "NewsfeedItemRecognizeBlock", "NewsfeedItemRecommendedAppBlock", "NewsfeedItemRecommendedChatsBlock", "NewsfeedItemRecommendedGroupsBlock", "NewsfeedItemStoriesBlock", "NewsfeedItemTextliveBlock", "NewsfeedItemTopic", "NewsfeedItemVideo", "NewsfeedItemVideoPostcardBlock", "NewsfeedItemVideosForYouBlock", "NewsfeedItemWallpost", "NewsfeedItemWorkiCarouselBlock", "NewsfeedItemYoulaCarouselBlock", "NewsfeedItemYoulaGroupsBlock", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPhoto;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPhotoTag;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemFriend;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAudio;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemVideo;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemTopic;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemDigest;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPromoButton;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemStoriesBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemFeedbackPoll;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAnimatedBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemClipsBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecommendedGroupsBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecognizeBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemTextliveBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaCarouselBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecommendedAppBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemExpertCardWidget;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWorkiCarouselBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemVideosForYouBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaGroupsBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemVideoPostcardBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecommendedChatsBlock;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public abstract class NewsfeedNewsfeedItem {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$Deserializer;", "Lcom/google/gson/JsonDeserializer;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "()V", "deserialize", "json", "Lcom/google/gson/JsonElement;", "typeOfT", "Ljava/lang/reflect/Type;", "context", "Lcom/google/gson/JsonDeserializationContext;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class Deserializer implements JsonDeserializer<NewsfeedNewsfeedItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.JsonDeserializer
        @NotNull
        public NewsfeedNewsfeedItem deserialize(@NotNull JsonElement json, @Nullable Type type, @NotNull JsonDeserializationContext context) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(context, "context");
            String asString = json.getAsJsonObject().get("type").getAsString();
            if (asString != null) {
                switch (asString.hashCode()) {
                    case -2002177155:
                        if (asString.equals("wall_photo")) {
                            Object deserialize = context.deserialize(json, NewsfeedItemPhoto.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize, "context.deserialize(json…eedItemPhoto::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize;
                        }
                        break;
                    case -1331913276:
                        if (asString.equals("digest")) {
                            Object deserialize2 = context.deserialize(json, NewsfeedItemDigest.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize2, "context.deserialize(json…edItemDigest::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize2;
                        }
                        break;
                    case -1266283874:
                        if (asString.equals("friend")) {
                            Object deserialize3 = context.deserialize(json, NewsfeedItemFriend.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize3, "context.deserialize(json…edItemFriend::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize3;
                        }
                        break;
                    case -847657971:
                        if (asString.equals("photo_tag")) {
                            Object deserialize4 = context.deserialize(json, NewsfeedItemPhotoTag.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize4, "context.deserialize(json…ItemPhotoTag::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize4;
                        }
                        break;
                    case 3446944:
                        if (asString.equals("post")) {
                            Object deserialize5 = context.deserialize(json, NewsfeedItemWallpost.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize5, "context.deserialize(json…ItemWallpost::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize5;
                        }
                        break;
                    case 93166550:
                        if (asString.equals("audio")) {
                            Object deserialize6 = context.deserialize(json, NewsfeedItemAudio.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize6, "context.deserialize(json…eedItemAudio::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize6;
                        }
                        break;
                    case 106642994:
                        if (asString.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)) {
                            Object deserialize7 = context.deserialize(json, NewsfeedItemPhoto.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize7, "context.deserialize(json…eedItemPhoto::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize7;
                        }
                        break;
                    case 110546223:
                        if (asString.equals(BaseConfig.DB_TYPE_TOPIC_NAME)) {
                            Object deserialize8 = context.deserialize(json, NewsfeedItemTopic.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize8, "context.deserialize(json…eedItemTopic::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize8;
                        }
                        break;
                    case 112202875:
                        if (asString.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                            Object deserialize9 = context.deserialize(json, NewsfeedItemVideo.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize9, "context.deserialize(json…eedItemVideo::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize9;
                        }
                        break;
                    case 310369378:
                        if (asString.equals("promo_button")) {
                            Object deserialize10 = context.deserialize(json, NewsfeedItemPromoButton.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize10, "context.deserialize(json…mPromoButton::class.java)");
                            return (NewsfeedNewsfeedItem) deserialize10;
                        }
                        break;
                }
            }
            throw new IllegalStateException("no mapping for the type:" + asString);
        }
    }

    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001=B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0002\u0010\u0016J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010,\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010\u001eJ\t\u0010-\u001a\u00020\u0005HÆ\u0003J\t\u0010.\u001a\u00020\u0005HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0011\u00102\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u0090\u0001\u00105\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÆ\u0001¢\u0006\u0002\u00106J\u0013\u00107\u001a\u00020\u00142\b\u00108\u001a\u0004\u0018\u000109HÖ\u0003J\t\u0010:\u001a\u00020;HÖ\u0001J\t\u0010<\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u0015\u0010\u001eR\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001aR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b)\u0010\u001e¨\u0006>"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock$Type;", "blockTitle", "", "trackCode", "goodsCarouselViewType", "blockPanel", "Lcom/vk/sdk/api/aliexpress/dto/AliexpressBlockPanel;", "promoCard", "Lcom/vk/sdk/api/aliexpress/dto/AliexpressPromoCard;", "items", "", "Lcom/vk/sdk/api/aliexpress/dto/AliexpressCarouselItem;", "moreButton", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "footer", "Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter;", "useOnelineProductTitle", "", "isAsync", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/aliexpress/dto/AliexpressBlockPanel;Lcom/vk/sdk/api/aliexpress/dto/AliexpressPromoCard;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getBlockPanel", "()Lcom/vk/sdk/api/aliexpress/dto/AliexpressBlockPanel;", "getBlockTitle", "()Ljava/lang/String;", "getFooter", "()Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter;", "getGoodsCarouselViewType", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getItems", "()Ljava/util/List;", "getMoreButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getPromoCard", "()Lcom/vk/sdk/api/aliexpress/dto/AliexpressPromoCard;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock$Type;", "getUseOnelineProductTitle", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/aliexpress/dto/AliexpressBlockPanel;Lcom/vk/sdk/api/aliexpress/dto/AliexpressPromoCard;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock;", "equals", "other", "", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemAliexpressCarouselBlock extends NewsfeedNewsfeedItem {
        @SerializedName("block_panel")
        @Nullable
        private final AliexpressBlockPanel blockPanel;
        @SerializedName("block_title")
        @NotNull
        private final String blockTitle;
        @SerializedName("footer")
        @Nullable
        private final AliexpressSocialFooter footer;
        @SerializedName("goods_carousel_view_type")
        @NotNull
        private final String goodsCarouselViewType;
        @SerializedName("is_async")
        @Nullable
        private final Boolean isAsync;
        @SerializedName("items")
        @Nullable
        private final List<AliexpressCarouselItem> items;
        @SerializedName("more_button")
        @Nullable
        private final BaseLinkButton moreButton;
        @SerializedName("promo_card")
        @Nullable
        private final AliexpressPromoCard promoCard;
        @SerializedName("track_code")
        @NotNull
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final Type type;
        @SerializedName("use_oneline_product_title")
        @Nullable
        private final Boolean useOnelineProductTitle;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAliexpressCarouselBlock$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ALIEXPRESS_CAROUSEL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Type {
            ALIEXPRESS_CAROUSEL("aliexpress_carousel");
            
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

        public /* synthetic */ NewsfeedItemAliexpressCarouselBlock(Type type, String str, String str2, String str3, AliexpressBlockPanel aliexpressBlockPanel, AliexpressPromoCard aliexpressPromoCard, List list, BaseLinkButton baseLinkButton, AliexpressSocialFooter aliexpressSocialFooter, Boolean bool, Boolean bool2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(type, str, str2, str3, (i9 & 16) != 0 ? null : aliexpressBlockPanel, (i9 & 32) != 0 ? null : aliexpressPromoCard, (i9 & 64) != 0 ? null : list, (i9 & 128) != 0 ? null : baseLinkButton, (i9 & 256) != 0 ? null : aliexpressSocialFooter, (i9 & 512) != 0 ? null : bool, (i9 & 1024) != 0 ? null : bool2);
        }

        @NotNull
        public final Type component1() {
            return this.type;
        }

        @Nullable
        public final Boolean component10() {
            return this.useOnelineProductTitle;
        }

        @Nullable
        public final Boolean component11() {
            return this.isAsync;
        }

        @NotNull
        public final String component2() {
            return this.blockTitle;
        }

        @NotNull
        public final String component3() {
            return this.trackCode;
        }

        @NotNull
        public final String component4() {
            return this.goodsCarouselViewType;
        }

        @Nullable
        public final AliexpressBlockPanel component5() {
            return this.blockPanel;
        }

        @Nullable
        public final AliexpressPromoCard component6() {
            return this.promoCard;
        }

        @Nullable
        public final List<AliexpressCarouselItem> component7() {
            return this.items;
        }

        @Nullable
        public final BaseLinkButton component8() {
            return this.moreButton;
        }

        @Nullable
        public final AliexpressSocialFooter component9() {
            return this.footer;
        }

        @NotNull
        public final NewsfeedItemAliexpressCarouselBlock copy(@NotNull Type type, @NotNull String blockTitle, @NotNull String trackCode, @NotNull String goodsCarouselViewType, @Nullable AliexpressBlockPanel aliexpressBlockPanel, @Nullable AliexpressPromoCard aliexpressPromoCard, @Nullable List<AliexpressCarouselItem> list, @Nullable BaseLinkButton baseLinkButton, @Nullable AliexpressSocialFooter aliexpressSocialFooter, @Nullable Boolean bool, @Nullable Boolean bool2) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(blockTitle, "blockTitle");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            Intrinsics.checkNotNullParameter(goodsCarouselViewType, "goodsCarouselViewType");
            return new NewsfeedItemAliexpressCarouselBlock(type, blockTitle, trackCode, goodsCarouselViewType, aliexpressBlockPanel, aliexpressPromoCard, list, baseLinkButton, aliexpressSocialFooter, bool, bool2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemAliexpressCarouselBlock) {
                NewsfeedItemAliexpressCarouselBlock newsfeedItemAliexpressCarouselBlock = (NewsfeedItemAliexpressCarouselBlock) obj;
                return this.type == newsfeedItemAliexpressCarouselBlock.type && Intrinsics.areEqual(this.blockTitle, newsfeedItemAliexpressCarouselBlock.blockTitle) && Intrinsics.areEqual(this.trackCode, newsfeedItemAliexpressCarouselBlock.trackCode) && Intrinsics.areEqual(this.goodsCarouselViewType, newsfeedItemAliexpressCarouselBlock.goodsCarouselViewType) && Intrinsics.areEqual(this.blockPanel, newsfeedItemAliexpressCarouselBlock.blockPanel) && Intrinsics.areEqual(this.promoCard, newsfeedItemAliexpressCarouselBlock.promoCard) && Intrinsics.areEqual(this.items, newsfeedItemAliexpressCarouselBlock.items) && Intrinsics.areEqual(this.moreButton, newsfeedItemAliexpressCarouselBlock.moreButton) && Intrinsics.areEqual(this.footer, newsfeedItemAliexpressCarouselBlock.footer) && Intrinsics.areEqual(this.useOnelineProductTitle, newsfeedItemAliexpressCarouselBlock.useOnelineProductTitle) && Intrinsics.areEqual(this.isAsync, newsfeedItemAliexpressCarouselBlock.isAsync);
            }
            return false;
        }

        @Nullable
        public final AliexpressBlockPanel getBlockPanel() {
            return this.blockPanel;
        }

        @NotNull
        public final String getBlockTitle() {
            return this.blockTitle;
        }

        @Nullable
        public final AliexpressSocialFooter getFooter() {
            return this.footer;
        }

        @NotNull
        public final String getGoodsCarouselViewType() {
            return this.goodsCarouselViewType;
        }

        @Nullable
        public final List<AliexpressCarouselItem> getItems() {
            return this.items;
        }

        @Nullable
        public final BaseLinkButton getMoreButton() {
            return this.moreButton;
        }

        @Nullable
        public final AliexpressPromoCard getPromoCard() {
            return this.promoCard;
        }

        @NotNull
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final Type getType() {
            return this.type;
        }

        @Nullable
        public final Boolean getUseOnelineProductTitle() {
            return this.useOnelineProductTitle;
        }

        public int hashCode() {
            int hashCode = ((((((this.type.hashCode() * 31) + this.blockTitle.hashCode()) * 31) + this.trackCode.hashCode()) * 31) + this.goodsCarouselViewType.hashCode()) * 31;
            AliexpressBlockPanel aliexpressBlockPanel = this.blockPanel;
            int hashCode2 = (hashCode + (aliexpressBlockPanel == null ? 0 : aliexpressBlockPanel.hashCode())) * 31;
            AliexpressPromoCard aliexpressPromoCard = this.promoCard;
            int hashCode3 = (hashCode2 + (aliexpressPromoCard == null ? 0 : aliexpressPromoCard.hashCode())) * 31;
            List<AliexpressCarouselItem> list = this.items;
            int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
            BaseLinkButton baseLinkButton = this.moreButton;
            int hashCode5 = (hashCode4 + (baseLinkButton == null ? 0 : baseLinkButton.hashCode())) * 31;
            AliexpressSocialFooter aliexpressSocialFooter = this.footer;
            int hashCode6 = (hashCode5 + (aliexpressSocialFooter == null ? 0 : aliexpressSocialFooter.hashCode())) * 31;
            Boolean bool = this.useOnelineProductTitle;
            int hashCode7 = (hashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.isAsync;
            return hashCode7 + (bool2 != null ? bool2.hashCode() : 0);
        }

        @Nullable
        public final Boolean isAsync() {
            return this.isAsync;
        }

        @NotNull
        public String toString() {
            Type type = this.type;
            String str = this.blockTitle;
            String str2 = this.trackCode;
            String str3 = this.goodsCarouselViewType;
            AliexpressBlockPanel aliexpressBlockPanel = this.blockPanel;
            AliexpressPromoCard aliexpressPromoCard = this.promoCard;
            List<AliexpressCarouselItem> list = this.items;
            BaseLinkButton baseLinkButton = this.moreButton;
            AliexpressSocialFooter aliexpressSocialFooter = this.footer;
            Boolean bool = this.useOnelineProductTitle;
            Boolean bool2 = this.isAsync;
            return "NewsfeedItemAliexpressCarouselBlock(type=" + type + ", blockTitle=" + str + ", trackCode=" + str2 + ", goodsCarouselViewType=" + str3 + ", blockPanel=" + aliexpressBlockPanel + ", promoCard=" + aliexpressPromoCard + ", items=" + list + ", moreButton=" + baseLinkButton + ", footer=" + aliexpressSocialFooter + ", useOnelineProductTitle=" + bool + ", isAsync=" + bool2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemAliexpressCarouselBlock(@NotNull Type type, @NotNull String blockTitle, @NotNull String trackCode, @NotNull String goodsCarouselViewType, @Nullable AliexpressBlockPanel aliexpressBlockPanel, @Nullable AliexpressPromoCard aliexpressPromoCard, @Nullable List<AliexpressCarouselItem> list, @Nullable BaseLinkButton baseLinkButton, @Nullable AliexpressSocialFooter aliexpressSocialFooter, @Nullable Boolean bool, @Nullable Boolean bool2) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(blockTitle, "blockTitle");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            Intrinsics.checkNotNullParameter(goodsCarouselViewType, "goodsCarouselViewType");
            this.type = type;
            this.blockTitle = blockTitle;
            this.trackCode = trackCode;
            this.goodsCarouselViewType = goodsCarouselViewType;
            this.blockPanel = aliexpressBlockPanel;
            this.promoCard = aliexpressPromoCard;
            this.items = list;
            this.moreButton = baseLinkButton;
            this.footer = aliexpressSocialFooter;
            this.useOnelineProductTitle = bool;
            this.isAsync = bool2;
        }
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u00016Bq\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\t\u0010'\u001a\u00020\u0005HÆ\u0003J\t\u0010(\u001a\u00020\u0007HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\tHÆ\u0003J{\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÆ\u0001J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u000103HÖ\u0003J\t\u00104\u001a\u00020\u0007HÖ\u0001J\t\u00105\u001a\u00020\tHÖ\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u0018\u0010\r\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u00067"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAnimatedBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "blockId", "", ViewHierarchyConstants.TEXT_KEY, "animation", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAnimatedBlockAnimation;", "trackCode", "decoration", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAnimatedBlock$Decoration;", "subtitle", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAnimatedBlockAnimation;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAnimatedBlock$Decoration;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)V", "getAnimation", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAnimatedBlockAnimation;", "getBlockId", "()Ljava/lang/String;", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getDate", "()I", "getDecoration", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAnimatedBlock$Decoration;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getSubtitle", "getText", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "Decoration", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemAnimatedBlock extends NewsfeedNewsfeedItem {
        @SerializedName("animation")
        @Nullable
        private final NewsfeedItemAnimatedBlockAnimation animation;
        @SerializedName("block_id")
        @Nullable
        private final String blockId;
        @SerializedName("button")
        @Nullable
        private final BaseLinkButton button;
        @SerializedName("date")
        private final int date;
        @SerializedName("decoration")
        @Nullable
        private final Decoration decoration;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("subtitle")
        @Nullable
        private final String subtitle;
        @SerializedName(ViewHierarchyConstants.TEXT_KEY)
        @Nullable
        private final String text;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAnimatedBlock$Decoration;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "NONE", "BACKGROUND", "CARD", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Decoration {
            NONE(IntegrityManager.INTEGRITY_TYPE_NONE),
            BACKGROUND("background"),
            CARD("card");
            
            @NotNull
            private final String value;

            Decoration(String str) {
                this.value = str;
            }

            @NotNull
            public final String getValue() {
                return this.value;
            }
        }

        public /* synthetic */ NewsfeedItemAnimatedBlock(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, String str2, NewsfeedItemAnimatedBlockAnimation newsfeedItemAnimatedBlockAnimation, String str3, Decoration decoration, String str4, BaseLinkButton baseLinkButton, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : newsfeedItemAnimatedBlockAnimation, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : decoration, (i10 & 256) != 0 ? null : str4, (i10 & 512) != 0 ? null : baseLinkButton);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @Nullable
        public final BaseLinkButton component10() {
            return this.button;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final String component4() {
            return this.blockId;
        }

        @Nullable
        public final String component5() {
            return this.text;
        }

        @Nullable
        public final NewsfeedItemAnimatedBlockAnimation component6() {
            return this.animation;
        }

        @Nullable
        public final String component7() {
            return this.trackCode;
        }

        @Nullable
        public final Decoration component8() {
            return this.decoration;
        }

        @Nullable
        public final String component9() {
            return this.subtitle;
        }

        @NotNull
        public final NewsfeedItemAnimatedBlock copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable NewsfeedItemAnimatedBlockAnimation newsfeedItemAnimatedBlockAnimation, @Nullable String str3, @Nullable Decoration decoration, @Nullable String str4, @Nullable BaseLinkButton baseLinkButton) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemAnimatedBlock(type, sourceId, i9, str, str2, newsfeedItemAnimatedBlockAnimation, str3, decoration, str4, baseLinkButton);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemAnimatedBlock) {
                NewsfeedItemAnimatedBlock newsfeedItemAnimatedBlock = (NewsfeedItemAnimatedBlock) obj;
                return this.type == newsfeedItemAnimatedBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemAnimatedBlock.sourceId) && this.date == newsfeedItemAnimatedBlock.date && Intrinsics.areEqual(this.blockId, newsfeedItemAnimatedBlock.blockId) && Intrinsics.areEqual(this.text, newsfeedItemAnimatedBlock.text) && Intrinsics.areEqual(this.animation, newsfeedItemAnimatedBlock.animation) && Intrinsics.areEqual(this.trackCode, newsfeedItemAnimatedBlock.trackCode) && this.decoration == newsfeedItemAnimatedBlock.decoration && Intrinsics.areEqual(this.subtitle, newsfeedItemAnimatedBlock.subtitle) && Intrinsics.areEqual(this.button, newsfeedItemAnimatedBlock.button);
            }
            return false;
        }

        @Nullable
        public final NewsfeedItemAnimatedBlockAnimation getAnimation() {
            return this.animation;
        }

        @Nullable
        public final String getBlockId() {
            return this.blockId;
        }

        @Nullable
        public final BaseLinkButton getButton() {
            return this.button;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final Decoration getDecoration() {
            return this.decoration;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getSubtitle() {
            return this.subtitle;
        }

        @Nullable
        public final String getText() {
            return this.text;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.blockId;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.text;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            NewsfeedItemAnimatedBlockAnimation newsfeedItemAnimatedBlockAnimation = this.animation;
            int hashCode4 = (hashCode3 + (newsfeedItemAnimatedBlockAnimation == null ? 0 : newsfeedItemAnimatedBlockAnimation.hashCode())) * 31;
            String str3 = this.trackCode;
            int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Decoration decoration = this.decoration;
            int hashCode6 = (hashCode5 + (decoration == null ? 0 : decoration.hashCode())) * 31;
            String str4 = this.subtitle;
            int hashCode7 = (hashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
            BaseLinkButton baseLinkButton = this.button;
            return hashCode7 + (baseLinkButton != null ? baseLinkButton.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.blockId;
            String str2 = this.text;
            NewsfeedItemAnimatedBlockAnimation newsfeedItemAnimatedBlockAnimation = this.animation;
            String str3 = this.trackCode;
            Decoration decoration = this.decoration;
            String str4 = this.subtitle;
            BaseLinkButton baseLinkButton = this.button;
            return "NewsfeedItemAnimatedBlock(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", blockId=" + str + ", text=" + str2 + ", animation=" + newsfeedItemAnimatedBlockAnimation + ", trackCode=" + str3 + ", decoration=" + decoration + ", subtitle=" + str4 + ", button=" + baseLinkButton + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemAnimatedBlock(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable NewsfeedItemAnimatedBlockAnimation newsfeedItemAnimatedBlockAnimation, @Nullable String str3, @Nullable Decoration decoration, @Nullable String str4, @Nullable BaseLinkButton baseLinkButton) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.blockId = str;
            this.text = str2;
            this.animation = newsfeedItemAnimatedBlockAnimation;
            this.trackCode = str3;
            this.decoration = decoration;
            this.subtitle = str4;
            this.button = baseLinkButton;
        }
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0014J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u000f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010'\u001a\u00020\bHÆ\u0003J\t\u0010(\u001a\u00020\nHÆ\u0003J\t\u0010)\u001a\u00020\fHÆ\u0003J\t\u0010*\u001a\u00020\u000eHÆ\u0003J\u0011\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\bHÆ\u0003Ju\u0010.\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102HÖ\u0003J\t\u00103\u001a\u00020\u000eHÖ\u0001J\t\u00104\u001a\u00020\bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010!R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u00065"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "button", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;", "items", "", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;", "title", "", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "objects", "Lcom/vk/sdk/api/apps/dto/AppsApp;", "objectsType", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;", "trackCode", "(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;)V", "getButton", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;", "getDate", "()I", "getItems", "()Ljava/util/List;", "getObjects", "getObjectsType", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "()Ljava/lang/String;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemAppsCarousel extends NewsfeedNewsfeedItem {
        @SerializedName("button")
        @NotNull
        private final DiscoverCarouselButton button;
        @SerializedName("date")
        private final int date;
        @SerializedName("items")
        @NotNull
        private final List<DiscoverCarouselItem> items;
        @SerializedName("objects")
        @Nullable
        private final List<AppsApp> objects;
        @SerializedName("objects_type")
        @Nullable
        private final DiscoverCarouselObjectsType objectsType;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("title")
        @NotNull
        private final String title;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemAppsCarousel(DiscoverCarouselButton discoverCarouselButton, List list, String str, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, List list2, DiscoverCarouselObjectsType discoverCarouselObjectsType, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(discoverCarouselButton, list, str, newsfeedNewsfeedItemType, userId, i9, (i10 & 64) != 0 ? null : list2, (i10 & 128) != 0 ? null : discoverCarouselObjectsType, (i10 & 256) != 0 ? null : str2);
        }

        @NotNull
        public final DiscoverCarouselButton component1() {
            return this.button;
        }

        @NotNull
        public final List<DiscoverCarouselItem> component2() {
            return this.items;
        }

        @NotNull
        public final String component3() {
            return this.title;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component4() {
            return this.type;
        }

        @NotNull
        public final UserId component5() {
            return this.sourceId;
        }

        public final int component6() {
            return this.date;
        }

        @Nullable
        public final List<AppsApp> component7() {
            return this.objects;
        }

        @Nullable
        public final DiscoverCarouselObjectsType component8() {
            return this.objectsType;
        }

        @Nullable
        public final String component9() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedItemAppsCarousel copy(@NotNull DiscoverCarouselButton button, @NotNull List<DiscoverCarouselItem> items, @NotNull String title, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable List<AppsApp> list, @Nullable DiscoverCarouselObjectsType discoverCarouselObjectsType, @Nullable String str) {
            Intrinsics.checkNotNullParameter(button, "button");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemAppsCarousel(button, items, title, type, sourceId, i9, list, discoverCarouselObjectsType, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemAppsCarousel) {
                NewsfeedItemAppsCarousel newsfeedItemAppsCarousel = (NewsfeedItemAppsCarousel) obj;
                return Intrinsics.areEqual(this.button, newsfeedItemAppsCarousel.button) && Intrinsics.areEqual(this.items, newsfeedItemAppsCarousel.items) && Intrinsics.areEqual(this.title, newsfeedItemAppsCarousel.title) && this.type == newsfeedItemAppsCarousel.type && Intrinsics.areEqual(this.sourceId, newsfeedItemAppsCarousel.sourceId) && this.date == newsfeedItemAppsCarousel.date && Intrinsics.areEqual(this.objects, newsfeedItemAppsCarousel.objects) && this.objectsType == newsfeedItemAppsCarousel.objectsType && Intrinsics.areEqual(this.trackCode, newsfeedItemAppsCarousel.trackCode);
            }
            return false;
        }

        @NotNull
        public final DiscoverCarouselButton getButton() {
            return this.button;
        }

        public final int getDate() {
            return this.date;
        }

        @NotNull
        public final List<DiscoverCarouselItem> getItems() {
            return this.items;
        }

        @Nullable
        public final List<AppsApp> getObjects() {
            return this.objects;
        }

        @Nullable
        public final DiscoverCarouselObjectsType getObjectsType() {
            return this.objectsType;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((((((((this.button.hashCode() * 31) + this.items.hashCode()) * 31) + this.title.hashCode()) * 31) + this.type.hashCode()) * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            List<AppsApp> list = this.objects;
            int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
            DiscoverCarouselObjectsType discoverCarouselObjectsType = this.objectsType;
            int hashCode3 = (hashCode2 + (discoverCarouselObjectsType == null ? 0 : discoverCarouselObjectsType.hashCode())) * 31;
            String str = this.trackCode;
            return hashCode3 + (str != null ? str.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            DiscoverCarouselButton discoverCarouselButton = this.button;
            List<DiscoverCarouselItem> list = this.items;
            String str = this.title;
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            List<AppsApp> list2 = this.objects;
            DiscoverCarouselObjectsType discoverCarouselObjectsType = this.objectsType;
            String str2 = this.trackCode;
            return "NewsfeedItemAppsCarousel(button=" + discoverCarouselButton + ", items=" + list + ", title=" + str + ", type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", objects=" + list2 + ", objectsType=" + discoverCarouselObjectsType + ", trackCode=" + str2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemAppsCarousel(@NotNull DiscoverCarouselButton button, @NotNull List<DiscoverCarouselItem> items, @NotNull String title, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable List<AppsApp> list, @Nullable DiscoverCarouselObjectsType discoverCarouselObjectsType, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(button, "button");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.button = button;
            this.items = items;
            this.title = title;
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.objects = list;
            this.objectsType = discoverCarouselObjectsType;
            this.trackCode = str;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0011JD\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006%"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAudio;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "audio", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAudioAudio;", ShareConstants.RESULT_POST_ID, "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAudioAudio;Ljava/lang/Integer;)V", "getAudio", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAudioAudio;", "getDate", "()I", "getPostId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAudioAudio;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAudio;", "equals", "", "other", "", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemAudio extends NewsfeedNewsfeedItem {
        @SerializedName("audio")
        @Nullable
        private final NewsfeedItemAudioAudio audio;
        @SerializedName("date")
        private final int date;
        @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
        @Nullable
        private final Integer postId;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemAudio(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemAudioAudio newsfeedItemAudioAudio, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : newsfeedItemAudioAudio, (i10 & 16) != 0 ? null : num);
        }

        public static /* synthetic */ NewsfeedItemAudio copy$default(NewsfeedItemAudio newsfeedItemAudio, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemAudioAudio newsfeedItemAudioAudio, Integer num, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemAudio.type;
            }
            if ((i10 & 2) != 0) {
                userId = newsfeedItemAudio.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 4) != 0) {
                i9 = newsfeedItemAudio.date;
            }
            int i11 = i9;
            if ((i10 & 8) != 0) {
                newsfeedItemAudioAudio = newsfeedItemAudio.audio;
            }
            NewsfeedItemAudioAudio newsfeedItemAudioAudio2 = newsfeedItemAudioAudio;
            if ((i10 & 16) != 0) {
                num = newsfeedItemAudio.postId;
            }
            return newsfeedItemAudio.copy(newsfeedNewsfeedItemType, userId2, i11, newsfeedItemAudioAudio2, num);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemAudioAudio component4() {
            return this.audio;
        }

        @Nullable
        public final Integer component5() {
            return this.postId;
        }

        @NotNull
        public final NewsfeedItemAudio copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemAudioAudio newsfeedItemAudioAudio, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemAudio(type, sourceId, i9, newsfeedItemAudioAudio, num);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemAudio) {
                NewsfeedItemAudio newsfeedItemAudio = (NewsfeedItemAudio) obj;
                return this.type == newsfeedItemAudio.type && Intrinsics.areEqual(this.sourceId, newsfeedItemAudio.sourceId) && this.date == newsfeedItemAudio.date && Intrinsics.areEqual(this.audio, newsfeedItemAudio.audio) && Intrinsics.areEqual(this.postId, newsfeedItemAudio.postId);
            }
            return false;
        }

        @Nullable
        public final NewsfeedItemAudioAudio getAudio() {
            return this.audio;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final Integer getPostId() {
            return this.postId;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            NewsfeedItemAudioAudio newsfeedItemAudioAudio = this.audio;
            int hashCode2 = (hashCode + (newsfeedItemAudioAudio == null ? 0 : newsfeedItemAudioAudio.hashCode())) * 31;
            Integer num = this.postId;
            return hashCode2 + (num != null ? num.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            NewsfeedItemAudioAudio newsfeedItemAudioAudio = this.audio;
            Integer num = this.postId;
            return "NewsfeedItemAudio(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", audio=" + newsfeedItemAudioAudio + ", postId=" + num + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemAudio(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemAudioAudio newsfeedItemAudioAudio, @Nullable Integer num) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.audio = newsfeedItemAudioAudio;
            this.postId = num;
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0010HÆ\u0003Ji\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0007HÖ\u0001J\t\u0010.\u001a\u00020\tHÖ\u0001R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006/"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemClipsBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "title", "", "trackCode", "items", "", "Lcom/vk/sdk/api/video/dto/VideoVideo;", "nextFrom", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)V", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getDate", "()I", "getItems", "()Ljava/util/List;", "getNextFrom", "()Ljava/lang/String;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemClipsBlock extends NewsfeedNewsfeedItem {
        @SerializedName("button")
        @Nullable
        private final BaseLinkButton button;
        @SerializedName("date")
        private final int date;
        @SerializedName("items")
        @Nullable
        private final List<VideoVideo> items;
        @SerializedName("next_from")
        @Nullable
        private final String nextFrom;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("title")
        @Nullable
        private final String title;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemClipsBlock(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, String str2, List list, String str3, BaseLinkButton baseLinkButton, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : list, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : baseLinkButton);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final String component4() {
            return this.title;
        }

        @Nullable
        public final String component5() {
            return this.trackCode;
        }

        @Nullable
        public final List<VideoVideo> component6() {
            return this.items;
        }

        @Nullable
        public final String component7() {
            return this.nextFrom;
        }

        @Nullable
        public final BaseLinkButton component8() {
            return this.button;
        }

        @NotNull
        public final NewsfeedItemClipsBlock copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable List<VideoVideo> list, @Nullable String str3, @Nullable BaseLinkButton baseLinkButton) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemClipsBlock(type, sourceId, i9, str, str2, list, str3, baseLinkButton);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemClipsBlock) {
                NewsfeedItemClipsBlock newsfeedItemClipsBlock = (NewsfeedItemClipsBlock) obj;
                return this.type == newsfeedItemClipsBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemClipsBlock.sourceId) && this.date == newsfeedItemClipsBlock.date && Intrinsics.areEqual(this.title, newsfeedItemClipsBlock.title) && Intrinsics.areEqual(this.trackCode, newsfeedItemClipsBlock.trackCode) && Intrinsics.areEqual(this.items, newsfeedItemClipsBlock.items) && Intrinsics.areEqual(this.nextFrom, newsfeedItemClipsBlock.nextFrom) && Intrinsics.areEqual(this.button, newsfeedItemClipsBlock.button);
            }
            return false;
        }

        @Nullable
        public final BaseLinkButton getButton() {
            return this.button;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final List<VideoVideo> getItems() {
            return this.items;
        }

        @Nullable
        public final String getNextFrom() {
            return this.nextFrom;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.title;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.trackCode;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            List<VideoVideo> list = this.items;
            int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
            String str3 = this.nextFrom;
            int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
            BaseLinkButton baseLinkButton = this.button;
            return hashCode5 + (baseLinkButton != null ? baseLinkButton.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.title;
            String str2 = this.trackCode;
            List<VideoVideo> list = this.items;
            String str3 = this.nextFrom;
            BaseLinkButton baseLinkButton = this.button;
            return "NewsfeedItemClipsBlock(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", title=" + str + ", trackCode=" + str2 + ", items=" + list + ", nextFrom=" + str3 + ", button=" + baseLinkButton + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemClipsBlock(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable List<VideoVideo> list, @Nullable String str3, @Nullable BaseLinkButton baseLinkButton) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.title = str;
            this.trackCode = str2;
            this.items = list;
            this.nextFrom = str3;
            this.button = baseLinkButton;
        }
    }

    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u00019B}\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0015J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0007HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u0011\u0010.\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bHÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0087\u0001\u00102\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\t\u00107\u001a\u00020\u0007HÖ\u0001J\t\u00108\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0019R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'¨\u0006:"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemDigest;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "feedId", "", "items", "", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestItem;", "mainPostIds", "template", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemDigest$Template;", "header", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader;", "footer", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter;", "trackCode", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemDigest$Template;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter;Ljava/lang/String;)V", "getDate", "()I", "getFeedId", "()Ljava/lang/String;", "getFooter", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter;", "getHeader", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader;", "getItems", "()Ljava/util/List;", "getMainPostIds", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTemplate", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemDigest$Template;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "Template", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemDigest extends NewsfeedNewsfeedItem {
        @SerializedName("date")
        private final int date;
        @SerializedName("feed_id")
        @Nullable
        private final String feedId;
        @SerializedName("footer")
        @Nullable
        private final NewsfeedItemDigestFooter footer;
        @SerializedName("header")
        @Nullable
        private final NewsfeedItemDigestHeader header;
        @SerializedName("items")
        @Nullable
        private final List<NewsfeedItemDigestItem> items;
        @SerializedName("main_post_ids")
        @Nullable
        private final List<String> mainPostIds;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("template")
        @Nullable
        private final Template template;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemDigest$Template;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "LIST", "GRID", "SINGLE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Template {
            LIST("list"),
            GRID("grid"),
            SINGLE("single");
            
            @NotNull
            private final String value;

            Template(String str) {
                this.value = str;
            }

            @NotNull
            public final String getValue() {
                return this.value;
            }
        }

        public /* synthetic */ NewsfeedItemDigest(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, List list, List list2, Template template, NewsfeedItemDigestHeader newsfeedItemDigestHeader, NewsfeedItemDigestFooter newsfeedItemDigestFooter, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : list, (i10 & 32) != 0 ? null : list2, (i10 & 64) != 0 ? null : template, (i10 & 128) != 0 ? null : newsfeedItemDigestHeader, (i10 & 256) != 0 ? null : newsfeedItemDigestFooter, (i10 & 512) != 0 ? null : str2);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @Nullable
        public final String component10() {
            return this.trackCode;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final String component4() {
            return this.feedId;
        }

        @Nullable
        public final List<NewsfeedItemDigestItem> component5() {
            return this.items;
        }

        @Nullable
        public final List<String> component6() {
            return this.mainPostIds;
        }

        @Nullable
        public final Template component7() {
            return this.template;
        }

        @Nullable
        public final NewsfeedItemDigestHeader component8() {
            return this.header;
        }

        @Nullable
        public final NewsfeedItemDigestFooter component9() {
            return this.footer;
        }

        @NotNull
        public final NewsfeedItemDigest copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable List<NewsfeedItemDigestItem> list, @Nullable List<String> list2, @Nullable Template template, @Nullable NewsfeedItemDigestHeader newsfeedItemDigestHeader, @Nullable NewsfeedItemDigestFooter newsfeedItemDigestFooter, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemDigest(type, sourceId, i9, str, list, list2, template, newsfeedItemDigestHeader, newsfeedItemDigestFooter, str2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemDigest) {
                NewsfeedItemDigest newsfeedItemDigest = (NewsfeedItemDigest) obj;
                return this.type == newsfeedItemDigest.type && Intrinsics.areEqual(this.sourceId, newsfeedItemDigest.sourceId) && this.date == newsfeedItemDigest.date && Intrinsics.areEqual(this.feedId, newsfeedItemDigest.feedId) && Intrinsics.areEqual(this.items, newsfeedItemDigest.items) && Intrinsics.areEqual(this.mainPostIds, newsfeedItemDigest.mainPostIds) && this.template == newsfeedItemDigest.template && Intrinsics.areEqual(this.header, newsfeedItemDigest.header) && Intrinsics.areEqual(this.footer, newsfeedItemDigest.footer) && Intrinsics.areEqual(this.trackCode, newsfeedItemDigest.trackCode);
            }
            return false;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final String getFeedId() {
            return this.feedId;
        }

        @Nullable
        public final NewsfeedItemDigestFooter getFooter() {
            return this.footer;
        }

        @Nullable
        public final NewsfeedItemDigestHeader getHeader() {
            return this.header;
        }

        @Nullable
        public final List<NewsfeedItemDigestItem> getItems() {
            return this.items;
        }

        @Nullable
        public final List<String> getMainPostIds() {
            return this.mainPostIds;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final Template getTemplate() {
            return this.template;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.feedId;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            List<NewsfeedItemDigestItem> list = this.items;
            int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
            List<String> list2 = this.mainPostIds;
            int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
            Template template = this.template;
            int hashCode5 = (hashCode4 + (template == null ? 0 : template.hashCode())) * 31;
            NewsfeedItemDigestHeader newsfeedItemDigestHeader = this.header;
            int hashCode6 = (hashCode5 + (newsfeedItemDigestHeader == null ? 0 : newsfeedItemDigestHeader.hashCode())) * 31;
            NewsfeedItemDigestFooter newsfeedItemDigestFooter = this.footer;
            int hashCode7 = (hashCode6 + (newsfeedItemDigestFooter == null ? 0 : newsfeedItemDigestFooter.hashCode())) * 31;
            String str2 = this.trackCode;
            return hashCode7 + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.feedId;
            List<NewsfeedItemDigestItem> list = this.items;
            List<String> list2 = this.mainPostIds;
            Template template = this.template;
            NewsfeedItemDigestHeader newsfeedItemDigestHeader = this.header;
            NewsfeedItemDigestFooter newsfeedItemDigestFooter = this.footer;
            String str2 = this.trackCode;
            return "NewsfeedItemDigest(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", feedId=" + str + ", items=" + list + ", mainPostIds=" + list2 + ", template=" + template + ", header=" + newsfeedItemDigestHeader + ", footer=" + newsfeedItemDigestFooter + ", trackCode=" + str2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemDigest(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable List<NewsfeedItemDigestItem> list, @Nullable List<String> list2, @Nullable Template template, @Nullable NewsfeedItemDigestHeader newsfeedItemDigestHeader, @Nullable NewsfeedItemDigestFooter newsfeedItemDigestFooter, @Nullable String str2) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.feedId = str;
            this.items = list;
            this.mainPostIds = list2;
            this.template = template;
            this.header = newsfeedItemDigestHeader;
            this.footer = newsfeedItemDigestFooter;
            this.trackCode = str2;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemExpertCardWidget;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemExpertCardWidget$Type;", "expertCard", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidget;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemExpertCardWidget$Type;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidget;)V", "getExpertCard", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidget;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemExpertCardWidget$Type;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemExpertCardWidget extends NewsfeedNewsfeedItem {
        @SerializedName("expert_card")
        @Nullable
        private final NewsfeedExpertCardWidget expertCard;
        @SerializedName("type")
        @Nullable
        private final Type type;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemExpertCardWidget$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "EXPERT_CARD", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Type {
            EXPERT_CARD("expert_card");
            
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

        public NewsfeedItemExpertCardWidget() {
            this(null, null, 3, null);
        }

        public /* synthetic */ NewsfeedItemExpertCardWidget(Type type, NewsfeedExpertCardWidget newsfeedExpertCardWidget, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this((i9 & 1) != 0 ? null : type, (i9 & 2) != 0 ? null : newsfeedExpertCardWidget);
        }

        public static /* synthetic */ NewsfeedItemExpertCardWidget copy$default(NewsfeedItemExpertCardWidget newsfeedItemExpertCardWidget, Type type, NewsfeedExpertCardWidget newsfeedExpertCardWidget, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                type = newsfeedItemExpertCardWidget.type;
            }
            if ((i9 & 2) != 0) {
                newsfeedExpertCardWidget = newsfeedItemExpertCardWidget.expertCard;
            }
            return newsfeedItemExpertCardWidget.copy(type, newsfeedExpertCardWidget);
        }

        @Nullable
        public final Type component1() {
            return this.type;
        }

        @Nullable
        public final NewsfeedExpertCardWidget component2() {
            return this.expertCard;
        }

        @NotNull
        public final NewsfeedItemExpertCardWidget copy(@Nullable Type type, @Nullable NewsfeedExpertCardWidget newsfeedExpertCardWidget) {
            return new NewsfeedItemExpertCardWidget(type, newsfeedExpertCardWidget);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemExpertCardWidget) {
                NewsfeedItemExpertCardWidget newsfeedItemExpertCardWidget = (NewsfeedItemExpertCardWidget) obj;
                return this.type == newsfeedItemExpertCardWidget.type && Intrinsics.areEqual(this.expertCard, newsfeedItemExpertCardWidget.expertCard);
            }
            return false;
        }

        @Nullable
        public final NewsfeedExpertCardWidget getExpertCard() {
            return this.expertCard;
        }

        @Nullable
        public final Type getType() {
            return this.type;
        }

        public int hashCode() {
            Type type = this.type;
            int hashCode = (type == null ? 0 : type.hashCode()) * 31;
            NewsfeedExpertCardWidget newsfeedExpertCardWidget = this.expertCard;
            return hashCode + (newsfeedExpertCardWidget != null ? newsfeedExpertCardWidget.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            Type type = this.type;
            NewsfeedExpertCardWidget newsfeedExpertCardWidget = this.expertCard;
            return "NewsfeedItemExpertCardWidget(type=" + type + ", expertCard=" + newsfeedExpertCardWidget + ")";
        }

        public NewsfeedItemExpertCardWidget(@Nullable Type type, @Nullable NewsfeedExpertCardWidget newsfeedExpertCardWidget) {
            super(null);
            this.type = type;
            this.expertCard = newsfeedExpertCardWidget;
        }
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\rHÆ\u0003JG\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\u000bHÖ\u0001J\t\u0010'\u001a\u00020\rHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006("}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemFeedbackPoll;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "banner", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollBanner;", "poll", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollPoll;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "trackCode", "", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollBanner;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollPoll;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;)V", "getBanner", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollBanner;", "getDate", "()I", "getPoll", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollPoll;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTrackCode", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemFeedbackPoll extends NewsfeedNewsfeedItem {
        @SerializedName("banner")
        @NotNull
        private final NewsfeedItemFeedbackPollBanner banner;
        @SerializedName("date")
        private final int date;
        @SerializedName("poll")
        @NotNull
        private final NewsfeedItemFeedbackPollPoll poll;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemFeedbackPoll(NewsfeedItemFeedbackPollBanner newsfeedItemFeedbackPollBanner, NewsfeedItemFeedbackPollPoll newsfeedItemFeedbackPollPoll, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedItemFeedbackPollBanner, newsfeedItemFeedbackPollPoll, newsfeedNewsfeedItemType, userId, i9, (i10 & 32) != 0 ? null : str);
        }

        public static /* synthetic */ NewsfeedItemFeedbackPoll copy$default(NewsfeedItemFeedbackPoll newsfeedItemFeedbackPoll, NewsfeedItemFeedbackPollBanner newsfeedItemFeedbackPollBanner, NewsfeedItemFeedbackPollPoll newsfeedItemFeedbackPollPoll, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedItemFeedbackPollBanner = newsfeedItemFeedbackPoll.banner;
            }
            if ((i10 & 2) != 0) {
                newsfeedItemFeedbackPollPoll = newsfeedItemFeedbackPoll.poll;
            }
            NewsfeedItemFeedbackPollPoll newsfeedItemFeedbackPollPoll2 = newsfeedItemFeedbackPollPoll;
            if ((i10 & 4) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemFeedbackPoll.type;
            }
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType2 = newsfeedNewsfeedItemType;
            if ((i10 & 8) != 0) {
                userId = newsfeedItemFeedbackPoll.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 16) != 0) {
                i9 = newsfeedItemFeedbackPoll.date;
            }
            int i11 = i9;
            if ((i10 & 32) != 0) {
                str = newsfeedItemFeedbackPoll.trackCode;
            }
            return newsfeedItemFeedbackPoll.copy(newsfeedItemFeedbackPollBanner, newsfeedItemFeedbackPollPoll2, newsfeedNewsfeedItemType2, userId2, i11, str);
        }

        @NotNull
        public final NewsfeedItemFeedbackPollBanner component1() {
            return this.banner;
        }

        @NotNull
        public final NewsfeedItemFeedbackPollPoll component2() {
            return this.poll;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component3() {
            return this.type;
        }

        @NotNull
        public final UserId component4() {
            return this.sourceId;
        }

        public final int component5() {
            return this.date;
        }

        @Nullable
        public final String component6() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedItemFeedbackPoll copy(@NotNull NewsfeedItemFeedbackPollBanner banner, @NotNull NewsfeedItemFeedbackPollPoll poll, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str) {
            Intrinsics.checkNotNullParameter(banner, "banner");
            Intrinsics.checkNotNullParameter(poll, "poll");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemFeedbackPoll(banner, poll, type, sourceId, i9, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemFeedbackPoll) {
                NewsfeedItemFeedbackPoll newsfeedItemFeedbackPoll = (NewsfeedItemFeedbackPoll) obj;
                return Intrinsics.areEqual(this.banner, newsfeedItemFeedbackPoll.banner) && Intrinsics.areEqual(this.poll, newsfeedItemFeedbackPoll.poll) && this.type == newsfeedItemFeedbackPoll.type && Intrinsics.areEqual(this.sourceId, newsfeedItemFeedbackPoll.sourceId) && this.date == newsfeedItemFeedbackPoll.date && Intrinsics.areEqual(this.trackCode, newsfeedItemFeedbackPoll.trackCode);
            }
            return false;
        }

        @NotNull
        public final NewsfeedItemFeedbackPollBanner getBanner() {
            return this.banner;
        }

        public final int getDate() {
            return this.date;
        }

        @NotNull
        public final NewsfeedItemFeedbackPollPoll getPoll() {
            return this.poll;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((((((this.banner.hashCode() * 31) + this.poll.hashCode()) * 31) + this.type.hashCode()) * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.trackCode;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        @NotNull
        public String toString() {
            NewsfeedItemFeedbackPollBanner newsfeedItemFeedbackPollBanner = this.banner;
            NewsfeedItemFeedbackPollPoll newsfeedItemFeedbackPollPoll = this.poll;
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.trackCode;
            return "NewsfeedItemFeedbackPoll(banner=" + newsfeedItemFeedbackPollBanner + ", poll=" + newsfeedItemFeedbackPollPoll + ", type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", trackCode=" + str + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemFeedbackPoll(@NotNull NewsfeedItemFeedbackPollBanner banner, @NotNull NewsfeedItemFeedbackPollPoll poll, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(banner, "banner");
            Intrinsics.checkNotNullParameter(poll, "poll");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.banner = banner;
            this.poll = poll;
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.trackCode = str;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J3\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemFriend;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", NativeProtocol.AUDIENCE_FRIENDS, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFriendFriends;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFriendFriends;)V", "getDate", "()I", "getFriends", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFriendFriends;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemFriend extends NewsfeedNewsfeedItem {
        @SerializedName("date")
        private final int date;
        @SerializedName(NativeProtocol.AUDIENCE_FRIENDS)
        @Nullable
        private final NewsfeedItemFriendFriends friends;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemFriend(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemFriendFriends newsfeedItemFriendFriends, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : newsfeedItemFriendFriends);
        }

        public static /* synthetic */ NewsfeedItemFriend copy$default(NewsfeedItemFriend newsfeedItemFriend, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemFriendFriends newsfeedItemFriendFriends, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemFriend.type;
            }
            if ((i10 & 2) != 0) {
                userId = newsfeedItemFriend.sourceId;
            }
            if ((i10 & 4) != 0) {
                i9 = newsfeedItemFriend.date;
            }
            if ((i10 & 8) != 0) {
                newsfeedItemFriendFriends = newsfeedItemFriend.friends;
            }
            return newsfeedItemFriend.copy(newsfeedNewsfeedItemType, userId, i9, newsfeedItemFriendFriends);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemFriendFriends component4() {
            return this.friends;
        }

        @NotNull
        public final NewsfeedItemFriend copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemFriendFriends newsfeedItemFriendFriends) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemFriend(type, sourceId, i9, newsfeedItemFriendFriends);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemFriend) {
                NewsfeedItemFriend newsfeedItemFriend = (NewsfeedItemFriend) obj;
                return this.type == newsfeedItemFriend.type && Intrinsics.areEqual(this.sourceId, newsfeedItemFriend.sourceId) && this.date == newsfeedItemFriend.date && Intrinsics.areEqual(this.friends, newsfeedItemFriend.friends);
            }
            return false;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemFriendFriends getFriends() {
            return this.friends;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            NewsfeedItemFriendFriends newsfeedItemFriendFriends = this.friends;
            return hashCode + (newsfeedItemFriendFriends == null ? 0 : newsfeedItemFriendFriends.hashCode());
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            NewsfeedItemFriendFriends newsfeedItemFriendFriends = this.friends;
            return "NewsfeedItemFriend(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", friends=" + newsfeedItemFriendFriends + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemFriend(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemFriendFriends newsfeedItemFriendFriends) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.friends = newsfeedItemFriendFriends;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJP\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0007HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0014\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006("}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPhoto;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "photos", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoPhotos;", ShareConstants.RESULT_POST_ID, "carouselOffset", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoPhotos;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCarouselOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "()I", "getPhotos", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoPhotos;", "getPostId", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoPhotos;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPhoto;", "equals", "", "other", "", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemPhoto extends NewsfeedNewsfeedItem {
        @SerializedName("carousel_offset")
        @Nullable
        private final Integer carouselOffset;
        @SerializedName("date")
        private final int date;
        @SerializedName("photos")
        @Nullable
        private final NewsfeedItemPhotoPhotos photos;
        @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
        @Nullable
        private final Integer postId;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemPhoto(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemPhotoPhotos newsfeedItemPhotoPhotos, Integer num, Integer num2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : newsfeedItemPhotoPhotos, (i10 & 16) != 0 ? null : num, (i10 & 32) != 0 ? null : num2);
        }

        public static /* synthetic */ NewsfeedItemPhoto copy$default(NewsfeedItemPhoto newsfeedItemPhoto, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemPhotoPhotos newsfeedItemPhotoPhotos, Integer num, Integer num2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemPhoto.type;
            }
            if ((i10 & 2) != 0) {
                userId = newsfeedItemPhoto.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 4) != 0) {
                i9 = newsfeedItemPhoto.date;
            }
            int i11 = i9;
            if ((i10 & 8) != 0) {
                newsfeedItemPhotoPhotos = newsfeedItemPhoto.photos;
            }
            NewsfeedItemPhotoPhotos newsfeedItemPhotoPhotos2 = newsfeedItemPhotoPhotos;
            if ((i10 & 16) != 0) {
                num = newsfeedItemPhoto.postId;
            }
            Integer num3 = num;
            if ((i10 & 32) != 0) {
                num2 = newsfeedItemPhoto.carouselOffset;
            }
            return newsfeedItemPhoto.copy(newsfeedNewsfeedItemType, userId2, i11, newsfeedItemPhotoPhotos2, num3, num2);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemPhotoPhotos component4() {
            return this.photos;
        }

        @Nullable
        public final Integer component5() {
            return this.postId;
        }

        @Nullable
        public final Integer component6() {
            return this.carouselOffset;
        }

        @NotNull
        public final NewsfeedItemPhoto copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemPhotoPhotos newsfeedItemPhotoPhotos, @Nullable Integer num, @Nullable Integer num2) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemPhoto(type, sourceId, i9, newsfeedItemPhotoPhotos, num, num2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemPhoto) {
                NewsfeedItemPhoto newsfeedItemPhoto = (NewsfeedItemPhoto) obj;
                return this.type == newsfeedItemPhoto.type && Intrinsics.areEqual(this.sourceId, newsfeedItemPhoto.sourceId) && this.date == newsfeedItemPhoto.date && Intrinsics.areEqual(this.photos, newsfeedItemPhoto.photos) && Intrinsics.areEqual(this.postId, newsfeedItemPhoto.postId) && Intrinsics.areEqual(this.carouselOffset, newsfeedItemPhoto.carouselOffset);
            }
            return false;
        }

        @Nullable
        public final Integer getCarouselOffset() {
            return this.carouselOffset;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemPhotoPhotos getPhotos() {
            return this.photos;
        }

        @Nullable
        public final Integer getPostId() {
            return this.postId;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            NewsfeedItemPhotoPhotos newsfeedItemPhotoPhotos = this.photos;
            int hashCode2 = (hashCode + (newsfeedItemPhotoPhotos == null ? 0 : newsfeedItemPhotoPhotos.hashCode())) * 31;
            Integer num = this.postId;
            int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.carouselOffset;
            return hashCode3 + (num2 != null ? num2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            NewsfeedItemPhotoPhotos newsfeedItemPhotoPhotos = this.photos;
            Integer num = this.postId;
            Integer num2 = this.carouselOffset;
            return "NewsfeedItemPhoto(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", photos=" + newsfeedItemPhotoPhotos + ", postId=" + num + ", carouselOffset=" + num2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemPhoto(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemPhotoPhotos newsfeedItemPhotoPhotos, @Nullable Integer num, @Nullable Integer num2) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.photos = newsfeedItemPhotoPhotos;
            this.postId = num;
            this.carouselOffset = num2;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJP\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0007HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0014\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006("}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPhotoTag;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "photoTags", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoTagPhotoTags;", ShareConstants.RESULT_POST_ID, "carouselOffset", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoTagPhotoTags;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCarouselOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "()I", "getPhotoTags", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoTagPhotoTags;", "getPostId", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPhotoTagPhotoTags;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPhotoTag;", "equals", "", "other", "", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemPhotoTag extends NewsfeedNewsfeedItem {
        @SerializedName("carousel_offset")
        @Nullable
        private final Integer carouselOffset;
        @SerializedName("date")
        private final int date;
        @SerializedName("photo_tags")
        @Nullable
        private final NewsfeedItemPhotoTagPhotoTags photoTags;
        @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
        @Nullable
        private final Integer postId;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemPhotoTag(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemPhotoTagPhotoTags newsfeedItemPhotoTagPhotoTags, Integer num, Integer num2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : newsfeedItemPhotoTagPhotoTags, (i10 & 16) != 0 ? null : num, (i10 & 32) != 0 ? null : num2);
        }

        public static /* synthetic */ NewsfeedItemPhotoTag copy$default(NewsfeedItemPhotoTag newsfeedItemPhotoTag, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemPhotoTagPhotoTags newsfeedItemPhotoTagPhotoTags, Integer num, Integer num2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemPhotoTag.type;
            }
            if ((i10 & 2) != 0) {
                userId = newsfeedItemPhotoTag.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 4) != 0) {
                i9 = newsfeedItemPhotoTag.date;
            }
            int i11 = i9;
            if ((i10 & 8) != 0) {
                newsfeedItemPhotoTagPhotoTags = newsfeedItemPhotoTag.photoTags;
            }
            NewsfeedItemPhotoTagPhotoTags newsfeedItemPhotoTagPhotoTags2 = newsfeedItemPhotoTagPhotoTags;
            if ((i10 & 16) != 0) {
                num = newsfeedItemPhotoTag.postId;
            }
            Integer num3 = num;
            if ((i10 & 32) != 0) {
                num2 = newsfeedItemPhotoTag.carouselOffset;
            }
            return newsfeedItemPhotoTag.copy(newsfeedNewsfeedItemType, userId2, i11, newsfeedItemPhotoTagPhotoTags2, num3, num2);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemPhotoTagPhotoTags component4() {
            return this.photoTags;
        }

        @Nullable
        public final Integer component5() {
            return this.postId;
        }

        @Nullable
        public final Integer component6() {
            return this.carouselOffset;
        }

        @NotNull
        public final NewsfeedItemPhotoTag copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemPhotoTagPhotoTags newsfeedItemPhotoTagPhotoTags, @Nullable Integer num, @Nullable Integer num2) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemPhotoTag(type, sourceId, i9, newsfeedItemPhotoTagPhotoTags, num, num2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemPhotoTag) {
                NewsfeedItemPhotoTag newsfeedItemPhotoTag = (NewsfeedItemPhotoTag) obj;
                return this.type == newsfeedItemPhotoTag.type && Intrinsics.areEqual(this.sourceId, newsfeedItemPhotoTag.sourceId) && this.date == newsfeedItemPhotoTag.date && Intrinsics.areEqual(this.photoTags, newsfeedItemPhotoTag.photoTags) && Intrinsics.areEqual(this.postId, newsfeedItemPhotoTag.postId) && Intrinsics.areEqual(this.carouselOffset, newsfeedItemPhotoTag.carouselOffset);
            }
            return false;
        }

        @Nullable
        public final Integer getCarouselOffset() {
            return this.carouselOffset;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemPhotoTagPhotoTags getPhotoTags() {
            return this.photoTags;
        }

        @Nullable
        public final Integer getPostId() {
            return this.postId;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            NewsfeedItemPhotoTagPhotoTags newsfeedItemPhotoTagPhotoTags = this.photoTags;
            int hashCode2 = (hashCode + (newsfeedItemPhotoTagPhotoTags == null ? 0 : newsfeedItemPhotoTagPhotoTags.hashCode())) * 31;
            Integer num = this.postId;
            int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.carouselOffset;
            return hashCode3 + (num2 != null ? num2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            NewsfeedItemPhotoTagPhotoTags newsfeedItemPhotoTagPhotoTags = this.photoTags;
            Integer num = this.postId;
            Integer num2 = this.carouselOffset;
            return "NewsfeedItemPhotoTag(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", photoTags=" + newsfeedItemPhotoTagPhotoTags + ", postId=" + num + ", carouselOffset=" + num2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemPhotoTag(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemPhotoTagPhotoTags newsfeedItemPhotoTagPhotoTags, @Nullable Integer num, @Nullable Integer num2) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.photoTags = newsfeedItemPhotoTagPhotoTags;
            this.postId = num;
            this.carouselOffset = num2;
        }
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0011J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\tHÆ\u0003Ji\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0007HÖ\u0001J\t\u0010.\u001a\u00020\tHÖ\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006/"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemPromoButton;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", ViewHierarchyConstants.TEXT_KEY, "", "title", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPromoButtonAction;", "images", "", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPromoButtonImage;", "trackCode", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPromoButtonAction;Ljava/util/List;Ljava/lang/String;)V", "getAction", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPromoButtonAction;", "getDate", "()I", "getImages", "()Ljava/util/List;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getText", "()Ljava/lang/String;", "getTitle", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemPromoButton extends NewsfeedNewsfeedItem {
        @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
        @Nullable
        private final NewsfeedItemPromoButtonAction action;
        @SerializedName("date")
        private final int date;
        @SerializedName("images")
        @Nullable
        private final List<NewsfeedItemPromoButtonImage> images;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName(ViewHierarchyConstants.TEXT_KEY)
        @Nullable
        private final String text;
        @SerializedName("title")
        @Nullable
        private final String title;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemPromoButton(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, String str2, NewsfeedItemPromoButtonAction newsfeedItemPromoButtonAction, List list, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : newsfeedItemPromoButtonAction, (i10 & 64) != 0 ? null : list, (i10 & 128) != 0 ? null : str3);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final String component4() {
            return this.text;
        }

        @Nullable
        public final String component5() {
            return this.title;
        }

        @Nullable
        public final NewsfeedItemPromoButtonAction component6() {
            return this.action;
        }

        @Nullable
        public final List<NewsfeedItemPromoButtonImage> component7() {
            return this.images;
        }

        @Nullable
        public final String component8() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedItemPromoButton copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable NewsfeedItemPromoButtonAction newsfeedItemPromoButtonAction, @Nullable List<NewsfeedItemPromoButtonImage> list, @Nullable String str3) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemPromoButton(type, sourceId, i9, str, str2, newsfeedItemPromoButtonAction, list, str3);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemPromoButton) {
                NewsfeedItemPromoButton newsfeedItemPromoButton = (NewsfeedItemPromoButton) obj;
                return this.type == newsfeedItemPromoButton.type && Intrinsics.areEqual(this.sourceId, newsfeedItemPromoButton.sourceId) && this.date == newsfeedItemPromoButton.date && Intrinsics.areEqual(this.text, newsfeedItemPromoButton.text) && Intrinsics.areEqual(this.title, newsfeedItemPromoButton.title) && Intrinsics.areEqual(this.action, newsfeedItemPromoButton.action) && Intrinsics.areEqual(this.images, newsfeedItemPromoButton.images) && Intrinsics.areEqual(this.trackCode, newsfeedItemPromoButton.trackCode);
            }
            return false;
        }

        @Nullable
        public final NewsfeedItemPromoButtonAction getAction() {
            return this.action;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final List<NewsfeedItemPromoButtonImage> getImages() {
            return this.images;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getText() {
            return this.text;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.text;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.title;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            NewsfeedItemPromoButtonAction newsfeedItemPromoButtonAction = this.action;
            int hashCode4 = (hashCode3 + (newsfeedItemPromoButtonAction == null ? 0 : newsfeedItemPromoButtonAction.hashCode())) * 31;
            List<NewsfeedItemPromoButtonImage> list = this.images;
            int hashCode5 = (hashCode4 + (list == null ? 0 : list.hashCode())) * 31;
            String str3 = this.trackCode;
            return hashCode5 + (str3 != null ? str3.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.text;
            String str2 = this.title;
            NewsfeedItemPromoButtonAction newsfeedItemPromoButtonAction = this.action;
            List<NewsfeedItemPromoButtonImage> list = this.images;
            String str3 = this.trackCode;
            return "NewsfeedItemPromoButton(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", text=" + str + ", title=" + str2 + ", action=" + newsfeedItemPromoButtonAction + ", images=" + list + ", trackCode=" + str3 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemPromoButton(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable NewsfeedItemPromoButtonAction newsfeedItemPromoButtonAction, @Nullable List<NewsfeedItemPromoButtonImage> list, @Nullable String str3) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.text = str;
            this.title = str2;
            this.action = newsfeedItemPromoButtonAction;
            this.images = list;
            this.trackCode = str3;
        }
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003J]\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0007HÖ\u0001J\t\u0010+\u001a\u00020\u000bHÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006,"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecognizeBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "endCard", "Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemEndCard;", "recognitionArticleLink", "", "trackCode", "items", "", "Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItem;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemEndCard;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDate", "()I", "getEndCard", "()Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemEndCard;", "getItems", "()Ljava/util/List;", "getRecognitionArticleLink", "()Ljava/lang/String;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemRecognizeBlock extends NewsfeedNewsfeedItem {
        @SerializedName("date")
        private final int date;
        @SerializedName("end_card")
        @Nullable
        private final PhotosTagsSuggestionItemEndCard endCard;
        @SerializedName("items")
        @Nullable
        private final List<PhotosTagsSuggestionItem> items;
        @SerializedName("recognition_article_link")
        @Nullable
        private final String recognitionArticleLink;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemRecognizeBlock(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard, String str, String str2, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : photosTagsSuggestionItemEndCard, (i10 & 16) != 0 ? null : str, (i10 & 32) != 0 ? null : str2, (i10 & 64) != 0 ? null : list);
        }

        public static /* synthetic */ NewsfeedItemRecognizeBlock copy$default(NewsfeedItemRecognizeBlock newsfeedItemRecognizeBlock, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard, String str, String str2, List list, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemRecognizeBlock.type;
            }
            if ((i10 & 2) != 0) {
                userId = newsfeedItemRecognizeBlock.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 4) != 0) {
                i9 = newsfeedItemRecognizeBlock.date;
            }
            int i11 = i9;
            if ((i10 & 8) != 0) {
                photosTagsSuggestionItemEndCard = newsfeedItemRecognizeBlock.endCard;
            }
            PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard2 = photosTagsSuggestionItemEndCard;
            if ((i10 & 16) != 0) {
                str = newsfeedItemRecognizeBlock.recognitionArticleLink;
            }
            String str3 = str;
            if ((i10 & 32) != 0) {
                str2 = newsfeedItemRecognizeBlock.trackCode;
            }
            String str4 = str2;
            List<PhotosTagsSuggestionItem> list2 = list;
            if ((i10 & 64) != 0) {
                list2 = newsfeedItemRecognizeBlock.items;
            }
            return newsfeedItemRecognizeBlock.copy(newsfeedNewsfeedItemType, userId2, i11, photosTagsSuggestionItemEndCard2, str3, str4, list2);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final PhotosTagsSuggestionItemEndCard component4() {
            return this.endCard;
        }

        @Nullable
        public final String component5() {
            return this.recognitionArticleLink;
        }

        @Nullable
        public final String component6() {
            return this.trackCode;
        }

        @Nullable
        public final List<PhotosTagsSuggestionItem> component7() {
            return this.items;
        }

        @NotNull
        public final NewsfeedItemRecognizeBlock copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard, @Nullable String str, @Nullable String str2, @Nullable List<PhotosTagsSuggestionItem> list) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemRecognizeBlock(type, sourceId, i9, photosTagsSuggestionItemEndCard, str, str2, list);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemRecognizeBlock) {
                NewsfeedItemRecognizeBlock newsfeedItemRecognizeBlock = (NewsfeedItemRecognizeBlock) obj;
                return this.type == newsfeedItemRecognizeBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemRecognizeBlock.sourceId) && this.date == newsfeedItemRecognizeBlock.date && Intrinsics.areEqual(this.endCard, newsfeedItemRecognizeBlock.endCard) && Intrinsics.areEqual(this.recognitionArticleLink, newsfeedItemRecognizeBlock.recognitionArticleLink) && Intrinsics.areEqual(this.trackCode, newsfeedItemRecognizeBlock.trackCode) && Intrinsics.areEqual(this.items, newsfeedItemRecognizeBlock.items);
            }
            return false;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final PhotosTagsSuggestionItemEndCard getEndCard() {
            return this.endCard;
        }

        @Nullable
        public final List<PhotosTagsSuggestionItem> getItems() {
            return this.items;
        }

        @Nullable
        public final String getRecognitionArticleLink() {
            return this.recognitionArticleLink;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard = this.endCard;
            int hashCode2 = (hashCode + (photosTagsSuggestionItemEndCard == null ? 0 : photosTagsSuggestionItemEndCard.hashCode())) * 31;
            String str = this.recognitionArticleLink;
            int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.trackCode;
            int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            List<PhotosTagsSuggestionItem> list = this.items;
            return hashCode4 + (list != null ? list.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard = this.endCard;
            String str = this.recognitionArticleLink;
            String str2 = this.trackCode;
            List<PhotosTagsSuggestionItem> list = this.items;
            return "NewsfeedItemRecognizeBlock(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", endCard=" + photosTagsSuggestionItemEndCard + ", recognitionArticleLink=" + str + ", trackCode=" + str2 + ", items=" + list + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemRecognizeBlock(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard, @Nullable String str, @Nullable String str2, @Nullable List<PhotosTagsSuggestionItem> list) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.endCard = photosTagsSuggestionItemEndCard;
            this.recognitionArticleLink = str;
            this.trackCode = str2;
            this.items = list;
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0010\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010¢\u0006\u0002\u0010\u0013J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003J\t\u0010'\u001a\u00020\u0005HÆ\u0003J\t\u0010(\u001a\u00020\bHÆ\u0003J\t\u0010)\u001a\u00020\nHÆ\u0003J\t\u0010*\u001a\u00020\fHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0017\u0010-\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0010\u0018\u00010\u0010HÆ\u0003J\u0087\u0001\u0010.\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0010\u0018\u00010\u00102\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0001J\u0013\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u000102HÖ\u0003J\t\u00103\u001a\u00020\fHÖ\u0001J\t\u00104\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR$\u0010\u000f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0010\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u00065"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecommendedAppBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "Lcom/vk/sdk/api/apps/dto/AppsApp;", "title", "", "buttonText", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "trackCode", "friendsPlayingText", "friendsAvatars", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "appCover", "(Lcom/vk/sdk/api/apps/dto/AppsApp;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getApp", "()Lcom/vk/sdk/api/apps/dto/AppsApp;", "getAppCover", "()Ljava/util/List;", "getButtonText", "()Ljava/lang/String;", "getDate", "()I", "getFriendsAvatars", "getFriendsPlayingText", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemRecommendedAppBlock extends NewsfeedNewsfeedItem {
        @SerializedName(PushConstants.EXTRA_APPLICATION_PENDING_INTENT)
        @NotNull
        private final AppsApp app;
        @SerializedName("app_cover")
        @Nullable
        private final List<BaseImage> appCover;
        @SerializedName("button_text")
        @NotNull
        private final String buttonText;
        @SerializedName("date")
        private final int date;
        @SerializedName("friends_avatars")
        @Nullable
        private final List<List<BaseImage>> friendsAvatars;
        @SerializedName("friends_playing_text")
        @Nullable
        private final String friendsPlayingText;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("title")
        @NotNull
        private final String title;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemRecommendedAppBlock(AppsApp appsApp, String str, String str2, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str3, String str4, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(appsApp, str, str2, newsfeedNewsfeedItemType, userId, i9, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : str4, (i10 & 256) != 0 ? null : list, (i10 & 512) != 0 ? null : list2);
        }

        @NotNull
        public final AppsApp component1() {
            return this.app;
        }

        @Nullable
        public final List<BaseImage> component10() {
            return this.appCover;
        }

        @NotNull
        public final String component2() {
            return this.title;
        }

        @NotNull
        public final String component3() {
            return this.buttonText;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component4() {
            return this.type;
        }

        @NotNull
        public final UserId component5() {
            return this.sourceId;
        }

        public final int component6() {
            return this.date;
        }

        @Nullable
        public final String component7() {
            return this.trackCode;
        }

        @Nullable
        public final String component8() {
            return this.friendsPlayingText;
        }

        @Nullable
        public final List<List<BaseImage>> component9() {
            return this.friendsAvatars;
        }

        @NotNull
        public final NewsfeedItemRecommendedAppBlock copy(@NotNull AppsApp app, @NotNull String title, @NotNull String buttonText, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable List<? extends List<BaseImage>> list, @Nullable List<BaseImage> list2) {
            Intrinsics.checkNotNullParameter(app, "app");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(buttonText, "buttonText");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemRecommendedAppBlock(app, title, buttonText, type, sourceId, i9, str, str2, list, list2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemRecommendedAppBlock) {
                NewsfeedItemRecommendedAppBlock newsfeedItemRecommendedAppBlock = (NewsfeedItemRecommendedAppBlock) obj;
                return Intrinsics.areEqual(this.app, newsfeedItemRecommendedAppBlock.app) && Intrinsics.areEqual(this.title, newsfeedItemRecommendedAppBlock.title) && Intrinsics.areEqual(this.buttonText, newsfeedItemRecommendedAppBlock.buttonText) && this.type == newsfeedItemRecommendedAppBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemRecommendedAppBlock.sourceId) && this.date == newsfeedItemRecommendedAppBlock.date && Intrinsics.areEqual(this.trackCode, newsfeedItemRecommendedAppBlock.trackCode) && Intrinsics.areEqual(this.friendsPlayingText, newsfeedItemRecommendedAppBlock.friendsPlayingText) && Intrinsics.areEqual(this.friendsAvatars, newsfeedItemRecommendedAppBlock.friendsAvatars) && Intrinsics.areEqual(this.appCover, newsfeedItemRecommendedAppBlock.appCover);
            }
            return false;
        }

        @NotNull
        public final AppsApp getApp() {
            return this.app;
        }

        @Nullable
        public final List<BaseImage> getAppCover() {
            return this.appCover;
        }

        @NotNull
        public final String getButtonText() {
            return this.buttonText;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final List<List<BaseImage>> getFriendsAvatars() {
            return this.friendsAvatars;
        }

        @Nullable
        public final String getFriendsPlayingText() {
            return this.friendsPlayingText;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((((((((this.app.hashCode() * 31) + this.title.hashCode()) * 31) + this.buttonText.hashCode()) * 31) + this.type.hashCode()) * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.trackCode;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.friendsPlayingText;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            List<List<BaseImage>> list = this.friendsAvatars;
            int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
            List<BaseImage> list2 = this.appCover;
            return hashCode4 + (list2 != null ? list2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            AppsApp appsApp = this.app;
            String str = this.title;
            String str2 = this.buttonText;
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str3 = this.trackCode;
            String str4 = this.friendsPlayingText;
            List<List<BaseImage>> list = this.friendsAvatars;
            List<BaseImage> list2 = this.appCover;
            return "NewsfeedItemRecommendedAppBlock(app=" + appsApp + ", title=" + str + ", buttonText=" + str2 + ", type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", trackCode=" + str3 + ", friendsPlayingText=" + str4 + ", friendsAvatars=" + list + ", appCover=" + list2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public NewsfeedItemRecommendedAppBlock(@NotNull AppsApp app, @NotNull String title, @NotNull String buttonText, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable List<? extends List<BaseImage>> list, @Nullable List<BaseImage> list2) {
            super(null);
            Intrinsics.checkNotNullParameter(app, "app");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(buttonText, "buttonText");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.app = app;
            this.title = title;
            this.buttonText = buttonText;
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.trackCode = str;
            this.friendsPlayingText = str2;
            this.friendsAvatars = list;
            this.appCover = list2;
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0011J\u000f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J\t\u0010#\u001a\u00020\nHÆ\u0003J\t\u0010$\u001a\u00020\fHÆ\u0003J\t\u0010%\u001a\u00020\u000eHÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\bHÆ\u0003Ja\u0010(\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0006HÖ\u0001J\t\u0010.\u001a\u00020\bHÖ\u0001R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u000f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006/"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecommendedChatsBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "items", "", "Lcom/vk/sdk/api/messages/dto/MessagesChatSuggestion;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "trackCode", "", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "nextFrom", "(Ljava/util/List;ILjava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;)V", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getCount", "()I", "getDate", "getItems", "()Ljava/util/List;", "getNextFrom", "()Ljava/lang/String;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemRecommendedChatsBlock extends NewsfeedNewsfeedItem {
        @SerializedName("button")
        @NotNull
        private final BaseLinkButton button;
        @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
        private final int count;
        @SerializedName("date")
        private final int date;
        @SerializedName("items")
        @NotNull
        private final List<MessagesChatSuggestion> items;
        @SerializedName("next_from")
        @Nullable
        private final String nextFrom;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("track_code")
        @NotNull
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemRecommendedChatsBlock(List list, int i9, String str, BaseLinkButton baseLinkButton, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, i9, str, baseLinkButton, newsfeedNewsfeedItemType, userId, i10, (i11 & 128) != 0 ? null : str2);
        }

        @NotNull
        public final List<MessagesChatSuggestion> component1() {
            return this.items;
        }

        public final int component2() {
            return this.count;
        }

        @NotNull
        public final String component3() {
            return this.trackCode;
        }

        @NotNull
        public final BaseLinkButton component4() {
            return this.button;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component5() {
            return this.type;
        }

        @NotNull
        public final UserId component6() {
            return this.sourceId;
        }

        public final int component7() {
            return this.date;
        }

        @Nullable
        public final String component8() {
            return this.nextFrom;
        }

        @NotNull
        public final NewsfeedItemRecommendedChatsBlock copy(@NotNull List<MessagesChatSuggestion> items, int i9, @NotNull String trackCode, @NotNull BaseLinkButton button, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i10, @Nullable String str) {
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            Intrinsics.checkNotNullParameter(button, "button");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemRecommendedChatsBlock(items, i9, trackCode, button, type, sourceId, i10, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemRecommendedChatsBlock) {
                NewsfeedItemRecommendedChatsBlock newsfeedItemRecommendedChatsBlock = (NewsfeedItemRecommendedChatsBlock) obj;
                return Intrinsics.areEqual(this.items, newsfeedItemRecommendedChatsBlock.items) && this.count == newsfeedItemRecommendedChatsBlock.count && Intrinsics.areEqual(this.trackCode, newsfeedItemRecommendedChatsBlock.trackCode) && Intrinsics.areEqual(this.button, newsfeedItemRecommendedChatsBlock.button) && this.type == newsfeedItemRecommendedChatsBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemRecommendedChatsBlock.sourceId) && this.date == newsfeedItemRecommendedChatsBlock.date && Intrinsics.areEqual(this.nextFrom, newsfeedItemRecommendedChatsBlock.nextFrom);
            }
            return false;
        }

        @NotNull
        public final BaseLinkButton getButton() {
            return this.button;
        }

        public final int getCount() {
            return this.count;
        }

        public final int getDate() {
            return this.date;
        }

        @NotNull
        public final List<MessagesChatSuggestion> getItems() {
            return this.items;
        }

        @Nullable
        public final String getNextFrom() {
            return this.nextFrom;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((((((((((this.items.hashCode() * 31) + this.count) * 31) + this.trackCode.hashCode()) * 31) + this.button.hashCode()) * 31) + this.type.hashCode()) * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.nextFrom;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        @NotNull
        public String toString() {
            List<MessagesChatSuggestion> list = this.items;
            int i9 = this.count;
            String str = this.trackCode;
            BaseLinkButton baseLinkButton = this.button;
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i10 = this.date;
            String str2 = this.nextFrom;
            return "NewsfeedItemRecommendedChatsBlock(items=" + list + ", count=" + i9 + ", trackCode=" + str + ", button=" + baseLinkButton + ", type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i10 + ", nextFrom=" + str2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemRecommendedChatsBlock(@NotNull List<MessagesChatSuggestion> items, int i9, @NotNull String trackCode, @NotNull BaseLinkButton button, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i10, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            Intrinsics.checkNotNullParameter(button, "button");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.items = items;
            this.count = i9;
            this.trackCode = trackCode;
            this.button = button;
            this.type = type;
            this.sourceId = sourceId;
            this.date = i10;
            this.nextFrom = str;
        }
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0012J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u000f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010$\u001a\u00020\bHÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003J\t\u0010'\u001a\u00020\rHÆ\u0003J\t\u0010(\u001a\u00020\u000fHÆ\u0003J\t\u0010)\u001a\u00020\bHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jk\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020\bHÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0010\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001bR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001bR\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u00062"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemRecommendedGroupsBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "title", "", "items", "", "Lcom/vk/sdk/api/groups/dto/GroupsSuggestion;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "trackCode", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "nextFrom", "(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;)V", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getCount", "()I", "getDate", "getItems", "()Ljava/util/List;", "getNextFrom", "()Ljava/lang/String;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemRecommendedGroupsBlock extends NewsfeedNewsfeedItem {
        @SerializedName("button")
        @NotNull
        private final BaseLinkButton button;
        @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
        private final int count;
        @SerializedName("date")
        private final int date;
        @SerializedName("items")
        @NotNull
        private final List<GroupsSuggestion> items;
        @SerializedName("next_from")
        @Nullable
        private final String nextFrom;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("title")
        @NotNull
        private final String title;
        @SerializedName("track_code")
        @NotNull
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemRecommendedGroupsBlock(String str, List list, int i9, String str2, BaseLinkButton baseLinkButton, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i10, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, i9, str2, baseLinkButton, newsfeedNewsfeedItemType, userId, i10, (i11 & 256) != 0 ? null : str3);
        }

        @NotNull
        public final String component1() {
            return this.title;
        }

        @NotNull
        public final List<GroupsSuggestion> component2() {
            return this.items;
        }

        public final int component3() {
            return this.count;
        }

        @NotNull
        public final String component4() {
            return this.trackCode;
        }

        @NotNull
        public final BaseLinkButton component5() {
            return this.button;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component6() {
            return this.type;
        }

        @NotNull
        public final UserId component7() {
            return this.sourceId;
        }

        public final int component8() {
            return this.date;
        }

        @Nullable
        public final String component9() {
            return this.nextFrom;
        }

        @NotNull
        public final NewsfeedItemRecommendedGroupsBlock copy(@NotNull String title, @NotNull List<GroupsSuggestion> items, int i9, @NotNull String trackCode, @NotNull BaseLinkButton button, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i10, @Nullable String str) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            Intrinsics.checkNotNullParameter(button, "button");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemRecommendedGroupsBlock(title, items, i9, trackCode, button, type, sourceId, i10, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemRecommendedGroupsBlock) {
                NewsfeedItemRecommendedGroupsBlock newsfeedItemRecommendedGroupsBlock = (NewsfeedItemRecommendedGroupsBlock) obj;
                return Intrinsics.areEqual(this.title, newsfeedItemRecommendedGroupsBlock.title) && Intrinsics.areEqual(this.items, newsfeedItemRecommendedGroupsBlock.items) && this.count == newsfeedItemRecommendedGroupsBlock.count && Intrinsics.areEqual(this.trackCode, newsfeedItemRecommendedGroupsBlock.trackCode) && Intrinsics.areEqual(this.button, newsfeedItemRecommendedGroupsBlock.button) && this.type == newsfeedItemRecommendedGroupsBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemRecommendedGroupsBlock.sourceId) && this.date == newsfeedItemRecommendedGroupsBlock.date && Intrinsics.areEqual(this.nextFrom, newsfeedItemRecommendedGroupsBlock.nextFrom);
            }
            return false;
        }

        @NotNull
        public final BaseLinkButton getButton() {
            return this.button;
        }

        public final int getCount() {
            return this.count;
        }

        public final int getDate() {
            return this.date;
        }

        @NotNull
        public final List<GroupsSuggestion> getItems() {
            return this.items;
        }

        @Nullable
        public final String getNextFrom() {
            return this.nextFrom;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        @NotNull
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((((((((((((this.title.hashCode() * 31) + this.items.hashCode()) * 31) + this.count) * 31) + this.trackCode.hashCode()) * 31) + this.button.hashCode()) * 31) + this.type.hashCode()) * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.nextFrom;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        @NotNull
        public String toString() {
            String str = this.title;
            List<GroupsSuggestion> list = this.items;
            int i9 = this.count;
            String str2 = this.trackCode;
            BaseLinkButton baseLinkButton = this.button;
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i10 = this.date;
            String str3 = this.nextFrom;
            return "NewsfeedItemRecommendedGroupsBlock(title=" + str + ", items=" + list + ", count=" + i9 + ", trackCode=" + str2 + ", button=" + baseLinkButton + ", type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i10 + ", nextFrom=" + str3 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemRecommendedGroupsBlock(@NotNull String title, @NotNull List<GroupsSuggestion> items, int i9, @NotNull String trackCode, @NotNull BaseLinkButton button, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i10, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            Intrinsics.checkNotNullParameter(button, "button");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.title = title;
            this.items = items;
            this.count = i9;
            this.trackCode = trackCode;
            this.button = button;
            this.type = type;
            this.sourceId = sourceId;
            this.date = i10;
            this.nextFrom = str;
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0001,BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u000eHÆ\u0003J]\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0007HÖ\u0001J\t\u0010+\u001a\u00020\u000eHÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006-"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemStoriesBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "blockType", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemStoriesBlock$BlockType;", "stories", "", "Lcom/vk/sdk/api/stories/dto/StoriesStory;", "title", "", "trackCode", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemStoriesBlock$BlockType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getBlockType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemStoriesBlock$BlockType;", "getDate", "()I", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getStories", "()Ljava/util/List;", "getTitle", "()Ljava/lang/String;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "toString", "BlockType", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemStoriesBlock extends NewsfeedNewsfeedItem {
        @SerializedName("block_type")
        @Nullable
        private final BlockType blockType;
        @SerializedName("date")
        private final int date;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("stories")
        @Nullable
        private final List<StoriesStory> stories;
        @SerializedName("title")
        @Nullable
        private final String title;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemStoriesBlock$BlockType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "LOCAL", "REMOTE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum BlockType {
            LOCAL("local"),
            REMOTE("remote");
            
            @NotNull
            private final String value;

            BlockType(String str) {
                this.value = str;
            }

            @NotNull
            public final String getValue() {
                return this.value;
            }
        }

        public /* synthetic */ NewsfeedItemStoriesBlock(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, BlockType blockType, List list, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : blockType, (i10 & 16) != 0 ? null : list, (i10 & 32) != 0 ? null : str, (i10 & 64) != 0 ? null : str2);
        }

        public static /* synthetic */ NewsfeedItemStoriesBlock copy$default(NewsfeedItemStoriesBlock newsfeedItemStoriesBlock, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, BlockType blockType, List list, String str, String str2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemStoriesBlock.type;
            }
            if ((i10 & 2) != 0) {
                userId = newsfeedItemStoriesBlock.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 4) != 0) {
                i9 = newsfeedItemStoriesBlock.date;
            }
            int i11 = i9;
            if ((i10 & 8) != 0) {
                blockType = newsfeedItemStoriesBlock.blockType;
            }
            BlockType blockType2 = blockType;
            List<StoriesStory> list2 = list;
            if ((i10 & 16) != 0) {
                list2 = newsfeedItemStoriesBlock.stories;
            }
            List list3 = list2;
            if ((i10 & 32) != 0) {
                str = newsfeedItemStoriesBlock.title;
            }
            String str3 = str;
            if ((i10 & 64) != 0) {
                str2 = newsfeedItemStoriesBlock.trackCode;
            }
            return newsfeedItemStoriesBlock.copy(newsfeedNewsfeedItemType, userId2, i11, blockType2, list3, str3, str2);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final BlockType component4() {
            return this.blockType;
        }

        @Nullable
        public final List<StoriesStory> component5() {
            return this.stories;
        }

        @Nullable
        public final String component6() {
            return this.title;
        }

        @Nullable
        public final String component7() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedItemStoriesBlock copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable BlockType blockType, @Nullable List<StoriesStory> list, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemStoriesBlock(type, sourceId, i9, blockType, list, str, str2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemStoriesBlock) {
                NewsfeedItemStoriesBlock newsfeedItemStoriesBlock = (NewsfeedItemStoriesBlock) obj;
                return this.type == newsfeedItemStoriesBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemStoriesBlock.sourceId) && this.date == newsfeedItemStoriesBlock.date && this.blockType == newsfeedItemStoriesBlock.blockType && Intrinsics.areEqual(this.stories, newsfeedItemStoriesBlock.stories) && Intrinsics.areEqual(this.title, newsfeedItemStoriesBlock.title) && Intrinsics.areEqual(this.trackCode, newsfeedItemStoriesBlock.trackCode);
            }
            return false;
        }

        @Nullable
        public final BlockType getBlockType() {
            return this.blockType;
        }

        public final int getDate() {
            return this.date;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final List<StoriesStory> getStories() {
            return this.stories;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            BlockType blockType = this.blockType;
            int hashCode2 = (hashCode + (blockType == null ? 0 : blockType.hashCode())) * 31;
            List<StoriesStory> list = this.stories;
            int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
            String str = this.title;
            int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.trackCode;
            return hashCode4 + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            BlockType blockType = this.blockType;
            List<StoriesStory> list = this.stories;
            String str = this.title;
            String str2 = this.trackCode;
            return "NewsfeedItemStoriesBlock(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", blockType=" + blockType + ", stories=" + list + ", title=" + str + ", trackCode=" + str2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemStoriesBlock(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable BlockType blockType, @Nullable List<StoriesStory> list, @Nullable String str, @Nullable String str2) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.blockType = blockType;
            this.stories = list;
            this.title = str;
            this.trackCode = str2;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u000bHÆ\u0003J=\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\tHÖ\u0001J\t\u0010\"\u001a\u00020\u000bHÖ\u0001R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemTextliveBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "textliveTextpostBlock", "Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "trackCode", "", "(Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;)V", "getDate", "()I", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTextliveTextpostBlock", "()Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock;", "getTrackCode", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemTextliveBlock extends NewsfeedNewsfeedItem {
        @SerializedName("date")
        private final int date;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("textlive_textpost_block")
        @NotNull
        private final TextlivesTextliveTextpostBlock textliveTextpostBlock;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemTextliveBlock(TextlivesTextliveTextpostBlock textlivesTextliveTextpostBlock, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(textlivesTextliveTextpostBlock, newsfeedNewsfeedItemType, userId, i9, (i10 & 16) != 0 ? null : str);
        }

        public static /* synthetic */ NewsfeedItemTextliveBlock copy$default(NewsfeedItemTextliveBlock newsfeedItemTextliveBlock, TextlivesTextliveTextpostBlock textlivesTextliveTextpostBlock, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                textlivesTextliveTextpostBlock = newsfeedItemTextliveBlock.textliveTextpostBlock;
            }
            if ((i10 & 2) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemTextliveBlock.type;
            }
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType2 = newsfeedNewsfeedItemType;
            if ((i10 & 4) != 0) {
                userId = newsfeedItemTextliveBlock.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 8) != 0) {
                i9 = newsfeedItemTextliveBlock.date;
            }
            int i11 = i9;
            if ((i10 & 16) != 0) {
                str = newsfeedItemTextliveBlock.trackCode;
            }
            return newsfeedItemTextliveBlock.copy(textlivesTextliveTextpostBlock, newsfeedNewsfeedItemType2, userId2, i11, str);
        }

        @NotNull
        public final TextlivesTextliveTextpostBlock component1() {
            return this.textliveTextpostBlock;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component2() {
            return this.type;
        }

        @NotNull
        public final UserId component3() {
            return this.sourceId;
        }

        public final int component4() {
            return this.date;
        }

        @Nullable
        public final String component5() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedItemTextliveBlock copy(@NotNull TextlivesTextliveTextpostBlock textliveTextpostBlock, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str) {
            Intrinsics.checkNotNullParameter(textliveTextpostBlock, "textliveTextpostBlock");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemTextliveBlock(textliveTextpostBlock, type, sourceId, i9, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemTextliveBlock) {
                NewsfeedItemTextliveBlock newsfeedItemTextliveBlock = (NewsfeedItemTextliveBlock) obj;
                return Intrinsics.areEqual(this.textliveTextpostBlock, newsfeedItemTextliveBlock.textliveTextpostBlock) && this.type == newsfeedItemTextliveBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemTextliveBlock.sourceId) && this.date == newsfeedItemTextliveBlock.date && Intrinsics.areEqual(this.trackCode, newsfeedItemTextliveBlock.trackCode);
            }
            return false;
        }

        public final int getDate() {
            return this.date;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final TextlivesTextliveTextpostBlock getTextliveTextpostBlock() {
            return this.textliveTextpostBlock;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((((this.textliveTextpostBlock.hashCode() * 31) + this.type.hashCode()) * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.trackCode;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        @NotNull
        public String toString() {
            TextlivesTextliveTextpostBlock textlivesTextliveTextpostBlock = this.textliveTextpostBlock;
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.trackCode;
            return "NewsfeedItemTextliveBlock(textliveTextpostBlock=" + textlivesTextliveTextpostBlock + ", type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", trackCode=" + str + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemTextliveBlock(@NotNull TextlivesTextliveTextpostBlock textliveTextpostBlock, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(textliveTextpostBlock, "textliveTextpostBlock");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.textliveTextpostBlock = textliveTextpostBlock;
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.trackCode = str;
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0007HÆ\u0003J\t\u0010 \u001a\u00020\tHÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000eHÆ\u0003JS\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemTopic;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", ShareConstants.RESULT_POST_ID, "", ViewHierarchyConstants.TEXT_KEY, "", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "comments", "Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "(ILjava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/base/dto/BaseCommentsInfo;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;)V", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "getDate", "()I", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getPostId", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getText", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemTopic extends NewsfeedNewsfeedItem {
        @SerializedName("comments")
        @Nullable
        private final BaseCommentsInfo comments;
        @SerializedName("date")
        private final int date;
        @SerializedName("likes")
        @Nullable
        private final BaseLikesInfo likes;
        @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
        private final int postId;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName(ViewHierarchyConstants.TEXT_KEY)
        @NotNull
        private final String text;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemTopic(int i9, String str, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i10, BaseCommentsInfo baseCommentsInfo, BaseLikesInfo baseLikesInfo, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(i9, str, newsfeedNewsfeedItemType, userId, i10, (i11 & 32) != 0 ? null : baseCommentsInfo, (i11 & 64) != 0 ? null : baseLikesInfo);
        }

        public static /* synthetic */ NewsfeedItemTopic copy$default(NewsfeedItemTopic newsfeedItemTopic, int i9, String str, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i10, BaseCommentsInfo baseCommentsInfo, BaseLikesInfo baseLikesInfo, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = newsfeedItemTopic.postId;
            }
            if ((i11 & 2) != 0) {
                str = newsfeedItemTopic.text;
            }
            String str2 = str;
            if ((i11 & 4) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemTopic.type;
            }
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType2 = newsfeedNewsfeedItemType;
            if ((i11 & 8) != 0) {
                userId = newsfeedItemTopic.sourceId;
            }
            UserId userId2 = userId;
            if ((i11 & 16) != 0) {
                i10 = newsfeedItemTopic.date;
            }
            int i12 = i10;
            if ((i11 & 32) != 0) {
                baseCommentsInfo = newsfeedItemTopic.comments;
            }
            BaseCommentsInfo baseCommentsInfo2 = baseCommentsInfo;
            if ((i11 & 64) != 0) {
                baseLikesInfo = newsfeedItemTopic.likes;
            }
            return newsfeedItemTopic.copy(i9, str2, newsfeedNewsfeedItemType2, userId2, i12, baseCommentsInfo2, baseLikesInfo);
        }

        public final int component1() {
            return this.postId;
        }

        @NotNull
        public final String component2() {
            return this.text;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component3() {
            return this.type;
        }

        @NotNull
        public final UserId component4() {
            return this.sourceId;
        }

        public final int component5() {
            return this.date;
        }

        @Nullable
        public final BaseCommentsInfo component6() {
            return this.comments;
        }

        @Nullable
        public final BaseLikesInfo component7() {
            return this.likes;
        }

        @NotNull
        public final NewsfeedItemTopic copy(int i9, @NotNull String text, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i10, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable BaseLikesInfo baseLikesInfo) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemTopic(i9, text, type, sourceId, i10, baseCommentsInfo, baseLikesInfo);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemTopic) {
                NewsfeedItemTopic newsfeedItemTopic = (NewsfeedItemTopic) obj;
                return this.postId == newsfeedItemTopic.postId && Intrinsics.areEqual(this.text, newsfeedItemTopic.text) && this.type == newsfeedItemTopic.type && Intrinsics.areEqual(this.sourceId, newsfeedItemTopic.sourceId) && this.date == newsfeedItemTopic.date && Intrinsics.areEqual(this.comments, newsfeedItemTopic.comments) && Intrinsics.areEqual(this.likes, newsfeedItemTopic.likes);
            }
            return false;
        }

        @Nullable
        public final BaseCommentsInfo getComments() {
            return this.comments;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final BaseLikesInfo getLikes() {
            return this.likes;
        }

        public final int getPostId() {
            return this.postId;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final String getText() {
            return this.text;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((((((this.postId * 31) + this.text.hashCode()) * 31) + this.type.hashCode()) * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            BaseCommentsInfo baseCommentsInfo = this.comments;
            int hashCode2 = (hashCode + (baseCommentsInfo == null ? 0 : baseCommentsInfo.hashCode())) * 31;
            BaseLikesInfo baseLikesInfo = this.likes;
            return hashCode2 + (baseLikesInfo != null ? baseLikesInfo.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            int i9 = this.postId;
            String str = this.text;
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i10 = this.date;
            BaseCommentsInfo baseCommentsInfo = this.comments;
            BaseLikesInfo baseLikesInfo = this.likes;
            return "NewsfeedItemTopic(postId=" + i9 + ", text=" + str + ", type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i10 + ", comments=" + baseCommentsInfo + ", likes=" + baseLikesInfo + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemTopic(int i9, @NotNull String text, @NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i10, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable BaseLikesInfo baseLikesInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.postId = i9;
            this.text = text;
            this.type = type;
            this.sourceId = sourceId;
            this.date = i10;
            this.comments = baseCommentsInfo;
            this.likes = baseLikesInfo;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\rJD\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006%"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemVideo;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemVideoVideo;", "carouselOffset", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemVideoVideo;Ljava/lang/Integer;)V", "getCarouselOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "()I", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "getVideo", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemVideoVideo;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemVideoVideo;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemVideo;", "equals", "", "other", "", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemVideo extends NewsfeedNewsfeedItem {
        @SerializedName("carousel_offset")
        @Nullable
        private final Integer carouselOffset;
        @SerializedName("date")
        private final int date;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;
        @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
        @Nullable
        private final NewsfeedItemVideoVideo video;

        public /* synthetic */ NewsfeedItemVideo(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemVideoVideo newsfeedItemVideoVideo, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : newsfeedItemVideoVideo, (i10 & 16) != 0 ? null : num);
        }

        public static /* synthetic */ NewsfeedItemVideo copy$default(NewsfeedItemVideo newsfeedItemVideo, NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemVideoVideo newsfeedItemVideoVideo, Integer num, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                newsfeedNewsfeedItemType = newsfeedItemVideo.type;
            }
            if ((i10 & 2) != 0) {
                userId = newsfeedItemVideo.sourceId;
            }
            UserId userId2 = userId;
            if ((i10 & 4) != 0) {
                i9 = newsfeedItemVideo.date;
            }
            int i11 = i9;
            if ((i10 & 8) != 0) {
                newsfeedItemVideoVideo = newsfeedItemVideo.video;
            }
            NewsfeedItemVideoVideo newsfeedItemVideoVideo2 = newsfeedItemVideoVideo;
            if ((i10 & 16) != 0) {
                num = newsfeedItemVideo.carouselOffset;
            }
            return newsfeedItemVideo.copy(newsfeedNewsfeedItemType, userId2, i11, newsfeedItemVideoVideo2, num);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final NewsfeedItemVideoVideo component4() {
            return this.video;
        }

        @Nullable
        public final Integer component5() {
            return this.carouselOffset;
        }

        @NotNull
        public final NewsfeedItemVideo copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemVideoVideo newsfeedItemVideoVideo, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemVideo(type, sourceId, i9, newsfeedItemVideoVideo, num);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemVideo) {
                NewsfeedItemVideo newsfeedItemVideo = (NewsfeedItemVideo) obj;
                return this.type == newsfeedItemVideo.type && Intrinsics.areEqual(this.sourceId, newsfeedItemVideo.sourceId) && this.date == newsfeedItemVideo.date && Intrinsics.areEqual(this.video, newsfeedItemVideo.video) && Intrinsics.areEqual(this.carouselOffset, newsfeedItemVideo.carouselOffset);
            }
            return false;
        }

        @Nullable
        public final Integer getCarouselOffset() {
            return this.carouselOffset;
        }

        public final int getDate() {
            return this.date;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        @Nullable
        public final NewsfeedItemVideoVideo getVideo() {
            return this.video;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            NewsfeedItemVideoVideo newsfeedItemVideoVideo = this.video;
            int hashCode2 = (hashCode + (newsfeedItemVideoVideo == null ? 0 : newsfeedItemVideoVideo.hashCode())) * 31;
            Integer num = this.carouselOffset;
            return hashCode2 + (num != null ? num.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            NewsfeedItemVideoVideo newsfeedItemVideoVideo = this.video;
            Integer num = this.carouselOffset;
            return "NewsfeedItemVideo(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", video=" + newsfeedItemVideoVideo + ", carouselOffset=" + num + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemVideo(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemVideoVideo newsfeedItemVideoVideo, @Nullable Integer num) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.video = newsfeedItemVideoVideo;
            this.carouselOffset = num;
        }
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010¢\u0006\u0002\u0010\u0012J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0007HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003Ju\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020\u0007HÖ\u0001J\t\u00101\u001a\u00020\tHÖ\u0001R\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0018R\u0018\u0010\f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u00062"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemVideoPostcardBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "title", "", "description", "privacyText", "trackCode", BaseConfig.ITEM, "Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "buttons", "", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/video/dto/VideoVideoFull;Ljava/util/List;)V", "getButtons", "()Ljava/util/List;", "getDate", "()I", "getDescription", "()Ljava/lang/String;", "getItem", "()Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "getPrivacyText", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemVideoPostcardBlock extends NewsfeedNewsfeedItem {
        @SerializedName("buttons")
        @Nullable
        private final List<BaseLinkButton> buttons;
        @SerializedName("date")
        private final int date;
        @SerializedName("description")
        @Nullable
        private final String description;
        @SerializedName(BaseConfig.ITEM)
        @Nullable
        private final VideoVideoFull item;
        @SerializedName("privacy_text")
        @Nullable
        private final String privacyText;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("title")
        @Nullable
        private final String title;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemVideoPostcardBlock(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, String str2, String str3, String str4, VideoVideoFull videoVideoFull, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : str3, (i10 & 64) != 0 ? null : str4, (i10 & 128) != 0 ? null : videoVideoFull, (i10 & 256) != 0 ? null : list);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final String component4() {
            return this.title;
        }

        @Nullable
        public final String component5() {
            return this.description;
        }

        @Nullable
        public final String component6() {
            return this.privacyText;
        }

        @Nullable
        public final String component7() {
            return this.trackCode;
        }

        @Nullable
        public final VideoVideoFull component8() {
            return this.item;
        }

        @Nullable
        public final List<BaseLinkButton> component9() {
            return this.buttons;
        }

        @NotNull
        public final NewsfeedItemVideoPostcardBlock copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable VideoVideoFull videoVideoFull, @Nullable List<BaseLinkButton> list) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemVideoPostcardBlock(type, sourceId, i9, str, str2, str3, str4, videoVideoFull, list);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemVideoPostcardBlock) {
                NewsfeedItemVideoPostcardBlock newsfeedItemVideoPostcardBlock = (NewsfeedItemVideoPostcardBlock) obj;
                return this.type == newsfeedItemVideoPostcardBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemVideoPostcardBlock.sourceId) && this.date == newsfeedItemVideoPostcardBlock.date && Intrinsics.areEqual(this.title, newsfeedItemVideoPostcardBlock.title) && Intrinsics.areEqual(this.description, newsfeedItemVideoPostcardBlock.description) && Intrinsics.areEqual(this.privacyText, newsfeedItemVideoPostcardBlock.privacyText) && Intrinsics.areEqual(this.trackCode, newsfeedItemVideoPostcardBlock.trackCode) && Intrinsics.areEqual(this.item, newsfeedItemVideoPostcardBlock.item) && Intrinsics.areEqual(this.buttons, newsfeedItemVideoPostcardBlock.buttons);
            }
            return false;
        }

        @Nullable
        public final List<BaseLinkButton> getButtons() {
            return this.buttons;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final String getDescription() {
            return this.description;
        }

        @Nullable
        public final VideoVideoFull getItem() {
            return this.item;
        }

        @Nullable
        public final String getPrivacyText() {
            return this.privacyText;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.title;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.description;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.privacyText;
            int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.trackCode;
            int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            VideoVideoFull videoVideoFull = this.item;
            int hashCode6 = (hashCode5 + (videoVideoFull == null ? 0 : videoVideoFull.hashCode())) * 31;
            List<BaseLinkButton> list = this.buttons;
            return hashCode6 + (list != null ? list.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.title;
            String str2 = this.description;
            String str3 = this.privacyText;
            String str4 = this.trackCode;
            VideoVideoFull videoVideoFull = this.item;
            List<BaseLinkButton> list = this.buttons;
            return "NewsfeedItemVideoPostcardBlock(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", title=" + str + ", description=" + str2 + ", privacyText=" + str3 + ", trackCode=" + str4 + ", item=" + videoVideoFull + ", buttons=" + list + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemVideoPostcardBlock(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable VideoVideoFull videoVideoFull, @Nullable List<BaseLinkButton> list) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.title = str;
            this.description = str2;
            this.privacyText = str3;
            this.trackCode = str4;
            this.item = videoVideoFull;
            this.buttons = list;
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0010HÆ\u0003Ji\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0007HÖ\u0001J\t\u0010.\u001a\u00020\tHÖ\u0001R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006/"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemVideosForYouBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "title", "", "trackCode", "items", "", "Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "nextFrom", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)V", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getDate", "()I", "getItems", "()Ljava/util/List;", "getNextFrom", "()Ljava/lang/String;", "getSourceId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemVideosForYouBlock extends NewsfeedNewsfeedItem {
        @SerializedName("button")
        @Nullable
        private final BaseLinkButton button;
        @SerializedName("date")
        private final int date;
        @SerializedName("items")
        @Nullable
        private final List<VideoVideoFull> items;
        @SerializedName("next_from")
        @Nullable
        private final String nextFrom;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName("title")
        @Nullable
        private final String title;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;

        public /* synthetic */ NewsfeedItemVideosForYouBlock(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, String str, String str2, List list, String str3, BaseLinkButton baseLinkButton, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : list, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : baseLinkButton);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final String component4() {
            return this.title;
        }

        @Nullable
        public final String component5() {
            return this.trackCode;
        }

        @Nullable
        public final List<VideoVideoFull> component6() {
            return this.items;
        }

        @Nullable
        public final String component7() {
            return this.nextFrom;
        }

        @Nullable
        public final BaseLinkButton component8() {
            return this.button;
        }

        @NotNull
        public final NewsfeedItemVideosForYouBlock copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable List<VideoVideoFull> list, @Nullable String str3, @Nullable BaseLinkButton baseLinkButton) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemVideosForYouBlock(type, sourceId, i9, str, str2, list, str3, baseLinkButton);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemVideosForYouBlock) {
                NewsfeedItemVideosForYouBlock newsfeedItemVideosForYouBlock = (NewsfeedItemVideosForYouBlock) obj;
                return this.type == newsfeedItemVideosForYouBlock.type && Intrinsics.areEqual(this.sourceId, newsfeedItemVideosForYouBlock.sourceId) && this.date == newsfeedItemVideosForYouBlock.date && Intrinsics.areEqual(this.title, newsfeedItemVideosForYouBlock.title) && Intrinsics.areEqual(this.trackCode, newsfeedItemVideosForYouBlock.trackCode) && Intrinsics.areEqual(this.items, newsfeedItemVideosForYouBlock.items) && Intrinsics.areEqual(this.nextFrom, newsfeedItemVideosForYouBlock.nextFrom) && Intrinsics.areEqual(this.button, newsfeedItemVideosForYouBlock.button);
            }
            return false;
        }

        @Nullable
        public final BaseLinkButton getButton() {
            return this.button;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final List<VideoVideoFull> getItems() {
            return this.items;
        }

        @Nullable
        public final String getNextFrom() {
            return this.nextFrom;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            String str = this.title;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.trackCode;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            List<VideoVideoFull> list = this.items;
            int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
            String str3 = this.nextFrom;
            int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
            BaseLinkButton baseLinkButton = this.button;
            return hashCode5 + (baseLinkButton != null ? baseLinkButton.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            String str = this.title;
            String str2 = this.trackCode;
            List<VideoVideoFull> list = this.items;
            String str3 = this.nextFrom;
            BaseLinkButton baseLinkButton = this.button;
            return "NewsfeedItemVideosForYouBlock(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", title=" + str + ", trackCode=" + str2 + ", items=" + list + ", nextFrom=" + str3 + ", button=" + baseLinkButton + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemVideosForYouBlock(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable String str, @Nullable String str2, @Nullable List<VideoVideoFull> list, @Nullable String str3, @Nullable BaseLinkButton baseLinkButton) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.title = str;
            this.trackCode = str2;
            this.items = list;
            this.nextFrom = str3;
            this.button = baseLinkButton;
        }
    }

    @Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bb\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002¡\u0001BÇ\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\f\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u00101\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\f\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u000103\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u000105\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000107\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010;¢\u0006\u0002\u0010<J\t\u0010u\u001a\u00020\u0003HÆ\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u0010\u0010x\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010FJ\u000b\u0010y\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u0010\u0010|\u001a\u0004\u0018\u00010\u001cHÆ\u0003¢\u0006\u0002\u0010jJ\u000b\u0010}\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\u0010\u0010\u007f\u001a\u0004\u0018\u00010!HÆ\u0003¢\u0006\u0002\u0010[J\n\u0010\u0080\u0001\u001a\u00020\u0005HÆ\u0003J\u0012\u0010\u0081\u0001\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\fHÆ\u0003J\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010%HÆ\u0003J\u0011\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010FJ\f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010)HÆ\u0003J\u0011\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010FJ\u0011\u0010\u0087\u0001\u001a\u0004\u0018\u00010!HÆ\u0003¢\u0006\u0002\u0010[J\u0011\u0010\u0088\u0001\u001a\u0004\u0018\u00010!HÆ\u0003¢\u0006\u0002\u0010[J\f\u0010\u0089\u0001\u001a\u0004\u0018\u00010.HÆ\u0003J\f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0007HÆ\u0003J\u0011\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010FJ\u0012\u0010\u008d\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\fHÆ\u0003J\f\u0010\u008e\u0001\u001a\u0004\u0018\u000103HÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u000105HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u000107HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010;HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010FJ\u0012\u0010\u0096\u0001\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003JØ\u0003\u0010\u009a\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\f2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010+\u001a\u0004\u0018\u00010!2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010!2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00101\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\f2\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\n\b\u0002\u00104\u001a\u0004\u0018\u0001052\n\b\u0002\u00106\u001a\u0004\u0018\u0001072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010;HÆ\u0001¢\u0006\u0003\u0010\u009b\u0001J\u0016\u0010\u009c\u0001\u001a\u00020!2\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u0001HÖ\u0003J\n\u0010\u009f\u0001\u001a\u00020\u0007HÖ\u0001J\n\u0010 \u0001\u001a\u00020\u001eHÖ\u0001R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010BR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010BR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010BR\u001a\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010G\u001a\u0004\bE\u0010FR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010@R\u0018\u0010$\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010LR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u0010NR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010PR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010RR\u001a\u0010&\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010G\u001a\u0004\bS\u0010FR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010UR\u0018\u0010'\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u0010NR\u0018\u0010(\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u0010XR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u0010>R\u001a\u0010*\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010G\u001a\u0004\bZ\u0010FR\u001a\u0010+\u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\\\u001a\u0004\b+\u0010[R\u001a\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\\\u001a\u0004\b \u0010[R\u001a\u0010,\u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\\\u001a\u0004\b,\u0010[R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010G\u001a\u0004\b\u0015\u0010FR\u0018\u0010-\u001a\u0004\u0018\u00010.8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b]\u0010^R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b_\u0010BR\u0018\u0010/\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b`\u0010NR\u001e\u00101\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\ba\u0010@R\u001a\u00100\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010G\u001a\u0004\bb\u0010FR\u0018\u00102\u001a\u0004\u0018\u0001038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bc\u0010dR\u0018\u00104\u001a\u0004\u0018\u0001058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u0010fR\u0018\u00106\u001a\u0004\u0018\u0001078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bg\u0010hR\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010k\u001a\u0004\bi\u0010jR\u0018\u00108\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bl\u0010NR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bm\u0010NR\u0018\u00109\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bn\u0010>R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010pR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bq\u0010rR\u0018\u0010:\u001a\u0004\u0018\u00010;8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bs\u0010t¨\u0006¢\u0001"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "sourceId", "Lcom/vk/dto/common/id/UserId;", "date", "", "feedback", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedback;", "carouselOffset", "copyHistory", "", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "canEdit", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "createdBy", "canDelete", "canPin", "donut", "Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;", "isPinned", "comments", "Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "markedAsAds", "topicId", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost$TopicId;", "shortTextRate", "", "hash", "", "accessKey", "isDeleted", "", "attachments", "Lcom/vk/sdk/api/wall/dto/WallWallpostAttachment;", "copyright", "Lcom/vk/sdk/api/wall/dto/WallPostCopyright;", "edited", "fromId", "geo", "Lcom/vk/sdk/api/wall/dto/WallGeo;", "id", "isArchived", "isFavorite", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "ownerId", ShareConstants.RESULT_POST_ID, "parentsStack", "postSource", "Lcom/vk/sdk/api/wall/dto/WallPostSource;", "postType", "Lcom/vk/sdk/api/wall/dto/WallPostType;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "signerId", ViewHierarchyConstants.TEXT_KEY, AdUnitActivity.EXTRA_VIEWS, "Lcom/vk/sdk/api/wall/dto/WallViews;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedback;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost$TopicId;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostCopyright;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallViews;)V", "getAccessKey", "()Ljava/lang/String;", "getAttachments", "()Ljava/util/List;", "getCanDelete", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCanEdit", "getCanPin", "getCarouselOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "getCopyHistory", "getCopyright", "()Lcom/vk/sdk/api/wall/dto/WallPostCopyright;", "getCreatedBy", "()Lcom/vk/dto/common/id/UserId;", "getDate", "()I", "getDonut", "()Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;", "getEdited", "getFeedback", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedback;", "getFromId", "getGeo", "()Lcom/vk/sdk/api/wall/dto/WallGeo;", "getHash", "getId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getMarkedAsAds", "getOwnerId", "getParentsStack", "getPostId", "getPostSource", "()Lcom/vk/sdk/api/wall/dto/WallPostSource;", "getPostType", "()Lcom/vk/sdk/api/wall/dto/WallPostType;", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getShortTextRate", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getSignerId", "getSourceId", "getText", "getTopicId", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost$TopicId;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "getViews", "()Lcom/vk/sdk/api/wall/dto/WallViews;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedback;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost$TopicId;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostCopyright;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallViews;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost;", "equals", "other", "", "hashCode", "toString", "TopicId", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemWallpost extends NewsfeedNewsfeedItem {
        @SerializedName("access_key")
        @Nullable
        private final String accessKey;
        @SerializedName("attachments")
        @Nullable
        private final List<WallWallpostAttachment> attachments;
        @SerializedName("can_delete")
        @Nullable
        private final BaseBoolInt canDelete;
        @SerializedName("can_edit")
        @Nullable
        private final BaseBoolInt canEdit;
        @SerializedName("can_pin")
        @Nullable
        private final BaseBoolInt canPin;
        @SerializedName("carousel_offset")
        @Nullable
        private final Integer carouselOffset;
        @SerializedName("comments")
        @Nullable
        private final BaseCommentsInfo comments;
        @SerializedName("copy_history")
        @Nullable
        private final List<WallWallpostFull> copyHistory;
        @SerializedName("copyright")
        @Nullable
        private final WallPostCopyright copyright;
        @SerializedName("created_by")
        @Nullable
        private final UserId createdBy;
        @SerializedName("date")
        private final int date;
        @SerializedName("donut")
        @Nullable
        private final WallWallpostDonut donut;
        @SerializedName("edited")
        @Nullable
        private final Integer edited;
        @SerializedName("feedback")
        @Nullable
        private final NewsfeedItemWallpostFeedback feedback;
        @SerializedName("from_id")
        @Nullable
        private final UserId fromId;
        @SerializedName("geo")
        @Nullable
        private final WallGeo geo;
        @SerializedName("hash")
        @Nullable
        private final String hash;
        @SerializedName("id")
        @Nullable

        /* renamed from: id  reason: collision with root package name */
        private final Integer f35955id;
        @SerializedName("is_archived")
        @Nullable
        private final Boolean isArchived;
        @SerializedName("is_deleted")
        @Nullable
        private final Boolean isDeleted;
        @SerializedName("is_favorite")
        @Nullable
        private final Boolean isFavorite;
        @SerializedName("is_pinned")
        @Nullable
        private final Integer isPinned;
        @SerializedName("likes")
        @Nullable
        private final BaseLikesInfo likes;
        @SerializedName("marked_as_ads")
        @Nullable
        private final BaseBoolInt markedAsAds;
        @SerializedName("owner_id")
        @Nullable
        private final UserId ownerId;
        @SerializedName("parents_stack")
        @Nullable
        private final List<Integer> parentsStack;
        @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
        @Nullable
        private final Integer postId;
        @SerializedName("post_source")
        @Nullable
        private final WallPostSource postSource;
        @SerializedName("post_type")
        @Nullable
        private final WallPostType postType;
        @SerializedName("reposts")
        @Nullable
        private final BaseRepostsInfo reposts;
        @SerializedName("short_text_rate")
        @Nullable
        private final Float shortTextRate;
        @SerializedName("signer_id")
        @Nullable
        private final UserId signerId;
        @SerializedName("source_id")
        @NotNull
        private final UserId sourceId;
        @SerializedName(ViewHierarchyConstants.TEXT_KEY)
        @Nullable
        private final String text;
        @SerializedName("topic_id")
        @Nullable
        private final TopicId topicId;
        @SerializedName("type")
        @NotNull
        private final NewsfeedNewsfeedItemType type;
        @SerializedName(AdUnitActivity.EXTRA_VIEWS)
        @Nullable
        private final WallViews views;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWallpost$TopicId;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "EMPTY_TOPIC", "ART", "IT", "GAMES", "MUSIC", "PHOTO", "SCIENCE_AND_TECH", "SPORT", "TRAVEL", "TV_AND_CINEMA", "HUMOR", "FASHION", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum TopicId {
            EMPTY_TOPIC(0),
            ART(1),
            IT(7),
            GAMES(12),
            MUSIC(16),
            PHOTO(19),
            SCIENCE_AND_TECH(21),
            SPORT(23),
            TRAVEL(25),
            TV_AND_CINEMA(26),
            HUMOR(32),
            FASHION(43);
            
            private final int value;

            TopicId(int i9) {
                this.value = i9;
            }

            public final int getValue() {
                return this.value;
            }
        }

        public /* synthetic */ NewsfeedItemWallpost(NewsfeedNewsfeedItemType newsfeedNewsfeedItemType, UserId userId, int i9, NewsfeedItemWallpostFeedback newsfeedItemWallpostFeedback, Integer num, List list, BaseBoolInt baseBoolInt, UserId userId2, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, WallWallpostDonut wallWallpostDonut, Integer num2, BaseCommentsInfo baseCommentsInfo, BaseBoolInt baseBoolInt4, TopicId topicId, Float f10, String str, String str2, Boolean bool, List list2, WallPostCopyright wallPostCopyright, Integer num3, UserId userId3, WallGeo wallGeo, Integer num4, Boolean bool2, Boolean bool3, BaseLikesInfo baseLikesInfo, UserId userId4, Integer num5, List list3, WallPostSource wallPostSource, WallPostType wallPostType, BaseRepostsInfo baseRepostsInfo, UserId userId5, String str3, WallViews wallViews, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(newsfeedNewsfeedItemType, userId, i9, (i10 & 8) != 0 ? null : newsfeedItemWallpostFeedback, (i10 & 16) != 0 ? null : num, (i10 & 32) != 0 ? null : list, (i10 & 64) != 0 ? null : baseBoolInt, (i10 & 128) != 0 ? null : userId2, (i10 & 256) != 0 ? null : baseBoolInt2, (i10 & 512) != 0 ? null : baseBoolInt3, (i10 & 1024) != 0 ? null : wallWallpostDonut, (i10 & 2048) != 0 ? null : num2, (i10 & 4096) != 0 ? null : baseCommentsInfo, (i10 & 8192) != 0 ? null : baseBoolInt4, (i10 & 16384) != 0 ? null : topicId, (32768 & i10) != 0 ? null : f10, (65536 & i10) != 0 ? null : str, (131072 & i10) != 0 ? null : str2, (262144 & i10) != 0 ? null : bool, (524288 & i10) != 0 ? null : list2, (1048576 & i10) != 0 ? null : wallPostCopyright, (2097152 & i10) != 0 ? null : num3, (4194304 & i10) != 0 ? null : userId3, (8388608 & i10) != 0 ? null : wallGeo, (16777216 & i10) != 0 ? null : num4, (33554432 & i10) != 0 ? null : bool2, (67108864 & i10) != 0 ? null : bool3, (134217728 & i10) != 0 ? null : baseLikesInfo, (268435456 & i10) != 0 ? null : userId4, (536870912 & i10) != 0 ? null : num5, (1073741824 & i10) != 0 ? null : list3, (i10 & Integer.MIN_VALUE) != 0 ? null : wallPostSource, (i11 & 1) != 0 ? null : wallPostType, (i11 & 2) != 0 ? null : baseRepostsInfo, (i11 & 4) != 0 ? null : userId5, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : wallViews);
        }

        @NotNull
        public final NewsfeedNewsfeedItemType component1() {
            return this.type;
        }

        @Nullable
        public final BaseBoolInt component10() {
            return this.canPin;
        }

        @Nullable
        public final WallWallpostDonut component11() {
            return this.donut;
        }

        @Nullable
        public final Integer component12() {
            return this.isPinned;
        }

        @Nullable
        public final BaseCommentsInfo component13() {
            return this.comments;
        }

        @Nullable
        public final BaseBoolInt component14() {
            return this.markedAsAds;
        }

        @Nullable
        public final TopicId component15() {
            return this.topicId;
        }

        @Nullable
        public final Float component16() {
            return this.shortTextRate;
        }

        @Nullable
        public final String component17() {
            return this.hash;
        }

        @Nullable
        public final String component18() {
            return this.accessKey;
        }

        @Nullable
        public final Boolean component19() {
            return this.isDeleted;
        }

        @NotNull
        public final UserId component2() {
            return this.sourceId;
        }

        @Nullable
        public final List<WallWallpostAttachment> component20() {
            return this.attachments;
        }

        @Nullable
        public final WallPostCopyright component21() {
            return this.copyright;
        }

        @Nullable
        public final Integer component22() {
            return this.edited;
        }

        @Nullable
        public final UserId component23() {
            return this.fromId;
        }

        @Nullable
        public final WallGeo component24() {
            return this.geo;
        }

        @Nullable
        public final Integer component25() {
            return this.f35955id;
        }

        @Nullable
        public final Boolean component26() {
            return this.isArchived;
        }

        @Nullable
        public final Boolean component27() {
            return this.isFavorite;
        }

        @Nullable
        public final BaseLikesInfo component28() {
            return this.likes;
        }

        @Nullable
        public final UserId component29() {
            return this.ownerId;
        }

        public final int component3() {
            return this.date;
        }

        @Nullable
        public final Integer component30() {
            return this.postId;
        }

        @Nullable
        public final List<Integer> component31() {
            return this.parentsStack;
        }

        @Nullable
        public final WallPostSource component32() {
            return this.postSource;
        }

        @Nullable
        public final WallPostType component33() {
            return this.postType;
        }

        @Nullable
        public final BaseRepostsInfo component34() {
            return this.reposts;
        }

        @Nullable
        public final UserId component35() {
            return this.signerId;
        }

        @Nullable
        public final String component36() {
            return this.text;
        }

        @Nullable
        public final WallViews component37() {
            return this.views;
        }

        @Nullable
        public final NewsfeedItemWallpostFeedback component4() {
            return this.feedback;
        }

        @Nullable
        public final Integer component5() {
            return this.carouselOffset;
        }

        @Nullable
        public final List<WallWallpostFull> component6() {
            return this.copyHistory;
        }

        @Nullable
        public final BaseBoolInt component7() {
            return this.canEdit;
        }

        @Nullable
        public final UserId component8() {
            return this.createdBy;
        }

        @Nullable
        public final BaseBoolInt component9() {
            return this.canDelete;
        }

        @NotNull
        public final NewsfeedItemWallpost copy(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemWallpostFeedback newsfeedItemWallpostFeedback, @Nullable Integer num, @Nullable List<WallWallpostFull> list, @Nullable BaseBoolInt baseBoolInt, @Nullable UserId userId, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable WallWallpostDonut wallWallpostDonut, @Nullable Integer num2, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable BaseBoolInt baseBoolInt4, @Nullable TopicId topicId, @Nullable Float f10, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable List<WallWallpostAttachment> list2, @Nullable WallPostCopyright wallPostCopyright, @Nullable Integer num3, @Nullable UserId userId2, @Nullable WallGeo wallGeo, @Nullable Integer num4, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable BaseLikesInfo baseLikesInfo, @Nullable UserId userId3, @Nullable Integer num5, @Nullable List<Integer> list3, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId4, @Nullable String str3, @Nullable WallViews wallViews) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            return new NewsfeedItemWallpost(type, sourceId, i9, newsfeedItemWallpostFeedback, num, list, baseBoolInt, userId, baseBoolInt2, baseBoolInt3, wallWallpostDonut, num2, baseCommentsInfo, baseBoolInt4, topicId, f10, str, str2, bool, list2, wallPostCopyright, num3, userId2, wallGeo, num4, bool2, bool3, baseLikesInfo, userId3, num5, list3, wallPostSource, wallPostType, baseRepostsInfo, userId4, str3, wallViews);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemWallpost) {
                NewsfeedItemWallpost newsfeedItemWallpost = (NewsfeedItemWallpost) obj;
                return this.type == newsfeedItemWallpost.type && Intrinsics.areEqual(this.sourceId, newsfeedItemWallpost.sourceId) && this.date == newsfeedItemWallpost.date && Intrinsics.areEqual(this.feedback, newsfeedItemWallpost.feedback) && Intrinsics.areEqual(this.carouselOffset, newsfeedItemWallpost.carouselOffset) && Intrinsics.areEqual(this.copyHistory, newsfeedItemWallpost.copyHistory) && this.canEdit == newsfeedItemWallpost.canEdit && Intrinsics.areEqual(this.createdBy, newsfeedItemWallpost.createdBy) && this.canDelete == newsfeedItemWallpost.canDelete && this.canPin == newsfeedItemWallpost.canPin && Intrinsics.areEqual(this.donut, newsfeedItemWallpost.donut) && Intrinsics.areEqual(this.isPinned, newsfeedItemWallpost.isPinned) && Intrinsics.areEqual(this.comments, newsfeedItemWallpost.comments) && this.markedAsAds == newsfeedItemWallpost.markedAsAds && this.topicId == newsfeedItemWallpost.topicId && Intrinsics.areEqual((Object) this.shortTextRate, (Object) newsfeedItemWallpost.shortTextRate) && Intrinsics.areEqual(this.hash, newsfeedItemWallpost.hash) && Intrinsics.areEqual(this.accessKey, newsfeedItemWallpost.accessKey) && Intrinsics.areEqual(this.isDeleted, newsfeedItemWallpost.isDeleted) && Intrinsics.areEqual(this.attachments, newsfeedItemWallpost.attachments) && Intrinsics.areEqual(this.copyright, newsfeedItemWallpost.copyright) && Intrinsics.areEqual(this.edited, newsfeedItemWallpost.edited) && Intrinsics.areEqual(this.fromId, newsfeedItemWallpost.fromId) && Intrinsics.areEqual(this.geo, newsfeedItemWallpost.geo) && Intrinsics.areEqual(this.f35955id, newsfeedItemWallpost.f35955id) && Intrinsics.areEqual(this.isArchived, newsfeedItemWallpost.isArchived) && Intrinsics.areEqual(this.isFavorite, newsfeedItemWallpost.isFavorite) && Intrinsics.areEqual(this.likes, newsfeedItemWallpost.likes) && Intrinsics.areEqual(this.ownerId, newsfeedItemWallpost.ownerId) && Intrinsics.areEqual(this.postId, newsfeedItemWallpost.postId) && Intrinsics.areEqual(this.parentsStack, newsfeedItemWallpost.parentsStack) && Intrinsics.areEqual(this.postSource, newsfeedItemWallpost.postSource) && this.postType == newsfeedItemWallpost.postType && Intrinsics.areEqual(this.reposts, newsfeedItemWallpost.reposts) && Intrinsics.areEqual(this.signerId, newsfeedItemWallpost.signerId) && Intrinsics.areEqual(this.text, newsfeedItemWallpost.text) && Intrinsics.areEqual(this.views, newsfeedItemWallpost.views);
            }
            return false;
        }

        @Nullable
        public final String getAccessKey() {
            return this.accessKey;
        }

        @Nullable
        public final List<WallWallpostAttachment> getAttachments() {
            return this.attachments;
        }

        @Nullable
        public final BaseBoolInt getCanDelete() {
            return this.canDelete;
        }

        @Nullable
        public final BaseBoolInt getCanEdit() {
            return this.canEdit;
        }

        @Nullable
        public final BaseBoolInt getCanPin() {
            return this.canPin;
        }

        @Nullable
        public final Integer getCarouselOffset() {
            return this.carouselOffset;
        }

        @Nullable
        public final BaseCommentsInfo getComments() {
            return this.comments;
        }

        @Nullable
        public final List<WallWallpostFull> getCopyHistory() {
            return this.copyHistory;
        }

        @Nullable
        public final WallPostCopyright getCopyright() {
            return this.copyright;
        }

        @Nullable
        public final UserId getCreatedBy() {
            return this.createdBy;
        }

        public final int getDate() {
            return this.date;
        }

        @Nullable
        public final WallWallpostDonut getDonut() {
            return this.donut;
        }

        @Nullable
        public final Integer getEdited() {
            return this.edited;
        }

        @Nullable
        public final NewsfeedItemWallpostFeedback getFeedback() {
            return this.feedback;
        }

        @Nullable
        public final UserId getFromId() {
            return this.fromId;
        }

        @Nullable
        public final WallGeo getGeo() {
            return this.geo;
        }

        @Nullable
        public final String getHash() {
            return this.hash;
        }

        @Nullable
        public final Integer getId() {
            return this.f35955id;
        }

        @Nullable
        public final BaseLikesInfo getLikes() {
            return this.likes;
        }

        @Nullable
        public final BaseBoolInt getMarkedAsAds() {
            return this.markedAsAds;
        }

        @Nullable
        public final UserId getOwnerId() {
            return this.ownerId;
        }

        @Nullable
        public final List<Integer> getParentsStack() {
            return this.parentsStack;
        }

        @Nullable
        public final Integer getPostId() {
            return this.postId;
        }

        @Nullable
        public final WallPostSource getPostSource() {
            return this.postSource;
        }

        @Nullable
        public final WallPostType getPostType() {
            return this.postType;
        }

        @Nullable
        public final BaseRepostsInfo getReposts() {
            return this.reposts;
        }

        @Nullable
        public final Float getShortTextRate() {
            return this.shortTextRate;
        }

        @Nullable
        public final UserId getSignerId() {
            return this.signerId;
        }

        @NotNull
        public final UserId getSourceId() {
            return this.sourceId;
        }

        @Nullable
        public final String getText() {
            return this.text;
        }

        @Nullable
        public final TopicId getTopicId() {
            return this.topicId;
        }

        @NotNull
        public final NewsfeedNewsfeedItemType getType() {
            return this.type;
        }

        @Nullable
        public final WallViews getViews() {
            return this.views;
        }

        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.sourceId.hashCode()) * 31) + this.date) * 31;
            NewsfeedItemWallpostFeedback newsfeedItemWallpostFeedback = this.feedback;
            int hashCode2 = (hashCode + (newsfeedItemWallpostFeedback == null ? 0 : newsfeedItemWallpostFeedback.hashCode())) * 31;
            Integer num = this.carouselOffset;
            int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
            List<WallWallpostFull> list = this.copyHistory;
            int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
            BaseBoolInt baseBoolInt = this.canEdit;
            int hashCode5 = (hashCode4 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
            UserId userId = this.createdBy;
            int hashCode6 = (hashCode5 + (userId == null ? 0 : userId.hashCode())) * 31;
            BaseBoolInt baseBoolInt2 = this.canDelete;
            int hashCode7 = (hashCode6 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
            BaseBoolInt baseBoolInt3 = this.canPin;
            int hashCode8 = (hashCode7 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
            WallWallpostDonut wallWallpostDonut = this.donut;
            int hashCode9 = (hashCode8 + (wallWallpostDonut == null ? 0 : wallWallpostDonut.hashCode())) * 31;
            Integer num2 = this.isPinned;
            int hashCode10 = (hashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31;
            BaseCommentsInfo baseCommentsInfo = this.comments;
            int hashCode11 = (hashCode10 + (baseCommentsInfo == null ? 0 : baseCommentsInfo.hashCode())) * 31;
            BaseBoolInt baseBoolInt4 = this.markedAsAds;
            int hashCode12 = (hashCode11 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
            TopicId topicId = this.topicId;
            int hashCode13 = (hashCode12 + (topicId == null ? 0 : topicId.hashCode())) * 31;
            Float f10 = this.shortTextRate;
            int hashCode14 = (hashCode13 + (f10 == null ? 0 : f10.hashCode())) * 31;
            String str = this.hash;
            int hashCode15 = (hashCode14 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.accessKey;
            int hashCode16 = (hashCode15 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Boolean bool = this.isDeleted;
            int hashCode17 = (hashCode16 + (bool == null ? 0 : bool.hashCode())) * 31;
            List<WallWallpostAttachment> list2 = this.attachments;
            int hashCode18 = (hashCode17 + (list2 == null ? 0 : list2.hashCode())) * 31;
            WallPostCopyright wallPostCopyright = this.copyright;
            int hashCode19 = (hashCode18 + (wallPostCopyright == null ? 0 : wallPostCopyright.hashCode())) * 31;
            Integer num3 = this.edited;
            int hashCode20 = (hashCode19 + (num3 == null ? 0 : num3.hashCode())) * 31;
            UserId userId2 = this.fromId;
            int hashCode21 = (hashCode20 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
            WallGeo wallGeo = this.geo;
            int hashCode22 = (hashCode21 + (wallGeo == null ? 0 : wallGeo.hashCode())) * 31;
            Integer num4 = this.f35955id;
            int hashCode23 = (hashCode22 + (num4 == null ? 0 : num4.hashCode())) * 31;
            Boolean bool2 = this.isArchived;
            int hashCode24 = (hashCode23 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
            Boolean bool3 = this.isFavorite;
            int hashCode25 = (hashCode24 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
            BaseLikesInfo baseLikesInfo = this.likes;
            int hashCode26 = (hashCode25 + (baseLikesInfo == null ? 0 : baseLikesInfo.hashCode())) * 31;
            UserId userId3 = this.ownerId;
            int hashCode27 = (hashCode26 + (userId3 == null ? 0 : userId3.hashCode())) * 31;
            Integer num5 = this.postId;
            int hashCode28 = (hashCode27 + (num5 == null ? 0 : num5.hashCode())) * 31;
            List<Integer> list3 = this.parentsStack;
            int hashCode29 = (hashCode28 + (list3 == null ? 0 : list3.hashCode())) * 31;
            WallPostSource wallPostSource = this.postSource;
            int hashCode30 = (hashCode29 + (wallPostSource == null ? 0 : wallPostSource.hashCode())) * 31;
            WallPostType wallPostType = this.postType;
            int hashCode31 = (hashCode30 + (wallPostType == null ? 0 : wallPostType.hashCode())) * 31;
            BaseRepostsInfo baseRepostsInfo = this.reposts;
            int hashCode32 = (hashCode31 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
            UserId userId4 = this.signerId;
            int hashCode33 = (hashCode32 + (userId4 == null ? 0 : userId4.hashCode())) * 31;
            String str3 = this.text;
            int hashCode34 = (hashCode33 + (str3 == null ? 0 : str3.hashCode())) * 31;
            WallViews wallViews = this.views;
            return hashCode34 + (wallViews != null ? wallViews.hashCode() : 0);
        }

        @Nullable
        public final Boolean isArchived() {
            return this.isArchived;
        }

        @Nullable
        public final Boolean isDeleted() {
            return this.isDeleted;
        }

        @Nullable
        public final Boolean isFavorite() {
            return this.isFavorite;
        }

        @Nullable
        public final Integer isPinned() {
            return this.isPinned;
        }

        @NotNull
        public String toString() {
            NewsfeedNewsfeedItemType newsfeedNewsfeedItemType = this.type;
            UserId userId = this.sourceId;
            int i9 = this.date;
            NewsfeedItemWallpostFeedback newsfeedItemWallpostFeedback = this.feedback;
            Integer num = this.carouselOffset;
            List<WallWallpostFull> list = this.copyHistory;
            BaseBoolInt baseBoolInt = this.canEdit;
            UserId userId2 = this.createdBy;
            BaseBoolInt baseBoolInt2 = this.canDelete;
            BaseBoolInt baseBoolInt3 = this.canPin;
            WallWallpostDonut wallWallpostDonut = this.donut;
            Integer num2 = this.isPinned;
            BaseCommentsInfo baseCommentsInfo = this.comments;
            BaseBoolInt baseBoolInt4 = this.markedAsAds;
            TopicId topicId = this.topicId;
            Float f10 = this.shortTextRate;
            String str = this.hash;
            String str2 = this.accessKey;
            Boolean bool = this.isDeleted;
            List<WallWallpostAttachment> list2 = this.attachments;
            WallPostCopyright wallPostCopyright = this.copyright;
            Integer num3 = this.edited;
            UserId userId3 = this.fromId;
            WallGeo wallGeo = this.geo;
            Integer num4 = this.f35955id;
            Boolean bool2 = this.isArchived;
            Boolean bool3 = this.isFavorite;
            BaseLikesInfo baseLikesInfo = this.likes;
            UserId userId4 = this.ownerId;
            Integer num5 = this.postId;
            List<Integer> list3 = this.parentsStack;
            WallPostSource wallPostSource = this.postSource;
            WallPostType wallPostType = this.postType;
            BaseRepostsInfo baseRepostsInfo = this.reposts;
            UserId userId5 = this.signerId;
            String str3 = this.text;
            WallViews wallViews = this.views;
            return "NewsfeedItemWallpost(type=" + newsfeedNewsfeedItemType + ", sourceId=" + userId + ", date=" + i9 + ", feedback=" + newsfeedItemWallpostFeedback + ", carouselOffset=" + num + ", copyHistory=" + list + ", canEdit=" + baseBoolInt + ", createdBy=" + userId2 + ", canDelete=" + baseBoolInt2 + ", canPin=" + baseBoolInt3 + ", donut=" + wallWallpostDonut + ", isPinned=" + num2 + ", comments=" + baseCommentsInfo + ", markedAsAds=" + baseBoolInt4 + ", topicId=" + topicId + ", shortTextRate=" + f10 + ", hash=" + str + ", accessKey=" + str2 + ", isDeleted=" + bool + ", attachments=" + list2 + ", copyright=" + wallPostCopyright + ", edited=" + num3 + ", fromId=" + userId3 + ", geo=" + wallGeo + ", id=" + num4 + ", isArchived=" + bool2 + ", isFavorite=" + bool3 + ", likes=" + baseLikesInfo + ", ownerId=" + userId4 + ", postId=" + num5 + ", parentsStack=" + list3 + ", postSource=" + wallPostSource + ", postType=" + wallPostType + ", reposts=" + baseRepostsInfo + ", signerId=" + userId5 + ", text=" + str3 + ", views=" + wallViews + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemWallpost(@NotNull NewsfeedNewsfeedItemType type, @NotNull UserId sourceId, int i9, @Nullable NewsfeedItemWallpostFeedback newsfeedItemWallpostFeedback, @Nullable Integer num, @Nullable List<WallWallpostFull> list, @Nullable BaseBoolInt baseBoolInt, @Nullable UserId userId, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable WallWallpostDonut wallWallpostDonut, @Nullable Integer num2, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable BaseBoolInt baseBoolInt4, @Nullable TopicId topicId, @Nullable Float f10, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable List<WallWallpostAttachment> list2, @Nullable WallPostCopyright wallPostCopyright, @Nullable Integer num3, @Nullable UserId userId2, @Nullable WallGeo wallGeo, @Nullable Integer num4, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable BaseLikesInfo baseLikesInfo, @Nullable UserId userId3, @Nullable Integer num5, @Nullable List<Integer> list3, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId4, @Nullable String str3, @Nullable WallViews wallViews) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(sourceId, "sourceId");
            this.type = type;
            this.sourceId = sourceId;
            this.date = i9;
            this.feedback = newsfeedItemWallpostFeedback;
            this.carouselOffset = num;
            this.copyHistory = list;
            this.canEdit = baseBoolInt;
            this.createdBy = userId;
            this.canDelete = baseBoolInt2;
            this.canPin = baseBoolInt3;
            this.donut = wallWallpostDonut;
            this.isPinned = num2;
            this.comments = baseCommentsInfo;
            this.markedAsAds = baseBoolInt4;
            this.topicId = topicId;
            this.shortTextRate = f10;
            this.hash = str;
            this.accessKey = str2;
            this.isDeleted = bool;
            this.attachments = list2;
            this.copyright = wallPostCopyright;
            this.edited = num3;
            this.fromId = userId2;
            this.geo = wallGeo;
            this.f35955id = num4;
            this.isArchived = bool2;
            this.isFavorite = bool3;
            this.likes = baseLikesInfo;
            this.ownerId = userId3;
            this.postId = num5;
            this.parentsStack = list3;
            this.postSource = wallPostSource;
            this.postType = wallPostType;
            this.reposts = baseRepostsInfo;
            this.signerId = userId4;
            this.text = str3;
            this.views = wallViews;
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001#B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003JG\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\bHÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWorkiCarouselBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWorkiCarouselBlock$Type;", "items", "", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsWorkiCarouselItem;", "blockTitle", "", "moreButton", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "trackCode", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWorkiCarouselBlock$Type;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Ljava/lang/String;)V", "getBlockTitle", "()Ljava/lang/String;", "getItems", "()Ljava/util/List;", "getMoreButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWorkiCarouselBlock$Type;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemWorkiCarouselBlock extends NewsfeedNewsfeedItem {
        @SerializedName("block_title")
        @Nullable
        private final String blockTitle;
        @SerializedName("items")
        @NotNull
        private final List<ClassifiedsWorkiCarouselItem> items;
        @SerializedName("more_button")
        @Nullable
        private final BaseLinkButton moreButton;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final Type type;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemWorkiCarouselBlock$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "WORKI_CAROUSEL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Type {
            WORKI_CAROUSEL("worki_carousel");
            
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

        public /* synthetic */ NewsfeedItemWorkiCarouselBlock(Type type, List list, String str, BaseLinkButton baseLinkButton, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(type, list, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : baseLinkButton, (i9 & 16) != 0 ? null : str2);
        }

        public static /* synthetic */ NewsfeedItemWorkiCarouselBlock copy$default(NewsfeedItemWorkiCarouselBlock newsfeedItemWorkiCarouselBlock, Type type, List list, String str, BaseLinkButton baseLinkButton, String str2, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                type = newsfeedItemWorkiCarouselBlock.type;
            }
            List<ClassifiedsWorkiCarouselItem> list2 = list;
            if ((i9 & 2) != 0) {
                list2 = newsfeedItemWorkiCarouselBlock.items;
            }
            List list3 = list2;
            if ((i9 & 4) != 0) {
                str = newsfeedItemWorkiCarouselBlock.blockTitle;
            }
            String str3 = str;
            if ((i9 & 8) != 0) {
                baseLinkButton = newsfeedItemWorkiCarouselBlock.moreButton;
            }
            BaseLinkButton baseLinkButton2 = baseLinkButton;
            if ((i9 & 16) != 0) {
                str2 = newsfeedItemWorkiCarouselBlock.trackCode;
            }
            return newsfeedItemWorkiCarouselBlock.copy(type, list3, str3, baseLinkButton2, str2);
        }

        @NotNull
        public final Type component1() {
            return this.type;
        }

        @NotNull
        public final List<ClassifiedsWorkiCarouselItem> component2() {
            return this.items;
        }

        @Nullable
        public final String component3() {
            return this.blockTitle;
        }

        @Nullable
        public final BaseLinkButton component4() {
            return this.moreButton;
        }

        @Nullable
        public final String component5() {
            return this.trackCode;
        }

        @NotNull
        public final NewsfeedItemWorkiCarouselBlock copy(@NotNull Type type, @NotNull List<ClassifiedsWorkiCarouselItem> items, @Nullable String str, @Nullable BaseLinkButton baseLinkButton, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(items, "items");
            return new NewsfeedItemWorkiCarouselBlock(type, items, str, baseLinkButton, str2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemWorkiCarouselBlock) {
                NewsfeedItemWorkiCarouselBlock newsfeedItemWorkiCarouselBlock = (NewsfeedItemWorkiCarouselBlock) obj;
                return this.type == newsfeedItemWorkiCarouselBlock.type && Intrinsics.areEqual(this.items, newsfeedItemWorkiCarouselBlock.items) && Intrinsics.areEqual(this.blockTitle, newsfeedItemWorkiCarouselBlock.blockTitle) && Intrinsics.areEqual(this.moreButton, newsfeedItemWorkiCarouselBlock.moreButton) && Intrinsics.areEqual(this.trackCode, newsfeedItemWorkiCarouselBlock.trackCode);
            }
            return false;
        }

        @Nullable
        public final String getBlockTitle() {
            return this.blockTitle;
        }

        @NotNull
        public final List<ClassifiedsWorkiCarouselItem> getItems() {
            return this.items;
        }

        @Nullable
        public final BaseLinkButton getMoreButton() {
            return this.moreButton;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final Type getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((this.type.hashCode() * 31) + this.items.hashCode()) * 31;
            String str = this.blockTitle;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            BaseLinkButton baseLinkButton = this.moreButton;
            int hashCode3 = (hashCode2 + (baseLinkButton == null ? 0 : baseLinkButton.hashCode())) * 31;
            String str2 = this.trackCode;
            return hashCode3 + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            Type type = this.type;
            List<ClassifiedsWorkiCarouselItem> list = this.items;
            String str = this.blockTitle;
            BaseLinkButton baseLinkButton = this.moreButton;
            String str2 = this.trackCode;
            return "NewsfeedItemWorkiCarouselBlock(type=" + type + ", items=" + list + ", blockTitle=" + str + ", moreButton=" + baseLinkButton + ", trackCode=" + str2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemWorkiCarouselBlock(@NotNull Type type, @NotNull List<ClassifiedsWorkiCarouselItem> items, @Nullable String str, @Nullable BaseLinkButton baseLinkButton, @Nullable String str2) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(items, "items");
            this.type = type;
            this.items = items;
            this.blockTitle = str;
            this.moreButton = baseLinkButton;
            this.trackCode = str2;
        }
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001/Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010 \u001a\u00020\bHÆ\u0003J\t\u0010!\u001a\u00020\bHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0003Js\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020\bHÖ\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\n\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0018\u0010\f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0012¨\u00060"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaCarouselBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaCarouselBlock$Type;", "items", "", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended;", "createButtonUrl", "", "moreButtonUrl", "blockTitle", "blockDescription", "trackCode", "group", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaCarouselBlockGroup;", "viewStyle", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaCarouselBlock$Type;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaCarouselBlockGroup;Ljava/lang/String;)V", "getBlockDescription", "()Ljava/lang/String;", "getBlockTitle", "getCreateButtonUrl", "getGroup", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaCarouselBlockGroup;", "getItems", "()Ljava/util/List;", "getMoreButtonUrl", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaCarouselBlock$Type;", "getViewStyle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemYoulaCarouselBlock extends NewsfeedNewsfeedItem {
        @SerializedName("block_description")
        @Nullable
        private final String blockDescription;
        @SerializedName("block_title")
        @Nullable
        private final String blockTitle;
        @SerializedName("create_button_url")
        @NotNull
        private final String createButtonUrl;
        @SerializedName("group")
        @Nullable
        private final ClassifiedsYoulaCarouselBlockGroup group;
        @SerializedName("items")
        @NotNull
        private final List<ClassifiedsYoulaItemExtended> items;
        @SerializedName("more_button_url")
        @NotNull
        private final String moreButtonUrl;
        @SerializedName("track_code")
        @Nullable
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final Type type;
        @SerializedName("view_style")
        @Nullable
        private final String viewStyle;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaCarouselBlock$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "YOULA_CAROUSEL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Type {
            YOULA_CAROUSEL("youla_carousel");
            
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

        public /* synthetic */ NewsfeedItemYoulaCarouselBlock(Type type, List list, String str, String str2, String str3, String str4, String str5, ClassifiedsYoulaCarouselBlockGroup classifiedsYoulaCarouselBlockGroup, String str6, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(type, list, str, str2, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : str4, (i9 & 64) != 0 ? null : str5, (i9 & 128) != 0 ? null : classifiedsYoulaCarouselBlockGroup, (i9 & 256) != 0 ? null : str6);
        }

        @NotNull
        public final Type component1() {
            return this.type;
        }

        @NotNull
        public final List<ClassifiedsYoulaItemExtended> component2() {
            return this.items;
        }

        @NotNull
        public final String component3() {
            return this.createButtonUrl;
        }

        @NotNull
        public final String component4() {
            return this.moreButtonUrl;
        }

        @Nullable
        public final String component5() {
            return this.blockTitle;
        }

        @Nullable
        public final String component6() {
            return this.blockDescription;
        }

        @Nullable
        public final String component7() {
            return this.trackCode;
        }

        @Nullable
        public final ClassifiedsYoulaCarouselBlockGroup component8() {
            return this.group;
        }

        @Nullable
        public final String component9() {
            return this.viewStyle;
        }

        @NotNull
        public final NewsfeedItemYoulaCarouselBlock copy(@NotNull Type type, @NotNull List<ClassifiedsYoulaItemExtended> items, @NotNull String createButtonUrl, @NotNull String moreButtonUrl, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable ClassifiedsYoulaCarouselBlockGroup classifiedsYoulaCarouselBlockGroup, @Nullable String str4) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(createButtonUrl, "createButtonUrl");
            Intrinsics.checkNotNullParameter(moreButtonUrl, "moreButtonUrl");
            return new NewsfeedItemYoulaCarouselBlock(type, items, createButtonUrl, moreButtonUrl, str, str2, str3, classifiedsYoulaCarouselBlockGroup, str4);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemYoulaCarouselBlock) {
                NewsfeedItemYoulaCarouselBlock newsfeedItemYoulaCarouselBlock = (NewsfeedItemYoulaCarouselBlock) obj;
                return this.type == newsfeedItemYoulaCarouselBlock.type && Intrinsics.areEqual(this.items, newsfeedItemYoulaCarouselBlock.items) && Intrinsics.areEqual(this.createButtonUrl, newsfeedItemYoulaCarouselBlock.createButtonUrl) && Intrinsics.areEqual(this.moreButtonUrl, newsfeedItemYoulaCarouselBlock.moreButtonUrl) && Intrinsics.areEqual(this.blockTitle, newsfeedItemYoulaCarouselBlock.blockTitle) && Intrinsics.areEqual(this.blockDescription, newsfeedItemYoulaCarouselBlock.blockDescription) && Intrinsics.areEqual(this.trackCode, newsfeedItemYoulaCarouselBlock.trackCode) && Intrinsics.areEqual(this.group, newsfeedItemYoulaCarouselBlock.group) && Intrinsics.areEqual(this.viewStyle, newsfeedItemYoulaCarouselBlock.viewStyle);
            }
            return false;
        }

        @Nullable
        public final String getBlockDescription() {
            return this.blockDescription;
        }

        @Nullable
        public final String getBlockTitle() {
            return this.blockTitle;
        }

        @NotNull
        public final String getCreateButtonUrl() {
            return this.createButtonUrl;
        }

        @Nullable
        public final ClassifiedsYoulaCarouselBlockGroup getGroup() {
            return this.group;
        }

        @NotNull
        public final List<ClassifiedsYoulaItemExtended> getItems() {
            return this.items;
        }

        @NotNull
        public final String getMoreButtonUrl() {
            return this.moreButtonUrl;
        }

        @Nullable
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final Type getType() {
            return this.type;
        }

        @Nullable
        public final String getViewStyle() {
            return this.viewStyle;
        }

        public int hashCode() {
            int hashCode = ((((((this.type.hashCode() * 31) + this.items.hashCode()) * 31) + this.createButtonUrl.hashCode()) * 31) + this.moreButtonUrl.hashCode()) * 31;
            String str = this.blockTitle;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.blockDescription;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.trackCode;
            int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            ClassifiedsYoulaCarouselBlockGroup classifiedsYoulaCarouselBlockGroup = this.group;
            int hashCode5 = (hashCode4 + (classifiedsYoulaCarouselBlockGroup == null ? 0 : classifiedsYoulaCarouselBlockGroup.hashCode())) * 31;
            String str4 = this.viewStyle;
            return hashCode5 + (str4 != null ? str4.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            Type type = this.type;
            List<ClassifiedsYoulaItemExtended> list = this.items;
            String str = this.createButtonUrl;
            String str2 = this.moreButtonUrl;
            String str3 = this.blockTitle;
            String str4 = this.blockDescription;
            String str5 = this.trackCode;
            ClassifiedsYoulaCarouselBlockGroup classifiedsYoulaCarouselBlockGroup = this.group;
            String str6 = this.viewStyle;
            return "NewsfeedItemYoulaCarouselBlock(type=" + type + ", items=" + list + ", createButtonUrl=" + str + ", moreButtonUrl=" + str2 + ", blockTitle=" + str3 + ", blockDescription=" + str4 + ", trackCode=" + str5 + ", group=" + classifiedsYoulaCarouselBlockGroup + ", viewStyle=" + str6 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemYoulaCarouselBlock(@NotNull Type type, @NotNull List<ClassifiedsYoulaItemExtended> items, @NotNull String createButtonUrl, @NotNull String moreButtonUrl, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable ClassifiedsYoulaCarouselBlockGroup classifiedsYoulaCarouselBlockGroup, @Nullable String str4) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(createButtonUrl, "createButtonUrl");
            Intrinsics.checkNotNullParameter(moreButtonUrl, "moreButtonUrl");
            this.type = type;
            this.items = items;
            this.createButtonUrl = createButtonUrl;
            this.moreButtonUrl = moreButtonUrl;
            this.blockTitle = str;
            this.blockDescription = str2;
            this.trackCode = str3;
            this.group = classifiedsYoulaCarouselBlockGroup;
            this.viewStyle = str4;
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001 B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\nHÆ\u0003J=\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaGroupsBlock;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaGroupsBlock$Type;", "title", "", "trackCode", "isAsync", "", "data", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlock;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaGroupsBlock$Type;Ljava/lang/String;Ljava/lang/String;ZLcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlock;)V", "getData", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlock;", "()Z", "getTitle", "()Ljava/lang/String;", "getTrackCode", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaGroupsBlock$Type;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class NewsfeedItemYoulaGroupsBlock extends NewsfeedNewsfeedItem {
        @SerializedName("data")
        @Nullable
        private final ClassifiedsYoulaGroupsBlock data;
        @SerializedName("is_async")
        private final boolean isAsync;
        @SerializedName("title")
        @NotNull
        private final String title;
        @SerializedName("track_code")
        @NotNull
        private final String trackCode;
        @SerializedName("type")
        @NotNull
        private final Type type;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemYoulaGroupsBlock$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "YOULA_GROUPS_BLOCK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Type {
            YOULA_GROUPS_BLOCK("youla_groups_block");
            
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

        public /* synthetic */ NewsfeedItemYoulaGroupsBlock(Type type, String str, String str2, boolean z10, ClassifiedsYoulaGroupsBlock classifiedsYoulaGroupsBlock, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(type, str, str2, z10, (i9 & 16) != 0 ? null : classifiedsYoulaGroupsBlock);
        }

        public static /* synthetic */ NewsfeedItemYoulaGroupsBlock copy$default(NewsfeedItemYoulaGroupsBlock newsfeedItemYoulaGroupsBlock, Type type, String str, String str2, boolean z10, ClassifiedsYoulaGroupsBlock classifiedsYoulaGroupsBlock, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                type = newsfeedItemYoulaGroupsBlock.type;
            }
            if ((i9 & 2) != 0) {
                str = newsfeedItemYoulaGroupsBlock.title;
            }
            String str3 = str;
            if ((i9 & 4) != 0) {
                str2 = newsfeedItemYoulaGroupsBlock.trackCode;
            }
            String str4 = str2;
            if ((i9 & 8) != 0) {
                z10 = newsfeedItemYoulaGroupsBlock.isAsync;
            }
            boolean z11 = z10;
            if ((i9 & 16) != 0) {
                classifiedsYoulaGroupsBlock = newsfeedItemYoulaGroupsBlock.data;
            }
            return newsfeedItemYoulaGroupsBlock.copy(type, str3, str4, z11, classifiedsYoulaGroupsBlock);
        }

        @NotNull
        public final Type component1() {
            return this.type;
        }

        @NotNull
        public final String component2() {
            return this.title;
        }

        @NotNull
        public final String component3() {
            return this.trackCode;
        }

        public final boolean component4() {
            return this.isAsync;
        }

        @Nullable
        public final ClassifiedsYoulaGroupsBlock component5() {
            return this.data;
        }

        @NotNull
        public final NewsfeedItemYoulaGroupsBlock copy(@NotNull Type type, @NotNull String title, @NotNull String trackCode, boolean z10, @Nullable ClassifiedsYoulaGroupsBlock classifiedsYoulaGroupsBlock) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            return new NewsfeedItemYoulaGroupsBlock(type, title, trackCode, z10, classifiedsYoulaGroupsBlock);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsfeedItemYoulaGroupsBlock) {
                NewsfeedItemYoulaGroupsBlock newsfeedItemYoulaGroupsBlock = (NewsfeedItemYoulaGroupsBlock) obj;
                return this.type == newsfeedItemYoulaGroupsBlock.type && Intrinsics.areEqual(this.title, newsfeedItemYoulaGroupsBlock.title) && Intrinsics.areEqual(this.trackCode, newsfeedItemYoulaGroupsBlock.trackCode) && this.isAsync == newsfeedItemYoulaGroupsBlock.isAsync && Intrinsics.areEqual(this.data, newsfeedItemYoulaGroupsBlock.data);
            }
            return false;
        }

        @Nullable
        public final ClassifiedsYoulaGroupsBlock getData() {
            return this.data;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        @NotNull
        public final String getTrackCode() {
            return this.trackCode;
        }

        @NotNull
        public final Type getType() {
            return this.type;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((this.type.hashCode() * 31) + this.title.hashCode()) * 31) + this.trackCode.hashCode()) * 31;
            boolean z10 = this.isAsync;
            int i9 = z10;
            if (z10 != 0) {
                i9 = 1;
            }
            int i10 = (hashCode + i9) * 31;
            ClassifiedsYoulaGroupsBlock classifiedsYoulaGroupsBlock = this.data;
            return i10 + (classifiedsYoulaGroupsBlock == null ? 0 : classifiedsYoulaGroupsBlock.hashCode());
        }

        public final boolean isAsync() {
            return this.isAsync;
        }

        @NotNull
        public String toString() {
            Type type = this.type;
            String str = this.title;
            String str2 = this.trackCode;
            boolean z10 = this.isAsync;
            ClassifiedsYoulaGroupsBlock classifiedsYoulaGroupsBlock = this.data;
            return "NewsfeedItemYoulaGroupsBlock(type=" + type + ", title=" + str + ", trackCode=" + str2 + ", isAsync=" + z10 + ", data=" + classifiedsYoulaGroupsBlock + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewsfeedItemYoulaGroupsBlock(@NotNull Type type, @NotNull String title, @NotNull String trackCode, boolean z10, @Nullable ClassifiedsYoulaGroupsBlock classifiedsYoulaGroupsBlock) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(trackCode, "trackCode");
            this.type = type;
            this.title = title;
            this.trackCode = trackCode;
            this.isAsync = z10;
            this.data = classifiedsYoulaGroupsBlock;
        }
    }

    private NewsfeedNewsfeedItem() {
    }

    public /* synthetic */ NewsfeedNewsfeedItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
