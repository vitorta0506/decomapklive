package com.guochao.faceshow.aaspring.modulars.login.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class WeiBoUserBean {
    private boolean allow_all_act_msg;
    private boolean allow_all_comment;
    private String avatar_large;
    private int bi_followers_count;
    private String city;
    private String created_at;
    private String description;
    private String domain;
    private int favourites_count;
    private boolean follow_me;
    private int followers_count;
    private boolean following;
    private int friends_count;
    private String gender;
    private boolean geo_enabled;

    /* renamed from: id  reason: collision with root package name */
    private long f20383id;
    private String location;
    private String name;
    private int online_status;
    private String profile_image_url;
    private String province;
    private String screen_name;
    private StatusBean status;
    private int statuses_count;
    private String url;
    private boolean verified;
    private String verified_reason;

    /* loaded from: classes3.dex */
    public static class StatusBean {
        private List<?> annotations;
        private int comments_count;
        private String created_at;
        private boolean favorited;

        /* renamed from: id  reason: collision with root package name */
        private long f20384id;
        private String in_reply_to_screen_name;
        private String in_reply_to_status_id;
        private String in_reply_to_user_id;
        private String mid;
        private int reposts_count;
        private String source;
        private String text;
        private boolean truncated;

        public List<?> getAnnotations() {
            return this.annotations;
        }

        public int getComments_count() {
            return this.comments_count;
        }

        public String getCreated_at() {
            return this.created_at;
        }

        public long getId() {
            return this.f20384id;
        }

        public String getIn_reply_to_screen_name() {
            return this.in_reply_to_screen_name;
        }

        public String getIn_reply_to_status_id() {
            return this.in_reply_to_status_id;
        }

        public String getIn_reply_to_user_id() {
            return this.in_reply_to_user_id;
        }

        public String getMid() {
            return this.mid;
        }

        public int getReposts_count() {
            return this.reposts_count;
        }

        public String getSource() {
            return this.source;
        }

        public String getText() {
            return this.text;
        }

        public boolean isFavorited() {
            return this.favorited;
        }

        public boolean isTruncated() {
            return this.truncated;
        }

        public void setAnnotations(List<?> list) {
            this.annotations = list;
        }

        public void setComments_count(int i9) {
            this.comments_count = i9;
        }

        public void setCreated_at(String str) {
            this.created_at = str;
        }

        public void setFavorited(boolean z10) {
            this.favorited = z10;
        }

        public void setId(long j10) {
            this.f20384id = j10;
        }

        public void setIn_reply_to_screen_name(String str) {
            this.in_reply_to_screen_name = str;
        }

        public void setIn_reply_to_status_id(String str) {
            this.in_reply_to_status_id = str;
        }

        public void setIn_reply_to_user_id(String str) {
            this.in_reply_to_user_id = str;
        }

        public void setMid(String str) {
            this.mid = str;
        }

        public void setReposts_count(int i9) {
            this.reposts_count = i9;
        }

        public void setSource(String str) {
            this.source = str;
        }

        public void setText(String str) {
            this.text = str;
        }

        public void setTruncated(boolean z10) {
            this.truncated = z10;
        }
    }

    public String getAvatar_large() {
        return this.avatar_large;
    }

    public int getBi_followers_count() {
        return this.bi_followers_count;
    }

    public String getCity() {
        return this.city;
    }

    public String getCreated_at() {
        return this.created_at;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDomain() {
        return this.domain;
    }

    public int getFavourites_count() {
        return this.favourites_count;
    }

    public int getFollowers_count() {
        return this.followers_count;
    }

    public int getFriends_count() {
        return this.friends_count;
    }

    public String getGender() {
        return this.gender;
    }

    public long getId() {
        return this.f20383id;
    }

    public String getLocation() {
        return this.location;
    }

    public String getName() {
        return this.name;
    }

    public int getOnline_status() {
        return this.online_status;
    }

    public String getProfile_image_url() {
        return this.profile_image_url;
    }

    public String getProvince() {
        return this.province;
    }

    public String getScreen_name() {
        return this.screen_name;
    }

    public StatusBean getStatus() {
        return this.status;
    }

    public int getStatuses_count() {
        return this.statuses_count;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVerified_reason() {
        return this.verified_reason;
    }

    public boolean isAllow_all_act_msg() {
        return this.allow_all_act_msg;
    }

    public boolean isAllow_all_comment() {
        return this.allow_all_comment;
    }

    public boolean isFollow_me() {
        return this.follow_me;
    }

    public boolean isFollowing() {
        return this.following;
    }

    public boolean isGeo_enabled() {
        return this.geo_enabled;
    }

    public boolean isVerified() {
        return this.verified;
    }

    public void setAllow_all_act_msg(boolean z10) {
        this.allow_all_act_msg = z10;
    }

    public void setAllow_all_comment(boolean z10) {
        this.allow_all_comment = z10;
    }

    public void setAvatar_large(String str) {
        this.avatar_large = str;
    }

    public void setBi_followers_count(int i9) {
        this.bi_followers_count = i9;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCreated_at(String str) {
        this.created_at = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setFavourites_count(int i9) {
        this.favourites_count = i9;
    }

    public void setFollow_me(boolean z10) {
        this.follow_me = z10;
    }

    public void setFollowers_count(int i9) {
        this.followers_count = i9;
    }

    public void setFollowing(boolean z10) {
        this.following = z10;
    }

    public void setFriends_count(int i9) {
        this.friends_count = i9;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public void setGeo_enabled(boolean z10) {
        this.geo_enabled = z10;
    }

    public void setId(long j10) {
        this.f20383id = j10;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOnline_status(int i9) {
        this.online_status = i9;
    }

    public void setProfile_image_url(String str) {
        this.profile_image_url = str;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public void setScreen_name(String str) {
        this.screen_name = str;
    }

    public void setStatus(StatusBean statusBean) {
        this.status = statusBean;
    }

    public void setStatuses_count(int i9) {
        this.statuses_count = i9;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVerified(boolean z10) {
        this.verified = z10;
    }

    public void setVerified_reason(String str) {
        this.verified_reason = str;
    }
}
