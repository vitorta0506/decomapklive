package cn.jiguang.ar;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.internal.JConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2077a = cn.jiguang.s.a.b(new byte[]{126, 101, 68, 80, 106, 50, 57, 62, 83, 79, 119, 110, ByteCompanionObject.MAX_VALUE, 118, 30, 74, 105, 125, 101, 121, 30, 67, 119, 39, 96, 32, 31, 83, 109, 105, 98, 100, 67});

    /* renamed from: b  reason: collision with root package name */
    private static AtomicBoolean f2078b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private static long f2079c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f2080d = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends cn.jiguang.bg.b {

        /* renamed from: a  reason: collision with root package name */
        private Context f2081a;

        a(Context context) {
            this.f2081a = context;
            this.f2494h = "JBannedConfig";
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x008d A[Catch: all -> 0x0146, TryCatch #0 {all -> 0x0146, blocks: (B:3:0x0003, B:6:0x000f, B:8:0x0015, B:13:0x0030, B:15:0x0036, B:17:0x004d, B:19:0x008d, B:21:0x0093, B:27:0x00d0, B:28:0x00e4, B:29:0x00ec, B:31:0x00f2, B:33:0x0101, B:34:0x010a, B:37:0x0128), top: B:43:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0093 A[Catch: all -> 0x0146, TRY_LEAVE, TryCatch #0 {all -> 0x0146, blocks: (B:3:0x0003, B:6:0x000f, B:8:0x0015, B:13:0x0030, B:15:0x0036, B:17:0x004d, B:19:0x008d, B:21:0x0093, B:27:0x00d0, B:28:0x00e4, B:29:0x00ec, B:31:0x00f2, B:33:0x0101, B:34:0x010a, B:37:0x0128), top: B:43:0x0003 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int a(android.content.Context r15) {
            /*
                Method dump skipped, instructions count: 327
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ar.f.a.a(android.content.Context):int");
        }

        @Override // cn.jiguang.bg.b
        public void a() {
            cn.jiguang.as.d.c("JBannedConfig", "start request sdk banned config");
            int a10 = a(this.f2081a);
            if (a10 != 0) {
                cn.jiguang.as.d.g("JBannedConfig", "request banned config failed, code: " + a10);
            }
        }
    }

    private static void a(Context context, String str) {
        try {
            cn.jiguang.as.d.c("JSDKBannedHelper", "save sdk banned status: " + str);
            context.getSharedPreferences("cn.jiguang.prefs", 0).edit().putString("sdk_banned_status", str).apply();
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JSDKBannedHelper", "[saveBannedConfigJson] parse json error, " + th2.getMessage());
        }
    }

    private static void a(Context context, boolean z10, long j10) {
        f2079c = j10;
        if (f2078b.get() != z10) {
            cn.jiguang.as.d.c("JSDKBannedHelper", "sdk banned status changed, update status, sdkBanned: " + z10);
            if (!z10) {
                f2078b = new AtomicBoolean(z10);
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("sdk_banned", z10);
            JCoreManager.onEvent(context, "", 81, null, bundle, new Object[0]);
        }
        if (z10) {
            cn.jiguang.as.d.i("JSDKBannedHelper", "sdk is banned...");
        }
        f2078b = new AtomicBoolean(z10);
        cn.jiguang.as.d.e("JSDKBannedHelper", "sdk banned status, banned: " + z10 + ", nextTime: " + f2079c);
    }

    public static boolean a() {
        Context appContext;
        if (f2080d != null || (appContext = JConstants.getAppContext(null)) == null) {
            return f2078b.get();
        }
        cn.jiguang.as.d.c("JSDKBannedHelper", "[isSDKBanned] first request banned config");
        return a(appContext);
    }

    public static synchronized boolean a(Context context) {
        synchronized (f.class) {
            if (f2080d != null) {
                return f2078b.get();
            }
            f2080d = Boolean.TRUE;
            b(context);
            if (System.currentTimeMillis() > f2079c) {
                cn.jiguang.bg.d.a("FUTURE_TASK", new a(context), 0, false);
            } else {
                if (f2078b.get()) {
                    cn.jiguang.as.d.i("JSDKBannedHelper", "sdk is banned...");
                }
                cn.jiguang.as.d.c("JSDKBannedHelper", "request sdk banned config not time up, not request");
            }
            return f2078b.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("values");
            if (optJSONObject != null) {
                boolean equals = "banned".equals(optJSONObject.optString("status"));
                long optLong = optJSONObject.optLong("nexttime", 43200L);
                cn.jiguang.as.d.c("JSDKBannedHelper", "from server sdk banned status: " + equals + ", next request time: " + optLong);
                if (optLong <= 0) {
                    optLong = 0;
                }
                if (optLong >= 86400) {
                    optLong = 86400;
                }
                long currentTimeMillis = System.currentTimeMillis() + (optLong * 1000);
                a(context, equals + "," + currentTimeMillis);
                a(context, equals, currentTimeMillis);
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JSDKBannedHelper", "parse sdk banned config failed, " + th2.getMessage());
        }
    }

    private static boolean b(Context context) {
        try {
            String string = context.getSharedPreferences("cn.jiguang.prefs", 0).getString("sdk_banned_status", "");
            cn.jiguang.as.d.e("JSDKBannedHelper", "local sdk banned config: " + string);
            if (!TextUtils.isEmpty(string)) {
                String[] split = string.split(",");
                boolean parseBoolean = Boolean.parseBoolean(split[0]);
                long parseLong = Long.parseLong(split[1]);
                cn.jiguang.as.d.c("JSDKBannedHelper", "local banned config, isBanned: " + parseBoolean + ", nextReqTime: " + parseLong);
                f2079c = parseLong;
                f2078b = new AtomicBoolean(parseBoolean);
                return true;
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JSDKBannedHelper", "read config json from cache failed !! error:" + th2);
        }
        return false;
    }
}
