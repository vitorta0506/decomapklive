package cn.jiguang.q;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import cn.jiguang.o.c;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b extends cn.jiguang.o.a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile b f2736c;

    /* renamed from: a  reason: collision with root package name */
    private Context f2737a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f2738b;

    /* renamed from: d  reason: collision with root package name */
    private String f2739d;

    /* loaded from: classes.dex */
    public static class a extends cn.jiguang.o.e {

        /* renamed from: a  reason: collision with root package name */
        private Context f2740a;

        private a(Context context) {
            this.f2740a = context;
            this.f2707b = "JDevice#RegisterAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            try {
                Context context = this.f2740a;
                cn.jiguang.r.b.a(context, cn.jiguang.r.b.f(context));
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JDevice", "RegisterAction failed:" + th2.getMessage());
            }
        }
    }

    public static b a() {
        if (f2736c == null) {
            synchronized (b.class) {
                if (f2736c == null) {
                    f2736c = new b();
                }
            }
        }
        return f2736c;
    }

    private JSONObject f(Context context) {
        StringBuilder sb2;
        String message;
        JSONObject a10;
        StringBuilder sb3;
        if (context == null) {
            cn.jiguang.al.a.d("JDevice", "when getDeviceInfo, context can't be null");
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            String str = "";
            if (cn.jiguang.i.a.a().d(1005)) {
                String a11 = cn.jiguang.r.b.a();
                if (TextUtils.isEmpty(a11)) {
                    a11 = "";
                }
                jSONObject.put("cpu_info", a11);
            }
            if (cn.jiguang.i.a.a().d(1003)) {
                jSONObject.put("cpu_count", cn.jiguang.r.b.c());
            }
            if (cn.jiguang.i.a.a().d(1006)) {
                jSONObject.put("cpu_max_freq", cn.jiguang.r.b.d());
            }
            if (cn.jiguang.i.a.a().d(1004)) {
                jSONObject.put("cpu_hardware", cn.jiguang.r.b.b());
            }
            if (cn.jiguang.i.a.a().d(1016)) {
                jSONObject.put("ram", cn.jiguang.r.b.c(context));
            }
            if (cn.jiguang.i.a.a().d(1018)) {
                jSONObject.put("rom", cn.jiguang.r.b.d(context));
            }
            if (cn.jiguang.i.a.a().d(1017)) {
                String a12 = cn.jiguang.r.b.a(context);
                if (TextUtils.isEmpty(a12)) {
                    a12 = "";
                }
                jSONObject.put("resolution", a12);
            }
            if (cn.jiguang.i.a.a().d(1020)) {
                String format = String.format(Locale.ENGLISH, "%.1f", Double.valueOf(cn.jiguang.r.b.b(context)));
                if (TextUtils.isEmpty(format)) {
                    format = "";
                }
                jSONObject.put("screensize", format);
            }
            if (cn.jiguang.i.a.a().d(1014)) {
                String format2 = String.format(Locale.ENGLISH, Build.VERSION.RELEASE, new Object[0]);
                jSONObject.put(TPDownloadProxyEnum.USER_OS_VERSION, TextUtils.isEmpty(format2) ? "" : format2.trim());
            }
            if (cn.jiguang.i.a.a().d(1013)) {
                String format3 = String.format(Locale.ENGLISH, Build.MODEL, new Object[0]);
                if (TextUtils.isEmpty(format3)) {
                    format3 = "";
                }
                jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, format3);
            }
            if (cn.jiguang.i.a.a().d(1002)) {
                String format4 = String.format(Locale.ENGLISH, Build.BRAND, new Object[0]);
                if (TextUtils.isEmpty(format4)) {
                    format4 = "";
                }
                jSONObject.put("brand", format4);
            }
            if (cn.jiguang.i.a.a().d(1015)) {
                String format5 = String.format(Locale.ENGLISH, Build.PRODUCT, new Object[0]);
                if (TextUtils.isEmpty(format5)) {
                    format5 = "";
                }
                jSONObject.put("product", format5);
            }
            if (cn.jiguang.i.a.a().d(1007)) {
                String format6 = String.format(Locale.ENGLISH, Build.FINGERPRINT, new Object[0]);
                if (TextUtils.isEmpty(format6)) {
                    format6 = "";
                }
                jSONObject.put("fingerprint", format6);
            }
            if (cn.jiguang.i.a.a().d(1009)) {
                String locale = context.getResources().getConfiguration().locale.toString();
                if (TextUtils.isEmpty(locale)) {
                    locale = "";
                }
                jSONObject.put("language", locale);
            }
            if (cn.jiguang.i.a.a().d(1011)) {
                String format7 = String.format(Locale.ENGLISH, c.a.f2700b, new Object[0]);
                if (TextUtils.isEmpty(format7)) {
                    format7 = "";
                }
                jSONObject.put("manufacturer", format7);
            }
            if (cn.jiguang.i.a.a().d(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_ANIMATEDPASTER)) {
                long rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
                int i9 = (rawOffset > 0L ? 1 : (rawOffset == 0L ? 0 : -1));
                if (i9 > 0) {
                    sb3 = new StringBuilder();
                    sb3.append("+");
                    sb3.append(rawOffset);
                } else if (i9 < 0) {
                    sb3 = new StringBuilder();
                    sb3.append("-");
                    sb3.append(rawOffset);
                } else {
                    sb3 = new StringBuilder();
                    sb3.append("");
                    sb3.append(rawOffset);
                }
                String replace = sb3.toString().replace("--", "-");
                if (TextUtils.isEmpty(replace)) {
                    replace = "";
                }
                jSONObject.put("timezone", replace);
            }
            if (cn.jiguang.i.a.a().d(1019)) {
                String a13 = cn.jiguang.r.d.a();
                if (TextUtils.isEmpty(a13)) {
                    a13 = "";
                }
                jSONObject.put("romversion", a13);
            }
            if (cn.jiguang.i.a.a().d(1010)) {
                String c10 = cn.jiguang.o.d.c(context, "");
                if (TextUtils.isEmpty(c10)) {
                    c10 = "";
                }
                jSONObject.put(TPDownloadProxyEnum.USER_MAC, c10);
            }
            if (cn.jiguang.i.a.a().d(1022)) {
                jSONObject.put("sim_slots", cn.jiguang.r.b.e(context));
            }
            if (cn.jiguang.i.a.a().d(1001)) {
                String l10 = cn.jiguang.o.d.l(context);
                if (!TextUtils.isEmpty(l10)) {
                    str = l10;
                }
                jSONObject.put("android_id", str);
            }
            if (cn.jiguang.i.a.a().d(1008) && (a10 = cn.jiguang.u.a.a(context)) != null) {
                jSONObject.put("ids", a10);
            }
            jSONObject.put("android_ver", Build.VERSION.SDK_INT);
            jSONObject.put("android_target_ver", context.getApplicationInfo().targetSdkVersion);
            return jSONObject;
        } catch (JSONException e10) {
            sb2 = new StringBuilder();
            sb2.append("package json exception: ");
            message = e10.getMessage();
            sb2.append(message);
            cn.jiguang.al.a.d("JDevice", sb2.toString());
            return null;
        } catch (Throwable th2) {
            sb2 = new StringBuilder();
            sb2.append("getDeviceInfo exception: ");
            message = th2.getMessage();
            sb2.append(message);
            cn.jiguang.al.a.d("JDevice", sb2.toString());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:3:0x0007, B:18:0x004a, B:21:0x0068, B:24:0x0075, B:27:0x0082, B:30:0x008f, B:33:0x009c, B:37:0x00aa, B:17:0x0044, B:14:0x003e, B:11:0x0021), top: B:42:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044 A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:3:0x0007, B:18:0x004a, B:21:0x0068, B:24:0x0075, B:27:0x0082, B:30:0x008f, B:33:0x009c, B:37:0x00aa, B:17:0x0044, B:14:0x003e, B:11:0x0021), top: B:42:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String g(android.content.Context r11) {
        /*
            java.lang.String r0 = "JDevice"
            java.lang.String r1 = ","
            java.lang.String r2 = ""
            r3 = 0
            java.lang.String r4 = cn.jiguang.o.d.a(r11)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r5 = cn.jiguang.o.d.b(r11)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r6 = r11.getPackageName()     // Catch: java.lang.Throwable -> L1f
            android.content.pm.PackageManager r11 = r11.getPackageManager()     // Catch: java.lang.Throwable -> L1d
            r7 = 0
            android.content.pm.PackageInfo r11 = r11.getPackageInfo(r6, r7)     // Catch: java.lang.Throwable -> L1d
            goto L3a
        L1d:
            r11 = move-exception
            goto L21
        L1f:
            r11 = move-exception
            r6 = r2
        L21:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2
            r7.<init>()     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r8 = "getPackageManager failed:"
            r7.append(r8)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> Lb2
            r7.append(r11)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r11 = r7.toString()     // Catch: java.lang.Throwable -> Lb2
            cn.jiguang.al.a.d(r0, r11)     // Catch: java.lang.Throwable -> Lb2
            r11 = r3
        L3a:
            if (r11 != 0) goto L3e
            r7 = r2
            goto L40
        L3e:
            java.lang.String r7 = r11.versionName     // Catch: java.lang.Throwable -> Lb2
        L40:
            if (r11 != 0) goto L44
            r11 = r2
            goto L4a
        L44:
            int r11 = r11.versionCode     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r11 = java.lang.String.valueOf(r11)     // Catch: java.lang.Throwable -> Lb2
        L4a:
            java.lang.String r8 = cn.jiguang.o.d.a()     // Catch: java.lang.Throwable -> Lb2
            int r9 = cn.jiguang.o.d.b()     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r9 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> Lb2
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2
            r10.<init>()     // Catch: java.lang.Throwable -> Lb2
            r10.append(r4)     // Catch: java.lang.Throwable -> Lb2
            r10.append(r1)     // Catch: java.lang.Throwable -> Lb2
            boolean r4 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> Lb2
            if (r4 == 0) goto L68
            r5 = r2
        L68:
            r10.append(r5)     // Catch: java.lang.Throwable -> Lb2
            r10.append(r1)     // Catch: java.lang.Throwable -> Lb2
            boolean r4 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> Lb2
            if (r4 == 0) goto L75
            r7 = r2
        L75:
            r10.append(r7)     // Catch: java.lang.Throwable -> Lb2
            r10.append(r1)     // Catch: java.lang.Throwable -> Lb2
            boolean r4 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Throwable -> Lb2
            if (r4 == 0) goto L82
            r11 = r2
        L82:
            r10.append(r11)     // Catch: java.lang.Throwable -> Lb2
            r10.append(r1)     // Catch: java.lang.Throwable -> Lb2
            boolean r11 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> Lb2
            if (r11 == 0) goto L8f
            r8 = r2
        L8f:
            r10.append(r8)     // Catch: java.lang.Throwable -> Lb2
            r10.append(r1)     // Catch: java.lang.Throwable -> Lb2
            boolean r11 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Throwable -> Lb2
            if (r11 == 0) goto L9c
            r9 = r2
        L9c:
            r10.append(r9)     // Catch: java.lang.Throwable -> Lb2
            r10.append(r1)     // Catch: java.lang.Throwable -> Lb2
            boolean r11 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> Lb2
            if (r11 == 0) goto La9
            goto Laa
        La9:
            r2 = r6
        Laa:
            r10.append(r2)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r11 = r10.toString()     // Catch: java.lang.Throwable -> Lb2
            return r11
        Lb2:
            r11 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getCurrentCondition throwable: "
            r1.append(r2)
            java.lang.String r11 = r11.getMessage()
            r1.append(r11)
            java.lang.String r11 = r1.toString()
            cn.jiguang.al.a.d(r0, r11)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.q.b.g(android.content.Context):java.lang.String");
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f2737a = context;
        return "JDevice";
    }

    public void b(Context context, int i9) {
        cn.jiguang.o.d.a(new a(context), i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
        if (!cn.jiguang.i.a.a().a(1000)) {
            cn.jiguang.al.a.a("JDevice", "will not report");
            return;
        }
        JSONObject f10 = f(context);
        this.f2738b = f10;
        if (f10 == null) {
            cn.jiguang.al.a.d("JDevice", "collect failed");
            return;
        }
        cn.jiguang.al.a.a("JDevice", "collect success:" + this.f2738b);
        super.b(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public boolean c(Context context, String str) {
        if (cn.jiguang.o.b.c(context, str)) {
            JSONObject jSONObject = this.f2738b;
            if (jSONObject == null) {
                cn.jiguang.al.a.d("JDevice", "there are no data to report");
                return false;
            }
            String jSONObject2 = jSONObject.toString();
            if (TextUtils.isEmpty(jSONObject2)) {
                return false;
            }
            this.f2739d = cn.jiguang.o.d.c(jSONObject2 + g(context));
            String g10 = cn.jiguang.o.b.g(context);
            if (TextUtils.isEmpty(this.f2739d) || TextUtils.equals(this.f2739d, g10)) {
                cn.jiguang.al.a.a("JDevice", "device detail is not change");
                return false;
            }
            cn.jiguang.al.a.a("JDevice", "device detail is change");
            return super.c(context, str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        JSONObject jSONObject = this.f2738b;
        if (jSONObject == null) {
            cn.jiguang.al.a.a("JDevice", "there are no data to report");
            return;
        }
        cn.jiguang.o.d.a(context, jSONObject, DeviceRequestsHelper.DEVICE_INFO_PARAM);
        cn.jiguang.o.d.a(context, this.f2738b, new cn.jiguang.q.a(context, this.f2739d, str));
        this.f2738b = null;
    }

    @Override // cn.jiguang.o.a
    public Object e(Context context) {
        return f(context);
    }
}
