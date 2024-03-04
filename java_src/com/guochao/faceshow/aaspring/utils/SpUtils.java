package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.google.gson.Gson;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import java.lang.reflect.Type;
import java.util.Set;
/* loaded from: classes3.dex */
public class SpUtils {
    private static final String NAME = "faceshow";
    public static final String SP_LAST_LOGIN_TYPE = "last_login_type";
    public static final String SP_REASON_LOGOUT = "logout_reason";

    public static void clearAllData(Context context) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.clearAll();
    }

    public static boolean getBool(Context context, String str) {
        if (context == null) {
            GCApplication.app();
        }
        return MMKVUtils.getBoolean(str, false);
    }

    public static Float getFloat(Context context, String str) {
        if (context == null) {
            GCApplication.app();
        }
        return Float.valueOf(MMKVUtils.getFloat(str, 0.0f));
    }

    public static int getInt(Context context, String str) {
        return getInt(context, str, 0);
    }

    public static String getLastLoginType() {
        switch (getInt(GCApplication.app(), SP_LAST_LOGIN_TYPE, -1)) {
            case 2:
                return "邮箱";
            case 3:
                return "手机";
            case 4:
                return "微信";
            case 5:
                return "qq";
            case 6:
                return "微博";
            case 7:
                return AccessToken.DEFAULT_GRAPH_DOMAIN;
            case 8:
                return "twitter";
            case 9:
                return "g";
            case 10:
                return "ins";
            case 11:
                return "line";
            case 12:
                return "vk";
            default:
                return "unknown";
        }
    }

    public static String getLogoutReason() {
        int i9 = getInt(GCApplication.app(), SP_REASON_LOGOUT, -1);
        return i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? "not set" : "其他设备登录" : "账号冻结" : "token失效" : "手动退出";
    }

    public static long getLong(Context context, String str) {
        if (context == null) {
            GCApplication.app();
        }
        return MMKVUtils.getLong(str, 0L);
    }

    @Deprecated
    public static int getSelfInt(String str) {
        return getSelfInt(str, 0);
    }

    public static int getSelfInt2(String str) {
        UserSessionModel current = UserSessionViewModel.instance().current();
        if (current == null) {
            return -1;
        }
        return MMKVUtils.getInt(str + "_" + current.getUserId(), -1);
    }

    public static long getSelfLong(String str, long j10) {
        return MMKVUtils.getLong(str, j10);
    }

    @Deprecated
    public static String getSelfString(String str) {
        return MMKVUtils.getString(str, "");
    }

    public static String getSelfString2(String str) {
        UserSessionModel current = UserSessionViewModel.instance().current();
        if (current == null) {
            return "";
        }
        return MMKVUtils.getString(str + "_" + current.getUserId(), "");
    }

    public static <T> T getShareActivityBean(Activity activity, String str, Type type) {
        String str2 = getStr(activity, str);
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            return (T) new Gson().fromJson(str2, type);
        } catch (Exception e10) {
            e10.getStackTrace();
            return null;
        }
    }

    public static String getStr(Context context, String str) {
        return getStr(context, str, "");
    }

    public static Set<String> getStringSet(Context context, String str, Set<String> set) {
        if (context == null) {
            GCApplication.app();
        }
        return MMKVUtils.getStringSet(str, set);
    }

    public static void setBool(Context context, String str, boolean z10) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.putBoolean(str, z10);
    }

    public static void setFloat(Context context, String str, Float f10) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.putFloat(str, f10.floatValue());
    }

    public static void setInt(Context context, String str, int i9) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.putInt(str, i9);
    }

    public static void setLong(Context context, String str, long j10) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.putLong(str, j10);
    }

    @Deprecated
    public static void setSelfInt(String str, int i9) {
        MMKVUtils.putInt(str, i9);
    }

    public static void setSelfInt2(String str, int i9) {
        UserSessionModel current = UserSessionViewModel.instance().current();
        if (current == null) {
            return;
        }
        MMKVUtils.putInt(str + "_" + current.getUserId(), i9);
    }

    public static void setSelfLong(String str, long j10) {
        MMKVUtils.putLong(str, j10);
    }

    @Deprecated
    public static void setSelfString(String str, String str2) {
        MMKVUtils.putString(str, str2);
    }

    public static void setSelfString2(String str, String str2) {
        UserSessionModel current = UserSessionViewModel.instance().current();
        if (current == null) {
            return;
        }
        MMKVUtils.putString(str + "_" + current.getUserId(), str2);
    }

    public static void setStr(Context context, String str, String str2) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.putString(str, str2);
    }

    public static void setStringSet(Context context, String str, Set<String> set) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.putStringSet(str, set);
    }

    public static int getInt(Context context, String str, int i9) {
        if (context == null) {
            GCApplication.app();
        }
        return MMKVUtils.getInt(str, i9);
    }

    @Deprecated
    public static int getSelfInt(String str, int i9) {
        return MMKVUtils.getInt(str, i9);
    }

    public static String getStr(Context context, String str, String str2) {
        if (context == null) {
            GCApplication.app();
        }
        return MMKVUtils.getString(str, str2);
    }

    public static boolean getBool(Context context, String str, boolean z10) {
        if (context == null) {
            GCApplication.app();
        }
        return MMKVUtils.getBoolean(str, z10);
    }

    public static Float getFloat(Context context, String str, float f10) {
        if (context == null) {
            GCApplication.app();
        }
        return Float.valueOf(MMKVUtils.getFloat(str, f10));
    }

    public static void setStr(String str, Context context, String str2, String str3) {
        if (context == null) {
            GCApplication.app();
        }
        MMKVUtils.putString(str2, str3);
    }

    public static String getStr(String str, Context context, String str2, String str3) {
        if (context == null) {
            GCApplication.app();
        }
        return MMKVUtils.getString(str2, str3);
    }
}
