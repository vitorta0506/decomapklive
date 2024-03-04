package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import n3.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class x3 extends h5 {

    /* renamed from: x  reason: collision with root package name */
    static final Pair f9952x = new Pair("", 0L);

    /* renamed from: c  reason: collision with root package name */
    private SharedPreferences f9953c;

    /* renamed from: d  reason: collision with root package name */
    public v3 f9954d;

    /* renamed from: e  reason: collision with root package name */
    public final t3 f9955e;

    /* renamed from: f  reason: collision with root package name */
    public final t3 f9956f;

    /* renamed from: g  reason: collision with root package name */
    public final w3 f9957g;

    /* renamed from: h  reason: collision with root package name */
    private String f9958h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f9959i;

    /* renamed from: j  reason: collision with root package name */
    private long f9960j;

    /* renamed from: k  reason: collision with root package name */
    public final t3 f9961k;

    /* renamed from: l  reason: collision with root package name */
    public final r3 f9962l;

    /* renamed from: m  reason: collision with root package name */
    public final w3 f9963m;

    /* renamed from: n  reason: collision with root package name */
    public final r3 f9964n;

    /* renamed from: o  reason: collision with root package name */
    public final t3 f9965o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f9966p;

    /* renamed from: q  reason: collision with root package name */
    public final r3 f9967q;

    /* renamed from: r  reason: collision with root package name */
    public final r3 f9968r;

    /* renamed from: s  reason: collision with root package name */
    public final t3 f9969s;

    /* renamed from: t  reason: collision with root package name */
    public final w3 f9970t;

    /* renamed from: u  reason: collision with root package name */
    public final w3 f9971u;

    /* renamed from: v  reason: collision with root package name */
    public final t3 f9972v;

    /* renamed from: w  reason: collision with root package name */
    public final s3 f9973w;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x3(n4 n4Var) {
        super(n4Var);
        this.f9961k = new t3(this, "session_timeout", 1800000L);
        this.f9962l = new r3(this, "start_new_session", true);
        this.f9965o = new t3(this, "last_pause_time", 0L);
        this.f9963m = new w3(this, "non_personalized_ads", null);
        this.f9964n = new r3(this, "allow_remote_dynamite", false);
        this.f9955e = new t3(this, "first_open_time", 0L);
        this.f9956f = new t3(this, "app_install_time", 0L);
        this.f9957g = new w3(this, "app_instance_id", null);
        this.f9967q = new r3(this, "app_backgrounded", false);
        this.f9968r = new r3(this, "deep_link_retrieval_complete", false);
        this.f9969s = new t3(this, "deep_link_retrieval_attempts", 0L);
        this.f9970t = new w3(this, "firebase_feature_rollouts", null);
        this.f9971u = new w3(this, "deferred_attribution_cache", null);
        this.f9972v = new t3(this, "deferred_attribution_cache_timestamp", 0L);
        this.f9973w = new s3(this, "default_event_parameters", null);
    }

    @Override // com.google.android.gms.measurement.internal.h5
    @WorkerThread
    protected final void i() {
        SharedPreferences sharedPreferences = this.f9432a.f().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f9953c = sharedPreferences;
        boolean z10 = sharedPreferences.getBoolean("has_been_opened", false);
        this.f9966p = z10;
        if (!z10) {
            SharedPreferences.Editor edit = this.f9953c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f9432a.z();
        this.f9954d = new v3(this, "health_monitor", Math.max(0L, ((Long) z2.f10032d.a(null)).longValue()), null);
    }

    @Override // com.google.android.gms.measurement.internal.h5
    protected final boolean j() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final SharedPreferences o() {
        h();
        k();
        com.google.android.gms.common.internal.p.j(this.f9953c);
        return this.f9953c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final Pair p(String str) {
        h();
        long b10 = this.f9432a.c().b();
        String str2 = this.f9958h;
        if (str2 != null && b10 < this.f9960j) {
            return new Pair(str2, Boolean.valueOf(this.f9959i));
        }
        this.f9960j = b10 + this.f9432a.z().r(str, z2.f10030c);
        n3.a.b(true);
        try {
            a.C0580a a10 = n3.a.a(this.f9432a.f());
            this.f9958h = "";
            String a11 = a10.a();
            if (a11 != null) {
                this.f9958h = a11;
            }
            this.f9959i = a10.b();
        } catch (Exception e10) {
            this.f9432a.b().q().b("Unable to get advertising id", e10);
            this.f9958h = "";
        }
        n3.a.b(false);
        return new Pair(this.f9958h, Boolean.valueOf(this.f9959i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final p4.a q() {
        h();
        return p4.a.b(o().getString("consent_settings", "G1"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final Boolean r() {
        h();
        if (o().contains("measurement_enabled")) {
            return Boolean.valueOf(o().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void s(Boolean bool) {
        h();
        SharedPreferences.Editor edit = o().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void t(boolean z10) {
        h();
        this.f9432a.b().v().b("App measurement setting deferred collection", Boolean.valueOf(z10));
        SharedPreferences.Editor edit = o().edit();
        edit.putBoolean("deferred_analytics_collection", z10);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean u() {
        SharedPreferences sharedPreferences = this.f9953c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean v(long j10) {
        return j10 - this.f9961k.a() > this.f9965o.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean w(int i9) {
        return p4.a.j(i9, o().getInt("consent_source", 100));
    }
}
