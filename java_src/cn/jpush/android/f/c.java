package cn.jpush.android.f;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.text.TextUtils;
import cn.jiguang.push.asus.PushMessageReceiver;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static Context f3060a;

    /* renamed from: b  reason: collision with root package name */
    public static String f3061b;

    /* renamed from: g  reason: collision with root package name */
    private static cn.jpush.android.g.a f3066g;

    /* renamed from: h  reason: collision with root package name */
    private static String f3067h;

    /* renamed from: i  reason: collision with root package name */
    private static Boolean f3068i;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicLong f3065f = new AtomicLong(0);

    /* renamed from: c  reason: collision with root package name */
    public static String f3062c = null;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f3063d = false;

    /* renamed from: e  reason: collision with root package name */
    public static String f3064e = "com.asus.as";

    /* renamed from: j  reason: collision with root package name */
    private static ExecutorService f3069j = Executors.newSingleThreadExecutor();

    public static long a() {
        long incrementAndGet = f3065f.incrementAndGet();
        if (incrementAndGet == Long.MAX_VALUE) {
            f3065f.set(0L);
        }
        return incrementAndGet;
    }

    public static void a(Context context, String str, long j10, JSONObject jSONObject) {
        if (c(context)) {
            f3069j.execute(new d(str, j10, jSONObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(String str, long j10, JSONObject jSONObject) {
        cn.jpush.android.g.a aVar = f3066g;
        if (!(aVar != null ? aVar.b() : false)) {
            cn.jpush.android.i.b.a("Gobal", "connect has disconnect, will reconnect.");
            cn.jpush.android.g.a aVar2 = f3066g;
            if (aVar2 != null) {
                aVar2.a();
            }
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("JPUSH_PACKAGE", f3062c);
            if (j10 <= 0) {
                j10 = a();
            }
            jSONObject.put("JPUSH_RID", j10);
            String jSONObject2 = jSONObject.toString();
            cn.jpush.android.i.b.c("Gobal", "cmd:" + str + ",data:" + jSONObject2);
            cn.jpush.android.g.a aVar3 = f3066g;
            if (aVar3 != null) {
                aVar3.a(str, jSONObject2);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static boolean a(Context context) {
        return cn.jpush.android.g.c.a(context, f3064e);
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(f3067h)) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.ups.push.PUSH_RESPONSE");
                intent.setPackage(context.getPackageName());
                ComponentInfo a10 = cn.jpush.android.j.a.a(context, context.getPackageName(), PushMessageReceiver.class);
                if (a10 != null) {
                    f3067h = a10.name;
                    cn.jpush.android.i.a.a("ASUS_PUSH", "Gobal", 4, "found userServiceClass :" + f3067h + " by getComponentInfo");
                }
            } catch (Throwable th2) {
                cn.jpush.android.i.b.e("Gobal", "not found PushMessageReceiver :" + th2.getMessage());
            }
            return f3067h;
        }
        return f3067h;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean c(android.content.Context r6) {
        /*
            java.lang.String r0 = "asus_default_channel_id"
            java.lang.Boolean r1 = cn.jpush.android.f.c.f3068i
            if (r1 == 0) goto Lb
            boolean r6 = r1.booleanValue()
            return r6
        Lb:
            r1 = 0
            java.lang.String r2 = "Gobal"
            if (r6 != 0) goto L16
            java.lang.String r6 = "context is null"
            cn.jpush.android.i.b.g(r2, r6)
            return r1
        L16:
            boolean r3 = cn.jpush.android.j.a.a(r6)
            r4 = 0
            java.lang.String r5 = "ConnectionFactory"
            if (r3 != 0) goto L25
            java.lang.String r3 = "Manufacturer not match, give up create connection."
        L21:
            cn.jpush.android.i.b.f(r5, r3)
            goto L35
        L25:
            java.lang.String r3 = cn.jpush.android.f.c.f3064e
            boolean r3 = cn.jpush.android.g.c.a(r6, r3)
            if (r3 != 0) goto L30
            java.lang.String r3 = "cn.jpush.android.service.PushManagerService not exist in system, give up create connection."
            goto L21
        L30:
            cn.jpush.android.g.d r4 = new cn.jpush.android.g.d
            r4.<init>()
        L35:
            cn.jpush.android.f.c.f3066g = r4
            if (r4 != 0) goto L43
            java.lang.String r6 = "unsupport this device."
            cn.jpush.android.i.b.g(r2, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            cn.jpush.android.f.c.f3068i = r6
            return r1
        L43:
            android.content.Context r1 = r6.getApplicationContext()
            cn.jpush.android.f.c.f3060a = r1
            java.lang.String r1 = r1.getPackageName()
            cn.jpush.android.f.c.f3062c = r1
            cn.jpush.android.a.a.a(r6)
            java.lang.String r1 = "notification"
            java.lang.Object r6 = r6.getSystemService(r1)     // Catch: java.lang.Throwable -> L78
            android.app.NotificationManager r6 = (android.app.NotificationManager) r6     // Catch: java.lang.Throwable -> L78
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L78
            r3 = 26
            if (r1 < r3) goto L8e
            android.app.NotificationChannel r1 = r6.getNotificationChannel(r0)     // Catch: java.lang.Throwable -> L78
            if (r1 != 0) goto L8e
            java.lang.String r1 = "create default channel:默认"
            cn.jpush.android.i.b.b(r2, r1)     // Catch: java.lang.Throwable -> L78
            android.app.NotificationChannel r1 = new android.app.NotificationChannel     // Catch: java.lang.Throwable -> L78
            java.lang.String r3 = "默认"
            r4 = 3
            r1.<init>(r0, r3, r4)     // Catch: java.lang.Throwable -> L78
            r6.createNotificationChannel(r1)     // Catch: java.lang.Throwable -> L78
            goto L8e
        L78:
            r6 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "[initNotificationChannel] failed:"
            r0.<init>(r1)
            java.lang.String r6 = r6.getMessage()
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            cn.jpush.android.i.b.e(r2, r6)
        L8e:
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            cn.jpush.android.f.c.f3068i = r6
            r6 = 1
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.f.c.c(android.content.Context):boolean");
    }
}
