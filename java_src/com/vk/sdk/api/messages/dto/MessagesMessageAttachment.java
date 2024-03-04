package com.vk.sdk.api.messages.dto;

import androidx.core.app.NotificationCompat;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.audio.dto.AudioAudio;
import com.vk.sdk.api.base.dto.BaseSticker;
import com.vk.sdk.api.calls.dto.CallsCall;
import com.vk.sdk.api.docs.dto.DocsDoc;
import com.vk.sdk.api.gifts.dto.GiftsLayout;
import com.vk.sdk.api.market.dto.MarketMarketAlbum;
import com.vk.sdk.api.market.dto.MarketMarketItem;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.polls.dto.PollsPoll;
import com.vk.sdk.api.stories.dto.StoriesStory;
import com.vk.sdk.api.video.dto.VideoVideoFull;
import com.vk.sdk.api.wall.dto.WallWallComment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\u0002\u0010 J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0013HÆ\u0003J»\u0001\u0010N\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÆ\u0001J\u0013\u0010O\u001a\u00020P2\b\u0010Q\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010R\u001a\u00020SHÖ\u0001J\t\u0010T\u001a\u00020UHÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>¨\u0006V"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesMessageAttachment;", "", "type", "Lcom/vk/sdk/api/messages/dto/MessagesMessageAttachmentType;", "audio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "audioMessage", "Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", NotificationCompat.CATEGORY_CALL, "Lcom/vk/sdk/api/calls/dto/CallsCall;", "doc", "Lcom/vk/sdk/api/docs/dto/DocsDoc;", "gift", "Lcom/vk/sdk/api/gifts/dto/GiftsLayout;", "graffiti", "Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;", "market", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "marketMarketAlbum", "Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "sticker", "Lcom/vk/sdk/api/base/dto/BaseSticker;", "story", "Lcom/vk/sdk/api/stories/dto/StoriesStory;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "wallReply", "Lcom/vk/sdk/api/wall/dto/WallWallComment;", "poll", "Lcom/vk/sdk/api/polls/dto/PollsPoll;", "(Lcom/vk/sdk/api/messages/dto/MessagesMessageAttachmentType;Lcom/vk/sdk/api/audio/dto/AudioAudio;Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;Lcom/vk/sdk/api/calls/dto/CallsCall;Lcom/vk/sdk/api/docs/dto/DocsDoc;Lcom/vk/sdk/api/gifts/dto/GiftsLayout;Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;Lcom/vk/sdk/api/market/dto/MarketMarketItem;Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/base/dto/BaseSticker;Lcom/vk/sdk/api/stories/dto/StoriesStory;Lcom/vk/sdk/api/video/dto/VideoVideoFull;Lcom/vk/sdk/api/wall/dto/WallWallComment;Lcom/vk/sdk/api/polls/dto/PollsPoll;)V", "getAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "getAudioMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", "getCall", "()Lcom/vk/sdk/api/calls/dto/CallsCall;", "getDoc", "()Lcom/vk/sdk/api/docs/dto/DocsDoc;", "getGift", "()Lcom/vk/sdk/api/gifts/dto/GiftsLayout;", "getGraffiti", "()Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;", "getMarket", "()Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "getMarketMarketAlbum", "()Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getPoll", "()Lcom/vk/sdk/api/polls/dto/PollsPoll;", "getSticker", "()Lcom/vk/sdk/api/base/dto/BaseSticker;", "getStory", "()Lcom/vk/sdk/api/stories/dto/StoriesStory;", "getType", "()Lcom/vk/sdk/api/messages/dto/MessagesMessageAttachmentType;", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "getWallReply", "()Lcom/vk/sdk/api/wall/dto/WallWallComment;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesMessageAttachment {
    @SerializedName("audio")
    @Nullable
    private final AudioAudio audio;
    @SerializedName("audio_message")
    @Nullable
    private final MessagesAudioMessage audioMessage;
    @SerializedName(NotificationCompat.CATEGORY_CALL)
    @Nullable
    private final CallsCall call;
    @SerializedName("doc")
    @Nullable
    private final DocsDoc doc;
    @SerializedName("gift")
    @Nullable
    private final GiftsLayout gift;
    @SerializedName("graffiti")
    @Nullable
    private final MessagesGraffiti graffiti;
    @SerializedName("market")
    @Nullable
    private final MarketMarketItem market;
    @SerializedName("market_market_album")
    @Nullable
    private final MarketMarketAlbum marketMarketAlbum;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("poll")
    @Nullable
    private final PollsPoll poll;
    @SerializedName("sticker")
    @Nullable
    private final BaseSticker sticker;
    @SerializedName("story")
    @Nullable
    private final StoriesStory story;
    @SerializedName("type")
    @NotNull
    private final MessagesMessageAttachmentType type;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideoFull video;
    @SerializedName("wall_reply")
    @Nullable
    private final WallWallComment wallReply;

    public MessagesMessageAttachment(@NotNull MessagesMessageAttachmentType type, @Nullable AudioAudio audioAudio, @Nullable MessagesAudioMessage messagesAudioMessage, @Nullable CallsCall callsCall, @Nullable DocsDoc docsDoc, @Nullable GiftsLayout giftsLayout, @Nullable MessagesGraffiti messagesGraffiti, @Nullable MarketMarketItem marketMarketItem, @Nullable MarketMarketAlbum marketMarketAlbum, @Nullable PhotosPhoto photosPhoto, @Nullable BaseSticker baseSticker, @Nullable StoriesStory storiesStory, @Nullable VideoVideoFull videoVideoFull, @Nullable WallWallComment wallWallComment, @Nullable PollsPoll pollsPoll) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.audio = audioAudio;
        this.audioMessage = messagesAudioMessage;
        this.call = callsCall;
        this.doc = docsDoc;
        this.gift = giftsLayout;
        this.graffiti = messagesGraffiti;
        this.market = marketMarketItem;
        this.marketMarketAlbum = marketMarketAlbum;
        this.photo = photosPhoto;
        this.sticker = baseSticker;
        this.story = storiesStory;
        this.video = videoVideoFull;
        this.wallReply = wallWallComment;
        this.poll = pollsPoll;
    }

    @NotNull
    public final MessagesMessageAttachmentType component1() {
        return this.type;
    }

    @Nullable
    public final PhotosPhoto component10() {
        return this.photo;
    }

    @Nullable
    public final BaseSticker component11() {
        return this.sticker;
    }

    @Nullable
    public final StoriesStory component12() {
        return this.story;
    }

    @Nullable
    public final VideoVideoFull component13() {
        return this.video;
    }

    @Nullable
    public final WallWallComment component14() {
        return this.wallReply;
    }

    @Nullable
    public final PollsPoll component15() {
        return this.poll;
    }

    @Nullable
    public final AudioAudio component2() {
        return this.audio;
    }

    @Nullable
    public final MessagesAudioMessage component3() {
        return this.audioMessage;
    }

    @Nullable
    public final CallsCall component4() {
        return this.call;
    }

    @Nullable
    public final DocsDoc component5() {
        return this.doc;
    }

    @Nullable
    public final GiftsLayout component6() {
        return this.gift;
    }

    @Nullable
    public final MessagesGraffiti component7() {
        return this.graffiti;
    }

    @Nullable
    public final MarketMarketItem component8() {
        return this.market;
    }

    @Nullable
    public final MarketMarketAlbum component9() {
        return this.marketMarketAlbum;
    }

    @NotNull
    public final MessagesMessageAttachment copy(@NotNull MessagesMessageAttachmentType type, @Nullable AudioAudio audioAudio, @Nullable MessagesAudioMessage messagesAudioMessage, @Nullable CallsCall callsCall, @Nullable DocsDoc docsDoc, @Nullable GiftsLayout giftsLayout, @Nullable MessagesGraffiti messagesGraffiti, @Nullable MarketMarketItem marketMarketItem, @Nullable MarketMarketAlbum marketMarketAlbum, @Nullable PhotosPhoto photosPhoto, @Nullable BaseSticker baseSticker, @Nullable StoriesStory storiesStory, @Nullable VideoVideoFull videoVideoFull, @Nullable WallWallComment wallWallComment, @Nullable PollsPoll pollsPoll) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MessagesMessageAttachment(type, audioAudio, messagesAudioMessage, callsCall, docsDoc, giftsLayout, messagesGraffiti, marketMarketItem, marketMarketAlbum, photosPhoto, baseSticker, storiesStory, videoVideoFull, wallWallComment, pollsPoll);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesMessageAttachment) {
            MessagesMessageAttachment messagesMessageAttachment = (MessagesMessageAttachment) obj;
            return this.type == messagesMessageAttachment.type && Intrinsics.areEqual(this.audio, messagesMessageAttachment.audio) && Intrinsics.areEqual(this.audioMessage, messagesMessageAttachment.audioMessage) && Intrinsics.areEqual(this.call, messagesMessageAttachment.call) && Intrinsics.areEqual(this.doc, messagesMessageAttachment.doc) && Intrinsics.areEqual(this.gift, messagesMessageAttachment.gift) && Intrinsics.areEqual(this.graffiti, messagesMessageAttachment.graffiti) && Intrinsics.areEqual(this.market, messagesMessageAttachment.market) && Intrinsics.areEqual(this.marketMarketAlbum, messagesMessageAttachment.marketMarketAlbum) && Intrinsics.areEqual(this.photo, messagesMessageAttachment.photo) && Intrinsics.areEqual(this.sticker, messagesMessageAttachment.sticker) && Intrinsics.areEqual(this.story, messagesMessageAttachment.story) && Intrinsics.areEqual(this.video, messagesMessageAttachment.video) && Intrinsics.areEqual(this.wallReply, messagesMessageAttachment.wallReply) && Intrinsics.areEqual(this.poll, messagesMessageAttachment.poll);
        }
        return false;
    }

    @Nullable
    public final AudioAudio getAudio() {
        return this.audio;
    }

    @Nullable
    public final MessagesAudioMessage getAudioMessage() {
        return this.audioMessage;
    }

    @Nullable
    public final CallsCall getCall() {
        return this.call;
    }

    @Nullable
    public final DocsDoc getDoc() {
        return this.doc;
    }

    @Nullable
    public final GiftsLayout getGift() {
        return this.gift;
    }

    @Nullable
    public final MessagesGraffiti getGraffiti() {
        return this.graffiti;
    }

    @Nullable
    public final MarketMarketItem getMarket() {
        return this.market;
    }

    @Nullable
    public final MarketMarketAlbum getMarketMarketAlbum() {
        return this.marketMarketAlbum;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final PollsPoll getPoll() {
        return this.poll;
    }

    @Nullable
    public final BaseSticker getSticker() {
        return this.sticker;
    }

    @Nullable
    public final StoriesStory getStory() {
        return this.story;
    }

    @NotNull
    public final MessagesMessageAttachmentType getType() {
        return this.type;
    }

    @Nullable
    public final VideoVideoFull getVideo() {
        return this.video;
    }

    @Nullable
    public final WallWallComment getWallReply() {
        return this.wallReply;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        AudioAudio audioAudio = this.audio;
        int hashCode2 = (hashCode + (audioAudio == null ? 0 : audioAudio.hashCode())) * 31;
        MessagesAudioMessage messagesAudioMessage = this.audioMessage;
        int hashCode3 = (hashCode2 + (messagesAudioMessage == null ? 0 : messagesAudioMessage.hashCode())) * 31;
        CallsCall callsCall = this.call;
        int hashCode4 = (hashCode3 + (callsCall == null ? 0 : callsCall.hashCode())) * 31;
        DocsDoc docsDoc = this.doc;
        int hashCode5 = (hashCode4 + (docsDoc == null ? 0 : docsDoc.hashCode())) * 31;
        GiftsLayout giftsLayout = this.gift;
        int hashCode6 = (hashCode5 + (giftsLayout == null ? 0 : giftsLayout.hashCode())) * 31;
        MessagesGraffiti messagesGraffiti = this.graffiti;
        int hashCode7 = (hashCode6 + (messagesGraffiti == null ? 0 : messagesGraffiti.hashCode())) * 31;
        MarketMarketItem marketMarketItem = this.market;
        int hashCode8 = (hashCode7 + (marketMarketItem == null ? 0 : marketMarketItem.hashCode())) * 31;
        MarketMarketAlbum marketMarketAlbum = this.marketMarketAlbum;
        int hashCode9 = (hashCode8 + (marketMarketAlbum == null ? 0 : marketMarketAlbum.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode10 = (hashCode9 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        BaseSticker baseSticker = this.sticker;
        int hashCode11 = (hashCode10 + (baseSticker == null ? 0 : baseSticker.hashCode())) * 31;
        StoriesStory storiesStory = this.story;
        int hashCode12 = (hashCode11 + (storiesStory == null ? 0 : storiesStory.hashCode())) * 31;
        VideoVideoFull videoVideoFull = this.video;
        int hashCode13 = (hashCode12 + (videoVideoFull == null ? 0 : videoVideoFull.hashCode())) * 31;
        WallWallComment wallWallComment = this.wallReply;
        int hashCode14 = (hashCode13 + (wallWallComment == null ? 0 : wallWallComment.hashCode())) * 31;
        PollsPoll pollsPoll = this.poll;
        return hashCode14 + (pollsPoll != null ? pollsPoll.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        MessagesMessageAttachmentType messagesMessageAttachmentType = this.type;
        AudioAudio audioAudio = this.audio;
        MessagesAudioMessage messagesAudioMessage = this.audioMessage;
        CallsCall callsCall = this.call;
        DocsDoc docsDoc = this.doc;
        GiftsLayout giftsLayout = this.gift;
        MessagesGraffiti messagesGraffiti = this.graffiti;
        MarketMarketItem marketMarketItem = this.market;
        MarketMarketAlbum marketMarketAlbum = this.marketMarketAlbum;
        PhotosPhoto photosPhoto = this.photo;
        BaseSticker baseSticker = this.sticker;
        StoriesStory storiesStory = this.story;
        VideoVideoFull videoVideoFull = this.video;
        WallWallComment wallWallComment = this.wallReply;
        PollsPoll pollsPoll = this.poll;
        return "MessagesMessageAttachment(type=" + messagesMessageAttachmentType + ", audio=" + audioAudio + ", audioMessage=" + messagesAudioMessage + ", call=" + callsCall + ", doc=" + docsDoc + ", gift=" + giftsLayout + ", graffiti=" + messagesGraffiti + ", market=" + marketMarketItem + ", marketMarketAlbum=" + marketMarketAlbum + ", photo=" + photosPhoto + ", sticker=" + baseSticker + ", story=" + storiesStory + ", video=" + videoVideoFull + ", wallReply=" + wallWallComment + ", poll=" + pollsPoll + ")";
    }

    public /* synthetic */ MessagesMessageAttachment(MessagesMessageAttachmentType messagesMessageAttachmentType, AudioAudio audioAudio, MessagesAudioMessage messagesAudioMessage, CallsCall callsCall, DocsDoc docsDoc, GiftsLayout giftsLayout, MessagesGraffiti messagesGraffiti, MarketMarketItem marketMarketItem, MarketMarketAlbum marketMarketAlbum, PhotosPhoto photosPhoto, BaseSticker baseSticker, StoriesStory storiesStory, VideoVideoFull videoVideoFull, WallWallComment wallWallComment, PollsPoll pollsPoll, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesMessageAttachmentType, (i9 & 2) != 0 ? null : audioAudio, (i9 & 4) != 0 ? null : messagesAudioMessage, (i9 & 8) != 0 ? null : callsCall, (i9 & 16) != 0 ? null : docsDoc, (i9 & 32) != 0 ? null : giftsLayout, (i9 & 64) != 0 ? null : messagesGraffiti, (i9 & 128) != 0 ? null : marketMarketItem, (i9 & 256) != 0 ? null : marketMarketAlbum, (i9 & 512) != 0 ? null : photosPhoto, (i9 & 1024) != 0 ? null : baseSticker, (i9 & 2048) != 0 ? null : storiesStory, (i9 & 4096) != 0 ? null : videoVideoFull, (i9 & 8192) != 0 ? null : wallWallComment, (i9 & 16384) == 0 ? pollsPoll : null);
    }
}
