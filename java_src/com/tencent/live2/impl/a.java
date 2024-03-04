package com.tencent.live2.impl;

import android.content.Context;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.live.V2TXLivePremierJni;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePremier;
import com.tencent.rtmp.TXLiveBase;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0334a f33363a = new C0334a();

    /* renamed from: b  reason: collision with root package name */
    private static V2TXLivePremier.V2TXLivePremierObserver f33364b;

    /* renamed from: com.tencent.live2.impl.a$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33365a;

        static {
            int[] iArr = new int[LiteavLog.b.values().length];
            f33365a = iArr;
            try {
                iArr[LiteavLog.b.kInfo.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33365a[LiteavLog.b.kWarning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33365a[LiteavLog.b.kError.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33365a[LiteavLog.b.kFatal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.tencent.live2.impl.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0334a implements LiteavLog.a {

        /* renamed from: a  reason: collision with root package name */
        V2TXLivePremier.V2TXLivePremierObserver f33366a;

        @Override // com.tencent.liteav.base.util.LiteavLog.a
        public final void a(LiteavLog.b bVar, String str, String str2) {
            int i9 = AnonymousClass2.f33365a[bVar.ordinal()];
            int i10 = 4;
            if (i9 == 1) {
                i10 = 2;
            } else if (i9 == 2) {
                i10 = 3;
            } else if (i9 != 3) {
                i10 = i9 != 4 ? 0 : 5;
            }
            V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver = this.f33366a;
            if (v2TXLivePremierObserver != null) {
                v2TXLivePremierObserver.onLog(i10, str2);
            }
        }
    }

    public static String a() {
        return CommonUtil.getSDKVersionStr();
    }

    public static void a(V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver) {
        f33364b = v2TXLivePremierObserver;
        f33363a.f33366a = v2TXLivePremierObserver;
        V2TXLivePremierJni.setObserver(v2TXLivePremierObserver);
    }

    public static void a(V2TXLiveDef.V2TXLiveLogConfig v2TXLiveLogConfig) {
        LiteavLog.b bVar;
        if (v2TXLiveLogConfig != null) {
            LiteavLog.nativeSetConsoleLogEnabled(v2TXLiveLogConfig.enableConsole);
            LiteavLog.nativeSetLogToFileEnabled(v2TXLiveLogConfig.enableLogFile);
            String str = v2TXLiveLogConfig.logPath;
            if (str != null) {
                LiteavLog.nativeSetLogFilePath(str);
            }
            int i9 = v2TXLiveLogConfig.logLevel;
            if (i9 == 2) {
                bVar = LiteavLog.b.kInfo;
            } else if (i9 == 3) {
                bVar = LiteavLog.b.kWarning;
            } else if (i9 == 4) {
                bVar = LiteavLog.b.kError;
            } else if (i9 == 5) {
                bVar = LiteavLog.b.kFatal;
            } else if (i9 != 6) {
                bVar = LiteavLog.b.kAll;
            } else {
                bVar = LiteavLog.b.kNone;
            }
            LiteavLog.nativeSetLogLevel(bVar.mNativeValue);
            C0334a c0334a = f33363a;
            boolean z10 = v2TXLiveLogConfig.enableObserver;
            if (!z10) {
                c0334a = null;
            }
            LiteavLog.setCallback(c0334a);
            LiteavLog.nativeSetLogCallbackEnabled(z10);
        }
    }

    public static void a(String str) {
        TXLiveBase.setGlobalEnv(str);
    }

    public static void a(Context context, String str, String str2) {
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
        LicenseChecker.getInstance().setListener(new LicenseChecker.b() { // from class: com.tencent.live2.impl.a.1
            @Override // com.tencent.liteav.sdk.common.LicenseChecker.b
            public final void a(int i9, String str3) {
                V2TXLivePremier.V2TXLivePremierObserver v2TXLivePremierObserver = a.f33364b;
                if (v2TXLivePremierObserver != null) {
                    v2TXLivePremierObserver.onLicenceLoaded(i9, str3);
                }
            }
        });
        LicenseChecker.getInstance().setLicense(LicenseChecker.c.LIVE, str, str2);
    }

    public static void a(String str, int i9, String str2, String str3) {
        CommonUtil.setSocks5Proxy(str, i9, str2, str3);
    }

    public static void a(boolean z10, V2TXLiveDef.V2TXLiveAudioFrameObserverFormat v2TXLiveAudioFrameObserverFormat) {
        V2TXLivePremierJni.enableAudioPlayoutObserver(z10, v2TXLiveAudioFrameObserverFormat);
    }
}
