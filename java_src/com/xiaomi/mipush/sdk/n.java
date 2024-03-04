package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class n {

    /* renamed from: e  reason: collision with root package name */
    private static volatile n f36260e;

    /* renamed from: a  reason: collision with root package name */
    private Context f36261a;

    /* renamed from: b  reason: collision with root package name */
    private a f36262b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, a> f36263c;

    /* renamed from: d  reason: collision with root package name */
    String f36264d;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f36265a;

        /* renamed from: b  reason: collision with root package name */
        public String f36266b;

        /* renamed from: c  reason: collision with root package name */
        public String f36267c;

        /* renamed from: d  reason: collision with root package name */
        public String f36268d;

        /* renamed from: e  reason: collision with root package name */
        public String f36269e;

        /* renamed from: f  reason: collision with root package name */
        public String f36270f;

        /* renamed from: g  reason: collision with root package name */
        public String f36271g;

        /* renamed from: h  reason: collision with root package name */
        public String f36272h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f36273i = true;

        /* renamed from: j  reason: collision with root package name */
        public boolean f36274j = false;

        /* renamed from: k  reason: collision with root package name */
        public int f36275k = 1;

        /* renamed from: l  reason: collision with root package name */
        private Context f36276l;

        public a(Context context) {
            this.f36276l = context;
        }

        private String a() {
            Context context = this.f36276l;
            return com.xiaomi.channel.commonutils.android.a.g(context, context.getPackageName());
        }

        public static String b(a aVar) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appId", aVar.f36265a);
                jSONObject.put("appToken", aVar.f36266b);
                jSONObject.put("regId", aVar.f36267c);
                jSONObject.put("regSec", aVar.f36268d);
                jSONObject.put("devId", aVar.f36270f);
                jSONObject.put("vName", aVar.f36269e);
                jSONObject.put("valid", aVar.f36273i);
                jSONObject.put("paused", aVar.f36274j);
                jSONObject.put("envType", aVar.f36275k);
                jSONObject.put("regResource", aVar.f36271g);
                return jSONObject.toString();
            } catch (Throwable th2) {
                tf.c.o(th2);
                return null;
            }
        }

        public void c() {
            n.b(this.f36276l).edit().clear().commit();
            this.f36265a = null;
            this.f36266b = null;
            this.f36267c = null;
            this.f36268d = null;
            this.f36270f = null;
            this.f36269e = null;
            this.f36273i = false;
            this.f36274j = false;
            this.f36272h = null;
            this.f36275k = 1;
        }

        public void d(int i9) {
            this.f36275k = i9;
        }

        public void e(String str, String str2) {
            this.f36267c = str;
            this.f36268d = str2;
            this.f36270f = sf.b.l(this.f36276l);
            this.f36269e = a();
            this.f36273i = true;
        }

        public void f(String str, String str2, String str3) {
            this.f36265a = str;
            this.f36266b = str2;
            this.f36271g = str3;
            SharedPreferences.Editor edit = n.b(this.f36276l).edit();
            edit.putString("appId", this.f36265a);
            edit.putString("appToken", str2);
            edit.putString("regResource", str3);
            edit.commit();
        }

        public void g(boolean z10) {
            this.f36274j = z10;
        }

        public boolean h() {
            return i(this.f36265a, this.f36266b);
        }

        public boolean i(String str, String str2) {
            boolean equals = TextUtils.equals(this.f36265a, str);
            boolean equals2 = TextUtils.equals(this.f36266b, str2);
            boolean z10 = !TextUtils.isEmpty(this.f36267c);
            boolean z11 = !TextUtils.isEmpty(this.f36268d);
            boolean z12 = TextUtils.equals(this.f36270f, sf.b.l(this.f36276l)) || TextUtils.equals(this.f36270f, sf.b.k(this.f36276l));
            boolean z13 = equals && equals2 && z10 && z11 && z12;
            if (!z13) {
                tf.c.v(String.format("register invalid, aid=%s;atn=%s;rid=%s;rse=%s;did=%s", Boolean.valueOf(equals), Boolean.valueOf(equals2), Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12)));
            }
            return z13;
        }

        public void j() {
            this.f36273i = false;
            n.b(this.f36276l).edit().putBoolean("valid", this.f36273i).commit();
        }

        public void k(String str, String str2, String str3) {
            this.f36267c = str;
            this.f36268d = str2;
            this.f36270f = sf.b.l(this.f36276l);
            this.f36269e = a();
            this.f36273i = true;
            this.f36272h = str3;
            SharedPreferences.Editor edit = n.b(this.f36276l).edit();
            edit.putString("regId", str);
            edit.putString("regSec", str2);
            edit.putString("devId", this.f36270f);
            edit.putString("vName", a());
            edit.putBoolean("valid", true);
            edit.putString("appRegion", str3);
            edit.commit();
        }
    }

    private n(Context context) {
        this.f36261a = context;
        r();
    }

    public static SharedPreferences b(Context context) {
        return context.getSharedPreferences("mipush", 0);
    }

    public static n c(Context context) {
        if (f36260e == null) {
            synchronized (n.class) {
                if (f36260e == null) {
                    f36260e = new n(context);
                }
            }
        }
        return f36260e;
    }

    private void r() {
        this.f36262b = new a(this.f36261a);
        this.f36263c = new HashMap();
        SharedPreferences b10 = b(this.f36261a);
        this.f36262b.f36265a = b10.getString("appId", null);
        this.f36262b.f36266b = b10.getString("appToken", null);
        this.f36262b.f36267c = b10.getString("regId", null);
        this.f36262b.f36268d = b10.getString("regSec", null);
        this.f36262b.f36270f = b10.getString("devId", null);
        if (!TextUtils.isEmpty(this.f36262b.f36270f) && sf.b.f(this.f36262b.f36270f)) {
            this.f36262b.f36270f = sf.b.l(this.f36261a);
            b10.edit().putString("devId", this.f36262b.f36270f).commit();
        }
        this.f36262b.f36269e = b10.getString("vName", null);
        this.f36262b.f36273i = b10.getBoolean("valid", true);
        this.f36262b.f36274j = b10.getBoolean("paused", false);
        this.f36262b.f36275k = b10.getInt("envType", 1);
        this.f36262b.f36271g = b10.getString("regResource", null);
        this.f36262b.f36272h = b10.getString("appRegion", null);
    }

    public int a() {
        return this.f36262b.f36275k;
    }

    public String d() {
        return this.f36262b.f36265a;
    }

    public void e() {
        this.f36262b.c();
    }

    public void f(int i9) {
        this.f36262b.d(i9);
        b(this.f36261a).edit().putInt("envType", i9).commit();
    }

    public void g(String str) {
        SharedPreferences.Editor edit = b(this.f36261a).edit();
        edit.putString("vName", str);
        edit.commit();
        this.f36262b.f36269e = str;
    }

    public void h(String str, a aVar) {
        this.f36263c.put(str, aVar);
        String b10 = a.b(aVar);
        b(this.f36261a).edit().putString("hybrid_app_info_" + str, b10).commit();
    }

    public void i(String str, String str2, String str3) {
        this.f36262b.f(str, str2, str3);
    }

    public void j(boolean z10) {
        this.f36262b.g(z10);
        b(this.f36261a).edit().putBoolean("paused", z10).commit();
    }

    public boolean k() {
        Context context = this.f36261a;
        return !TextUtils.equals(com.xiaomi.channel.commonutils.android.a.g(context, context.getPackageName()), this.f36262b.f36269e);
    }

    public boolean l(String str, String str2) {
        return this.f36262b.i(str, str2);
    }

    public String m() {
        return this.f36262b.f36266b;
    }

    public void n() {
        this.f36262b.j();
    }

    public void o(String str, String str2, String str3) {
        this.f36262b.k(str, str2, str3);
    }

    public boolean p() {
        if (this.f36262b.h()) {
            return true;
        }
        tf.c.l("Don't send message before initialization succeeded!");
        return false;
    }

    public String q() {
        return this.f36262b.f36267c;
    }

    public boolean s() {
        return this.f36262b.h();
    }

    public String t() {
        return this.f36262b.f36268d;
    }

    public boolean u() {
        return (TextUtils.isEmpty(this.f36262b.f36265a) || TextUtils.isEmpty(this.f36262b.f36266b) || TextUtils.isEmpty(this.f36262b.f36267c) || TextUtils.isEmpty(this.f36262b.f36268d)) ? false : true;
    }

    public String v() {
        return this.f36262b.f36271g;
    }

    public boolean w() {
        return this.f36262b.f36274j;
    }

    public String x() {
        return this.f36262b.f36272h;
    }

    public boolean y() {
        return !this.f36262b.f36273i;
    }
}
