package com.vk.sdk.api.messages.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.audio.dto.AudioAudio;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.docs.dto.DocsDoc;
import com.vk.sdk.api.market.dto.MarketMarketItem;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.video.dto.VideoVideo;
import com.vk.sdk.api.wall.dto.WallWallpostFull;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u007f\u00105\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÆ\u0001J\u0013\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00109\u001a\u00020:HÖ\u0001J\t\u0010;\u001a\u00020<HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*¨\u0006="}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachment;", "", "type", "Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachmentType;", "audio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "audioMessage", "Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", "doc", "Lcom/vk/sdk/api/docs/dto/DocsDoc;", "graffiti", "Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;", "link", "Lcom/vk/sdk/api/base/dto/BaseLink;", "market", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideo;", "wall", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "(Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachmentType;Lcom/vk/sdk/api/audio/dto/AudioAudio;Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;Lcom/vk/sdk/api/docs/dto/DocsDoc;Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;Lcom/vk/sdk/api/base/dto/BaseLink;Lcom/vk/sdk/api/market/dto/MarketMarketItem;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/video/dto/VideoVideo;Lcom/vk/sdk/api/wall/dto/WallWallpostFull;)V", "getAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "getAudioMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", "getDoc", "()Lcom/vk/sdk/api/docs/dto/DocsDoc;", "getGraffiti", "()Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;", "getLink", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getMarket", "()Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getType", "()Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachmentType;", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideo;", "getWall", "()Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesHistoryMessageAttachment {
    @SerializedName("audio")
    @Nullable
    private final AudioAudio audio;
    @SerializedName("audio_message")
    @Nullable
    private final MessagesAudioMessage audioMessage;
    @SerializedName("doc")
    @Nullable
    private final DocsDoc doc;
    @SerializedName("graffiti")
    @Nullable
    private final MessagesGraffiti graffiti;
    @SerializedName("link")
    @Nullable
    private final BaseLink link;
    @SerializedName("market")
    @Nullable
    private final MarketMarketItem market;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("type")
    @NotNull
    private final MessagesHistoryMessageAttachmentType type;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideo video;
    @SerializedName("wall")
    @Nullable
    private final WallWallpostFull wall;

    public MessagesHistoryMessageAttachment(@NotNull MessagesHistoryMessageAttachmentType type, @Nullable AudioAudio audioAudio, @Nullable MessagesAudioMessage messagesAudioMessage, @Nullable DocsDoc docsDoc, @Nullable MessagesGraffiti messagesGraffiti, @Nullable BaseLink baseLink, @Nullable MarketMarketItem marketMarketItem, @Nullable PhotosPhoto photosPhoto, @Nullable VideoVideo videoVideo, @Nullable WallWallpostFull wallWallpostFull) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.audio = audioAudio;
        this.audioMessage = messagesAudioMessage;
        this.doc = docsDoc;
        this.graffiti = messagesGraffiti;
        this.link = baseLink;
        this.market = marketMarketItem;
        this.photo = photosPhoto;
        this.video = videoVideo;
        this.wall = wallWallpostFull;
    }

    @NotNull
    public final MessagesHistoryMessageAttachmentType component1() {
        return this.type;
    }

    @Nullable
    public final WallWallpostFull component10() {
        return this.wall;
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
    public final DocsDoc component4() {
        return this.doc;
    }

    @Nullable
    public final MessagesGraffiti component5() {
        return this.graffiti;
    }

    @Nullable
    public final BaseLink component6() {
        return this.link;
    }

    @Nullable
    public final MarketMarketItem component7() {
        return this.market;
    }

    @Nullable
    public final PhotosPhoto component8() {
        return this.photo;
    }

    @Nullable
    public final VideoVideo component9() {
        return this.video;
    }

    @NotNull
    public final MessagesHistoryMessageAttachment copy(@NotNull MessagesHistoryMessageAttachmentType type, @Nullable AudioAudio audioAudio, @Nullable MessagesAudioMessage messagesAudioMessage, @Nullable DocsDoc docsDoc, @Nullable MessagesGraffiti messagesGraffiti, @Nullable BaseLink baseLink, @Nullable MarketMarketItem marketMarketItem, @Nullable PhotosPhoto photosPhoto, @Nullable VideoVideo videoVideo, @Nullable WallWallpostFull wallWallpostFull) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MessagesHistoryMessageAttachment(type, audioAudio, messagesAudioMessage, docsDoc, messagesGraffiti, baseLink, marketMarketItem, photosPhoto, videoVideo, wallWallpostFull);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesHistoryMessageAttachment) {
            MessagesHistoryMessageAttachment messagesHistoryMessageAttachment = (MessagesHistoryMessageAttachment) obj;
            return this.type == messagesHistoryMessageAttachment.type && Intrinsics.areEqual(this.audio, messagesHistoryMessageAttachment.audio) && Intrinsics.areEqual(this.audioMessage, messagesHistoryMessageAttachment.audioMessage) && Intrinsics.areEqual(this.doc, messagesHistoryMessageAttachment.doc) && Intrinsics.areEqual(this.graffiti, messagesHistoryMessageAttachment.graffiti) && Intrinsics.areEqual(this.link, messagesHistoryMessageAttachment.link) && Intrinsics.areEqual(this.market, messagesHistoryMessageAttachment.market) && Intrinsics.areEqual(this.photo, messagesHistoryMessageAttachment.photo) && Intrinsics.areEqual(this.video, messagesHistoryMessageAttachment.video) && Intrinsics.areEqual(this.wall, messagesHistoryMessageAttachment.wall);
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
    public final DocsDoc getDoc() {
        return this.doc;
    }

    @Nullable
    public final MessagesGraffiti getGraffiti() {
        return this.graffiti;
    }

    @Nullable
    public final BaseLink getLink() {
        return this.link;
    }

    @Nullable
    public final MarketMarketItem getMarket() {
        return this.market;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @NotNull
    public final MessagesHistoryMessageAttachmentType getType() {
        return this.type;
    }

    @Nullable
    public final VideoVideo getVideo() {
        return this.video;
    }

    @Nullable
    public final WallWallpostFull getWall() {
        return this.wall;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        AudioAudio audioAudio = this.audio;
        int hashCode2 = (hashCode + (audioAudio == null ? 0 : audioAudio.hashCode())) * 31;
        MessagesAudioMessage messagesAudioMessage = this.audioMessage;
        int hashCode3 = (hashCode2 + (messagesAudioMessage == null ? 0 : messagesAudioMessage.hashCode())) * 31;
        DocsDoc docsDoc = this.doc;
        int hashCode4 = (hashCode3 + (docsDoc == null ? 0 : docsDoc.hashCode())) * 31;
        MessagesGraffiti messagesGraffiti = this.graffiti;
        int hashCode5 = (hashCode4 + (messagesGraffiti == null ? 0 : messagesGraffiti.hashCode())) * 31;
        BaseLink baseLink = this.link;
        int hashCode6 = (hashCode5 + (baseLink == null ? 0 : baseLink.hashCode())) * 31;
        MarketMarketItem marketMarketItem = this.market;
        int hashCode7 = (hashCode6 + (marketMarketItem == null ? 0 : marketMarketItem.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode8 = (hashCode7 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        VideoVideo videoVideo = this.video;
        int hashCode9 = (hashCode8 + (videoVideo == null ? 0 : videoVideo.hashCode())) * 31;
        WallWallpostFull wallWallpostFull = this.wall;
        return hashCode9 + (wallWallpostFull != null ? wallWallpostFull.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        MessagesHistoryMessageAttachmentType messagesHistoryMessageAttachmentType = this.type;
        AudioAudio audioAudio = this.audio;
        MessagesAudioMessage messagesAudioMessage = this.audioMessage;
        DocsDoc docsDoc = this.doc;
        MessagesGraffiti messagesGraffiti = this.graffiti;
        BaseLink baseLink = this.link;
        MarketMarketItem marketMarketItem = this.market;
        PhotosPhoto photosPhoto = this.photo;
        VideoVideo videoVideo = this.video;
        WallWallpostFull wallWallpostFull = this.wall;
        return "MessagesHistoryMessageAttachment(type=" + messagesHistoryMessageAttachmentType + ", audio=" + audioAudio + ", audioMessage=" + messagesAudioMessage + ", doc=" + docsDoc + ", graffiti=" + messagesGraffiti + ", link=" + baseLink + ", market=" + marketMarketItem + ", photo=" + photosPhoto + ", video=" + videoVideo + ", wall=" + wallWallpostFull + ")";
    }

    public /* synthetic */ MessagesHistoryMessageAttachment(MessagesHistoryMessageAttachmentType messagesHistoryMessageAttachmentType, AudioAudio audioAudio, MessagesAudioMessage messagesAudioMessage, DocsDoc docsDoc, MessagesGraffiti messagesGraffiti, BaseLink baseLink, MarketMarketItem marketMarketItem, PhotosPhoto photosPhoto, VideoVideo videoVideo, WallWallpostFull wallWallpostFull, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesHistoryMessageAttachmentType, (i9 & 2) != 0 ? null : audioAudio, (i9 & 4) != 0 ? null : messagesAudioMessage, (i9 & 8) != 0 ? null : docsDoc, (i9 & 16) != 0 ? null : messagesGraffiti, (i9 & 32) != 0 ? null : baseLink, (i9 & 64) != 0 ? null : marketMarketItem, (i9 & 128) != 0 ? null : photosPhoto, (i9 & 256) != 0 ? null : videoVideo, (i9 & 512) == 0 ? wallWallpostFull : null);
    }
}
