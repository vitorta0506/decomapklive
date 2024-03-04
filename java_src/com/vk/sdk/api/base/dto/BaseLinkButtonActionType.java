package com.vk.sdk.api.base.dto;

import androidx.core.app.NotificationCompat;
import com.facebook.share.widget.ShareDialog;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b:\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<¨\u0006="}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkButtonActionType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "OPEN_URL", "JOIN_GROUP_AND_OPEN_URL", "OPEN_SECTION", "FOLLOW", "UPLOAD_VIDEO", "CREATE_PLAYLIST", "CREATE_ALBUM", "FRIENDS_LISTS", "FRIENDS_SORT_MODES", "ADD_FRIEND", "QR_CAMERA", "FRIENDS_REQUESTS", "OPEN_SCREEN", "OPEN_SCREEN_LARGE", "FRIENDS_MESSAGE", "FRIENDS_CALL", "FRIENDS_SEND_GIFT", "FRIENDS_LABEL", "PLAY_AUDIOS_FROM_BLOCK", "PLAY_SHUFFLED_AUDIOS_FROM_BLOCK", "UNFOLLOW_ARTIST", "CREATE_GROUP", "CLOSE_NOTIFICATION", "SWITCH_SECTION", "CLEAR_RECENT_GROUPS", "CLOSE_CATALOG_BANNER", "ENABLE_TOP_NEWSFEED", "GROUPS_ADVERTISEMENT", "OWNER_BUTTON", "ENTER_EDIT_MODE", "PLAYLISTS_LISTS", "UNFOLLOW_CURATOR", "UNFOLLOW_MUSIC_OWNER", "REORDER_ITEMS", "EDIT_ITEMS", "SELECT_SORTING", "MARKET_ABANDONED_CARTS", "MARKET_WRITE", "CALL", "MODAL_PAGE", "LIVE_CATEGORIES", "MOVIE_CATEGORIES", "TOGGLE_VIDEO_ALBUM_SUBSCRIPTION", "CLEAR_VIDEO_HISTORY", "HELP_HINT", "SHOW_RECOMMENDATIONS_FOR_POST", "SHOW_FULL_POST", "OPEN_VKAPP", "OPEN_GAME", "OPEN_INTERNAL_VKUI", "SPECIALS_PERFORM_ACTION", "OPEN_BIRTHDAY_MODAL", "SHARE", "PERFORM_ACTION_WITH_URL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum BaseLinkButtonActionType {
    OPEN_URL("open_url"),
    JOIN_GROUP_AND_OPEN_URL("join_group_and_open_url"),
    OPEN_SECTION("open_section"),
    FOLLOW("follow"),
    UPLOAD_VIDEO("upload_video"),
    CREATE_PLAYLIST("create_playlist"),
    CREATE_ALBUM("create_album"),
    FRIENDS_LISTS("friends_lists"),
    FRIENDS_SORT_MODES("friends_sort_modes"),
    ADD_FRIEND("add_friend"),
    QR_CAMERA("qr_camera"),
    FRIENDS_REQUESTS("friends_requests"),
    OPEN_SCREEN("open_screen"),
    OPEN_SCREEN_LARGE("open_screen_large"),
    FRIENDS_MESSAGE("friends_message"),
    FRIENDS_CALL("friends_call"),
    FRIENDS_SEND_GIFT("friends_send_gift"),
    FRIENDS_LABEL("friends_label"),
    PLAY_AUDIOS_FROM_BLOCK("play_audios_from_block"),
    PLAY_SHUFFLED_AUDIOS_FROM_BLOCK("play_shuffled_audios_from_block"),
    UNFOLLOW_ARTIST("unfollow_artist"),
    CREATE_GROUP("create_group"),
    CLOSE_NOTIFICATION("close_notification"),
    SWITCH_SECTION("switch_section"),
    CLEAR_RECENT_GROUPS("clear_recent_groups"),
    CLOSE_CATALOG_BANNER("close_catalog_banner"),
    ENABLE_TOP_NEWSFEED("enable_top_newsfeed"),
    GROUPS_ADVERTISEMENT("groups_advertisement"),
    OWNER_BUTTON("owner_button"),
    ENTER_EDIT_MODE("enter_edit_mode"),
    PLAYLISTS_LISTS("playlists_lists"),
    UNFOLLOW_CURATOR("unfollow_curator"),
    UNFOLLOW_MUSIC_OWNER("unfollow_music_owner"),
    REORDER_ITEMS("reorder_items"),
    EDIT_ITEMS("edit_items"),
    SELECT_SORTING("select_sorting"),
    MARKET_ABANDONED_CARTS("market_abandoned_carts"),
    MARKET_WRITE("market_write"),
    CALL(NotificationCompat.CATEGORY_CALL),
    MODAL_PAGE("modal_page"),
    LIVE_CATEGORIES("live_categories"),
    MOVIE_CATEGORIES("movie_categories"),
    TOGGLE_VIDEO_ALBUM_SUBSCRIPTION("toggle_video_album_subscription"),
    CLEAR_VIDEO_HISTORY("clear_video_history"),
    HELP_HINT("help_hint"),
    SHOW_RECOMMENDATIONS_FOR_POST("show_recommendations_for_post"),
    SHOW_FULL_POST("show_full_post"),
    OPEN_VKAPP("open_vkapp"),
    OPEN_GAME("open_game"),
    OPEN_INTERNAL_VKUI("open_internal_vkui"),
    SPECIALS_PERFORM_ACTION("specials_perform_action"),
    OPEN_BIRTHDAY_MODAL("open_birthday_modal"),
    SHARE(ShareDialog.WEB_SHARE_DIALOG),
    PERFORM_ACTION_WITH_URL("perform_action_with_url");
    
    @NotNull
    private final String value;

    BaseLinkButtonActionType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
