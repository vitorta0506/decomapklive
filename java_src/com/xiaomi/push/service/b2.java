package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class b2 {

    /* renamed from: e  reason: collision with root package name */
    private static b2 f37187e;

    /* renamed from: a  reason: collision with root package name */
    private Context f37188a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f37189b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f37190c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f37191d = new ArrayList();

    private b2(Context context) {
        String[] split;
        String[] split2;
        String[] split3;
        Context applicationContext = context.getApplicationContext();
        this.f37188a = applicationContext;
        if (applicationContext == null) {
            this.f37188a = context;
        }
        SharedPreferences sharedPreferences = this.f37188a.getSharedPreferences("mipush_app_info", 0);
        for (String str : sharedPreferences.getString("unregistered_pkg_names", "").split(",")) {
            if (TextUtils.isEmpty(str)) {
                this.f37189b.add(str);
            }
        }
        for (String str2 : sharedPreferences.getString("disable_push_pkg_names", "").split(",")) {
            if (!TextUtils.isEmpty(str2)) {
                this.f37190c.add(str2);
            }
        }
        for (String str3 : sharedPreferences.getString("disable_push_pkg_names_cache", "").split(",")) {
            if (!TextUtils.isEmpty(str3)) {
                this.f37191d.add(str3);
            }
        }
    }

    public static b2 a(Context context) {
        if (f37187e == null) {
            f37187e = new b2(context);
        }
        return f37187e;
    }

    public void b(String str) {
        synchronized (this.f37189b) {
            if (!this.f37189b.contains(str)) {
                this.f37189b.add(str);
                this.f37188a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", com.xiaomi.push.g.d(this.f37189b, ",")).commit();
            }
        }
    }

    public boolean c(String str) {
        boolean contains;
        synchronized (this.f37189b) {
            contains = this.f37189b.contains(str);
        }
        return contains;
    }

    public void d(String str) {
        synchronized (this.f37190c) {
            if (!this.f37190c.contains(str)) {
                this.f37190c.add(str);
                this.f37188a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", com.xiaomi.push.g.d(this.f37190c, ",")).commit();
            }
        }
    }

    public boolean e(String str) {
        boolean contains;
        synchronized (this.f37190c) {
            contains = this.f37190c.contains(str);
        }
        return contains;
    }

    public void f(String str) {
        synchronized (this.f37191d) {
            if (!this.f37191d.contains(str)) {
                this.f37191d.add(str);
                this.f37188a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", com.xiaomi.push.g.d(this.f37191d, ",")).commit();
            }
        }
    }

    public boolean g(String str) {
        boolean contains;
        synchronized (this.f37191d) {
            contains = this.f37191d.contains(str);
        }
        return contains;
    }

    public void h(String str) {
        synchronized (this.f37189b) {
            if (this.f37189b.contains(str)) {
                this.f37189b.remove(str);
                this.f37188a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", com.xiaomi.push.g.d(this.f37189b, ",")).commit();
            }
        }
    }

    public void i(String str) {
        synchronized (this.f37190c) {
            if (this.f37190c.contains(str)) {
                this.f37190c.remove(str);
                this.f37188a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", com.xiaomi.push.g.d(this.f37190c, ",")).commit();
            }
        }
    }

    public void j(String str) {
        synchronized (this.f37191d) {
            if (this.f37191d.contains(str)) {
                this.f37191d.remove(str);
                this.f37188a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", com.xiaomi.push.g.d(this.f37191d, ",")).commit();
            }
        }
    }
}
