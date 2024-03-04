package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.internal.measurement.ae;
import com.google.android.gms.internal.measurement.bd;
import com.google.android.gms.internal.measurement.cc;
import com.google.android.gms.internal.measurement.ed;
import com.google.android.gms.internal.measurement.fc;
import com.google.android.gms.internal.measurement.hd;
import com.google.android.gms.internal.measurement.ic;
import com.google.android.gms.internal.measurement.kd;
import com.google.android.gms.internal.measurement.lc;
import com.google.android.gms.internal.measurement.nd;
import com.google.android.gms.internal.measurement.pc;
import com.google.android.gms.internal.measurement.rd;
import com.google.android.gms.internal.measurement.sc;
import com.google.android.gms.internal.measurement.tb;
import com.google.android.gms.internal.measurement.ud;
import com.google.android.gms.internal.measurement.vc;
import com.google.android.gms.internal.measurement.w6;
import com.google.android.gms.internal.measurement.wb;
import com.google.android.gms.internal.measurement.xd;
import com.google.android.gms.internal.measurement.yc;
import com.google.android.gms.internal.measurement.zb;
import com.guochao.faceshow.utils.TimeUtil;
import com.tencent.bugly.BuglyStrategy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class z2 {
    public static final y2 A;
    public static final y2 A0;
    public static final y2 B;
    public static final y2 B0;
    public static final y2 C;
    public static final y2 C0;
    public static final y2 D;
    public static final y2 D0;
    public static final y2 E;
    public static final y2 F;
    public static final y2 G;
    public static final y2 H;
    public static final y2 I;
    public static final y2 J;
    public static final y2 K;
    public static final y2 L;
    public static final y2 M;
    public static final y2 N;
    public static final y2 O;
    public static final y2 P;
    public static final y2 Q;
    public static final y2 R;
    public static final y2 S;
    public static final y2 T;
    public static final y2 U;
    public static final y2 V;
    public static final y2 W;
    public static final y2 X;
    public static final y2 Y;
    public static final y2 Z;

    /* renamed from: a0 */
    public static final y2 f10027a0;

    /* renamed from: b0 */
    public static final y2 f10029b0;

    /* renamed from: c0 */
    public static final y2 f10031c0;

    /* renamed from: d0 */
    public static final y2 f10033d0;

    /* renamed from: e0 */
    public static final y2 f10035e0;

    /* renamed from: f0 */
    public static final y2 f10037f0;

    /* renamed from: g0 */
    public static final y2 f10039g0;

    /* renamed from: h0 */
    public static final y2 f10041h0;

    /* renamed from: i0 */
    public static final y2 f10043i0;

    /* renamed from: j0 */
    public static final y2 f10045j0;

    /* renamed from: k0 */
    public static final y2 f10047k0;

    /* renamed from: l */
    public static final y2 f10048l;

    /* renamed from: l0 */
    public static final y2 f10049l0;

    /* renamed from: m */
    public static final y2 f10050m;

    /* renamed from: m0 */
    public static final y2 f10051m0;

    /* renamed from: n */
    public static final y2 f10052n;

    /* renamed from: n0 */
    public static final y2 f10053n0;

    /* renamed from: o */
    public static final y2 f10054o;

    /* renamed from: o0 */
    public static final y2 f10055o0;

    /* renamed from: p */
    public static final y2 f10056p;

    /* renamed from: p0 */
    public static final y2 f10057p0;

    /* renamed from: q */
    public static final y2 f10058q;

    /* renamed from: q0 */
    public static final y2 f10059q0;

    /* renamed from: r */
    public static final y2 f10060r;

    /* renamed from: r0 */
    public static final y2 f10061r0;

    /* renamed from: s */
    public static final y2 f10062s;

    /* renamed from: s0 */
    public static final y2 f10063s0;

    /* renamed from: t */
    public static final y2 f10064t;

    /* renamed from: t0 */
    public static final y2 f10065t0;

    /* renamed from: u */
    public static final y2 f10066u;

    /* renamed from: u0 */
    public static final y2 f10067u0;

    /* renamed from: v */
    public static final y2 f10068v;

    /* renamed from: v0 */
    public static final y2 f10069v0;

    /* renamed from: w */
    public static final y2 f10070w;

    /* renamed from: w0 */
    public static final y2 f10071w0;

    /* renamed from: x */
    public static final y2 f10072x;

    /* renamed from: x0 */
    public static final y2 f10073x0;

    /* renamed from: y */
    public static final y2 f10074y;

    /* renamed from: y0 */
    public static final y2 f10075y0;

    /* renamed from: z */
    public static final y2 f10076z;

    /* renamed from: z0 */
    public static final y2 f10077z0;

    /* renamed from: a */
    private static final List f10026a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    private static final Set f10028b = Collections.synchronizedSet(new HashSet());

    /* renamed from: c */
    public static final y2 f10030c = a("measurement.ad_id_cache_time", 10000L, 10000L, new v2() { // from class: com.google.android.gms.measurement.internal.f0
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return Long.valueOf(zb.m());
        }
    });

    /* renamed from: d */
    public static final y2 f10032d = a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, new v2() { // from class: com.google.android.gms.measurement.internal.x
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return Long.valueOf(zb.w());
        }
    });

    /* renamed from: e */
    public static final y2 f10034e = a("measurement.config.cache_time", 86400000L, 3600000L, new v2() { // from class: com.google.android.gms.measurement.internal.j0
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return Long.valueOf(zb.o());
        }
    });

    /* renamed from: f */
    public static final y2 f10036f = a("measurement.config.url_scheme", ProxyConfig.MATCH_HTTPS, ProxyConfig.MATCH_HTTPS, new v2() { // from class: com.google.android.gms.measurement.internal.v0
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return zb.k();
        }
    });

    /* renamed from: g */
    public static final y2 f10038g = a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", new v2() { // from class: com.google.android.gms.measurement.internal.i1
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return zb.j();
        }
    });

    /* renamed from: h */
    public static final y2 f10040h = a("measurement.upload.max_bundles", 100, 100, new v2() { // from class: com.google.android.gms.measurement.internal.u1
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return Integer.valueOf((int) zb.H());
        }
    });

    /* renamed from: i */
    public static final y2 f10042i = a("measurement.upload.max_batch_size", 65536, 65536, new v2() { // from class: com.google.android.gms.measurement.internal.h2
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return Integer.valueOf((int) zb.e());
        }
    });

    /* renamed from: j */
    public static final y2 f10044j = a("measurement.upload.max_bundle_size", 65536, 65536, new v2() { // from class: com.google.android.gms.measurement.internal.p2
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return Integer.valueOf((int) zb.G());
        }
    });

    /* renamed from: k */
    public static final y2 f10046k = a("measurement.upload.max_events_per_bundle", 1000, 1000, new v2() { // from class: com.google.android.gms.measurement.internal.q2
        @Override // com.google.android.gms.measurement.internal.v2
        public final Object zza() {
            y2 y2Var = z2.f10030c;
            return Integer.valueOf((int) zb.K());
        }
    });

    static {
        Integer valueOf = Integer.valueOf((int) BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        f10048l = a("measurement.upload.max_events_per_day", valueOf, valueOf, new v2() { // from class: com.google.android.gms.measurement.internal.r2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.a());
            }
        });
        f10050m = a("measurement.upload.max_error_events_per_day", 1000, 1000, new v2() { // from class: com.google.android.gms.measurement.internal.q0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.J());
            }
        });
        f10052n = a("measurement.upload.max_public_events_per_day", 50000, 50000, new v2() { // from class: com.google.android.gms.measurement.internal.c1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.b());
            }
        });
        f10054o = a("measurement.upload.max_conversions_per_day", 10000, 10000, new v2() { // from class: com.google.android.gms.measurement.internal.n1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.I());
            }
        });
        f10056p = a("measurement.upload.max_realtime_events_per_day", 10, 10, new v2() { // from class: com.google.android.gms.measurement.internal.z1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.d());
            }
        });
        f10058q = a("measurement.store.max_stored_events_per_app", valueOf, valueOf, new v2() { // from class: com.google.android.gms.measurement.internal.k2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.r());
            }
        });
        f10060r = a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", new v2() { // from class: com.google.android.gms.measurement.internal.s2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return zb.l();
            }
        });
        f10062s = a("measurement.upload.backoff_period", 43200000L, 43200000L, new v2() { // from class: com.google.android.gms.measurement.internal.t2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.D());
            }
        });
        f10064t = a("measurement.upload.window_interval", 3600000L, 3600000L, new v2() { // from class: com.google.android.gms.measurement.internal.u2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.h());
            }
        });
        f10066u = a("measurement.upload.interval", 3600000L, 3600000L, new v2() { // from class: com.google.android.gms.measurement.internal.u
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.F());
            }
        });
        f10068v = a("measurement.upload.realtime_upload_interval", 10000L, 10000L, new v2() { // from class: com.google.android.gms.measurement.internal.w
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.x());
            }
        });
        f10070w = a("measurement.upload.debug_upload_interval", 1000L, 1000L, new v2() { // from class: com.google.android.gms.measurement.internal.y
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.p());
            }
        });
        f10072x = a("measurement.upload.minimum_delay", 500L, 500L, new v2() { // from class: com.google.android.gms.measurement.internal.z
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.v());
            }
        });
        f10074y = a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, new v2() { // from class: com.google.android.gms.measurement.internal.a0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.u());
            }
        });
        f10076z = a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, new v2() { // from class: com.google.android.gms.measurement.internal.b0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.A());
            }
        });
        Long valueOf2 = Long.valueOf((long) TimeUtil.WEEK);
        A = a("measurement.upload.refresh_blacklisted_config_interval", valueOf2, valueOf2, new v2() { // from class: com.google.android.gms.measurement.internal.c0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.y());
            }
        });
        B = a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, new v2() { // from class: com.google.android.gms.measurement.internal.d0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.E());
            }
        });
        C = a("measurement.upload.retry_time", 1800000L, 1800000L, new v2() { // from class: com.google.android.gms.measurement.internal.e0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.g());
            }
        });
        D = a("measurement.upload.retry_count", 6, 6, new v2() { // from class: com.google.android.gms.measurement.internal.g0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.f());
            }
        });
        E = a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, new v2() { // from class: com.google.android.gms.measurement.internal.h0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.c());
            }
        });
        F = a("measurement.lifetimevalue.max_currency_tracked", 4, 4, new v2() { // from class: com.google.android.gms.measurement.internal.i0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.q());
            }
        });
        G = a("measurement.audience.filter_result_max_count", 200, 200, new v2() { // from class: com.google.android.gms.measurement.internal.k0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.t());
            }
        });
        H = a("measurement.upload.max_public_user_properties", 25, 25, null);
        I = a("measurement.upload.max_event_name_cardinality", 500, 500, null);
        J = a("measurement.upload.max_public_event_params", 25, 25, null);
        K = a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, new v2() { // from class: com.google.android.gms.measurement.internal.l0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.z());
            }
        });
        Boolean bool = Boolean.FALSE;
        L = a("measurement.test.boolean_flag", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.m0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(ed.f());
            }
        });
        M = a("measurement.test.string_flag", "---", "---", new v2() { // from class: com.google.android.gms.measurement.internal.n0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return ed.e();
            }
        });
        N = a("measurement.test.long_flag", -1L, -1L, new v2() { // from class: com.google.android.gms.measurement.internal.o0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(ed.c());
            }
        });
        O = a("measurement.test.int_flag", -2, -2, new v2() { // from class: com.google.android.gms.measurement.internal.p0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) ed.b());
            }
        });
        Double valueOf3 = Double.valueOf(-3.0d);
        P = a("measurement.test.double_flag", valueOf3, valueOf3, new v2() { // from class: com.google.android.gms.measurement.internal.r0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Double.valueOf(ed.a());
            }
        });
        Q = a("measurement.experiment.max_ids", 50, 50, new v2() { // from class: com.google.android.gms.measurement.internal.s0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.s());
            }
        });
        R = a("measurement.max_bundles_per_iteration", 100, 100, new v2() { // from class: com.google.android.gms.measurement.internal.t0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) zb.n());
            }
        });
        S = a("measurement.sdk.attribution.cache.ttl", valueOf2, valueOf2, new v2() { // from class: com.google.android.gms.measurement.internal.u0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.B());
            }
        });
        T = a("measurement.redaction.app_instance_id.ttl", 7200000L, 7200000L, new v2() { // from class: com.google.android.gms.measurement.internal.x0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Long.valueOf(zb.C());
            }
        });
        Boolean bool2 = Boolean.TRUE;
        U = a("measurement.collection.log_event_and_bundle_v2", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.y0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(hd.b());
            }
        });
        V = a("measurement.quality.checksum", bool, bool, null);
        W = a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.z0
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(lc.d());
            }
        });
        X = a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.a1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(lc.c());
            }
        });
        Y = a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.b1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(lc.e());
            }
        });
        Z = a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.d1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(xd.b());
            }
        });
        f10027a0 = a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.e1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(yc.b());
            }
        });
        f10029b0 = a("measurement.lifecycle.app_in_background_parameter", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.f1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(bd.b());
            }
        });
        f10031c0 = a("measurement.integration.disable_firebase_instance_id", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.g1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(ud.c());
            }
        });
        f10033d0 = a("measurement.collection.service.update_with_analytics_fix", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.h1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(ae.b());
            }
        });
        f10035e0 = a("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.j1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(ic.c());
            }
        });
        f10037f0 = a("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.k1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(sc.c());
            }
        });
        f10039g0 = a("measurement.collection.synthetic_data_mitigation", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.l1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(rd.b());
            }
        });
        f10041h0 = a("measurement.service.storage_consent_support_version", 203600, 203600, new v2() { // from class: com.google.android.gms.measurement.internal.m1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Integer.valueOf((int) cc.a());
            }
        });
        f10043i0 = a("measurement.client.click_identifier_control.dev", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.o1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(tb.b());
            }
        });
        f10045j0 = a("measurement.service.click_identifier_control", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.p1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(wb.b());
            }
        });
        f10047k0 = a("measurement.service.store_null_safelist", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.q1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(fc.c());
            }
        });
        f10049l0 = a("measurement.service.store_safelist", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.r1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(fc.d());
            }
        });
        f10051m0 = a("measurement.redaction.no_aiid_in_config_request", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.s1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.k());
            }
        });
        f10053n0 = a("measurement.redaction.config_redacted_fields", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.t1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.e());
            }
        });
        f10055o0 = a("measurement.redaction.upload_redacted_fields", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.v1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.n());
            }
        });
        f10057p0 = a("measurement.redaction.upload_subdomain_override", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.w1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.o());
            }
        });
        f10059q0 = a("measurement.redaction.device_info", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.y1
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.f());
            }
        });
        f10061r0 = a("measurement.redaction.user_id", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.a2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.p());
            }
        });
        f10063s0 = a("measurement.redaction.google_signals", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.b2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.j());
            }
        });
        f10065t0 = a("measurement.collection.enable_session_stitching_token.service", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.c2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(nd.d());
            }
        });
        f10067u0 = a("measurement.collection.enable_session_stitching_token.client.dev", bool, bool, new v2() { // from class: com.google.android.gms.measurement.internal.d2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(nd.c());
            }
        });
        f10069v0 = a("measurement.redaction.app_instance_id", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.e2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.c());
            }
        });
        f10071w0 = a("measurement.redaction.populate_ephemeral_app_instance_id", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.f2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.i());
            }
        });
        f10073x0 = a("measurement.redaction.enhanced_uid", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.g2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.h());
            }
        });
        f10075y0 = a("measurement.redaction.e_tag", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.i2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.g());
            }
        });
        f10077z0 = a("measurement.redaction.client_ephemeral_aiid_generation", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.j2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.d());
            }
        });
        A0 = a("measurement.redaction.retain_major_os_version", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.l2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.l());
            }
        });
        B0 = a("measurement.redaction.scion_payload_generator", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.m2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(kd.m());
            }
        });
        C0 = a("measurement.audience.dynamic_filters.oob_fix", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.n2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(pc.c());
            }
        });
        D0 = a("measurement.service.clear_global_params_on_uninstall", bool2, bool2, new v2() { // from class: com.google.android.gms.measurement.internal.o2
            @Override // com.google.android.gms.measurement.internal.v2
            public final Object zza() {
                y2 y2Var = z2.f10030c;
                return Boolean.valueOf(vc.c());
            }
        });
    }

    static y2 a(String str, Object obj, Object obj2, v2 v2Var) {
        y2 y2Var = new y2(str, obj, obj2, v2Var, null);
        f10026a.add(y2Var);
        return y2Var;
    }

    public static Map c(Context context) {
        com.google.android.gms.internal.measurement.z5 b10 = com.google.android.gms.internal.measurement.z5.b(context.getContentResolver(), com.google.android.gms.internal.measurement.k6.a("com.google.android.gms.measurement"), new Runnable() { // from class: p4.b
            @Override // java.lang.Runnable
            public final void run() {
                w6.d();
            }
        });
        return b10 == null ? Collections.emptyMap() : b10.c();
    }
}
