package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.FileUtil;
import com.tencent.mmkv.MMKV;
import java.io.File;
import java.io.IOException;
import java.util.Set;
/* loaded from: classes3.dex */
public class MMKVUtils {
    private static boolean hasInit;

    public static void clearAll() {
        clearAll(null);
    }

    public static boolean getBoolean(String str, boolean z10) {
        return getBoolean(null, str, z10);
    }

    public static float getFloat(String str, float f10) {
        return getFloat(null, str, f10);
    }

    public static int getInt(String str, int i9) {
        return getInt(null, str, i9);
    }

    public static long getLong(String str, long j10) {
        return getLong(null, str, j10);
    }

    public static <T extends Parcelable> T getParcelable(String str, Class<T> cls) {
        return (T) getParcelable((String) null, str, cls);
    }

    public static String getString(String str, String str2) {
        return getString(null, str, str2);
    }

    public static Set<String> getStringSet(String str, Set<String> set) {
        return getStringSet(null, str, set);
    }

    public static void init(Context context) {
        if (hasInit) {
            return;
        }
        hasInit = true;
        moveOldMMKV();
        MMKV.initialize(context, FilePathProvider.getMMKVDirV2(context));
        replaceOldData(context);
    }

    private static void moveOldMMKV() {
        File file = new File(FilePathProvider.getMMKVDir(GCApplication.app()));
        try {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                FileUtil.copyDir(file.getAbsolutePath(), FilePathProvider.getMMKVDirV2(GCApplication.app()));
                FileUtil.deleteFile(file.getAbsolutePath());
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static void putBoolean(String str, boolean z10) {
        putBoolean(null, str, z10);
    }

    public static void putFloat(String str, float f10) {
        putFloat(null, str, f10);
    }

    public static void putInt(String str, int i9) {
        putInt(null, str, i9);
    }

    public static void putLong(String str, long j10) {
        putLong(null, str, j10);
    }

    public static void putString(String str, String str2) {
        putString(null, str, str2);
    }

    public static void putStringSet(String str, Set<String> set) {
        putStringSet(null, str, set);
    }

    public static void remove(String str) {
        remove(null, str);
    }

    public static void replaceOldData(Context context) {
        UserSessionModel current = UserSessionViewModel.instance().current();
        String userId = current == null ? "" : current.getUserId();
        replaceOldData(context, "faceshow");
        replaceOldData(context, String.format("faceshow_%s", userId));
        replaceOldData(context, String.format("conversation%s", userId));
        replaceOldData(context, String.format("dynamic%s", userId));
        replaceOldData(context, String.format("topic%s", userId));
        replaceOldData(context, String.format("publish_dynamic%s", userId));
        replaceOldData(context, String.format("app%s", userId));
        replaceOldData(context, String.format("runway%s", userId));
        replaceOldData(context, String.format("live%s", userId));
        replaceOldData(context, String.format("invite%s", userId));
        replaceOldData(context, String.format("friends%s", userId));
        replaceOldData(context, String.format("txConfig%s", userId));
        replaceOldData(context, String.format("firstMeet%s", userId));
        replaceOldData(context, String.format("UserCenterBean%s", userId));
        replaceOldData(context, String.format("app_resource%s", userId));
        replaceOldData(context, String.format("user_guide%s", userId));
        replaceOldData(context, String.format("dress%s", userId));
        replaceOldData(context, "pay");
        replaceOldData(context, CustomNameCacheUtils.MODULE_NOTIFICATION);
        replaceOldData(context, CustomNameCacheUtils.MODULE_SEVER_CONFIG_TIME);
    }

    public static void clearAll(@Nullable String str) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        mmkvWithID.clearAll();
    }

    public static boolean getBoolean(@Nullable String str, String str2, boolean z10) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return mmkvWithID.getBoolean(str2, z10);
    }

    public static float getFloat(@Nullable String str, String str2, float f10) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return mmkvWithID.getFloat(str2, f10);
    }

    public static int getInt(@Nullable String str, String str2, int i9) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return mmkvWithID.getInt(str2, i9);
    }

    public static long getLong(@Nullable String str, String str2, long j10) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return mmkvWithID.getLong(str2, j10);
    }

    public static <T extends Parcelable> T getParcelable(@Nullable String str, String str2, Class<T> cls) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return (T) mmkvWithID.decodeParcelable(str2, cls);
    }

    public static String getString(@Nullable String str, String str2, String str3) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return mmkvWithID.getString(str2, str3);
    }

    public static Set<String> getStringSet(@Nullable String str, String str2, Set<String> set) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return mmkvWithID.getStringSet(str2, set);
    }

    public static void putBoolean(@Nullable String str, String str2, boolean z10) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        mmkvWithID.putBoolean(str2, z10).apply();
    }

    public static void putFloat(@Nullable String str, String str2, float f10) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        mmkvWithID.putFloat(str2, f10).apply();
    }

    public static void putInt(@Nullable String str, String str2, int i9) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        mmkvWithID.putInt(str2, i9).apply();
    }

    public static void putLong(@Nullable String str, String str2, long j10) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        mmkvWithID.putLong(str2, j10).apply();
    }

    public static void putString(@Nullable String str, String str2, String str3) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        LogUtils.e("FaceCast:MMKVUtils104", str2 + CertificateUtil.DELIMITER + str3);
        mmkvWithID.putString(str2, str3).apply();
    }

    public static void putStringSet(@Nullable String str, String str2, Set<String> set) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        mmkvWithID.putStringSet(str2, set).apply();
    }

    public static void remove(@Nullable String str, String str2) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        mmkvWithID.remove(str2).apply();
    }

    public static <T extends Parcelable> T getParcelable(String str, Class<T> cls, T t10) {
        return (T) getParcelable(null, str, cls, t10);
    }

    public static <T extends Parcelable> T getParcelable(@Nullable String str, String str2, Class<T> cls, T t10) {
        MMKV mmkvWithID;
        if (TextUtils.isEmpty(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        return (T) mmkvWithID.decodeParcelable(str2, cls, t10);
    }

    private static void replaceOldData(Context context, String str) {
        MMKV mmkvWithID;
        MMKV mmkvWithID2 = MMKV.mmkvWithID("old_data_imported");
        if (mmkvWithID2.getInt(str, -1) == 1) {
            return;
        }
        if ("faceshow".equals(str)) {
            mmkvWithID = MMKV.defaultMMKV();
        } else {
            mmkvWithID = MMKV.mmkvWithID(str);
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        mmkvWithID.importFromSharedPreferences(sharedPreferences);
        sharedPreferences.edit().clear().apply();
        mmkvWithID2.edit().putInt(str, 1).apply();
    }
}
