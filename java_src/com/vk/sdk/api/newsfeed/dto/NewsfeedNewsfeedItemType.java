package com.vk.sdk.api.newsfeed.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b'\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)¨\u0006*"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "POST", "PHOTO", "PHOTO_TAG", "WALL_PHOTO", "FRIEND", "AUDIO", ShareConstants.VIDEO_URL, "TOPIC", "DIGEST", "STORIES", "CLIPS", "PROMO_BUTTON", "RECOMMENDED_GROUPS", "TAGS_SUGGESTIONS", "GAMES_CAROUSEL", "FEEDBACK_POLL", "ANIMATED_BLOCK", "TEXTLIVE", "VIDEOS_PROMO", "RECOMMENDED_ARTISTS", "RECOMMENDED_PLAYLISTS", "CLIPS_AUTOPLAY", "RECOMMENDED_GAME", "CLIPS_CHALLENGES", "EXPERT_CARD", "VIDEOS_FOR_YOU", "LIKED_BY_FRIENDS_GROUPS", "RECOMMENDED_MINI_APP", "NOTE", "AUDIO_PLAYLIST", "CLIP", "CLIPS_BLOCK", "VIDEOS_FOR_YOU_BLOCK", "MINI_APPS_CAROUSEL", "VIDEO_POSTCARD", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum NewsfeedNewsfeedItemType {
    POST("post"),
    PHOTO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO),
    PHOTO_TAG("photo_tag"),
    WALL_PHOTO("wall_photo"),
    FRIEND("friend"),
    AUDIO("audio"),
    VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
    TOPIC(BaseConfig.DB_TYPE_TOPIC_NAME),
    DIGEST("digest"),
    STORIES("stories"),
    CLIPS("clips"),
    PROMO_BUTTON("promo_button"),
    RECOMMENDED_GROUPS("recommended_groups"),
    TAGS_SUGGESTIONS("tags_suggestions"),
    GAMES_CAROUSEL("games_carousel"),
    FEEDBACK_POLL("feedback_poll"),
    ANIMATED_BLOCK("animated_block"),
    TEXTLIVE("textlive"),
    VIDEOS_PROMO("videos_promo"),
    RECOMMENDED_ARTISTS("recommended_artists"),
    RECOMMENDED_PLAYLISTS("recommended_playlists"),
    CLIPS_AUTOPLAY("clips_autoplay"),
    RECOMMENDED_GAME("recommended_game"),
    CLIPS_CHALLENGES("clips_challenges"),
    EXPERT_CARD("expert_card"),
    VIDEOS_FOR_YOU("videos_for_you"),
    LIKED_BY_FRIENDS_GROUPS("liked_by_friends_groups"),
    RECOMMENDED_MINI_APP("recommended_mini_app"),
    NOTE("note"),
    AUDIO_PLAYLIST("audio_playlist"),
    CLIP("clip"),
    CLIPS_BLOCK("clips_block"),
    VIDEOS_FOR_YOU_BLOCK("videos_for_you_block"),
    MINI_APPS_CAROUSEL("mini_apps_carousel"),
    VIDEO_POSTCARD("video_postcard");
    
    @NotNull
    private final String value;

    NewsfeedNewsfeedItemType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
