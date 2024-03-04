package com.vk.sdk.api.wall.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.audio.dto.AudioAudio;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.base.dto.BaseSticker;
import com.vk.sdk.api.docs.dto.DocsDoc;
import com.vk.sdk.api.market.dto.MarketMarketAlbum;
import com.vk.sdk.api.market.dto.MarketMarketItem;
import com.vk.sdk.api.pages.dto.PagesWikipageFull;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.video.dto.VideoVideo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010\u0018J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u008b\u0001\u0010:\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÆ\u0001J\u0013\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010>\u001a\u00020?HÖ\u0001J\t\u0010@\u001a\u00020AHÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.¨\u0006B"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallCommentAttachment;", "", "type", "Lcom/vk/sdk/api/wall/dto/WallCommentAttachmentType;", "audio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "doc", "Lcom/vk/sdk/api/docs/dto/DocsDoc;", "link", "Lcom/vk/sdk/api/base/dto/BaseLink;", "market", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "marketMarketAlbum", "Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", "note", "Lcom/vk/sdk/api/wall/dto/WallAttachedNote;", "page", "Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "sticker", "Lcom/vk/sdk/api/base/dto/BaseSticker;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideo;", "(Lcom/vk/sdk/api/wall/dto/WallCommentAttachmentType;Lcom/vk/sdk/api/audio/dto/AudioAudio;Lcom/vk/sdk/api/docs/dto/DocsDoc;Lcom/vk/sdk/api/base/dto/BaseLink;Lcom/vk/sdk/api/market/dto/MarketMarketItem;Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;Lcom/vk/sdk/api/wall/dto/WallAttachedNote;Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/base/dto/BaseSticker;Lcom/vk/sdk/api/video/dto/VideoVideo;)V", "getAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "getDoc", "()Lcom/vk/sdk/api/docs/dto/DocsDoc;", "getLink", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getMarket", "()Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "getMarketMarketAlbum", "()Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", "getNote", "()Lcom/vk/sdk/api/wall/dto/WallAttachedNote;", "getPage", "()Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getSticker", "()Lcom/vk/sdk/api/base/dto/BaseSticker;", "getType", "()Lcom/vk/sdk/api/wall/dto/WallCommentAttachmentType;", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideo;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallCommentAttachment {
    @SerializedName("audio")
    @Nullable
    private final AudioAudio audio;
    @SerializedName("doc")
    @Nullable
    private final DocsDoc doc;
    @SerializedName("link")
    @Nullable
    private final BaseLink link;
    @SerializedName("market")
    @Nullable
    private final MarketMarketItem market;
    @SerializedName("market_market_album")
    @Nullable
    private final MarketMarketAlbum marketMarketAlbum;
    @SerializedName("note")
    @Nullable
    private final WallAttachedNote note;
    @SerializedName("page")
    @Nullable
    private final PagesWikipageFull page;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("sticker")
    @Nullable
    private final BaseSticker sticker;
    @SerializedName("type")
    @NotNull
    private final WallCommentAttachmentType type;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideo video;

    public WallCommentAttachment(@NotNull WallCommentAttachmentType type, @Nullable AudioAudio audioAudio, @Nullable DocsDoc docsDoc, @Nullable BaseLink baseLink, @Nullable MarketMarketItem marketMarketItem, @Nullable MarketMarketAlbum marketMarketAlbum, @Nullable WallAttachedNote wallAttachedNote, @Nullable PagesWikipageFull pagesWikipageFull, @Nullable PhotosPhoto photosPhoto, @Nullable BaseSticker baseSticker, @Nullable VideoVideo videoVideo) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.audio = audioAudio;
        this.doc = docsDoc;
        this.link = baseLink;
        this.market = marketMarketItem;
        this.marketMarketAlbum = marketMarketAlbum;
        this.note = wallAttachedNote;
        this.page = pagesWikipageFull;
        this.photo = photosPhoto;
        this.sticker = baseSticker;
        this.video = videoVideo;
    }

    @NotNull
    public final WallCommentAttachmentType component1() {
        return this.type;
    }

    @Nullable
    public final BaseSticker component10() {
        return this.sticker;
    }

    @Nullable
    public final VideoVideo component11() {
        return this.video;
    }

    @Nullable
    public final AudioAudio component2() {
        return this.audio;
    }

    @Nullable
    public final DocsDoc component3() {
        return this.doc;
    }

    @Nullable
    public final BaseLink component4() {
        return this.link;
    }

    @Nullable
    public final MarketMarketItem component5() {
        return this.market;
    }

    @Nullable
    public final MarketMarketAlbum component6() {
        return this.marketMarketAlbum;
    }

    @Nullable
    public final WallAttachedNote component7() {
        return this.note;
    }

    @Nullable
    public final PagesWikipageFull component8() {
        return this.page;
    }

    @Nullable
    public final PhotosPhoto component9() {
        return this.photo;
    }

    @NotNull
    public final WallCommentAttachment copy(@NotNull WallCommentAttachmentType type, @Nullable AudioAudio audioAudio, @Nullable DocsDoc docsDoc, @Nullable BaseLink baseLink, @Nullable MarketMarketItem marketMarketItem, @Nullable MarketMarketAlbum marketMarketAlbum, @Nullable WallAttachedNote wallAttachedNote, @Nullable PagesWikipageFull pagesWikipageFull, @Nullable PhotosPhoto photosPhoto, @Nullable BaseSticker baseSticker, @Nullable VideoVideo videoVideo) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new WallCommentAttachment(type, audioAudio, docsDoc, baseLink, marketMarketItem, marketMarketAlbum, wallAttachedNote, pagesWikipageFull, photosPhoto, baseSticker, videoVideo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallCommentAttachment) {
            WallCommentAttachment wallCommentAttachment = (WallCommentAttachment) obj;
            return this.type == wallCommentAttachment.type && Intrinsics.areEqual(this.audio, wallCommentAttachment.audio) && Intrinsics.areEqual(this.doc, wallCommentAttachment.doc) && Intrinsics.areEqual(this.link, wallCommentAttachment.link) && Intrinsics.areEqual(this.market, wallCommentAttachment.market) && Intrinsics.areEqual(this.marketMarketAlbum, wallCommentAttachment.marketMarketAlbum) && Intrinsics.areEqual(this.note, wallCommentAttachment.note) && Intrinsics.areEqual(this.page, wallCommentAttachment.page) && Intrinsics.areEqual(this.photo, wallCommentAttachment.photo) && Intrinsics.areEqual(this.sticker, wallCommentAttachment.sticker) && Intrinsics.areEqual(this.video, wallCommentAttachment.video);
        }
        return false;
    }

    @Nullable
    public final AudioAudio getAudio() {
        return this.audio;
    }

    @Nullable
    public final DocsDoc getDoc() {
        return this.doc;
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
    public final MarketMarketAlbum getMarketMarketAlbum() {
        return this.marketMarketAlbum;
    }

    @Nullable
    public final WallAttachedNote getNote() {
        return this.note;
    }

    @Nullable
    public final PagesWikipageFull getPage() {
        return this.page;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final BaseSticker getSticker() {
        return this.sticker;
    }

    @NotNull
    public final WallCommentAttachmentType getType() {
        return this.type;
    }

    @Nullable
    public final VideoVideo getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        AudioAudio audioAudio = this.audio;
        int hashCode2 = (hashCode + (audioAudio == null ? 0 : audioAudio.hashCode())) * 31;
        DocsDoc docsDoc = this.doc;
        int hashCode3 = (hashCode2 + (docsDoc == null ? 0 : docsDoc.hashCode())) * 31;
        BaseLink baseLink = this.link;
        int hashCode4 = (hashCode3 + (baseLink == null ? 0 : baseLink.hashCode())) * 31;
        MarketMarketItem marketMarketItem = this.market;
        int hashCode5 = (hashCode4 + (marketMarketItem == null ? 0 : marketMarketItem.hashCode())) * 31;
        MarketMarketAlbum marketMarketAlbum = this.marketMarketAlbum;
        int hashCode6 = (hashCode5 + (marketMarketAlbum == null ? 0 : marketMarketAlbum.hashCode())) * 31;
        WallAttachedNote wallAttachedNote = this.note;
        int hashCode7 = (hashCode6 + (wallAttachedNote == null ? 0 : wallAttachedNote.hashCode())) * 31;
        PagesWikipageFull pagesWikipageFull = this.page;
        int hashCode8 = (hashCode7 + (pagesWikipageFull == null ? 0 : pagesWikipageFull.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode9 = (hashCode8 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        BaseSticker baseSticker = this.sticker;
        int hashCode10 = (hashCode9 + (baseSticker == null ? 0 : baseSticker.hashCode())) * 31;
        VideoVideo videoVideo = this.video;
        return hashCode10 + (videoVideo != null ? videoVideo.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        WallCommentAttachmentType wallCommentAttachmentType = this.type;
        AudioAudio audioAudio = this.audio;
        DocsDoc docsDoc = this.doc;
        BaseLink baseLink = this.link;
        MarketMarketItem marketMarketItem = this.market;
        MarketMarketAlbum marketMarketAlbum = this.marketMarketAlbum;
        WallAttachedNote wallAttachedNote = this.note;
        PagesWikipageFull pagesWikipageFull = this.page;
        PhotosPhoto photosPhoto = this.photo;
        BaseSticker baseSticker = this.sticker;
        VideoVideo videoVideo = this.video;
        return "WallCommentAttachment(type=" + wallCommentAttachmentType + ", audio=" + audioAudio + ", doc=" + docsDoc + ", link=" + baseLink + ", market=" + marketMarketItem + ", marketMarketAlbum=" + marketMarketAlbum + ", note=" + wallAttachedNote + ", page=" + pagesWikipageFull + ", photo=" + photosPhoto + ", sticker=" + baseSticker + ", video=" + videoVideo + ")";
    }

    public /* synthetic */ WallCommentAttachment(WallCommentAttachmentType wallCommentAttachmentType, AudioAudio audioAudio, DocsDoc docsDoc, BaseLink baseLink, MarketMarketItem marketMarketItem, MarketMarketAlbum marketMarketAlbum, WallAttachedNote wallAttachedNote, PagesWikipageFull pagesWikipageFull, PhotosPhoto photosPhoto, BaseSticker baseSticker, VideoVideo videoVideo, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(wallCommentAttachmentType, (i9 & 2) != 0 ? null : audioAudio, (i9 & 4) != 0 ? null : docsDoc, (i9 & 8) != 0 ? null : baseLink, (i9 & 16) != 0 ? null : marketMarketItem, (i9 & 32) != 0 ? null : marketMarketAlbum, (i9 & 64) != 0 ? null : wallAttachedNote, (i9 & 128) != 0 ? null : pagesWikipageFull, (i9 & 256) != 0 ? null : photosPhoto, (i9 & 512) != 0 ? null : baseSticker, (i9 & 1024) == 0 ? videoVideo : null);
    }
}
