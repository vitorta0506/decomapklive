package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.internal.security.CertificateUtil;
import com.xiaomi.push.d3;
import com.xiaomi.push.f3;
import com.xiaomi.push.p3;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public final class q0 implements m {

    /* renamed from: f  reason: collision with root package name */
    private static volatile q0 f37332f;

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f37333a;

    /* renamed from: b  reason: collision with root package name */
    private long f37334b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f37335c = false;

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<String, a> f37336d = new ConcurrentHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    Context f37337e;

    /* loaded from: classes5.dex */
    public static abstract class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        String f37338a;

        /* renamed from: b  reason: collision with root package name */
        long f37339b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, long j10) {
            this.f37338a = str;
            this.f37339b = j10;
        }

        abstract void b(q0 q0Var);

        @Override // java.lang.Runnable
        public void run() {
            if (q0.f37332f != null) {
                Context context = q0.f37332f.f37337e;
                if (p3.o(context)) {
                    long currentTimeMillis = System.currentTimeMillis();
                    SharedPreferences sharedPreferences = q0.f37332f.f37333a;
                    if (currentTimeMillis - sharedPreferences.getLong(":ts-" + this.f37338a, 0L) > this.f37339b || d3.b(context)) {
                        SharedPreferences.Editor edit = q0.f37332f.f37333a.edit();
                        sf.h.a(edit.putLong(":ts-" + this.f37338a, System.currentTimeMillis()));
                        b(q0.f37332f);
                    }
                }
            }
        }
    }

    private q0(Context context) {
        this.f37337e = context.getApplicationContext();
        this.f37333a = context.getSharedPreferences("sync", 0);
    }

    public static q0 c(Context context) {
        if (f37332f == null) {
            synchronized (q0.class) {
                if (f37332f == null) {
                    f37332f = new q0(context);
                }
            }
        }
        return f37332f;
    }

    @Override // com.xiaomi.push.service.m
    public void a() {
        if (this.f37335c) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f37334b < 3600000) {
            return;
        }
        this.f37334b = currentTimeMillis;
        this.f37335c = true;
        f3.b(this.f37337e).h(new r0(this), (int) (Math.random() * 10.0d));
    }

    public String d(String str, String str2) {
        SharedPreferences sharedPreferences = this.f37333a;
        return sharedPreferences.getString(str + CertificateUtil.DELIMITER + str2, "");
    }

    public void f(a aVar) {
        if (this.f37336d.putIfAbsent(aVar.f37338a, aVar) == null) {
            f3.b(this.f37337e).h(aVar, ((int) (Math.random() * 30.0d)) + 10);
        }
    }

    public void g(String str, String str2, String str3) {
        SharedPreferences.Editor edit = f37332f.f37333a.edit();
        sf.h.a(edit.putString(str + CertificateUtil.DELIMITER + str2, str3));
    }
}
