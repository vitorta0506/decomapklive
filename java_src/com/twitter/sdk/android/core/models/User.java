package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class User implements Serializable {
    public static final long INVALID_ID = -1;
    private static final long serialVersionUID = 4663450696842173958L;
    @SerializedName("contributors_enabled")
    public final boolean contributorsEnabled;
    @SerializedName("created_at")
    public final String createdAt;
    @SerializedName("default_profile")
    public final boolean defaultProfile;
    @SerializedName("default_profile_image")
    public final boolean defaultProfileImage;
    @SerializedName("description")
    public final String description;
    @SerializedName("email")
    public final String email;
    @SerializedName("entities")
    public final o entities;
    @SerializedName("favourites_count")
    public final int favouritesCount;
    @SerializedName("follow_request_sent")
    public final boolean followRequestSent;
    @SerializedName("followers_count")
    public final int followersCount;
    @SerializedName("friends_count")
    public final int friendsCount;
    @SerializedName("geo_enabled")
    public final boolean geoEnabled;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    public final long f35224id;
    @SerializedName("id_str")
    public final String idStr;
    @SerializedName("is_translator")
    public final boolean isTranslator;
    @SerializedName(VKApiCodes.PARAM_LANG)
    public final String lang;
    @SerializedName("listed_count")
    public final int listedCount;
    @SerializedName("location")
    public final String location;
    @SerializedName("name")
    public final String name;
    @SerializedName("profile_background_color")
    public final String profileBackgroundColor;
    @SerializedName("profile_background_image_url")
    public final String profileBackgroundImageUrl;
    @SerializedName("profile_background_image_url_https")
    public final String profileBackgroundImageUrlHttps;
    @SerializedName("profile_background_tile")
    public final boolean profileBackgroundTile;
    @SerializedName("profile_banner_url")
    public final String profileBannerUrl;
    @SerializedName("profile_image_url")
    public final String profileImageUrl;
    @SerializedName("profile_image_url_https")
    public final String profileImageUrlHttps;
    @SerializedName("profile_link_color")
    public final String profileLinkColor;
    @SerializedName("profile_sidebar_border_color")
    public final String profileSidebarBorderColor;
    @SerializedName("profile_sidebar_fill_color")
    public final String profileSidebarFillColor;
    @SerializedName("profile_text_color")
    public final String profileTextColor;
    @SerializedName("profile_use_background_image")
    public final boolean profileUseBackgroundImage;
    @SerializedName("protected")
    public final boolean protectedUser;
    @SerializedName("screen_name")
    public final String screenName;
    @SerializedName("show_all_inline_media")
    public final boolean showAllInlineMedia;
    @SerializedName("status")
    public final l status;
    @SerializedName("statuses_count")
    public final int statusesCount;
    @SerializedName("time_zone")
    public final String timeZone;
    @SerializedName("url")
    public final String url;
    @SerializedName("utc_offset")
    public final int utcOffset;
    @SerializedName("verified")
    public final boolean verified;
    @SerializedName("withheld_in_countries")
    public final List<String> withheldInCountries;
    @SerializedName("withheld_scope")
    public final String withheldScope;

    public User(boolean z10, String str, boolean z11, boolean z12, String str2, String str3, o oVar, int i9, boolean z13, int i10, int i11, boolean z14, long j10, String str4, boolean z15, String str5, int i12, String str6, String str7, String str8, String str9, String str10, boolean z16, String str11, String str12, String str13, String str14, String str15, String str16, String str17, boolean z17, boolean z18, String str18, boolean z19, l lVar, int i13, String str19, String str20, int i14, boolean z20, List<String> list, String str21) {
        this.contributorsEnabled = z10;
        this.createdAt = str;
        this.defaultProfile = z11;
        this.defaultProfileImage = z12;
        this.description = str2;
        this.email = str3;
        this.entities = oVar;
        this.favouritesCount = i9;
        this.followRequestSent = z13;
        this.followersCount = i10;
        this.friendsCount = i11;
        this.geoEnabled = z14;
        this.f35224id = j10;
        this.idStr = str4;
        this.isTranslator = z15;
        this.lang = str5;
        this.listedCount = i12;
        this.location = str6;
        this.name = str7;
        this.profileBackgroundColor = str8;
        this.profileBackgroundImageUrl = str9;
        this.profileBackgroundImageUrlHttps = str10;
        this.profileBackgroundTile = z16;
        this.profileBannerUrl = str11;
        this.profileImageUrl = str12;
        this.profileImageUrlHttps = str13;
        this.profileLinkColor = str14;
        this.profileSidebarBorderColor = str15;
        this.profileSidebarFillColor = str16;
        this.profileTextColor = str17;
        this.profileUseBackgroundImage = z17;
        this.protectedUser = z18;
        this.screenName = str18;
        this.showAllInlineMedia = z19;
        this.status = lVar;
        this.statusesCount = i13;
        this.timeZone = str19;
        this.url = str20;
        this.utcOffset = i14;
        this.verified = z20;
        this.withheldInCountries = list;
        this.withheldScope = str21;
    }

    public long getId() {
        return this.f35224id;
    }
}
