package com.vk.sdk.api.wall.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.sdk.api.audio.dto.AudioAudio;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.docs.dto.DocsDoc;
import com.vk.sdk.api.events.dto.EventsEventAttach;
import com.vk.sdk.api.groups.dto.GroupsGroupAttach;
import com.vk.sdk.api.market.dto.MarketMarketAlbum;
import com.vk.sdk.api.market.dto.MarketMarketItem;
import com.vk.sdk.api.notes.dto.NotesNote;
import com.vk.sdk.api.pages.dto.PagesWikipageFull;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.photos.dto.PhotosPhotoAlbum;
import com.vk.sdk.api.polls.dto.PollsPoll;
import com.vk.sdk.api.video.dto.VideoVideoFull;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b9\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BÙ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%¢\u0006\u0002\u0010&J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010!HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010#HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010%HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0013HÆ\u0003Jß\u0001\u0010]\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%HÆ\u0001J\u0013\u0010^\u001a\u00020_2\b\u0010`\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010a\u001a\u00020bHÖ\u0001J\t\u0010c\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010BR\u0018\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u0018\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u0018\u0010$\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bI\u0010J¨\u0006d"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallpostAttachment;", "", "type", "Lcom/vk/sdk/api/wall/dto/WallWallpostAttachmentType;", "accessKey", "", "album", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoAlbum;", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "Lcom/vk/sdk/api/wall/dto/WallAppPost;", "audio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "doc", "Lcom/vk/sdk/api/docs/dto/DocsDoc;", "event", "Lcom/vk/sdk/api/events/dto/EventsEventAttach;", "group", "Lcom/vk/sdk/api/groups/dto/GroupsGroupAttach;", "graffiti", "Lcom/vk/sdk/api/wall/dto/WallGraffiti;", "link", "Lcom/vk/sdk/api/base/dto/BaseLink;", "market", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "marketAlbum", "Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", "note", "Lcom/vk/sdk/api/notes/dto/NotesNote;", "page", "Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "poll", "Lcom/vk/sdk/api/polls/dto/PollsPoll;", "postedPhoto", "Lcom/vk/sdk/api/wall/dto/WallPostedPhoto;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "(Lcom/vk/sdk/api/wall/dto/WallWallpostAttachmentType;Ljava/lang/String;Lcom/vk/sdk/api/photos/dto/PhotosPhotoAlbum;Lcom/vk/sdk/api/wall/dto/WallAppPost;Lcom/vk/sdk/api/audio/dto/AudioAudio;Lcom/vk/sdk/api/docs/dto/DocsDoc;Lcom/vk/sdk/api/events/dto/EventsEventAttach;Lcom/vk/sdk/api/groups/dto/GroupsGroupAttach;Lcom/vk/sdk/api/wall/dto/WallGraffiti;Lcom/vk/sdk/api/base/dto/BaseLink;Lcom/vk/sdk/api/market/dto/MarketMarketItem;Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;Lcom/vk/sdk/api/notes/dto/NotesNote;Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/polls/dto/PollsPoll;Lcom/vk/sdk/api/wall/dto/WallPostedPhoto;Lcom/vk/sdk/api/video/dto/VideoVideoFull;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbum", "()Lcom/vk/sdk/api/photos/dto/PhotosPhotoAlbum;", "getApp", "()Lcom/vk/sdk/api/wall/dto/WallAppPost;", "getAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "getDoc", "()Lcom/vk/sdk/api/docs/dto/DocsDoc;", "getEvent", "()Lcom/vk/sdk/api/events/dto/EventsEventAttach;", "getGraffiti", "()Lcom/vk/sdk/api/wall/dto/WallGraffiti;", "getGroup", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupAttach;", "getLink", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getMarket", "()Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "getMarketAlbum", "()Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", "getNote", "()Lcom/vk/sdk/api/notes/dto/NotesNote;", "getPage", "()Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getPoll", "()Lcom/vk/sdk/api/polls/dto/PollsPoll;", "getPostedPhoto", "()Lcom/vk/sdk/api/wall/dto/WallPostedPhoto;", "getType", "()Lcom/vk/sdk/api/wall/dto/WallWallpostAttachmentType;", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallWallpostAttachment {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("album")
    @Nullable
    private final PhotosPhotoAlbum album;
    @SerializedName(PushConstants.EXTRA_APPLICATION_PENDING_INTENT)
    @Nullable
    private final WallAppPost app;
    @SerializedName("audio")
    @Nullable
    private final AudioAudio audio;
    @SerializedName("doc")
    @Nullable
    private final DocsDoc doc;
    @SerializedName("event")
    @Nullable
    private final EventsEventAttach event;
    @SerializedName("graffiti")
    @Nullable
    private final WallGraffiti graffiti;
    @SerializedName("group")
    @Nullable
    private final GroupsGroupAttach group;
    @SerializedName("link")
    @Nullable
    private final BaseLink link;
    @SerializedName("market")
    @Nullable
    private final MarketMarketItem market;
    @SerializedName("market_album")
    @Nullable
    private final MarketMarketAlbum marketAlbum;
    @SerializedName("note")
    @Nullable
    private final NotesNote note;
    @SerializedName("page")
    @Nullable
    private final PagesWikipageFull page;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("poll")
    @Nullable
    private final PollsPoll poll;
    @SerializedName("posted_photo")
    @Nullable
    private final WallPostedPhoto postedPhoto;
    @SerializedName("type")
    @NotNull
    private final WallWallpostAttachmentType type;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideoFull video;

    public WallWallpostAttachment(@NotNull WallWallpostAttachmentType type, @Nullable String str, @Nullable PhotosPhotoAlbum photosPhotoAlbum, @Nullable WallAppPost wallAppPost, @Nullable AudioAudio audioAudio, @Nullable DocsDoc docsDoc, @Nullable EventsEventAttach eventsEventAttach, @Nullable GroupsGroupAttach groupsGroupAttach, @Nullable WallGraffiti wallGraffiti, @Nullable BaseLink baseLink, @Nullable MarketMarketItem marketMarketItem, @Nullable MarketMarketAlbum marketMarketAlbum, @Nullable NotesNote notesNote, @Nullable PagesWikipageFull pagesWikipageFull, @Nullable PhotosPhoto photosPhoto, @Nullable PollsPoll pollsPoll, @Nullable WallPostedPhoto wallPostedPhoto, @Nullable VideoVideoFull videoVideoFull) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.accessKey = str;
        this.album = photosPhotoAlbum;
        this.app = wallAppPost;
        this.audio = audioAudio;
        this.doc = docsDoc;
        this.event = eventsEventAttach;
        this.group = groupsGroupAttach;
        this.graffiti = wallGraffiti;
        this.link = baseLink;
        this.market = marketMarketItem;
        this.marketAlbum = marketMarketAlbum;
        this.note = notesNote;
        this.page = pagesWikipageFull;
        this.photo = photosPhoto;
        this.poll = pollsPoll;
        this.postedPhoto = wallPostedPhoto;
        this.video = videoVideoFull;
    }

    @NotNull
    public final WallWallpostAttachmentType component1() {
        return this.type;
    }

    @Nullable
    public final BaseLink component10() {
        return this.link;
    }

    @Nullable
    public final MarketMarketItem component11() {
        return this.market;
    }

    @Nullable
    public final MarketMarketAlbum component12() {
        return this.marketAlbum;
    }

    @Nullable
    public final NotesNote component13() {
        return this.note;
    }

    @Nullable
    public final PagesWikipageFull component14() {
        return this.page;
    }

    @Nullable
    public final PhotosPhoto component15() {
        return this.photo;
    }

    @Nullable
    public final PollsPoll component16() {
        return this.poll;
    }

    @Nullable
    public final WallPostedPhoto component17() {
        return this.postedPhoto;
    }

    @Nullable
    public final VideoVideoFull component18() {
        return this.video;
    }

    @Nullable
    public final String component2() {
        return this.accessKey;
    }

    @Nullable
    public final PhotosPhotoAlbum component3() {
        return this.album;
    }

    @Nullable
    public final WallAppPost component4() {
        return this.app;
    }

    @Nullable
    public final AudioAudio component5() {
        return this.audio;
    }

    @Nullable
    public final DocsDoc component6() {
        return this.doc;
    }

    @Nullable
    public final EventsEventAttach component7() {
        return this.event;
    }

    @Nullable
    public final GroupsGroupAttach component8() {
        return this.group;
    }

    @Nullable
    public final WallGraffiti component9() {
        return this.graffiti;
    }

    @NotNull
    public final WallWallpostAttachment copy(@NotNull WallWallpostAttachmentType type, @Nullable String str, @Nullable PhotosPhotoAlbum photosPhotoAlbum, @Nullable WallAppPost wallAppPost, @Nullable AudioAudio audioAudio, @Nullable DocsDoc docsDoc, @Nullable EventsEventAttach eventsEventAttach, @Nullable GroupsGroupAttach groupsGroupAttach, @Nullable WallGraffiti wallGraffiti, @Nullable BaseLink baseLink, @Nullable MarketMarketItem marketMarketItem, @Nullable MarketMarketAlbum marketMarketAlbum, @Nullable NotesNote notesNote, @Nullable PagesWikipageFull pagesWikipageFull, @Nullable PhotosPhoto photosPhoto, @Nullable PollsPoll pollsPoll, @Nullable WallPostedPhoto wallPostedPhoto, @Nullable VideoVideoFull videoVideoFull) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new WallWallpostAttachment(type, str, photosPhotoAlbum, wallAppPost, audioAudio, docsDoc, eventsEventAttach, groupsGroupAttach, wallGraffiti, baseLink, marketMarketItem, marketMarketAlbum, notesNote, pagesWikipageFull, photosPhoto, pollsPoll, wallPostedPhoto, videoVideoFull);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallWallpostAttachment) {
            WallWallpostAttachment wallWallpostAttachment = (WallWallpostAttachment) obj;
            return this.type == wallWallpostAttachment.type && Intrinsics.areEqual(this.accessKey, wallWallpostAttachment.accessKey) && Intrinsics.areEqual(this.album, wallWallpostAttachment.album) && Intrinsics.areEqual(this.app, wallWallpostAttachment.app) && Intrinsics.areEqual(this.audio, wallWallpostAttachment.audio) && Intrinsics.areEqual(this.doc, wallWallpostAttachment.doc) && Intrinsics.areEqual(this.event, wallWallpostAttachment.event) && Intrinsics.areEqual(this.group, wallWallpostAttachment.group) && Intrinsics.areEqual(this.graffiti, wallWallpostAttachment.graffiti) && Intrinsics.areEqual(this.link, wallWallpostAttachment.link) && Intrinsics.areEqual(this.market, wallWallpostAttachment.market) && Intrinsics.areEqual(this.marketAlbum, wallWallpostAttachment.marketAlbum) && Intrinsics.areEqual(this.note, wallWallpostAttachment.note) && Intrinsics.areEqual(this.page, wallWallpostAttachment.page) && Intrinsics.areEqual(this.photo, wallWallpostAttachment.photo) && Intrinsics.areEqual(this.poll, wallWallpostAttachment.poll) && Intrinsics.areEqual(this.postedPhoto, wallWallpostAttachment.postedPhoto) && Intrinsics.areEqual(this.video, wallWallpostAttachment.video);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final PhotosPhotoAlbum getAlbum() {
        return this.album;
    }

    @Nullable
    public final WallAppPost getApp() {
        return this.app;
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
    public final EventsEventAttach getEvent() {
        return this.event;
    }

    @Nullable
    public final WallGraffiti getGraffiti() {
        return this.graffiti;
    }

    @Nullable
    public final GroupsGroupAttach getGroup() {
        return this.group;
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
    public final MarketMarketAlbum getMarketAlbum() {
        return this.marketAlbum;
    }

    @Nullable
    public final NotesNote getNote() {
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
    public final PollsPoll getPoll() {
        return this.poll;
    }

    @Nullable
    public final WallPostedPhoto getPostedPhoto() {
        return this.postedPhoto;
    }

    @NotNull
    public final WallWallpostAttachmentType getType() {
        return this.type;
    }

    @Nullable
    public final VideoVideoFull getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        PhotosPhotoAlbum photosPhotoAlbum = this.album;
        int hashCode3 = (hashCode2 + (photosPhotoAlbum == null ? 0 : photosPhotoAlbum.hashCode())) * 31;
        WallAppPost wallAppPost = this.app;
        int hashCode4 = (hashCode3 + (wallAppPost == null ? 0 : wallAppPost.hashCode())) * 31;
        AudioAudio audioAudio = this.audio;
        int hashCode5 = (hashCode4 + (audioAudio == null ? 0 : audioAudio.hashCode())) * 31;
        DocsDoc docsDoc = this.doc;
        int hashCode6 = (hashCode5 + (docsDoc == null ? 0 : docsDoc.hashCode())) * 31;
        EventsEventAttach eventsEventAttach = this.event;
        int hashCode7 = (hashCode6 + (eventsEventAttach == null ? 0 : eventsEventAttach.hashCode())) * 31;
        GroupsGroupAttach groupsGroupAttach = this.group;
        int hashCode8 = (hashCode7 + (groupsGroupAttach == null ? 0 : groupsGroupAttach.hashCode())) * 31;
        WallGraffiti wallGraffiti = this.graffiti;
        int hashCode9 = (hashCode8 + (wallGraffiti == null ? 0 : wallGraffiti.hashCode())) * 31;
        BaseLink baseLink = this.link;
        int hashCode10 = (hashCode9 + (baseLink == null ? 0 : baseLink.hashCode())) * 31;
        MarketMarketItem marketMarketItem = this.market;
        int hashCode11 = (hashCode10 + (marketMarketItem == null ? 0 : marketMarketItem.hashCode())) * 31;
        MarketMarketAlbum marketMarketAlbum = this.marketAlbum;
        int hashCode12 = (hashCode11 + (marketMarketAlbum == null ? 0 : marketMarketAlbum.hashCode())) * 31;
        NotesNote notesNote = this.note;
        int hashCode13 = (hashCode12 + (notesNote == null ? 0 : notesNote.hashCode())) * 31;
        PagesWikipageFull pagesWikipageFull = this.page;
        int hashCode14 = (hashCode13 + (pagesWikipageFull == null ? 0 : pagesWikipageFull.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode15 = (hashCode14 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        PollsPoll pollsPoll = this.poll;
        int hashCode16 = (hashCode15 + (pollsPoll == null ? 0 : pollsPoll.hashCode())) * 31;
        WallPostedPhoto wallPostedPhoto = this.postedPhoto;
        int hashCode17 = (hashCode16 + (wallPostedPhoto == null ? 0 : wallPostedPhoto.hashCode())) * 31;
        VideoVideoFull videoVideoFull = this.video;
        return hashCode17 + (videoVideoFull != null ? videoVideoFull.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        WallWallpostAttachmentType wallWallpostAttachmentType = this.type;
        String str = this.accessKey;
        PhotosPhotoAlbum photosPhotoAlbum = this.album;
        WallAppPost wallAppPost = this.app;
        AudioAudio audioAudio = this.audio;
        DocsDoc docsDoc = this.doc;
        EventsEventAttach eventsEventAttach = this.event;
        GroupsGroupAttach groupsGroupAttach = this.group;
        WallGraffiti wallGraffiti = this.graffiti;
        BaseLink baseLink = this.link;
        MarketMarketItem marketMarketItem = this.market;
        MarketMarketAlbum marketMarketAlbum = this.marketAlbum;
        NotesNote notesNote = this.note;
        PagesWikipageFull pagesWikipageFull = this.page;
        PhotosPhoto photosPhoto = this.photo;
        PollsPoll pollsPoll = this.poll;
        WallPostedPhoto wallPostedPhoto = this.postedPhoto;
        VideoVideoFull videoVideoFull = this.video;
        return "WallWallpostAttachment(type=" + wallWallpostAttachmentType + ", accessKey=" + str + ", album=" + photosPhotoAlbum + ", app=" + wallAppPost + ", audio=" + audioAudio + ", doc=" + docsDoc + ", event=" + eventsEventAttach + ", group=" + groupsGroupAttach + ", graffiti=" + wallGraffiti + ", link=" + baseLink + ", market=" + marketMarketItem + ", marketAlbum=" + marketMarketAlbum + ", note=" + notesNote + ", page=" + pagesWikipageFull + ", photo=" + photosPhoto + ", poll=" + pollsPoll + ", postedPhoto=" + wallPostedPhoto + ", video=" + videoVideoFull + ")";
    }

    public /* synthetic */ WallWallpostAttachment(WallWallpostAttachmentType wallWallpostAttachmentType, String str, PhotosPhotoAlbum photosPhotoAlbum, WallAppPost wallAppPost, AudioAudio audioAudio, DocsDoc docsDoc, EventsEventAttach eventsEventAttach, GroupsGroupAttach groupsGroupAttach, WallGraffiti wallGraffiti, BaseLink baseLink, MarketMarketItem marketMarketItem, MarketMarketAlbum marketMarketAlbum, NotesNote notesNote, PagesWikipageFull pagesWikipageFull, PhotosPhoto photosPhoto, PollsPoll pollsPoll, WallPostedPhoto wallPostedPhoto, VideoVideoFull videoVideoFull, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(wallWallpostAttachmentType, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : photosPhotoAlbum, (i9 & 8) != 0 ? null : wallAppPost, (i9 & 16) != 0 ? null : audioAudio, (i9 & 32) != 0 ? null : docsDoc, (i9 & 64) != 0 ? null : eventsEventAttach, (i9 & 128) != 0 ? null : groupsGroupAttach, (i9 & 256) != 0 ? null : wallGraffiti, (i9 & 512) != 0 ? null : baseLink, (i9 & 1024) != 0 ? null : marketMarketItem, (i9 & 2048) != 0 ? null : marketMarketAlbum, (i9 & 4096) != 0 ? null : notesNote, (i9 & 8192) != 0 ? null : pagesWikipageFull, (i9 & 16384) != 0 ? null : photosPhoto, (i9 & 32768) != 0 ? null : pollsPoll, (i9 & 65536) != 0 ? null : wallPostedPhoto, (i9 & 131072) == 0 ? videoVideoFull : null);
    }
}
