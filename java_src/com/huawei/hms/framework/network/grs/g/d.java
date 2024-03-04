package com.huawei.hms.framework.network.grs.g;

import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import java.nio.ByteBuffer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: o  reason: collision with root package name */
    private static final String f27377o = "d";

    /* renamed from: a  reason: collision with root package name */
    private Map<String, List<String>> f27378a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f27379b;

    /* renamed from: c  reason: collision with root package name */
    private int f27380c;

    /* renamed from: d  reason: collision with root package name */
    private long f27381d;

    /* renamed from: e  reason: collision with root package name */
    private long f27382e;

    /* renamed from: f  reason: collision with root package name */
    private long f27383f;

    /* renamed from: g  reason: collision with root package name */
    private String f27384g;

    /* renamed from: h  reason: collision with root package name */
    private int f27385h;

    /* renamed from: i  reason: collision with root package name */
    private int f27386i;

    /* renamed from: j  reason: collision with root package name */
    private String f27387j;

    /* renamed from: k  reason: collision with root package name */
    private long f27388k;

    /* renamed from: l  reason: collision with root package name */
    private String f27389l;

    /* renamed from: m  reason: collision with root package name */
    private Exception f27390m;

    /* renamed from: n  reason: collision with root package name */
    private String f27391n;

    public d(int i9, Map<String, List<String>> map, byte[] bArr, long j10) {
        this.f27385h = 2;
        this.f27386i = 9001;
        this.f27387j = "";
        this.f27388k = 0L;
        this.f27389l = "";
        this.f27380c = i9;
        this.f27378a = map;
        this.f27379b = ByteBuffer.wrap(bArr).array();
        this.f27381d = j10;
        s();
    }

    public d(Exception exc, long j10) {
        this.f27380c = 0;
        this.f27385h = 2;
        this.f27386i = 9001;
        this.f27387j = "";
        this.f27388k = 0L;
        this.f27389l = "";
        this.f27390m = exc;
        this.f27381d = j10;
    }

    private void a(Map<String, String> map) {
        String str;
        String str2;
        if (map.containsKey("ETag")) {
            String str3 = map.get("ETag");
            if (!TextUtils.isEmpty(str3)) {
                Logger.i(f27377o, "success get Etag from server");
                a(str3);
                return;
            }
            str = f27377o;
            str2 = "The Response Heads Etag is Empty";
        } else {
            str = f27377o;
            str2 = "Response Heads has not Etag";
        }
        Logger.i(str, str2);
    }

    private void b(int i9) {
        this.f27386i = i9;
    }

    private void b(Map<String, String> map) {
        long time;
        if (map.containsKey("Cache-Control")) {
            String str = map.get("Cache-Control");
            if (!TextUtils.isEmpty(str) && str.contains("max-age=")) {
                try {
                    time = Long.parseLong(str.substring(str.indexOf("max-age=") + 8));
                    try {
                        Logger.v(f27377o, "Cache-Control value{%s}", Long.valueOf(time));
                    } catch (NumberFormatException e10) {
                        e = e10;
                        Logger.w(f27377o, "getExpireTime addHeadersToResult NumberFormatException", e);
                        long j10 = ((time > 0 || time > 2592000) ? 86400L : 86400L) * 1000;
                        Logger.i(f27377o, "convert expireTime{%s}", Long.valueOf(j10));
                        c(String.valueOf(j10 + System.currentTimeMillis()));
                    }
                } catch (NumberFormatException e11) {
                    e = e11;
                    time = 0;
                }
            }
            time = 0;
        } else {
            if (map.containsKey("Expires")) {
                String str2 = map.get("Expires");
                Logger.v(f27377o, "expires is{%s}", str2);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss 'GMT'", Locale.ROOT);
                String str3 = map.containsKey("Date") ? map.get("Date") : null;
                try {
                    time = (simpleDateFormat.parse(str2).getTime() - (TextUtils.isEmpty(str3) ? new Date() : simpleDateFormat.parse(str3)).getTime()) / 1000;
                } catch (ParseException e12) {
                    Logger.w(f27377o, "getExpireTime ParseException.", e12);
                }
            } else {
                Logger.i(f27377o, "response headers neither contains Cache-Control nor Expires.");
            }
            time = 0;
        }
        long j102 = ((time > 0 || time > 2592000) ? 86400L : 86400L) * 1000;
        Logger.i(f27377o, "convert expireTime{%s}", Long.valueOf(j102));
        c(String.valueOf(j102 + System.currentTimeMillis()));
    }

    private void c(int i9) {
        this.f27385h = i9;
    }

    private void c(long j10) {
        this.f27388k = j10;
    }

    private void c(String str) {
        this.f27387j = str;
    }

    private void c(Map<String, String> map) {
        long j10;
        if (map.containsKey("Retry-After")) {
            String str = map.get("Retry-After");
            if (!TextUtils.isEmpty(str)) {
                try {
                    j10 = Long.parseLong(str);
                } catch (NumberFormatException e10) {
                    Logger.w(f27377o, "getRetryAfter addHeadersToResult NumberFormatException", e10);
                }
                long j11 = j10 * 1000;
                Logger.v(f27377o, "convert retry-afterTime{%s}", Long.valueOf(j11));
                c(j11);
            }
        }
        j10 = 0;
        long j112 = j10 * 1000;
        Logger.v(f27377o, "convert retry-afterTime{%s}", Long.valueOf(j112));
        c(j112);
    }

    private void d(String str) {
    }

    private void e(String str) {
    }

    private void f(String str) {
        this.f27384g = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
        if (r9.getInt("resultCode") == 0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void p() {
        /*
            r11 = this;
            java.lang.String r0 = "errorDesc"
            java.lang.String r1 = "errorList"
            java.lang.String r2 = "errorCode"
            java.lang.String r3 = "resultCode"
            java.lang.String r4 = "isSuccess"
            boolean r5 = r11.m()
            r6 = 1
            if (r5 == 0) goto L1c
            java.lang.String r0 = com.huawei.hms.framework.network.grs.g.d.f27377o
            java.lang.String r1 = "GRSSDK get httpcode{304} not any changed."
            com.huawei.hms.framework.common.Logger.i(r0, r1)
            r11.c(r6)
            return
        L1c:
            boolean r5 = r11.o()
            r7 = 2
            if (r5 != 0) goto L2e
            java.lang.String r0 = com.huawei.hms.framework.network.grs.g.d.f27377o
            java.lang.String r1 = "GRSSDK parse server body all failed."
            com.huawei.hms.framework.common.Logger.i(r0, r1)
            r11.c(r7)
            return
        L2e:
            r5 = 0
            byte[] r8 = r11.f27379b     // Catch: org.json.JSONException -> Lb8
            java.lang.String r8 = com.huawei.hms.framework.common.StringUtils.byte2Str(r8)     // Catch: org.json.JSONException -> Lb8
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: org.json.JSONException -> Lb8
            r9.<init>(r8)     // Catch: org.json.JSONException -> Lb8
            r8 = -1
            boolean r10 = r9.has(r4)     // Catch: org.json.JSONException -> Lb8
            if (r10 == 0) goto L48
            int r3 = r9.getInt(r4)     // Catch: org.json.JSONException -> Lb8
            if (r3 != r6) goto L56
            goto L54
        L48:
            boolean r4 = r9.has(r3)     // Catch: org.json.JSONException -> Lb8
            if (r4 == 0) goto L58
            int r3 = r9.getInt(r3)     // Catch: org.json.JSONException -> Lb8
            if (r3 != 0) goto L56
        L54:
            r8 = 1
            goto L60
        L56:
            r8 = 2
            goto L60
        L58:
            java.lang.String r3 = com.huawei.hms.framework.network.grs.g.d.f27377o     // Catch: org.json.JSONException -> Lb8
            java.lang.String r4 = "sth. wrong because server errorcode's key."
            com.huawei.hms.framework.common.Logger.e(r3, r4)     // Catch: org.json.JSONException -> Lb8
        L60:
            java.lang.String r3 = "services"
            if (r8 == r6) goto L6b
            boolean r4 = r9.has(r3)     // Catch: org.json.JSONException -> Lb8
            if (r4 == 0) goto L6b
            r8 = 0
        L6b:
            r11.c(r8)     // Catch: org.json.JSONException -> Lb8
            java.lang.String r4 = ""
            if (r8 == r6) goto L93
            if (r8 != 0) goto L75
            goto L93
        L75:
            boolean r1 = r9.has(r2)     // Catch: org.json.JSONException -> Lb8
            if (r1 == 0) goto L80
            int r1 = r9.getInt(r2)     // Catch: org.json.JSONException -> Lb8
            goto L82
        L80:
            r1 = 9001(0x2329, float:1.2613E-41)
        L82:
            r11.b(r1)     // Catch: org.json.JSONException -> Lb8
            boolean r1 = r9.has(r0)     // Catch: org.json.JSONException -> Lb8
            if (r1 == 0) goto L8f
            java.lang.String r4 = r9.getString(r0)     // Catch: org.json.JSONException -> Lb8
        L8f:
            r11.d(r4)     // Catch: org.json.JSONException -> Lb8
            goto Lcf
        L93:
            boolean r0 = r9.has(r3)     // Catch: org.json.JSONException -> Lb8
            if (r0 == 0) goto La2
            org.json.JSONObject r0 = r9.getJSONObject(r3)     // Catch: org.json.JSONException -> Lb8
            java.lang.String r0 = r0.toString()     // Catch: org.json.JSONException -> Lb8
            goto La3
        La2:
            r0 = r4
        La3:
            r11.f(r0)     // Catch: org.json.JSONException -> Lb8
            boolean r0 = r9.has(r1)     // Catch: org.json.JSONException -> Lb8
            if (r0 == 0) goto Lb4
            org.json.JSONObject r0 = r9.getJSONObject(r1)     // Catch: org.json.JSONException -> Lb8
            java.lang.String r4 = r0.toString()     // Catch: org.json.JSONException -> Lb8
        Lb4:
            r11.e(r4)     // Catch: org.json.JSONException -> Lb8
            goto Lcf
        Lb8:
            r0 = move-exception
            java.lang.String r1 = com.huawei.hms.framework.network.grs.g.d.f27377o
            java.lang.Object[] r2 = new java.lang.Object[r6]
            java.lang.String r0 = r0.getMessage()
            java.lang.String r0 = com.huawei.hms.framework.common.StringUtils.anonymizeMessage(r0)
            r2[r5] = r0
            java.lang.String r0 = "GrsResponse GrsResponse(String result) JSONException: %s"
            com.huawei.hms.framework.common.Logger.w(r1, r0, r2)
            r11.c(r7)
        Lcf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.g.d.p():void");
    }

    private void q() {
        if (o() || n() || m()) {
            Map<String, String> r10 = r();
            if (r10.size() <= 0) {
                Logger.w(f27377o, "parseHeader {headers.size() <= 0}");
                return;
            }
            try {
                if (o() || m()) {
                    b(r10);
                    a(r10);
                }
                if (n()) {
                    c(r10);
                }
            } catch (JSONException e10) {
                Logger.w(f27377o, "parseHeader catch JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            }
        }
    }

    private Map<String, String> r() {
        HashMap hashMap = new HashMap(16);
        Map<String, List<String>> map = this.f27378a;
        if (map == null || map.size() <= 0) {
            Logger.v(f27377o, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}");
            return hashMap;
        }
        for (Map.Entry<String, List<String>> entry : this.f27378a.entrySet()) {
            String key = entry.getKey();
            for (String str : entry.getValue()) {
                hashMap.put(key, str);
            }
        }
        return hashMap;
    }

    private void s() {
        q();
        p();
    }

    public String a() {
        return this.f27387j;
    }

    public void a(int i9) {
    }

    public void a(long j10) {
        this.f27383f = j10;
    }

    public void a(String str) {
        this.f27389l = str;
    }

    public int b() {
        return this.f27380c;
    }

    public void b(long j10) {
        this.f27382e = j10;
    }

    public void b(String str) {
        this.f27391n = str;
    }

    public int c() {
        return this.f27386i;
    }

    public Exception d() {
        return this.f27390m;
    }

    public String e() {
        return this.f27389l;
    }

    public int f() {
        return this.f27385h;
    }

    public long g() {
        return this.f27383f;
    }

    public long h() {
        return this.f27382e;
    }

    public long i() {
        return this.f27381d;
    }

    public String j() {
        return this.f27384g;
    }

    public long k() {
        return this.f27388k;
    }

    public String l() {
        return this.f27391n;
    }

    public boolean m() {
        return this.f27380c == 304;
    }

    public boolean n() {
        return this.f27380c == 503;
    }

    public boolean o() {
        return this.f27380c == 200;
    }
}
