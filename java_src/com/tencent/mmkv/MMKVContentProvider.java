package com.tencent.mmkv;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.meizu.cloud.pushsdk.constants.PushConstants;
/* loaded from: classes4.dex */
public class MMKVContentProvider extends ContentProvider {
    protected static final String FUNCTION_NAME = "mmkvFromAshmemID";
    protected static final String KEY = "KEY";
    protected static final String KEY_CRYPT = "KEY_CRYPT";
    protected static final String KEY_MODE = "KEY_MODE";
    protected static final String KEY_SIZE = "KEY_SIZE";
    private static Uri gUri;

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public static Uri contentUri(Context context) {
        String queryAuthority;
        Uri uri = gUri;
        if (uri != null) {
            return uri;
        }
        if (context == null || (queryAuthority = queryAuthority(context)) == null) {
            return null;
        }
        Uri parse = Uri.parse("content://" + queryAuthority);
        gUri = parse;
        return parse;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getProcessNameByPID(Context context, int i9) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        if (activityManager != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == i9) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        }
        return "";
    }

    private Bundle mmkvFromAshmemID(String str, int i9, int i10, String str2) throws RuntimeException {
        MMKV mmkvWithAshmemID = MMKV.mmkvWithAshmemID(getContext(), str, i9, i10, str2);
        ParcelableMMKV parcelableMMKV = new ParcelableMMKV(mmkvWithAshmemID);
        Log.i("MMKV", str + " fd = " + mmkvWithAshmemID.ashmemFD() + ", meta fd = " + mmkvWithAshmemID.ashmemMetaFD());
        Bundle bundle = new Bundle();
        bundle.putParcelable(KEY, parcelableMMKV);
        return bundle;
    }

    private static String queryAuthority(Context context) {
        ProviderInfo providerInfo;
        try {
            ComponentName componentName = new ComponentName(context, MMKVContentProvider.class.getName());
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (providerInfo = packageManager.getProviderInfo(componentName, 0)) == null) {
                return null;
            }
            return providerInfo.authority;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (str.equals(FUNCTION_NAME) && bundle != null) {
            try {
                return mmkvFromAshmemID(str2, bundle.getInt(KEY_SIZE), bundle.getInt(KEY_MODE), bundle.getString(KEY_CRYPT));
            } catch (Exception e10) {
                Log.e("MMKV", e10.getMessage());
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        String queryAuthority;
        Context context = getContext();
        if (context == null || (queryAuthority = queryAuthority(context)) == null) {
            return false;
        }
        if (gUri == null) {
            gUri = Uri.parse("content://" + queryAuthority);
            return true;
        }
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }
}
