package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes4.dex */
public class TPNativeLibraryLoader {
    private static final String DEFAULT_LIB_PLAYER_CORE_VERSION = "2.31.0.139.min";
    private static final String MAIN_PLAYER_CORE_VERSION = "2.31.0";
    private static boolean mIsLibLoaded = false;
    private static Object mIsLibLoadedLock = new Object();
    private static final boolean mIsNeedLoadThirdPartiesAndFFmpeg = true;
    private static final String mLibIjkPrefix = "ijkhlscache-master";
    private static ITPNativeLibraryExternalLoader mLibLoader = null;
    private static final boolean mLibNameHasArchSuffix = false;
    private static final String mLibPlayerCorePrefix = "tpcore-master";
    private static final String mLibThirdPartiesPrefix = "tpthirdparties-master";
    private static final int mPlayerCoreSupportMinAndroidAPILevel = 14;

    private static native String _getPlayerCoreVersion();

    public static String getLibVersion() {
        return getPlayerCoreVersion();
    }

    public static String getPlayerCoreVersion() {
        try {
            return _getPlayerCoreVersion();
        } catch (Throwable unused) {
            TPNativeLog.printLog(2, "getPlayerCoreVersion: *.so is not loaded yet, return the hard-coded version number:2.31.0.139.min");
            return DEFAULT_LIB_PLAYER_CORE_VERSION;
        }
    }

    public static boolean isLibLoaded() {
        boolean z10;
        try {
            loadLibIfNeeded(null);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, "TPNativeLibraryLoader isLibLoaded error:" + th2.getMessage());
        }
        synchronized (mIsLibLoadedLock) {
            z10 = mIsLibLoaded;
        }
        return z10;
    }

    private static boolean isMatchJavaAndPlayerCore(String str, String str2) {
        TPNativeLog.printLog(2, "javaVersion:" + str + ", coreVersion:" + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        if (split.length < 3 || split2.length < 3) {
            return false;
        }
        for (int i9 = 0; i9 < 3; i9++) {
            if (!split[i9].matches(split2[i9])) {
                return false;
            }
        }
        return true;
    }

    private static boolean loadLib(Context context) {
        String concat;
        TPNativeLog.printLog(2, "loadLib cpu arch:" + TPSystemInfo.getCpuArchitecture());
        int i9 = 3;
        boolean z10 = false;
        if (TPSystemInfo.getApiLevel() >= 14) {
            if (TPSystemInfo.getCpuArchitecture() != 3) {
                i9 = 4;
                if (TPSystemInfo.getCpuArchitecture() != 4 && TPSystemInfo.getCpuArchitecture() != 0) {
                    String concat2 = mLibThirdPartiesPrefix.concat("");
                    ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader = mLibLoader;
                    if (iTPNativeLibraryExternalLoader != null ? iTPNativeLibraryExternalLoader.loadLib(concat2, DEFAULT_LIB_PLAYER_CORE_VERSION) : loadLibDefault(concat2, context)) {
                        String concat3 = mLibPlayerCorePrefix.concat("");
                        ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader2 = mLibLoader;
                        z10 = iTPNativeLibraryExternalLoader2 != null ? iTPNativeLibraryExternalLoader2.loadLib(concat3, DEFAULT_LIB_PLAYER_CORE_VERSION) : loadLibDefault(concat3, context);
                        if (z10) {
                            String playerCoreVersion = getPlayerCoreVersion();
                            boolean isMatchJavaAndPlayerCore = isMatchJavaAndPlayerCore(MAIN_PLAYER_CORE_VERSION, playerCoreVersion);
                            if (!isMatchJavaAndPlayerCore) {
                                TPNativeLog.printLog(4, "nativePlayerCoreVer(" + playerCoreVersion + ") doesn't match javaPlayerCoreVer:(2.31.0)");
                            }
                            z10 = isMatchJavaAndPlayerCore;
                        }
                        String concat4 = mLibIjkPrefix.concat("");
                        ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader3 = mLibLoader;
                        if (iTPNativeLibraryExternalLoader3 != null) {
                            iTPNativeLibraryExternalLoader3.loadLib(concat4, DEFAULT_LIB_PLAYER_CORE_VERSION);
                        } else {
                            loadLibDefault(concat4, context);
                        }
                        if (z10) {
                            TPNativeLog.printLog(2, "Native libs loaded successfully");
                        } else {
                            TPNativeLog.printLog(4, "Failed to load native libs");
                        }
                    } else {
                        concat = "Failed to load ".concat(String.valueOf(concat2));
                    }
                }
            }
            return z10;
        }
        concat = "so load failed, current api level " + TPSystemInfo.getApiLevel() + " is less than 14";
        TPNativeLog.printLog(i9, concat);
        return false;
    }

    private static boolean loadLibDefault(String str, Context context) {
        boolean z10 = false;
        try {
            TPNativeLog.printLog(2, "loadLibDefault loading ".concat(String.valueOf(str)));
            System.loadLibrary(str);
            z10 = true;
            TPNativeLog.printLog(2, "loadLibDefault " + str + " loaded successfully");
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, "loadLibDefault failed to load " + str + "," + th2.getMessage());
        }
        if (!z10 && context != null && TPSystemInfo.getCpuArchitecture() >= 6) {
            try {
                TPNativeLog.printLog(2, "loadLibDefault try to load " + str + " from APK");
                z10 = TPLoadLibFromApk.load(str, TPNativeLibraryLoader.class.getClassLoader(), context);
                if (z10) {
                    TPNativeLog.printLog(2, "loadLibDefault loaded " + str + " from APK successfully");
                } else {
                    TPNativeLog.printLog(4, "loadLibDefault loaded " + str + " from APK failed");
                }
            } catch (Throwable th3) {
                TPNativeLog.printLog(4, "loadLibDefault loaded " + str + " from APK failed," + th3.getMessage());
            }
        }
        return z10;
    }

    public static void loadLibIfNeeded(Context context) {
        synchronized (mIsLibLoadedLock) {
            if (!mIsLibLoaded) {
                boolean loadLib = loadLib(context);
                mIsLibLoaded = loadLib;
                TPNativeLog.printLog(2, loadLib ? "TPNativeLibraryLoader load lib successfully" : "TPNativeLibraryLoader load lib failed");
            }
            if (!mIsLibLoaded) {
                throw new UnsupportedOperationException("Failed to load native library");
            }
        }
    }

    public static void setLibLoader(ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader) {
        mLibLoader = iTPNativeLibraryExternalLoader;
    }
}
