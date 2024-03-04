package com.xiaomi.push;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import io.jsonwebtoken.Header;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public String f36895a;

    /* renamed from: b  reason: collision with root package name */
    private long f36896b;

    /* renamed from: d  reason: collision with root package name */
    public String f36898d;

    /* renamed from: e  reason: collision with root package name */
    public String f36899e;

    /* renamed from: f  reason: collision with root package name */
    public String f36900f;

    /* renamed from: g  reason: collision with root package name */
    public String f36901g;

    /* renamed from: h  reason: collision with root package name */
    public String f36902h;

    /* renamed from: i  reason: collision with root package name */
    public String f36903i;

    /* renamed from: j  reason: collision with root package name */
    protected String f36904j;

    /* renamed from: k  reason: collision with root package name */
    private String f36905k;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<r> f36897c = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    private double f36906l = 0.1d;

    /* renamed from: m  reason: collision with root package name */
    private String f36907m = "s.mi1.cc";

    /* renamed from: n  reason: collision with root package name */
    private long f36908n = 86400000;

    public i(String str) {
        this.f36895a = "";
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        }
        this.f36896b = System.currentTimeMillis();
        this.f36897c.add(new r(str, -1));
        this.f36895a = m.d();
        this.f36898d = str;
    }

    private synchronized void v(String str) {
        Iterator<r> it = this.f36897c.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().f37055b, str)) {
                it.remove();
            }
        }
    }

    public synchronized i a(JSONObject jSONObject) {
        this.f36895a = jSONObject.optString("net");
        this.f36908n = jSONObject.getLong(RemoteMessageConst.TTL);
        this.f36906l = jSONObject.getDouble("pct");
        this.f36896b = jSONObject.getLong(TimeDisplaySetting.TIME_DISPLAY_SETTING);
        this.f36900f = jSONObject.optString("city");
        this.f36899e = jSONObject.optString("prv");
        this.f36903i = jSONObject.optString(Header.CONTENT_TYPE);
        this.f36901g = jSONObject.optString("isp");
        this.f36902h = jSONObject.optString("ip");
        this.f36898d = jSONObject.optString("host");
        this.f36904j = jSONObject.optString("xf");
        JSONArray jSONArray = jSONObject.getJSONArray("fbs");
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            i(new r().b(jSONArray.getJSONObject(i9)));
        }
        return this;
    }

    public synchronized String b() {
        if (!TextUtils.isEmpty(this.f36905k)) {
            return this.f36905k;
        } else if (TextUtils.isEmpty(this.f36901g)) {
            return "hardcode_isp";
        } else {
            String f10 = g.f(new String[]{this.f36901g, this.f36899e, this.f36900f, this.f36903i, this.f36902h}, "_");
            this.f36905k = f10;
            return f10;
        }
    }

    public synchronized ArrayList<String> c() {
        return e(false);
    }

    public ArrayList<String> d(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the url is empty.");
        }
        URL url = new URL(str);
        if (TextUtils.equals(url.getHost(), this.f36898d)) {
            ArrayList<String> arrayList = new ArrayList<>();
            Iterator<String> it = e(true).iterator();
            while (it.hasNext()) {
                k b10 = k.b(it.next(), url.getPort());
                arrayList.add(new URL(url.getProtocol(), b10.c(), b10.a(), url.getFile()).toString());
            }
            return arrayList;
        }
        throw new IllegalArgumentException("the url is not supported by the fallback");
    }

    public synchronized ArrayList<String> e(boolean z10) {
        ArrayList<String> arrayList;
        String substring;
        int size = this.f36897c.size();
        r[] rVarArr = new r[size];
        this.f36897c.toArray(rVarArr);
        Arrays.sort(rVarArr);
        arrayList = new ArrayList<>();
        for (int i9 = 0; i9 < size; i9++) {
            r rVar = rVarArr[i9];
            if (z10) {
                substring = rVar.f37055b;
            } else {
                int indexOf = rVar.f37055b.indexOf(CertificateUtil.DELIMITER);
                substring = indexOf != -1 ? rVar.f37055b.substring(0, indexOf) : rVar.f37055b;
            }
            arrayList.add(substring);
        }
        return arrayList;
    }

    public synchronized JSONObject f() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("net", this.f36895a);
        jSONObject.put(RemoteMessageConst.TTL, this.f36908n);
        jSONObject.put("pct", this.f36906l);
        jSONObject.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, this.f36896b);
        jSONObject.put("city", this.f36900f);
        jSONObject.put("prv", this.f36899e);
        jSONObject.put(Header.CONTENT_TYPE, this.f36903i);
        jSONObject.put("isp", this.f36901g);
        jSONObject.put("ip", this.f36902h);
        jSONObject.put("host", this.f36898d);
        jSONObject.put("xf", this.f36904j);
        JSONArray jSONArray = new JSONArray();
        Iterator<r> it = this.f36897c.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().c());
        }
        jSONObject.put("fbs", jSONArray);
        return jSONObject;
    }

    public void g(double d10) {
        this.f36906l = d10;
    }

    public void h(long j10) {
        if (j10 > 0) {
            this.f36908n = j10;
            return;
        }
        throw new IllegalArgumentException("the duration is invalid " + j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void i(r rVar) {
        v(rVar.f37055b);
        this.f36897c.add(rVar);
    }

    public synchronized void j(String str) {
        i(new r(str));
    }

    public void k(String str, int i9, long j10, long j11, Exception exc) {
        n(str, new h(i9, j10, j11, exc));
    }

    public void l(String str, long j10, long j11) {
        try {
            s(new URL(str).getHost(), j10, j11);
        } catch (MalformedURLException unused) {
        }
    }

    public void m(String str, long j10, long j11, Exception exc) {
        try {
            t(new URL(str).getHost(), j10, j11, exc);
        } catch (MalformedURLException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        r1.d(r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void n(java.lang.String r4, com.xiaomi.push.h r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.ArrayList<com.xiaomi.push.r> r0 = r3.f36897c     // Catch: java.lang.Throwable -> L20
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L20
        L7:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L20
            com.xiaomi.push.r r1 = (com.xiaomi.push.r) r1     // Catch: java.lang.Throwable -> L20
            java.lang.String r2 = r1.f37055b     // Catch: java.lang.Throwable -> L20
            boolean r2 = android.text.TextUtils.equals(r4, r2)     // Catch: java.lang.Throwable -> L20
            if (r2 == 0) goto L7
            r1.d(r5)     // Catch: java.lang.Throwable -> L20
        L1e:
            monitor-exit(r3)
            return
        L20:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.i.n(java.lang.String, com.xiaomi.push.h):void");
    }

    public synchronized void o(String[] strArr) {
        int i9;
        int size = this.f36897c.size() - 1;
        while (true) {
            i9 = 0;
            if (size < 0) {
                break;
            }
            int length = strArr.length;
            while (true) {
                if (i9 < length) {
                    if (TextUtils.equals(this.f36897c.get(size).f37055b, strArr[i9])) {
                        this.f36897c.remove(size);
                        break;
                    }
                    i9++;
                }
            }
            size--;
        }
        Iterator<r> it = this.f36897c.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int i11 = it.next().f37057d;
            if (i11 > i10) {
                i10 = i11;
            }
        }
        while (i9 < strArr.length) {
            i(new r(strArr[i9], (strArr.length + i10) - i9));
            i9++;
        }
    }

    public boolean p() {
        return TextUtils.equals(this.f36895a, m.d());
    }

    public boolean q(i iVar) {
        return TextUtils.equals(this.f36895a, iVar.f36895a);
    }

    public void r(String str) {
        this.f36907m = str;
    }

    public void s(String str, long j10, long j11) {
        k(str, 0, j10, j11, null);
    }

    public void t(String str, long j10, long j11, Exception exc) {
        k(str, -1, j10, j11, exc);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f36895a);
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append(b());
        Iterator<r> it = this.f36897c.iterator();
        while (it.hasNext()) {
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            sb2.append(it.next().toString());
        }
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        return sb2.toString();
    }

    public boolean u() {
        return System.currentTimeMillis() - this.f36896b < this.f36908n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w() {
        long j10 = this.f36908n;
        if (864000000 >= j10) {
            j10 = 864000000;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j11 = this.f36896b;
        return currentTimeMillis - j11 > j10 || (currentTimeMillis - j11 > this.f36908n && this.f36895a.startsWith("WIFI-"));
    }
}
