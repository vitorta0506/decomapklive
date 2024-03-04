package com.tencent.rtmp;

import android.content.Context;
import com.tencent.liteav.LiveSettingJni;
import com.tencent.liteav.TXLiteAVExternalDecoderFactoryInterface;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.r;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.videoconsumer.decoder.ExternalDecodeFactoryManager;
import com.tencent.liteav.videoconsumer.decoder.p;
/* loaded from: classes4.dex */
public class TXLiveBase {
    private static final String TAG = "TXLiveBase";
    private static TXLiveBase instance = new TXLiveBase();
    private static c networkTimeCallback = new c((byte) 0);
    private static TXLiveBaseListener sListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b implements LiteavLog.a {
        private b() {
        }

        /* synthetic */ b(byte b10) {
            this();
        }

        @Override // com.tencent.liteav.base.util.LiteavLog.a
        public final void a(LiteavLog.b bVar, String str, String str2) {
            TXLiveBaseListener tXLiveBaseListener = TXLiveBase.sListener;
            if (tXLiveBaseListener != null) {
                tXLiveBaseListener.onLog(bVar.mNativeValue, str, str2);
            }
        }
    }

    /* loaded from: classes4.dex */
    static class c implements CommonUtil.a {
        private c() {
        }

        /* synthetic */ c(byte b10) {
            this();
        }

        @Override // com.tencent.liteav.base.util.CommonUtil.a
        public final void a(int i9, String str) {
            TXLiveBase.onUpdateNetworkTime(i9, str);
        }
    }

    static {
        if (r.a()) {
            CommonUtil.setUpdateNetworkTimeCallback(networkTimeCallback);
        }
    }

    private TXLiveBase() {
    }

    public static TXLiveBase getInstance() {
        return instance;
    }

    public static long getNetworkTimestamp() {
        return CommonUtil.getNetworkTimestamp();
    }

    public static String getPituSDKVersion() {
        return "";
    }

    public static String getSDKVersionStr() {
        return CommonUtil.getSDKVersionStr();
    }

    public static boolean isLibraryPathValid(String str) {
        return false;
    }

    public static void onUpdateNetworkTime(int i9, String str) {
        TXLiveBaseListener tXLiveBaseListener = sListener;
        if (tXLiveBaseListener != null) {
            tXLiveBaseListener.onUpdateNetworkTime(i9, str);
        }
    }

    public static void setAppID(String str) {
        LiveSettingJni.nativeSetAppId(str);
    }

    public static void setAppVersion(String str) {
    }

    public static void setConsoleEnabled(boolean z10) {
        LiteavLog.nativeSetConsoleLogEnabled(z10);
    }

    public static boolean setExtID(String str, String str2) {
        return LiteavSystemInfo.setExtID(str, str2);
    }

    public static void setExternalDecoderFactory(TXLiteAVExternalDecoderFactoryInterface tXLiteAVExternalDecoderFactoryInterface) {
        LiteavLog.i(TAG, "Set external decoder factory. factory:".concat(String.valueOf(tXLiteAVExternalDecoderFactoryInterface)));
        if (tXLiteAVExternalDecoderFactoryInterface == null) {
            ExternalDecodeFactoryManager.a(null);
        } else {
            ExternalDecodeFactoryManager.a(new a(tXLiteAVExternalDecoderFactoryInterface));
        }
    }

    public static int setGlobalEnv(String str) {
        return CommonUtil.setGlobalEnv(str);
    }

    public static void setLibraryPath(String str) {
        r.b(str);
        if (r.a()) {
            CommonUtil.setUpdateNetworkTimeCallback(networkTimeCallback);
        }
    }

    public static void setListener(TXLiveBaseListener tXLiveBaseListener) {
        LiteavLog.setCallback(new b((byte) 0));
        LiteavLog.nativeSetLogCallbackEnabled(tXLiveBaseListener != null);
        sListener = tXLiveBaseListener;
    }

    public static void setLogLevel(int i9) {
        LiteavLog.b bVar = LiteavLog.b.kAll;
        if (i9 == 2) {
            bVar = LiteavLog.b.kInfo;
        } else if (i9 == 3) {
            bVar = LiteavLog.b.kWarning;
        } else if (i9 == 4) {
            bVar = LiteavLog.b.kError;
        } else if (i9 == 5) {
            bVar = LiteavLog.b.kFatal;
        } else if (i9 == 6) {
            bVar = LiteavLog.b.kNone;
        }
        LiteavLog.nativeSetLogLevel(bVar.mNativeValue);
    }

    public static void setPituLicencePath(String str) {
    }

    public static void setUserId(String str) {
        LiveSettingJni.nativeSetUserId(str);
    }

    public static int updateNetworkTime() {
        return CommonUtil.updateNetworkTime();
    }

    public String getLicenceInfo(Context context) {
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
        return LicenseChecker.getInstance().getLicense(LicenseChecker.c.LIVE);
    }

    public void setLicence(Context context, String str, String str2) {
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
        LicenseChecker.getInstance().setListener(new LicenseChecker.b() { // from class: com.tencent.rtmp.TXLiveBase.1
            @Override // com.tencent.liteav.sdk.common.LicenseChecker.b
            public final void a(int i9, String str3) {
                TXLiveBaseListener tXLiveBaseListener = TXLiveBase.sListener;
                if (tXLiveBaseListener != null) {
                    tXLiveBaseListener.onLicenceLoaded(i9, str3);
                }
            }
        });
        LicenseChecker.getInstance().setLicense(LicenseChecker.c.LIVE, str, str2);
    }

    /* loaded from: classes4.dex */
    static class a implements p {

        /* renamed from: a  reason: collision with root package name */
        private TXLiteAVExternalDecoderFactoryInterface f33381a;

        public a(TXLiteAVExternalDecoderFactoryInterface tXLiteAVExternalDecoderFactoryInterface) {
            this.f33381a = tXLiteAVExternalDecoderFactoryInterface;
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.p
        public final long a() {
            long CreateHevcDecoder = this.f33381a.CreateHevcDecoder();
            LiteavLog.i("ExternalDecoderWrapper", "Create external hevc decoder. decoder:".concat(String.valueOf(CreateHevcDecoder)));
            return CreateHevcDecoder;
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.p
        public final void a(long j10) {
            LiteavLog.i("ExternalDecoderWrapper", "Destroy external hevc decoder. handler:".concat(String.valueOf(j10)));
            this.f33381a.DestroyHevcDecoder(j10);
        }
    }
}
