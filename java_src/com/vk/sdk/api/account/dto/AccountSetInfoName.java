package com.vk.sdk.api.account.dto;

import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b!\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#¨\u0006$"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountSetInfoName;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "COMMUNITY_COMMENTS", "FAVE_INTRO", "FEED_TYPE", "FORCE_STORE_REVIEW", "IM_USER_NAME_TYPE", "INTRO", "IS_RECOGNIZE_BLOCK_FRIENDS_PHOTO_ENABLED", "IS_RECOGNIZE_BLOCK_ME_PHOTO_ENABLED", "IS_RECOGNIZE_FIND_FRIENDS", "IS_RECOGNIZE_PHOTO_ME_ENABLED", "IS_RECOGNIZE_SHOW_ME_TO_FRIENDS", "MARKET_ALBUMS_V2_INTRO", "MARKET_ONBOARDING", "MARKET_WISHLIST", "MENU_INTRO", "MESSAGES_AUTO_UNARCHIVE", "MESSAGES_MULTILINE_INPUT", "MESSAGES_RECOMMENDATION_LIST_HIDDEN", "MESSAGES_TRANSCRIPT_AUTO_SHOW", "MONEY_P2P_INTRO", "MUSIC_INTRO", "NO_WALL_REPLIES", "OWN_POSTS_DEFAULT", "SHOPPING_INTRO", "SHOW_ONLY_NOT_MUTED_MESSAGES", "SHOW_VK_APPS_INTRO", "TIMEZONE", "VISIBLE_TIME", "WISHLISTS_AE_PROMOBANNER", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AccountSetInfoName {
    COMMUNITY_COMMENTS("community_comments"),
    FAVE_INTRO("fave_intro"),
    FEED_TYPE("feed_type"),
    FORCE_STORE_REVIEW("force_store_review"),
    IM_USER_NAME_TYPE("im_user_name_type"),
    INTRO(Contants.USER_intro),
    IS_RECOGNIZE_BLOCK_FRIENDS_PHOTO_ENABLED("is_recognize_block_friends_photo_enabled"),
    IS_RECOGNIZE_BLOCK_ME_PHOTO_ENABLED("is_recognize_block_me_photo_enabled"),
    IS_RECOGNIZE_FIND_FRIENDS("is_recognize_find_friends"),
    IS_RECOGNIZE_PHOTO_ME_ENABLED("is_recognize_photo_me_enabled"),
    IS_RECOGNIZE_SHOW_ME_TO_FRIENDS("is_recognize_show_me_to_friends"),
    MARKET_ALBUMS_V2_INTRO("market_albums_v2_intro"),
    MARKET_ONBOARDING("market_onboarding"),
    MARKET_WISHLIST("market_wishlist"),
    MENU_INTRO("menu_intro"),
    MESSAGES_AUTO_UNARCHIVE("messages_auto_unarchive"),
    MESSAGES_MULTILINE_INPUT("messages_multiline_input"),
    MESSAGES_RECOMMENDATION_LIST_HIDDEN("messages_recommendation_list_hidden"),
    MESSAGES_TRANSCRIPT_AUTO_SHOW("messages_transcript_auto_show"),
    MONEY_P2P_INTRO("money_p2p_intro"),
    MUSIC_INTRO("music_intro"),
    NO_WALL_REPLIES("no_wall_replies"),
    OWN_POSTS_DEFAULT("own_posts_default"),
    SHOPPING_INTRO("shopping_intro"),
    SHOW_ONLY_NOT_MUTED_MESSAGES("show_only_not_muted_messages"),
    SHOW_VK_APPS_INTRO("show_vk_apps_intro"),
    TIMEZONE("timezone"),
    VISIBLE_TIME("visible_time"),
    WISHLISTS_AE_PROMOBANNER("wishlists_ae_promobanner");
    
    @NotNull
    private final String value;

    AccountSetInfoName(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
