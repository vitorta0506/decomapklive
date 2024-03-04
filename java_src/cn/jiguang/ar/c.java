package cn.jiguang.ar;

import android.content.Context;
import cn.jpush.android.api.JPushInterface;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2059a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2060b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f2061c = false;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f2062d = false;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f2063e = false;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f2064f = false;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f2065g = false;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f2066h = false;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f2067i = false;

    /* renamed from: j  reason: collision with root package name */
    private static volatile c f2068j;

    /* renamed from: k  reason: collision with root package name */
    private static final Object f2069k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static AtomicInteger f2070l = new AtomicInteger(0);

    private c() {
        f2059a = d();
        f2060b = e();
        f2061c = f();
        f2062d = g();
        f2063e = h();
        f2064f = j();
        f2065g = i();
        f2066h = k();
        f2067i = l();
    }

    public static c a() {
        if (f2068j == null) {
            f2068j = new c();
        }
        return f2068j;
    }

    private static boolean d() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 1) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p jpush init");
            return f2059a;
        }
        i9 = f2070l.addAndGet(1);
        try {
            String str = JPushInterface.PUSH_MESSAGE_PERMISSION_POSTFIX;
            z10 = true;
        } catch (ClassNotFoundException e11) {
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJpushSDK:" + e.getMessage());
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJpushSDK:" + z10 + ", mPluginInitState: " + i9);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJpushSDK:" + z10 + ", mPluginInitState: " + i9);
        return z10;
    }

    private static boolean e() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 2) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p jmessage init");
            return f2060b;
        }
        int i10 = f2070l.addAndGet(2);
        try {
            Class.forName("cn.jpush.im.android.api.JMessageClient");
            z10 = true;
        } catch (ClassNotFoundException e11) {
            i9 = i10;
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJMessageSDK:" + e.getMessage());
            i10 = i9;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJMessageSDK:" + z10 + ", pluginState: " + i10);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJMessageSDK:" + z10 + ", pluginState: " + i10);
        return z10;
    }

    private static boolean f() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 4) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p janalytics init");
            return f2061c;
        }
        int i10 = f2070l.addAndGet(4);
        try {
            Class.forName("cn.jiguang.analytics.android.api.JAnalyticsInterface");
            z10 = true;
        } catch (ClassNotFoundException e11) {
            i9 = i10;
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJanalyticsSDK:" + e.getMessage());
            i10 = i9;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJanalyticsSDK:" + z10 + ", pluginState: " + i10);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJanalyticsSDK:" + z10 + ", pluginState: " + i10);
        return z10;
    }

    private static boolean g() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 8) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p jshare init");
            return f2062d;
        }
        int i10 = f2070l.addAndGet(8);
        try {
            Class.forName("cn.jiguang.share.android.api.JShareInterface");
            z10 = true;
        } catch (ClassNotFoundException e11) {
            i9 = i10;
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJshareSDK:" + e.getMessage());
            i10 = i9;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJshareSDK:" + z10 + ", pluginState: " + i10);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJshareSDK:" + z10 + ", pluginState: " + i10);
        return z10;
    }

    private static boolean h() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 16) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p jssp init");
            return f2063e;
        }
        int i10 = f2070l.addAndGet(16);
        try {
            Class.forName("cn.jiguang.adsdk.api.JSSPInterface");
            z10 = true;
        } catch (ClassNotFoundException e11) {
            i9 = i10;
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJSspSDK:" + e.getMessage());
            i10 = i9;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJSspSDK:" + z10 + ", pluginState: " + i10);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJSspSDK:" + z10 + ", pluginState: " + i10);
        return z10;
    }

    private static boolean i() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJCommonSDK:" + e10.getMessage());
            i9 = 0;
        }
        if ((f2070l.intValue() & 32) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p jcommon init");
            return f2065g;
        }
        i9 = f2070l.addAndGet(32);
        z10 = true;
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJCommonSDK:" + z10 + ", pluginState: " + i9);
        return z10;
    }

    private static boolean j() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 64) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p jverification init");
            return f2064f;
        }
        int i10 = f2070l.addAndGet(64);
        try {
            Class.forName("cn.jiguang.verifysdk.api.JVerificationInterface");
            z10 = true;
        } catch (ClassNotFoundException e11) {
            i9 = i10;
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJVerificationSDK:" + e.getMessage());
            i10 = i9;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJVerificationSDK:" + z10 + ", pluginState: " + i10);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJVerificationSDK:" + z10 + ", pluginState: " + i10);
        return z10;
    }

    private static boolean k() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 128) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p jmlink init");
            return f2066h;
        }
        int i10 = f2070l.addAndGet(128);
        try {
            Class.forName("cn.jiguang.jmlinksdk.core.JMlinkInterfaceImpl");
            z10 = true;
        } catch (ClassNotFoundException e11) {
            i9 = i10;
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJMLinkSDK:" + e.getMessage());
            i10 = i9;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJMLinkSDK:" + z10 + ", pluginState: " + i10);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJMLinkSDK:" + z10 + ", pluginState: " + i10);
        return z10;
    }

    private static boolean l() {
        int i9;
        boolean z10 = false;
        try {
        } catch (ClassNotFoundException e10) {
            e = e10;
            i9 = 0;
        }
        if ((f2070l.intValue() & 256) != 0) {
            cn.jiguang.as.d.c("JClientsHelper", "p junion init");
            return f2067i;
        }
        int i10 = f2070l.addAndGet(256);
        try {
            Class.forName("cn.jiguang.junion.JUnionInterface");
            z10 = true;
        } catch (ClassNotFoundException e11) {
            i9 = i10;
            e = e11;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJUnionSDK:" + e.getMessage());
            i10 = i9;
            cn.jiguang.as.d.a("JClientsHelper", "isPluginJUnionSDK:" + z10 + ", pluginState: " + i10);
            return z10;
        }
        cn.jiguang.as.d.a("JClientsHelper", "isPluginJUnionSDK:" + z10 + ", pluginState: " + i10);
        return z10;
    }

    public boolean a(Context context) {
        return f2060b || f2059a;
    }

    public boolean b() {
        return f2060b;
    }

    public boolean c() {
        return f2059a;
    }
}
