package com.vk.sdk.api.wall.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\"\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$¨\u0006%"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallpostAttachmentType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PHOTO", "PHOTOS_LIST", "POSTED_PHOTO", "AUDIO", "AUDIO_PLAYLIST", ShareConstants.VIDEO_URL, "DOC", ShareConstants.CONTENT_URL, "GRAFFITI", "NOTE", GrsBaseInfo.CountryCodeSource.APP, "POLL", ShareConstants.PAGE_ID, "PRETTY_CARDS", "ALBUM", "MARKET_ALBUM", "MARKET", "EVENT", "MINI_APP", "DONUT_LINK", "ARTICLE", "TEXTLIVE", "TEXTPOST", "TEXTPOST_PUBLISH", "SITUATIONAL_THEME", "GROUP", "STICKER", "PODCAST", "CURATOR", "ARTIST", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum WallWallpostAttachmentType {
    PHOTO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO),
    PHOTOS_LIST("photos_list"),
    POSTED_PHOTO("posted_photo"),
    AUDIO("audio"),
    AUDIO_PLAYLIST("audio_playlist"),
    VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
    DOC("doc"),
    LINK("link"),
    GRAFFITI("graffiti"),
    NOTE("note"),
    APP(PushConstants.EXTRA_APPLICATION_PENDING_INTENT),
    POLL("poll"),
    PAGE("page"),
    PRETTY_CARDS("pretty_cards"),
    ALBUM("album"),
    MARKET_ALBUM("market_album"),
    MARKET("market"),
    EVENT("event"),
    MINI_APP("mini_app"),
    DONUT_LINK("donut_link"),
    ARTICLE("article"),
    TEXTLIVE("textlive"),
    TEXTPOST("textpost"),
    TEXTPOST_PUBLISH("textpost_publish"),
    SITUATIONAL_THEME("situational_theme"),
    GROUP("group"),
    STICKER("sticker"),
    PODCAST("podcast"),
    CURATOR("curator"),
    ARTIST("artist");
    
    @NotNull
    private final String value;

    WallWallpostAttachmentType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
