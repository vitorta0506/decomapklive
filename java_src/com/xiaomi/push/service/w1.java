package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.xiaomi.push.db;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class w1 {

    /* renamed from: m  reason: collision with root package name */
    private static volatile w1 f37382m;

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f37383a;

    /* renamed from: h  reason: collision with root package name */
    private long f37390h;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f37392j;

    /* renamed from: l  reason: collision with root package name */
    private final Context f37394l;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f37384b = new AtomicInteger(0);

    /* renamed from: c  reason: collision with root package name */
    private String f37385c = null;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f37386d = false;

    /* renamed from: e  reason: collision with root package name */
    private String f37387e = null;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicInteger f37388f = new AtomicInteger(0);

    /* renamed from: g  reason: collision with root package name */
    private final AtomicInteger f37389g = new AtomicInteger(0);

    /* renamed from: k  reason: collision with root package name */
    private int f37393k = -1;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f37391i = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a {
        public static String a() {
            return "support_wifi_digest";
        }

        public static String b(String str) {
            return String.format("HB_%s", str);
        }

        public static String c() {
            return "record_support_wifi_digest_reported";
        }

        public static String d(String str) {
            return String.format("HB_dead_time_%s", str);
        }

        public static String e() {
            return "record_hb_count_start";
        }

        public static String f() {
            return "record_short_hb_count";
        }

        public static String g() {
            return "record_long_hb_count";
        }

        public static String h() {
            return "record_hb_change";
        }

        public static String i() {
            return "record_mobile_ptc";
        }

        public static String j() {
            return "record_wifi_ptc";
        }

        public static String k() {
            return "record_ptc_start";
        }

        public static String l() {
            return "keep_short_hb_effective_time";
        }
    }

    private w1(Context context) {
        this.f37394l = context;
        this.f37392j = sf.e.i(context);
        SharedPreferences sharedPreferences = context.getSharedPreferences("hb_record", 0);
        this.f37383a = sharedPreferences;
        long currentTimeMillis = System.currentTimeMillis();
        if (sharedPreferences.getLong(a.e(), -1L) == -1) {
            sharedPreferences.edit().putLong(a.e(), currentTimeMillis).apply();
        }
        long j10 = sharedPreferences.getLong(a.k(), -1L);
        this.f37390h = j10;
        if (j10 == -1) {
            this.f37390h = currentTimeMillis;
            sharedPreferences.edit().putLong(a.k(), currentTimeMillis).apply();
        }
    }

    private void A() {
        int i9;
        String[] split;
        String[] split2;
        if (s()) {
            String string = this.f37383a.getString(a.h(), null);
            char c10 = 1;
            char c11 = 0;
            if (!TextUtils.isEmpty(string) && (split = string.split("###")) != null) {
                int i10 = 0;
                while (i10 < split.length) {
                    if (!TextUtils.isEmpty(split[i10]) && (split2 = split[i10].split(":::")) != null && split2.length >= 4) {
                        String str = split2[c11];
                        String str2 = split2[c10];
                        String str3 = split2[2];
                        String str4 = split2[3];
                        HashMap hashMap = new HashMap();
                        hashMap.put("event", "change");
                        hashMap.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
                        hashMap.put("net_type", str2);
                        hashMap.put("net_name", str);
                        hashMap.put("interval", str3);
                        hashMap.put("timestamp", str4);
                        h("category_hb_change", null, hashMap);
                        tf.c.l("[HB] report hb changed events.");
                    }
                    i10++;
                    c10 = 1;
                    c11 = 0;
                }
                this.f37383a.edit().remove(a.h()).apply();
            }
            if (this.f37383a.getBoolean(a.a(), false) && !this.f37383a.getBoolean(a.c(), false)) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("event", "support");
                hashMap2.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
                hashMap2.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
                h("category_hb_change", null, hashMap2);
                tf.c.l("[HB] report support wifi digest events.");
                this.f37383a.edit().putBoolean(a.c(), true).apply();
            }
            if (x()) {
                int i11 = this.f37383a.getInt(a.f(), 0);
                int i12 = this.f37383a.getInt(a.g(), 0);
                if (i11 > 0 || i12 > 0) {
                    long j10 = this.f37383a.getLong(a.e(), -1L);
                    String valueOf = String.valueOf(235000);
                    String valueOf2 = String.valueOf(j10);
                    String valueOf3 = String.valueOf(System.currentTimeMillis());
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("interval", valueOf);
                        jSONObject.put("c_short", String.valueOf(i11));
                        jSONObject.put("c_long", String.valueOf(i12));
                        jSONObject.put(AnimatedPasterJsonConfig.CONFIG_COUNT, String.valueOf(i11 + i12));
                        jSONObject.put("start_time", valueOf2);
                        jSONObject.put("end_time", valueOf3);
                        String jSONObject2 = jSONObject.toString();
                        HashMap hashMap3 = new HashMap();
                        hashMap3.put("event", "long_and_short_hb_count");
                        h("category_hb_count", jSONObject2, hashMap3);
                        tf.c.l("[HB] report short/long hb count events.");
                    } catch (Throwable unused) {
                    }
                }
                this.f37383a.edit().putInt(a.f(), 0).putInt(a.g(), 0).putLong(a.e(), System.currentTimeMillis()).apply();
            }
            if (z()) {
                String valueOf4 = String.valueOf(this.f37390h);
                String valueOf5 = String.valueOf(System.currentTimeMillis());
                int i13 = this.f37383a.getInt(a.i(), 0);
                if (i13 > 0) {
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("net_type", "M");
                        jSONObject3.put("ptc", i13);
                        jSONObject3.put("start_time", valueOf4);
                        jSONObject3.put("end_time", valueOf5);
                        String jSONObject4 = jSONObject3.toString();
                        HashMap hashMap4 = new HashMap();
                        hashMap4.put("event", "ptc_event");
                        h("category_lc_ptc", jSONObject4, hashMap4);
                        tf.c.l("[HB] report ping timeout count events of mobile network.");
                        this.f37383a.edit().putInt(a.i(), 0).apply();
                    } catch (Throwable unused2) {
                        i9 = 0;
                        this.f37383a.edit().putInt(a.i(), 0).apply();
                    }
                }
                i9 = 0;
                int i14 = this.f37383a.getInt(a.j(), i9);
                if (i14 > 0) {
                    try {
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("net_type", ExifInterface.LONGITUDE_WEST);
                        jSONObject5.put("ptc", i14);
                        jSONObject5.put("start_time", valueOf4);
                        jSONObject5.put("end_time", valueOf5);
                        String jSONObject6 = jSONObject5.toString();
                        HashMap hashMap5 = new HashMap();
                        hashMap5.put("event", "ptc_event");
                        h("category_lc_ptc", jSONObject6, hashMap5);
                        tf.c.l("[HB] report ping timeout count events of wifi network.");
                    } catch (Throwable unused3) {
                    }
                    this.f37383a.edit().putInt(a.j(), 0).apply();
                }
                this.f37390h = System.currentTimeMillis();
                this.f37383a.edit().putLong(a.k(), this.f37390h).apply();
            }
        }
    }

    private int a() {
        if (TextUtils.isEmpty(this.f37385c)) {
            return -1;
        }
        try {
            return this.f37383a.getInt(a.b(this.f37385c), -1);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static w1 c(Context context) {
        if (f37382m == null) {
            synchronized (w1.class) {
                if (f37382m == null) {
                    f37382m = new w1(context);
                }
            }
        }
        return f37382m;
    }

    private void h(String str, String str2, Map<String, String> map) {
    }

    private void i(boolean z10) {
        if (s()) {
            int incrementAndGet = (z10 ? this.f37388f : this.f37389g).incrementAndGet();
            Object[] objArr = new Object[2];
            objArr[0] = z10 ? "short" : "long";
            objArr[1] = Integer.valueOf(incrementAndGet);
            tf.c.s(String.format("[HB] %s ping interval count: %s", objArr));
            if (incrementAndGet >= 5) {
                String f10 = z10 ? a.f() : a.g();
                int i9 = this.f37383a.getInt(f10, 0) + incrementAndGet;
                this.f37383a.edit().putInt(f10, i9).apply();
                Object[] objArr2 = new Object[2];
                objArr2[0] = z10 ? "short" : "long";
                objArr2[1] = Integer.valueOf(i9);
                tf.c.l(String.format("[HB] accumulate %s hb count(%s) and write to file. ", objArr2));
                (z10 ? this.f37388f : this.f37389g).set(0);
            }
        }
    }

    private boolean j() {
        return this.f37384b.get() >= Math.max(5, 3);
    }

    private boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("W-") || str.startsWith("M-");
    }

    private long l() {
        return this.f37383a.getLong(a.l(), -1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n(java.lang.String r10) {
        /*
            r9 = this;
            java.lang.String r0 = "WIFI-ID-UNKNOWN"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L16
            java.lang.String r10 = r9.f37385c
            if (r10 == 0) goto L15
            java.lang.String r0 = "W-"
            boolean r10 = r10.startsWith(r0)
            if (r10 == 0) goto L15
            goto L18
        L15:
            r10 = 0
        L16:
            r9.f37385c = r10
        L18:
            android.content.SharedPreferences r10 = r9.f37383a
            java.lang.String r0 = r9.f37385c
            java.lang.String r0 = com.xiaomi.push.service.w1.a.b(r0)
            r1 = -1
            int r10 = r10.getInt(r0, r1)
            android.content.SharedPreferences r0 = r9.f37383a
            java.lang.String r2 = r9.f37385c
            java.lang.String r2 = com.xiaomi.push.service.w1.a.d(r2)
            r3 = -1
            long r5 = r0.getLong(r2, r3)
            long r7 = java.lang.System.currentTimeMillis()
            if (r10 == r1) goto L75
            int r10 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r10 != 0) goto L56
            android.content.SharedPreferences r10 = r9.f37383a
            android.content.SharedPreferences$Editor r10 = r10.edit()
            java.lang.String r0 = r9.f37385c
            java.lang.String r0 = com.xiaomi.push.service.w1.a.d(r0)
            long r2 = r9.p()
            long r7 = r7 + r2
            android.content.SharedPreferences$Editor r10 = r10.putLong(r0, r7)
        L52:
            r10.apply()
            goto L75
        L56:
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 <= 0) goto L75
            android.content.SharedPreferences r10 = r9.f37383a
            android.content.SharedPreferences$Editor r10 = r10.edit()
            java.lang.String r0 = r9.f37385c
            java.lang.String r0 = com.xiaomi.push.service.w1.a.b(r0)
            android.content.SharedPreferences$Editor r10 = r10.remove(r0)
            java.lang.String r0 = r9.f37385c
            java.lang.String r0 = com.xiaomi.push.service.w1.a.d(r0)
            android.content.SharedPreferences$Editor r10 = r10.remove(r0)
            goto L52
        L75:
            java.util.concurrent.atomic.AtomicInteger r10 = r9.f37384b
            r0 = 0
            r10.getAndSet(r0)
            java.lang.String r10 = r9.f37385c
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            r2 = 1
            if (r10 != 0) goto L8e
            int r10 = r9.a()
            if (r10 == r1) goto L8b
            goto L8e
        L8b:
            r9.f37386d = r2
            goto L90
        L8e:
            r9.f37386d = r0
        L90:
            r10 = 2
            java.lang.Object[] r10 = new java.lang.Object[r10]
            java.lang.String r1 = r9.f37385c
            r10[r0] = r1
            boolean r0 = r9.f37386d
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r10[r2] = r0
            java.lang.String r0 = "[HB] network changed, netid:%s, %s"
            java.lang.String r10 = java.lang.String.format(r0, r10)
            tf.c.l(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.w1.n(java.lang.String):void");
    }

    private boolean o() {
        return !TextUtils.isEmpty(this.f37385c) && this.f37385c.startsWith("M-");
    }

    private long p() {
        return 777600000L;
    }

    private void r(String str) {
        if (k(str)) {
            this.f37383a.edit().putInt(a.b(str), 235000).apply();
            this.f37383a.edit().putLong(a.d(this.f37385c), System.currentTimeMillis() + p()).apply();
        }
    }

    private boolean s() {
        return false;
    }

    private void u(String str) {
        String str2;
        String str3;
        if (s() && !TextUtils.isEmpty(str)) {
            if (str.startsWith("W-")) {
                str2 = ExifInterface.LONGITUDE_WEST;
            } else if (!str.startsWith("M-")) {
                return;
            } else {
                str2 = "M";
            }
            String valueOf = String.valueOf(235000);
            String valueOf2 = String.valueOf(System.currentTimeMillis() / 1000);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(":::");
            sb2.append(str2);
            sb2.append(":::");
            sb2.append(valueOf);
            sb2.append(":::");
            sb2.append(valueOf2);
            String string = this.f37383a.getString(a.h(), null);
            if (TextUtils.isEmpty(string)) {
                str3 = sb2.toString();
            } else {
                str3 = string + "###" + sb2.toString();
            }
            this.f37383a.edit().putString(a.h(), str3).apply();
        }
    }

    private boolean v() {
        return this.f37392j && (this.f37391i || ((l() > System.currentTimeMillis() ? 1 : (l() == System.currentTimeMillis() ? 0 : -1)) >= 0));
    }

    private void w() {
        if (this.f37383a.getBoolean(a.a(), false)) {
            return;
        }
        this.f37383a.edit().putBoolean(a.a(), true).apply();
    }

    private boolean x() {
        long j10 = this.f37383a.getLong(a.e(), -1L);
        if (j10 == -1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        return j10 > currentTimeMillis || currentTimeMillis - j10 >= 259200000;
    }

    private void y() {
        int i9 = this.f37393k;
        String j10 = i9 != 0 ? i9 != 1 ? null : a.j() : a.i();
        if (TextUtils.isEmpty(j10)) {
            return;
        }
        if (this.f37383a.getLong(a.k(), -1L) == -1) {
            this.f37390h = System.currentTimeMillis();
            this.f37383a.edit().putLong(a.k(), this.f37390h).apply();
        }
        this.f37383a.edit().putInt(j10, this.f37383a.getInt(j10, 0) + 1).apply();
    }

    private boolean z() {
        if (this.f37390h == -1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = this.f37390h;
        return j10 > currentTimeMillis || currentTimeMillis - j10 >= 259200000;
    }

    public long b() {
        int a10;
        long f10 = com.xiaomi.push.h1.f();
        if (this.f37392j && !o() && ((u.c(this.f37394l).k(db.IntelligentHeartbeatSwitchBoolean.a(), true) || l() >= System.currentTimeMillis()) && (a10 = a()) != -1)) {
            f10 = a10;
        }
        if (!TextUtils.isEmpty(this.f37385c) && !"WIFI-ID-UNKNOWN".equals(this.f37385c) && this.f37393k == 1) {
            i(f10 < 300000);
        }
        tf.c.l("[HB] ping interval:" + f10);
        return f10;
    }

    public void d() {
    }

    public void e(int i9) {
        this.f37383a.edit().putLong(a.l(), System.currentTimeMillis() + (i9 * 1000)).apply();
    }

    public synchronized void f(NetworkInfo networkInfo) {
        if (v()) {
            String str = null;
            if (networkInfo == null) {
                n(null);
            } else if (networkInfo.getType() == 0) {
                String subtypeName = networkInfo.getSubtypeName();
                if (!TextUtils.isEmpty(subtypeName) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(subtypeName)) {
                    str = "M-" + subtypeName;
                }
                n(str);
                this.f37393k = 0;
            } else {
                if (networkInfo.getType() != 1 && networkInfo.getType() != 6) {
                    n(null);
                }
                n("WIFI-ID-UNKNOWN");
                this.f37393k = 1;
            }
            this.f37393k = -1;
        }
    }

    public synchronized void g(String str) {
        if (!TextUtils.isEmpty(str)) {
            w();
        }
        if (v() && !TextUtils.isEmpty(str)) {
            n("W-" + str);
        }
    }

    public void m() {
        if (v()) {
            y();
            if (this.f37386d && !TextUtils.isEmpty(this.f37385c) && this.f37385c.equals(this.f37387e)) {
                this.f37384b.getAndIncrement();
                tf.c.l("[HB] ping timeout count:" + this.f37384b);
                if (j()) {
                    tf.c.l("[HB] change hb interval for net:" + this.f37385c);
                    r(this.f37385c);
                    this.f37386d = false;
                    this.f37384b.getAndSet(0);
                    u(this.f37385c);
                }
            }
        }
    }

    public void q() {
        if (v()) {
            this.f37387e = this.f37385c;
        }
    }

    public void t() {
        if (v()) {
            A();
            if (this.f37386d) {
                this.f37384b.getAndSet(0);
            }
        }
    }
}
