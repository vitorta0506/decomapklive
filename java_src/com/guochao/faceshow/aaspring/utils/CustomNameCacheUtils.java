package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import com.guochao.faceshow.BaseApplication;
/* loaded from: classes3.dex */
public class CustomNameCacheUtils {
    public static final String COMMENT_MESSAGE = "comment_message";
    public static final String COMMENT_MESSAGE_NUMBER = "comment_message_number";
    public static final String KEY_LOCAL_COUNTRY = "key_local_country";
    public static final String KEY_PAY_MODE = "key_pay_mode";
    public static final String KEY_PLANT_MASKED = "key_plant_masked";
    public static final String KEY_SELECT_ADVERTISEMENT = "key_select_advertisement";
    public static final String KEY_SEVER_CONFIG_TIME = "key_sever_config_time";
    public static final String KEY_SHOW_LOOK = "key_show_look";
    public static final String MODULE_NOTIFICATION = "module_notification";
    public static final String MODULE_PLANET = "module_planet";
    public static final String MODULE_SEVER_CONFIG_TIME = "module_sever_config_time";

    /* loaded from: classes3.dex */
    public @interface SpModules {
    }

    public static boolean getBool(Context context, @SpModules String str, String str2) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        return MMKVUtils.getBoolean(str, str2, false);
    }

    public static int getInt(Context context, @SpModules String str, String str2) {
        return getInt(context, str, str2, 0);
    }

    public static long getLong(Context context, @SpModules String str, String str2) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        return MMKVUtils.getLong(str, str2, 0L);
    }

    public static String getString(Context context, @SpModules String str, String str2) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        return MMKVUtils.getString(str, str2, "");
    }

    public static void setBool(Context context, @SpModules String str, String str2, boolean z10) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        MMKVUtils.putBoolean(str, str2, z10);
    }

    public static void setInt(Context context, @SpModules String str, String str2, int i9) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        MMKVUtils.putInt(str, str2, i9);
    }

    public static void setLong(Context context, @SpModules String str, String str2, long j10) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        MMKVUtils.putLong(str, str2, j10);
    }

    public static void setString(Context context, @SpModules String str, String str2, String str3) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        MMKVUtils.putString(str, str2, str3);
    }

    public static int getInt(Context context, @SpModules String str, String str2, int i9) {
        if (context == null) {
            BaseApplication.getInstance();
        }
        return MMKVUtils.getInt(str, str2, i9);
    }
}
