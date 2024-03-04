package cn.jiguang.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import cn.jiguang.internal.JConstants;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d implements Thread.UncaughtExceptionHandler {

    /* renamed from: b  reason: collision with root package name */
    private static d f2382b = new d();

    /* renamed from: c  reason: collision with root package name */
    private static int f2383c = 1048576;

    /* renamed from: a  reason: collision with root package name */
    public boolean f2384a;

    /* renamed from: d  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f2385d = null;

    /* renamed from: e  reason: collision with root package name */
    private final Object f2386e = new Object();

    private d() {
        this.f2384a = true;
        this.f2384a = ((Boolean) cn.jiguang.g.b.a(JConstants.getAppContext(null), cn.jiguang.g.a.b())).booleanValue();
    }

    public static d a() {
        return f2382b;
    }

    private JSONArray a(Context context, Throwable th2) {
        String d10 = cn.jiguang.f.c.d(cn.jiguang.f.c.a(context, "jpush_uncaughtexception_file"));
        JSONArray jSONArray = null;
        int i9 = 0;
        if (!TextUtils.isEmpty(d10)) {
            try {
                JSONArray jSONArray2 = new JSONArray(d10);
                try {
                    i9 = d10.length();
                } catch (JSONException unused) {
                }
                jSONArray = jSONArray2;
            } catch (JSONException unused2) {
            }
        }
        return a(context, jSONArray, i9, th2);
    }

    private JSONArray a(Context context, JSONArray jSONArray, int i9, Throwable th2) {
        JSONObject jSONObject;
        long currentTimeMillis = System.currentTimeMillis() + cn.jiguang.d.b.c(context);
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        if (jSONArray == null) {
            jSONArray = new JSONArray();
        }
        int i10 = 0;
        while (true) {
            jSONObject = null;
            try {
                if (i10 >= jSONArray.length()) {
                    break;
                }
                jSONObject = jSONArray.optJSONObject(i10);
                if (jSONObject != null && stringWriter2.equals(jSONObject.getString("stacktrace"))) {
                    jSONObject.put(AnimatedPasterJsonConfig.CONFIG_COUNT, jSONObject.getInt(AnimatedPasterJsonConfig.CONFIG_COUNT) + 1);
                    jSONObject.put("crashtime", currentTimeMillis);
                    break;
                }
                i10++;
            } catch (Throwable unused) {
            }
        }
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("crashtime", currentTimeMillis);
            jSONObject2.put("stacktrace", stringWriter2);
            jSONObject2.put("message", b(th2));
            jSONObject2.put(AnimatedPasterJsonConfig.CONFIG_COUNT, 1);
            jSONObject2.put("networktype", cn.jiguang.f.a.l(context));
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
            if (packageInfo != null) {
                String str = packageInfo.versionName;
                if (str == null) {
                    str = "null";
                }
                jSONObject2.put("versionname", str);
                jSONObject2.put("versioncode", packageInfo.versionCode + "");
            }
            if (i9 + jSONObject2.toString().length() < f2383c) {
                jSONArray.put(jSONObject2);
            } else {
                long j10 = -1;
                int i11 = 0;
                for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i12);
                    if (optJSONObject != null) {
                        long optLong = optJSONObject.optLong("crashtime");
                        if (j10 == -1 || optLong < j10) {
                            i11 = i12;
                            j10 = optLong;
                        }
                    }
                }
                jSONArray.put(i11, jSONObject2);
            }
        }
        return jSONArray;
    }

    private void a(Context context, JSONArray jSONArray) {
        File a10;
        String jSONArray2 = jSONArray != null ? jSONArray.toString() : null;
        if (TextUtils.isEmpty(jSONArray2) || (a10 = cn.jiguang.f.c.a(context, "jpush_uncaughtexception_file")) == null) {
            return;
        }
        cn.jiguang.f.c.b(a10, jSONArray2);
    }

    private void a(Throwable th2) {
        if (this.f2384a) {
            Context appContext = JConstants.getAppContext(null);
            if (appContext == null) {
                cn.jiguang.as.d.i("JPushCrashHandler", "handleException failed: context is null");
                return;
            }
            JSONArray a10 = a(appContext, th2);
            d(appContext);
            a(appContext, a10);
        }
    }

    private String b(Throwable th2) {
        String th3 = th2.toString();
        try {
            String[] split = th3.split(CertificateUtil.DELIMITER);
            if (split.length > 1) {
                for (int length = split.length - 1; length >= 0; length--) {
                    if (!split[length].endsWith("Exception") && !split[length].endsWith("Error")) {
                    }
                    return split[length];
                }
                return th3;
            }
            return th3;
        } catch (NullPointerException | PatternSyntaxException unused) {
            return th3;
        }
    }

    public static JSONArray c(Context context) {
        String d10 = cn.jiguang.f.c.d(cn.jiguang.f.c.a(context, "jpush_uncaughtexception_file"));
        if (TextUtils.isEmpty(d10)) {
            return null;
        }
        try {
            return new JSONArray(d10);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static void d(Context context) {
        if (context == null) {
            cn.jiguang.as.d.g("JPushCrashHandler", "Action - deleteCrashLog context is null");
        } else {
            cn.jiguang.f.c.a(cn.jiguang.f.c.a(context, "jpush_uncaughtexception_file"));
        }
    }

    public final void a(long j10) {
        synchronized (this.f2386e) {
            long currentTimeMillis = System.currentTimeMillis();
            int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (i9 < 0) {
                throw new IllegalArgumentException("timeout value is negative");
            }
            if (i9 == 0) {
                while (cn.jiguang.bg.d.b("FUTURE_TASK")) {
                    this.f2386e.wait(0L);
                }
            } else {
                long j11 = 0;
                while (cn.jiguang.bg.d.b("FUTURE_TASK")) {
                    long j12 = j10 - j11;
                    if (j12 <= 0) {
                        break;
                    }
                    this.f2386e.wait(j12);
                    j11 = System.currentTimeMillis() - currentTimeMillis;
                }
            }
        }
    }

    public void a(Context context) {
        if (this.f2384a) {
            return;
        }
        this.f2384a = true;
        cn.jiguang.as.d.c("JPushCrashHandler", "init caughtException");
        cn.jiguang.g.b.a(JConstants.getAppContext(context), cn.jiguang.g.a.b().a((cn.jiguang.g.a<Boolean>) Boolean.TRUE));
    }

    public void b() {
        if (this.f2385d == null) {
            this.f2385d = Thread.getDefaultUncaughtExceptionHandler();
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void b(Context context) {
        if (this.f2384a) {
            cn.jiguang.as.d.c("JPushCrashHandler", "stop caughtException");
            this.f2384a = false;
            cn.jiguang.g.b.a(JConstants.getAppContext(context), cn.jiguang.g.a.b().a((cn.jiguang.g.a<Boolean>) Boolean.FALSE));
        }
    }

    public void e(Context context) {
        if (context == null) {
            cn.jiguang.as.d.g("JPushCrashHandler", "Action - reportCrashLog context is null");
        } else if (cn.jiguang.d.b.a(context)) {
            try {
                cn.jiguang.bg.d.a("FUTURE_TASK", new e());
            } catch (Throwable th2) {
                cn.jiguang.as.d.i("JPushCrashHandler", "report crash e:" + th2);
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        if (this.f2384a) {
            cn.jiguang.as.d.a("JPushCrashHandler", "enable crash report");
            a(th2);
            try {
                cn.jiguang.bg.d.a("FUTURE_TASK", new e());
                a(2000L);
            } catch (Throwable th3) {
                cn.jiguang.as.d.i("JPushCrashHandler", "report crash e:" + th3);
            }
        } else {
            cn.jiguang.as.d.a("JPushCrashHandler", "disable crash report");
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f2385d;
        if (uncaughtExceptionHandler == this || uncaughtExceptionHandler == null) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th2);
    }
}
