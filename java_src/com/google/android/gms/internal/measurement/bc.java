package com.google.android.gms.internal.measurement;

import androidx.webkit.ProxyConfig;
import com.guochao.faceshow.utils.TimeUtil;
/* loaded from: classes2.dex */
public final class bc implements ac {
    public static final w6 A;
    public static final w6 B;
    public static final w6 C;
    public static final w6 D;
    public static final w6 E;
    public static final w6 F;
    public static final w6 G;
    public static final w6 H;
    public static final w6 I;
    public static final w6 J;
    public static final w6 K;
    public static final w6 L;
    public static final w6 M;

    /* renamed from: a  reason: collision with root package name */
    public static final w6 f7958a;

    /* renamed from: b  reason: collision with root package name */
    public static final w6 f7959b;

    /* renamed from: c  reason: collision with root package name */
    public static final w6 f7960c;

    /* renamed from: d  reason: collision with root package name */
    public static final w6 f7961d;

    /* renamed from: e  reason: collision with root package name */
    public static final w6 f7962e;

    /* renamed from: f  reason: collision with root package name */
    public static final w6 f7963f;

    /* renamed from: g  reason: collision with root package name */
    public static final w6 f7964g;

    /* renamed from: h  reason: collision with root package name */
    public static final w6 f7965h;

    /* renamed from: i  reason: collision with root package name */
    public static final w6 f7966i;

    /* renamed from: j  reason: collision with root package name */
    public static final w6 f7967j;

    /* renamed from: k  reason: collision with root package name */
    public static final w6 f7968k;

    /* renamed from: l  reason: collision with root package name */
    public static final w6 f7969l;

    /* renamed from: m  reason: collision with root package name */
    public static final w6 f7970m;

    /* renamed from: n  reason: collision with root package name */
    public static final w6 f7971n;

    /* renamed from: o  reason: collision with root package name */
    public static final w6 f7972o;

    /* renamed from: p  reason: collision with root package name */
    public static final w6 f7973p;

    /* renamed from: q  reason: collision with root package name */
    public static final w6 f7974q;

    /* renamed from: r  reason: collision with root package name */
    public static final w6 f7975r;

    /* renamed from: s  reason: collision with root package name */
    public static final w6 f7976s;

    /* renamed from: t  reason: collision with root package name */
    public static final w6 f7977t;

    /* renamed from: u  reason: collision with root package name */
    public static final w6 f7978u;

    /* renamed from: v  reason: collision with root package name */
    public static final w6 f7979v;

    /* renamed from: w  reason: collision with root package name */
    public static final w6 f7980w;

    /* renamed from: x  reason: collision with root package name */
    public static final w6 f7981x;

    /* renamed from: y  reason: collision with root package name */
    public static final w6 f7982y;

    /* renamed from: z  reason: collision with root package name */
    public static final w6 f7983z;

    static {
        s6 a10 = new s6(k6.a("com.google.android.gms.measurement")).a();
        f7958a = a10.d("measurement.ad_id_cache_time", 10000L);
        f7959b = a10.d("measurement.max_bundles_per_iteration", 100L);
        f7960c = a10.d("measurement.config.cache_time", 86400000L);
        f7961d = a10.e("measurement.log_tag", "FA");
        f7962e = a10.e("measurement.config.url_authority", "app-measurement.com");
        f7963f = a10.e("measurement.config.url_scheme", ProxyConfig.MATCH_HTTPS);
        f7964g = a10.d("measurement.upload.debug_upload_interval", 1000L);
        f7965h = a10.d("measurement.lifetimevalue.max_currency_tracked", 4L);
        f7966i = a10.d("measurement.store.max_stored_events_per_app", 100000L);
        f7967j = a10.d("measurement.experiment.max_ids", 50L);
        f7968k = a10.d("measurement.audience.filter_result_max_count", 200L);
        f7969l = a10.d("measurement.alarm_manager.minimum_interval", 60000L);
        f7970m = a10.d("measurement.upload.minimum_delay", 500L);
        f7971n = a10.d("measurement.monitoring.sample_period_millis", 86400000L);
        f7972o = a10.d("measurement.upload.realtime_upload_interval", 10000L);
        f7973p = a10.d("measurement.upload.refresh_blacklisted_config_interval", TimeUtil.WEEK);
        f7974q = a10.d("measurement.config.cache_time.service", 3600000L);
        f7975r = a10.d("measurement.service_client.idle_disconnect_millis", 5000L);
        f7976s = a10.e("measurement.log_tag.service", "FA-SVC");
        f7977t = a10.d("measurement.upload.stale_data_deletion_interval", 86400000L);
        f7978u = a10.d("measurement.sdk.attribution.cache.ttl", TimeUtil.WEEK);
        f7979v = a10.d("measurement.redaction.app_instance_id.ttl", 7200000L);
        f7980w = a10.d("measurement.upload.backoff_period", 43200000L);
        f7981x = a10.d("measurement.upload.initial_upload_delay_time", 15000L);
        f7982y = a10.d("measurement.upload.interval", 3600000L);
        f7983z = a10.d("measurement.upload.max_bundle_size", 65536L);
        A = a10.d("measurement.upload.max_bundles", 100L);
        B = a10.d("measurement.upload.max_conversions_per_day", 500L);
        C = a10.d("measurement.upload.max_error_events_per_day", 1000L);
        D = a10.d("measurement.upload.max_events_per_bundle", 1000L);
        E = a10.d("measurement.upload.max_events_per_day", 100000L);
        F = a10.d("measurement.upload.max_public_events_per_day", 50000L);
        G = a10.d("measurement.upload.max_queue_time", 2419200000L);
        H = a10.d("measurement.upload.max_realtime_events_per_day", 10L);
        I = a10.d("measurement.upload.max_batch_size", 65536L);
        J = a10.d("measurement.upload.retry_count", 6L);
        K = a10.d("measurement.upload.retry_time", 1800000L);
        L = a10.e("measurement.upload.url", "https://app-measurement.com/a");
        M = a10.d("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long D() {
        return ((Long) f7959b.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long E() {
        return ((Long) f7960c.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long F() {
        return ((Long) f7973p.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long G() {
        return ((Long) f7970m.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long H() {
        return ((Long) f7978u.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long I() {
        return ((Long) f7975r.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long J() {
        return ((Long) f7977t.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long K() {
        return ((Long) f7982y.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long L() {
        return ((Long) f7983z.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long M() {
        return ((Long) F.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long N() {
        return ((Long) K.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long O() {
        return ((Long) D.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long P() {
        return ((Long) E.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long Q() {
        return ((Long) M.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long R() {
        return ((Long) B.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long S() {
        return ((Long) I.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long T() {
        return ((Long) J.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long U() {
        return ((Long) C.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final String V() {
        return (String) L.b();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final String W() {
        return (String) f7962e.b();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final String X() {
        return (String) f7963f.b();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long Y() {
        return ((Long) f7979v.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long Z() {
        return ((Long) f7980w.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long a() {
        return ((Long) f7968k.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long a0() {
        return ((Long) G.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long b() {
        return ((Long) f7966i.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long b0() {
        return ((Long) A.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long c() {
        return ((Long) f7964g.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long c0() {
        return ((Long) H.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long d() {
        return ((Long) f7969l.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long d0() {
        return ((Long) f7981x.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long e() {
        return ((Long) f7971n.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long f() {
        return ((Long) f7967j.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long g() {
        return ((Long) f7972o.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long l() {
        return ((Long) f7965h.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    public final long zza() {
        return ((Long) f7958a.b()).longValue();
    }
}
