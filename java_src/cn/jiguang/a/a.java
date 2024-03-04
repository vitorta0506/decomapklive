package cn.jiguang.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import cn.jiguang.android.IDataShare;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.ar.f;
import cn.jiguang.as.d;
import cn.jiguang.az.c;
import cn.jiguang.az.e;
import cn.jiguang.bg.b;
import cn.jiguang.internal.JConstants;
import cn.jiguang.internal.JCoreInternalHelper;
import cn.jpush.android.service.DataShare;
import cn.jpush.android.service.JCommonService;
import cn.jpush.android.service.PushReceiver;
import com.facebook.GraphResponse;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f1807a = ".permission.JPUSH_MESSAGE";

    /* renamed from: b  reason: collision with root package name */
    public static String f1808b = "2.9.0";

    /* renamed from: c  reason: collision with root package name */
    public static int f1809c = 290;

    /* renamed from: d  reason: collision with root package name */
    public static String f1810d = "";

    /* renamed from: e  reason: collision with root package name */
    public static Boolean f1811e = null;

    /* renamed from: f  reason: collision with root package name */
    public static Boolean f1812f = null;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f1813g = false;

    /* renamed from: h  reason: collision with root package name */
    private static ServiceConnection f1814h = new ServiceConnection() { // from class: cn.jiguang.a.a.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d.c("JCoreGobal", "action - onServiceConnected, ComponentName:" + componentName);
            d.e("JCoreGobal", "Remote Service bind success.");
            try {
                DataShare.init(IDataShare.Stub.asInterface(iBinder), cn.jiguang.ar.d.a(JConstants.getAppContext(null)));
                Context context = JConstants.mApplicationContext;
                if (context != null) {
                    JCoreManager.init(context);
                }
            } catch (Throwable th2) {
                d.i("JCoreGobal", "onServiceConnected e:" + th2);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            d.c("JCoreGobal", "action - onServiceDisconnected, ComponentName:" + componentName);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cn.jiguang.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0033a extends b {

        /* renamed from: a  reason: collision with root package name */
        Context f1815a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1816b;

        /* renamed from: c  reason: collision with root package name */
        String f1817c;

        /* renamed from: d  reason: collision with root package name */
        Bundle f1818d;

        C0033a(Context context, boolean z10, String str, Bundle bundle) {
            this.f1815a = context;
            this.f1816b = z10;
            this.f1817c = str;
            this.f1818d = bundle;
            this.f2494h = "JCoreGlobal";
        }

        @Override // cn.jiguang.bg.b
        public void a() {
            String str;
            try {
                if (!this.f1816b) {
                    if (a.a(this.f1815a)) {
                        cn.jiguang.ar.d.a().a(this.f1815a, this.f1817c, this.f1818d);
                        return;
                    }
                    return;
                }
                if (this.f1817c.equals("a5")) {
                    cn.jiguang.az.b.a().a(this.f1815a, 2001, 1, "");
                    cn.jiguang.g.b.a(this.f1815a, cn.jiguang.g.a.n().a((cn.jiguang.g.a<Boolean>) Boolean.TRUE));
                    String string = this.f1818d.getString("appkey");
                    if (TextUtils.isEmpty(string)) {
                        cn.jiguang.az.b.a().a(this.f1815a, 0, 10003, "appkey is empty");
                        return;
                    }
                    String b10 = cn.jiguang.ar.a.b(this.f1815a);
                    if (!TextUtils.isEmpty(b10) && !b10.equals(string)) {
                        cn.jiguang.az.b.a().a(this.f1815a, 0, 10002, "appkey not same with meta appkey");
                        return;
                    }
                    cn.jiguang.f.a.h(this.f1815a);
                    JConstants.APP_KEY = string;
                    if (c.a(this.f1815a)) {
                        str = "tcp_a24";
                    } else {
                        String b11 = cn.jiguang.d.a.b(this.f1815a);
                        if (!TextUtils.isEmpty(b11)) {
                            cn.jiguang.az.b.a().a(this.f1815a, 2001, 0, b11);
                        }
                        str = "tcp_a1";
                    }
                    this.f1817c = str;
                } else if (this.f1817c.equals("tcp_a23")) {
                    cn.jiguang.az.b.a().a(this.f1815a, 2000, 0, GraphResponse.SUCCESS_KEY);
                } else if (this.f1817c.equals("a6")) {
                    f.a(this.f1815a);
                }
                if (a.b(this.f1815a)) {
                    cn.jiguang.ar.d.a().b(this.f1815a, this.f1817c, this.f1818d);
                }
            } catch (Throwable th2) {
                d.i("JCoreGobal", "do action error:" + th2.getMessage());
            }
        }
    }

    public static void a(Context context, String str, Bundle bundle) {
        try {
            String b10 = cn.jiguang.ar.d.b(context);
            String a10 = cn.jiguang.f.a.a(context);
            String a11 = cn.jiguang.f.a.a(context, Class.forName(b10));
            d.c("JCoreGobal", "curProcessName is " + a10 + ", remoteProcessName is " + a11);
            if (!TextUtils.isEmpty(b10) && context.getPackageName().equals(a10)) {
                cn.jiguang.bg.d.a("SDK_INIT", new C0033a(context, false, str, bundle));
            } else if (!TextUtils.isEmpty(a10) && a10.equals(a11)) {
                b(context, str, bundle);
            }
        } catch (Throwable th2) {
            d.g("JCoreGobal", "sendToServiceAction failed, " + th2.getMessage());
        }
    }

    public static void a(Context context, boolean z10, long j10) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean("force", z10);
            bundle.putLong("delay_time", j10);
            a(context, "tcp_a2", bundle);
        } catch (Throwable th2) {
            d.h("JCoreGobal", "sendHeartBeat error:" + th2);
        }
    }

    public static boolean a() {
        return false;
    }

    public static synchronized boolean a(Context context) {
        synchronized (a.class) {
            Boolean bool = f1811e;
            if (bool != null) {
                return bool.booleanValue();
            } else if (context == null) {
                d.j("JCoreGobal", "init failed,context is null");
                return false;
            } else {
                if (JConstants.SDK_VERSION_INT < 290) {
                    c(context);
                }
                JConstants.mApplicationContext = context.getApplicationContext();
                d.f("JCoreGobal", "action:init jcore,version:" + f1808b + ",build id:95,l:" + JConstants.SDK_VERSION_INT);
                d.c("JCoreGobal", "build type:google_play");
                Context applicationContext = context.getApplicationContext();
                cn.jiguang.ar.c.a();
                String b10 = cn.jiguang.ar.d.b(applicationContext);
                if ((cn.jiguang.ar.c.a().c() || cn.jiguang.ar.c.a().b()) && TextUtils.isEmpty(b10)) {
                    f1811e = Boolean.FALSE;
                    d.j("JCoreGobal", "AndroidManifest.xml missing required service:" + JCommonService.class.getCanonicalName() + ",please custom one service and extends JCommonService");
                    return false;
                }
                cn.jiguang.b.d.a().b();
                d(applicationContext);
                f(applicationContext);
                Boolean bool2 = Boolean.TRUE;
                f1811e = bool2;
                return bool2.booleanValue();
            }
        }
    }

    public static void b(Context context, String str, Bundle bundle) {
        cn.jiguang.bg.d.a("SDK_SERVICE_INIT", new C0033a(context, true, str, bundle));
    }

    public static synchronized boolean b(Context context) {
        synchronized (a.class) {
            Boolean bool = f1812f;
            if (bool != null) {
                return bool.booleanValue();
            } else if (context == null) {
                d.j("JCoreGobal", "init failed,context is null");
                return false;
            } else {
                if (JConstants.SDK_VERSION_INT < 290) {
                    c(context);
                }
                d.c("JCoreGobal", "serviceInit...");
                JConstants.mApplicationContext = context.getApplicationContext();
                Context applicationContext = context.getApplicationContext();
                if (cn.jiguang.ar.a.e(applicationContext)) {
                    if (!cn.jiguang.ar.a.f(applicationContext)) {
                        f1812f = Boolean.FALSE;
                        return false;
                    }
                    if (a()) {
                        JCoreInternalHelper.getInstance().onEvent(applicationContext, JConstants.SDK_TYPE, 65, true, "", null, 1);
                    }
                    cn.jiguang.ar.c.a();
                    try {
                        JConstants.isCallInit.set(true);
                    } catch (Throwable unused) {
                    }
                    e(applicationContext);
                    f1812f = Boolean.TRUE;
                    cn.jiguang.b.d.a().e(applicationContext);
                    e.a(applicationContext, "service_create", null);
                    if (Build.VERSION.SDK_INT >= 28) {
                        cn.jiguang.ba.a.a().a(applicationContext);
                    }
                    cn.jiguang.as.a.a(applicationContext);
                    return f1812f.booleanValue();
                }
                return false;
            }
        }
    }

    public static void c(Context context) {
        b bVar;
        if (context == null) {
            return;
        }
        d.c("JCoreGobal", "setInternalDebug");
        if (((Integer) cn.jiguang.g.b.a(context, cn.jiguang.g.a.U())).intValue() != 1) {
            d.c("JCoreGobal", "setInternalDebug close and delete log file");
            bVar = new b() { // from class: cn.jiguang.a.a.3
                @Override // cn.jiguang.bg.b
                public void a() {
                    cn.jiguang.as.c.a();
                }
            };
        } else if (System.currentTimeMillis() <= ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.V())).longValue()) {
            d.c("JCoreGobal", "setInternalDebug open");
            f1813g = true;
            return;
        } else {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.U().a((cn.jiguang.g.a<Integer>) 0));
            d.c("JCoreGobal", "setInternalDebug is expire!");
            bVar = new b() { // from class: cn.jiguang.a.a.2
                @Override // cn.jiguang.bg.b
                public void a() {
                    cn.jiguang.as.c.a();
                }
            };
        }
        cn.jiguang.bg.d.a("FUTURE_TASK", bVar);
    }

    private static void d(Context context) {
        String b10 = cn.jiguang.ar.d.b(context);
        if (TextUtils.isEmpty(b10)) {
            d.e("JCoreGobal", "not found commonServiceClass（JCommonService）");
            return;
        }
        try {
            context.startService(new Intent(context.getApplicationContext(), Class.forName(b10)));
            d.c("JCoreGobal", "start common service");
        } catch (Throwable unused) {
        }
    }

    private static void e(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            PushReceiver pushReceiver = new PushReceiver();
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            if (Build.VERSION.SDK_INT < 28) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            context.registerReceiver(pushReceiver, intentFilter, context.getPackageName() + f1807a, null);
            cn.jiguang.f.a.b(context, PushReceiver.class);
        } catch (Throwable th2) {
            d.i("JCoreGobal", "registerPushReceiver fail:" + th2);
        }
    }

    private static void f(Context context) {
        String str;
        String b10 = cn.jiguang.ar.d.b(context);
        if (TextUtils.isEmpty(b10)) {
            d.e("JCoreGobal", "not found commonServiceClass（JCommonService）");
        } else if (DataShare.isBinding()) {
            d.c("JCoreGobal", "is binding service");
        } else {
            try {
                Intent intent = new Intent();
                intent.setClass(context, Class.forName(b10));
                if (context.bindService(intent, f1814h, 1)) {
                    d.a("JCoreGobal", "Remote Service on binding...");
                    DataShare.setBinding();
                } else {
                    d.a("JCoreGobal", "Remote Service bind failed");
                }
            } catch (SecurityException unused) {
                str = "Remote Service bind failed caused by SecurityException!";
                d.h("JCoreGobal", str);
            } catch (Throwable th2) {
                str = "Remote Service bind failed :" + th2;
                d.h("JCoreGobal", str);
            }
        }
    }
}
