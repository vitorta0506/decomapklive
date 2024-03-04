package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
/* loaded from: classes3.dex */
public interface Constants {
    public static final String ACTION_LIVE_BLACKED = "com.guochao.live.blacked";
    public static final String ACTION_LIVE_KICKED = "com.guochao.live.kicked";
    public static final String AF_DEV_KEY = "q53Q33ib9p4uUTWqNcs8kc";
    public static final int GIF = 999;
    public static final String LAST_KEY_BORAD_HEIGHT = "keyborad_height";
    public static final int LIVE_MIX_MSG_DELAY = 8000;
    public static final int MAX_RETRY_COUNT = 3;
    public static final int MIN_REGISTER_AGE = 18;
    public static final int MUSIC = 1000;
    public static final int MYMUSIC = 1001;
    public static final int PAGE_SIZE = 20;
    public static final String TWITTER_KEY = "hVuYbc8eXTx9Q0o0TJKkzdiid";
    public static final String TWITTER_SECRET = "msc1LwpC2OL1ovQub7xbE7meIDK1OBflP0ny3NnCBndifOp311";
    public static final String U_MENG_KEY = "6058300cb8c8d45c13a96b5a";
    public static final int VERSION_CODE = 2828;
    public static final String cacheKey = "last_hello_index";

    /* loaded from: classes3.dex */
    public interface ThirdPartyLogin {
        public static final ThirdPartyLoginPlatform EMAIL;
        public static final ThirdPartyLoginPlatform EMAIL_OTHER;
        public static final ThirdPartyLoginPlatform FACEBOOK;
        public static final ThirdPartyLoginPlatform FACEBOOK_OTHER;
        public static final ThirdPartyLoginPlatform GOOGLE;
        public static final ThirdPartyLoginPlatform GOOGLE_OTHER;
        public static final ThirdPartyLoginPlatform INSTAGRAM;
        public static final ThirdPartyLoginPlatform LINE;
        public static final ThirdPartyLoginPlatform PHONE;
        public static final ThirdPartyLoginPlatform PHONE_OTHER;
        public static final String PLATFORM_EMAIL = "email";
        public static final String PLATFORM_FACEBOOK;
        public static final String PLATFORM_GOOGLE = "GooglePlus";
        public static final String PLATFORM_INSTAGRAM;
        public static final String PLATFORM_LINE = "Line";
        public static final String PLATFORM_PHONE = "phone";
        public static final String PLATFORM_TWITTER = "Twitter";
        public static final String PLATFORM_VK = "VKontakte";
        public static final ThirdPartyLoginPlatform TWITTER;
        public static final int TYPE_EMAIL = 2;
        public static final int TYPE_FACEBOOK = 7;
        public static final int TYPE_GOOGLE = 9;
        public static final int TYPE_INSTAGRAM = 10;
        public static final int TYPE_LINE = 11;
        public static final int TYPE_PHONE = 3;
        public static final int TYPE_QQ = 5;
        public static final int TYPE_TWITTER = 8;
        public static final int TYPE_USER_NAME = 1;
        public static final int TYPE_VK = 12;
        public static final int TYPE_WECHAT = 4;
        public static final int TYPE_WEIBO = 6;
        public static final ThirdPartyLoginPlatform VK;

        static {
            String str = SharePlatformBean.Instagram.NAME;
            PLATFORM_INSTAGRAM = str;
            String str2 = SharePlatformBean.FaceBook.NAME;
            PLATFORM_FACEBOOK = str2;
            FACEBOOK = new ThirdPartyLoginPlatform(R.mipmap.login_fb, str2, 7);
            FACEBOOK_OTHER = new ThirdPartyLoginPlatform(R.mipmap.login_fb, str2, 7);
            GOOGLE_OTHER = new ThirdPartyLoginPlatform(R.mipmap.login_google_big, PLATFORM_GOOGLE, 9);
            GOOGLE = new ThirdPartyLoginPlatform(R.mipmap.login_google, PLATFORM_GOOGLE, 9);
            TWITTER = new ThirdPartyLoginPlatform(R.mipmap.login_twitter, PLATFORM_TWITTER, 8);
            INSTAGRAM = new ThirdPartyLoginPlatform(R.mipmap.login_ins, str, 10);
            LINE = new ThirdPartyLoginPlatform(R.mipmap.login_line, PLATFORM_LINE, 11);
            PHONE_OTHER = new ThirdPartyLoginPlatform(R.mipmap.login_sms, "phone", 3);
            EMAIL = new ThirdPartyLoginPlatform(R.mipmap.login_email, "email", 2);
            EMAIL_OTHER = new ThirdPartyLoginPlatform(R.mipmap.login_email, "email", 2);
            VK = new ThirdPartyLoginPlatform(R.mipmap.login_vk, PLATFORM_VK, 12);
            PHONE = new ThirdPartyLoginPlatform(R.mipmap.login_phone, "phone", 3);
        }
    }
}
