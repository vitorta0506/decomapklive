package com.tencent.xmagic.auth;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.xmagic.R;
import com.tencent.youtu.xmagic.YTCommonInterface;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.threeten.bp.chrono.HijrahDate;
/* loaded from: classes4.dex */
public class Auth {
    private static final String TAG;
    private static Context mContext;
    private static long sAuthOnlineWithCacheCallTime;
    private static String sCurrentUrl;

    /* loaded from: classes4.dex */
    public static class AuthInfo {
        public final BindType authBindType;
        public final String authFileName;
        public final String authLicenseId;
        public final long authOnlineWithCacheCallTime;
        public final String authOnlineWithCacheCallTimeStr;
        public final String osType;
        public final int osVersionCode;
        public final String osVersionName;
        public final String versionNameLibAuth;
        public final String versionNameYTCommon;

        private AuthInfo(String str, String str2, long j10, BindType bindType) {
            this.versionNameYTCommon = YTCommonInterface.getVersion();
            this.versionNameLibAuth = "1.1.2.4_xmagic";
            this.osType = "ANDROID";
            this.osVersionCode = Build.VERSION.SDK_INT;
            this.osVersionName = Build.VERSION.RELEASE;
            this.authLicenseId = str;
            this.authFileName = str2;
            this.authOnlineWithCacheCallTime = j10;
            this.authOnlineWithCacheCallTimeStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Long.valueOf(j10));
            this.authBindType = bindType;
        }
    }

    /* loaded from: classes4.dex */
    public static class AuthResult {
        public final AuthInfo authInfo;
        public final AuthResultFail authResultFail;
        public final AuthResultSucceed authResultSucceed;
        public final boolean isSucceed;

        private AuthResult(int i9, AuthInfo authInfo) {
            boolean z10 = i9 == 0;
            this.isSucceed = z10;
            this.authResultSucceed = z10 ? new AuthResultSucceed() : null;
            this.authResultFail = z10 ? null : new AuthResultFail(i9);
            this.authInfo = authInfo;
        }
    }

    /* loaded from: classes4.dex */
    public static class AuthResultFail {
        public final int code;
        public final String msg;

        private static String errorMsgForCode(int i9) {
            if (i9 == 0) {
                return Auth.mContext.getResources().getString(R.string.error_0);
            }
            if (i9 == 1) {
                return Auth.mContext.getResources().getString(R.string.error_1);
            }
            if (i9 == 2) {
                return Auth.mContext.getResources().getString(R.string.error_2);
            }
            if (i9 == 16) {
                return Auth.mContext.getResources().getString(R.string.error_16);
            }
            if (i9 == -1) {
                return Auth.mContext.getResources().getString(R.string.error_n1);
            }
            if (i9 == -10 || i9 == -11) {
                return Auth.mContext.getResources().getString(R.string.error_n10);
            }
            if (i9 == 1002) {
                return Auth.mContext.getResources().getString(R.string.error_1002) + Auth.sCurrentUrl;
            } else if (i9 == 1003) {
                return Auth.mContext.getResources().getString(R.string.error_1003) + Auth.sCurrentUrl;
            } else if (i9 == 1045) {
                return Auth.mContext.getResources().getString(R.string.error_1045);
            } else {
                if (i9 == 2002) {
                    return Auth.mContext.getResources().getString(R.string.error_2002);
                }
                if (i9 == 2003) {
                    return Auth.mContext.getResources().getString(R.string.error_2003);
                }
                if (i9 == 2004) {
                    return Auth.mContext.getResources().getString(R.string.error_2004);
                }
                if (i9 == 3003) {
                    return Auth.mContext.getResources().getString(R.string.error_3003);
                }
                if (i9 == 3004) {
                    return Auth.mContext.getResources().getString(R.string.error_3004);
                }
                if (i9 == 3005) {
                    return Auth.mContext.getResources().getString(R.string.error_3005);
                }
                if (i9 == 3006) {
                    return Auth.mContext.getResources().getString(R.string.error_3006);
                }
                if (i9 == 3007) {
                    return Auth.mContext.getResources().getString(R.string.error_3007);
                }
                if (i9 == 3008) {
                    return Auth.mContext.getResources().getString(R.string.error_3008);
                }
                if (i9 == 3013) {
                    return Auth.mContext.getResources().getString(R.string.error_3013);
                }
                if (i9 == 3014) {
                    return Auth.mContext.getResources().getString(R.string.error_3014);
                }
                if (i9 == 3015) {
                    return Auth.mContext.getResources().getString(R.string.error_3015);
                }
                if (i9 == 3016) {
                    return Auth.mContext.getResources().getString(R.string.error_3016);
                }
                if (i9 == 3017) {
                    return Auth.mContext.getResources().getString(R.string.error_3017);
                }
                if (i9 == 3018) {
                    return Auth.mContext.getResources().getString(R.string.error_3018);
                }
                if (i9 == 3019) {
                    return Auth.mContext.getResources().getString(R.string.error_3019);
                }
                if (i9 == 3022) {
                    return Auth.mContext.getResources().getString(R.string.error_3022);
                }
                if (i9 == 4001) {
                    return Auth.mContext.getResources().getString(R.string.error_4001);
                }
                if (i9 == 4003) {
                    return Auth.mContext.getResources().getString(R.string.error_4003);
                }
                if (i9 == -1001) {
                    return Auth.mContext.getResources().getString(R.string.error_n1001);
                }
                if (i9 == -1005) {
                    return Auth.mContext.getResources().getString(R.string.error_n1005);
                }
                if (i9 == -1104) {
                    return Auth.mContext.getResources().getString(R.string.error_n1104);
                }
                if (i9 == -1301) {
                    return Auth.mContext.getResources().getString(R.string.error_n1301);
                }
                if (i9 == -1302) {
                    return Auth.mContext.getResources().getString(R.string.error_n1302);
                }
                if (i9 == -1401) {
                    return Auth.mContext.getResources().getString(R.string.error_n1401);
                }
                if (i9 == -1402) {
                    return Auth.mContext.getResources().getString(R.string.error_n1402);
                }
                if (i9 == -1405) {
                    return Auth.mContext.getResources().getString(R.string.error_n1405);
                }
                if (i9 == -1407) {
                    return Auth.mContext.getResources().getString(R.string.error_n1407);
                }
                return i9 == 9999 ? Auth.mContext.getResources().getString(R.string.error_9999) : Auth.mContext.getResources().getString(R.string.error_unknow);
            }
        }

        private AuthResultFail(int i9) {
            this.code = i9;
            this.msg = errorMsgForCode(i9);
        }
    }

    /* loaded from: classes4.dex */
    public static class AuthResultSucceed {
        public final long endTime;
        public final String endTimeStr;
        public final Map<Integer, String> features;

        private static String featureNameForId(int i9) {
            return YTCommonInterface.getSDKNameByID(i9);
        }

        private AuthResultSucceed() {
            int[] sDKList;
            this.features = new HashMap();
            long endTime = YTCommonInterface.getEndTime();
            this.endTime = endTime;
            this.endTimeStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Long.valueOf(endTime * 1000));
            for (int i9 : YTCommonInterface.getSDKList()) {
                this.features.put(Integer.valueOf(i9), featureNameForId(i9));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum BindType {
        APP,
        DEVICE
    }

    static {
        try {
            System.loadLibrary("YTCommonXMagic");
        } catch (UnsatisfiedLinkError e10) {
            Log.e("AUTH", "static initializer: load YTCommonXMagic,error=" + e10.toString());
        }
        TAG = Auth.class.getSimpleName();
        sCurrentUrl = "https://license.youtu.qq.com/youtu/sdklicenseapi/license_generate";
    }

    private Auth() {
    }

    public static AuthResult auth(Context context, String str, String str2, String str3) {
        int innerAuthOnline;
        mContext = context.getApplicationContext();
        if (TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                innerAuthOnline = innerAuthOnline(context, str2, str3);
            } else {
                return new AuthResult(HijrahDate.MAX_VALUE_OF_ERA, null);
            }
        } else {
            int innerAuthAssets = innerAuthAssets(str, str3);
            if (innerAuthAssets != 0 || needRenewal()) {
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    innerAuthOnline = innerAuthOnline(context, str2, str3);
                } else {
                    Log.w(TAG, "licenseId or secretKey is null, Unable to pull lic online");
                }
            }
            innerAuthOnline = innerAuthAssets;
        }
        return new AuthResult(innerAuthOnline, new AuthInfo(str2, str, sAuthOnlineWithCacheCallTime, BindType.APP));
    }

    public static AuthResult authByBase64(Context context, String str, String str2) {
        mContext = context.getApplicationContext();
        int initAuthByString = YTCommonInterface.initAuthByString(str, str2);
        Log.i(TAG, String.format("YTCommonInterface.initAuthByString(secret_key=%s) = code%s", str2, Integer.valueOf(initAuthByString)));
        return new AuthResult(initAuthByString, new AuthInfo(str2, "", sAuthOnlineWithCacheCallTime, BindType.APP));
    }

    private static int doAuthOnline(Context context, String str, String str2, boolean z10) {
        File filesDir = context.getFilesDir();
        String absolutePath = new File(filesDir, context.getPackageName() + ".lic").getAbsolutePath();
        sAuthOnlineWithCacheCallTime = System.currentTimeMillis();
        if (sCurrentUrl.contains("sdklicensetest.youtu.qq.com")) {
            Log.w(TAG, "use test server!!");
        }
        int initAuthOnlineWithCache = YTCommonInterface.initAuthOnlineWithCache(context, sCurrentUrl, absolutePath, str, str2, z10);
        Log.i(TAG, String.format("YTCommonInterface.initAuthOnlineWithCache(cachePath=%s, licenseId=%s, isBindDevice=%s) = code%s", absolutePath, str, Boolean.valueOf(z10), Integer.valueOf(initAuthOnlineWithCache)));
        return initAuthOnlineWithCache;
    }

    private static int innerAuthAssets(String str, String str2) {
        int initAuthByAssets = YTCommonInterface.initAuthByAssets(str, str2);
        Log.i(TAG, String.format("YTCommonInterface.initAuthByAssets(licenceFileName=%s) = code%s", str, Integer.valueOf(initAuthByAssets)));
        return initAuthByAssets;
    }

    private static int innerAuthOnline(Context context, String str, String str2) {
        int doAuthOnline = doAuthOnline(context, str, str2, true);
        return doAuthOnline != 0 ? doAuthOnline(context, str, str2, false) : doAuthOnline;
    }

    private static boolean needRenewal() {
        return ((YTCommonInterface.getEndTime() - (System.currentTimeMillis() / 1000)) / 3600) / 24 <= 7;
    }
}
