package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.Map;
/* loaded from: classes4.dex */
public class Bugly {
    public static final String SDK_IS_DEV = "false";

    /* renamed from: a  reason: collision with root package name */
    private static boolean f30091a = false;
    public static Context applicationContext = null;

    /* renamed from: b  reason: collision with root package name */
    private static String[] f30092b = {"BuglyCrashModule", "BuglyRqdModule", "BuglyBetaModule"};

    /* renamed from: c  reason: collision with root package name */
    private static String[] f30093c = {"BuglyRqdModule", "BuglyCrashModule", "BuglyBetaModule"};
    public static boolean enable = true;
    public static Boolean isDev;

    public static synchronized String getAppChannel() {
        byte[] bArr;
        synchronized (Bugly.class) {
            com.tencent.bugly.crashreport.common.info.a b10 = com.tencent.bugly.crashreport.common.info.a.b();
            if (b10 == null) {
                return null;
            }
            if (TextUtils.isEmpty(b10.f30203l)) {
                p a10 = p.a();
                if (a10 == null) {
                    return b10.f30203l;
                }
                Map<String, byte[]> a11 = a10.a(556, (o) null, true);
                if (a11 != null && (bArr = a11.get("app_channel")) != null) {
                    return new String(bArr);
                }
            }
            return b10.f30203l;
        }
    }

    public static void init(Context context, String str, boolean z10) {
        init(context, str, z10, null);
    }

    public static boolean isDev() {
        if (isDev == null) {
            isDev = Boolean.valueOf(Boolean.parseBoolean(SDK_IS_DEV.replace("@", "")));
        }
        return isDev.booleanValue();
    }

    public static synchronized void init(Context context, String str, boolean z10, BuglyStrategy buglyStrategy) {
        String[] strArr;
        synchronized (Bugly.class) {
            if (f30091a) {
                return;
            }
            f30091a = true;
            Context a10 = z.a(context);
            applicationContext = a10;
            if (a10 == null) {
                Log.e(x.f30674a, "init arg 'context' should not be null!");
                return;
            }
            if (isDev()) {
                f30092b = f30093c;
            }
            for (String str2 : f30092b) {
                if (str2.equals("BuglyCrashModule")) {
                    b.a(CrashModule.getInstance());
                } else if (!str2.equals("BuglyBetaModule") && !str2.equals("BuglyRqdModule")) {
                    str2.equals("BuglyFeedbackModule");
                }
            }
            b.f30121a = enable;
            b.a(applicationContext, str, z10, buglyStrategy);
        }
    }
}
