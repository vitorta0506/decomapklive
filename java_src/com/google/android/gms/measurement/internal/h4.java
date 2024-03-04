package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.facebook.AccessToken;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.gms.internal.measurement.ee;
import com.google.android.gms.internal.measurement.ge;
import com.google.android.gms.internal.measurement.he;
import com.google.android.gms.internal.measurement.kd;
import com.google.android.gms.internal.measurement.ob;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzko;
import com.google.android.gms.measurement.internal.h4;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class h4 extends t8 implements f {

    /* renamed from: d  reason: collision with root package name */
    private final Map f9454d;

    /* renamed from: e  reason: collision with root package name */
    final Map f9455e;

    /* renamed from: f  reason: collision with root package name */
    final Map f9456f;

    /* renamed from: g  reason: collision with root package name */
    final Map f9457g;

    /* renamed from: h  reason: collision with root package name */
    private final Map f9458h;

    /* renamed from: i  reason: collision with root package name */
    private final Map f9459i;

    /* renamed from: j  reason: collision with root package name */
    final LruCache f9460j;

    /* renamed from: k  reason: collision with root package name */
    final ee f9461k;

    /* renamed from: l  reason: collision with root package name */
    private final Map f9462l;

    /* renamed from: m  reason: collision with root package name */
    private final Map f9463m;

    /* renamed from: n  reason: collision with root package name */
    private final Map f9464n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h4(d9 d9Var) {
        super(d9Var);
        this.f9454d = new ArrayMap();
        this.f9455e = new ArrayMap();
        this.f9456f = new ArrayMap();
        this.f9457g = new ArrayMap();
        this.f9458h = new ArrayMap();
        this.f9462l = new ArrayMap();
        this.f9463m = new ArrayMap();
        this.f9464n = new ArrayMap();
        this.f9459i = new ArrayMap();
        this.f9460j = new e4(this, 20);
        this.f9461k = new f4(this);
    }

    @WorkerThread
    private final com.google.android.gms.internal.measurement.x3 m(String str, byte[] bArr) {
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.x3.C();
        }
        try {
            com.google.android.gms.internal.measurement.x3 x3Var = (com.google.android.gms.internal.measurement.x3) ((com.google.android.gms.internal.measurement.w3) g9.C(com.google.android.gms.internal.measurement.x3.A(), bArr)).o();
            this.f9432a.b().v().c("Parsed config. version, gmp_app_id", x3Var.N() ? Long.valueOf(x3Var.y()) : null, x3Var.M() ? x3Var.D() : null);
            return x3Var;
        } catch (zzko e10) {
            this.f9432a.b().w().c("Unable to merge remote config. appId", j3.z(str), e10);
            return com.google.android.gms.internal.measurement.x3.C();
        } catch (RuntimeException e11) {
            this.f9432a.b().w().c("Unable to merge remote config. appId", j3.z(str), e11);
            return com.google.android.gms.internal.measurement.x3.C();
        }
    }

    private final void n(String str, com.google.android.gms.internal.measurement.w3 w3Var) {
        HashSet hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (w3Var != null) {
            kd.b();
            if (this.f9432a.z().B(null, z2.f10053n0)) {
                for (com.google.android.gms.internal.measurement.t3 t3Var : w3Var.x()) {
                    hashSet.add(t3Var.x());
                }
            }
            for (int i9 = 0; i9 < w3Var.r(); i9++) {
                com.google.android.gms.internal.measurement.u3 u3Var = (com.google.android.gms.internal.measurement.u3) w3Var.s(i9).t();
                if (u3Var.t().isEmpty()) {
                    this.f9432a.b().w().a("EventConfig contained null event name");
                } else {
                    String t10 = u3Var.t();
                    String b10 = p4.p.b(u3Var.t());
                    if (!TextUtils.isEmpty(b10)) {
                        u3Var.s(b10);
                        w3Var.u(i9, u3Var);
                    }
                    if (u3Var.w() && u3Var.u()) {
                        arrayMap.put(t10, Boolean.TRUE);
                    }
                    if (u3Var.x() && u3Var.v()) {
                        arrayMap2.put(u3Var.t(), Boolean.TRUE);
                    }
                    if (u3Var.y()) {
                        if (u3Var.r() >= 2 && u3Var.r() <= 65535) {
                            arrayMap3.put(u3Var.t(), Integer.valueOf(u3Var.r()));
                        } else {
                            this.f9432a.b().w().c("Invalid sampling rate. Event name, sample rate", u3Var.t(), Integer.valueOf(u3Var.r()));
                        }
                    }
                }
            }
        }
        this.f9455e.put(str, hashSet);
        this.f9456f.put(str, arrayMap);
        this.f9457g.put(str, arrayMap2);
        this.f9459i.put(str, arrayMap3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a4, code lost:
        if (r2 == null) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0128  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void o(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.h4.o(java.lang.String):void");
    }

    @WorkerThread
    private final void p(final String str, com.google.android.gms.internal.measurement.x3 x3Var) {
        if (x3Var.w() != 0) {
            this.f9432a.b().v().b("EES programs found", Integer.valueOf(x3Var.w()));
            com.google.android.gms.internal.measurement.m5 m5Var = (com.google.android.gms.internal.measurement.m5) x3Var.H().get(0);
            try {
                com.google.android.gms.internal.measurement.b1 b1Var = new com.google.android.gms.internal.measurement.b1();
                b1Var.d("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.c4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new ob("internal.remoteConfig", new g4(h4.this, str));
                    }
                });
                b1Var.d("internal.appMetadata", new Callable() { // from class: p4.k
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        final h4 h4Var = h4.this;
                        final String str2 = str;
                        return new he("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.b4
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                h4 h4Var2 = h4.this;
                                String str3 = str2;
                                j5 R = h4Var2.f9855b.W().R(str3);
                                HashMap hashMap = new HashMap();
                                hashMap.put("platform", "android");
                                hashMap.put(PushConstants.PACKAGE_NAME, str3);
                                h4Var2.f9432a.z().q();
                                hashMap.put("gmp_version", 73000L);
                                if (R != null) {
                                    String g02 = R.g0();
                                    if (g02 != null) {
                                        hashMap.put("app_version", g02);
                                    }
                                    hashMap.put("app_version_int", Long.valueOf(R.L()));
                                    hashMap.put("dynamite_version", Long.valueOf(R.U()));
                                }
                                return hashMap;
                            }
                        });
                    }
                });
                b1Var.d("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.d4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new ge(h4.this.f9461k);
                    }
                });
                b1Var.c(m5Var);
                this.f9460j.put(str, b1Var);
                this.f9432a.b().v().c("EES program loaded for appId, activities", str, Integer.valueOf(m5Var.w().w()));
                for (com.google.android.gms.internal.measurement.k5 k5Var : m5Var.w().z()) {
                    this.f9432a.b().v().b("EES program activity", k5Var.x());
                }
                return;
            } catch (zzd unused) {
                this.f9432a.b().r().b("Failed to load EES program. appId", str);
                return;
            }
        }
        this.f9460j.remove(str);
    }

    private static final Map q(com.google.android.gms.internal.measurement.x3 x3Var) {
        ArrayMap arrayMap = new ArrayMap();
        if (x3Var != null) {
            for (com.google.android.gms.internal.measurement.b4 b4Var : x3Var.I()) {
                arrayMap.put(b4Var.x(), b4Var.y());
            }
        }
        return arrayMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ com.google.android.gms.internal.measurement.b1 s(h4 h4Var, String str) {
        h4Var.i();
        com.google.android.gms.common.internal.p.f(str);
        if (h4Var.C(str)) {
            if (h4Var.f9458h.containsKey(str) && h4Var.f9458h.get(str) != null) {
                h4Var.p(str, (com.google.android.gms.internal.measurement.x3) h4Var.f9458h.get(str));
            } else {
                h4Var.o(str);
            }
            return (com.google.android.gms.internal.measurement.b1) h4Var.f9460j.snapshot().get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void A(String str) {
        h();
        this.f9458h.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean B(String str) {
        h();
        com.google.android.gms.internal.measurement.x3 t10 = t(str);
        if (t10 == null) {
            return false;
        }
        return t10.L();
    }

    public final boolean C(String str) {
        com.google.android.gms.internal.measurement.x3 x3Var;
        return (TextUtils.isEmpty(str) || (x3Var = (com.google.android.gms.internal.measurement.x3) this.f9458h.get(str)) == null || x3Var.w() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean D(String str) {
        return "1".equals(e(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean E(String str, String str2) {
        Boolean bool;
        h();
        o(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f9457g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean F(String str, String str2) {
        Boolean bool;
        h();
        o(str);
        if (D(str) && k9.W(str2)) {
            return true;
        }
        if (G(str) && k9.X(str2)) {
            return true;
        }
        Map map = (Map) this.f9456f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean G(String str) {
        return "1".equals(e(str, "measurement.upload.blacklist_public"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final boolean H(String str, byte[] bArr, String str2, String str3) {
        i();
        h();
        com.google.android.gms.common.internal.p.f(str);
        com.google.android.gms.internal.measurement.w3 w3Var = (com.google.android.gms.internal.measurement.w3) m(str, bArr).t();
        if (w3Var == null) {
            return false;
        }
        n(str, w3Var);
        p(str, (com.google.android.gms.internal.measurement.x3) w3Var.o());
        this.f9458h.put(str, (com.google.android.gms.internal.measurement.x3) w3Var.o());
        this.f9462l.put(str, w3Var.v());
        this.f9463m.put(str, str2);
        this.f9464n.put(str, str3);
        this.f9454d.put(str, q((com.google.android.gms.internal.measurement.x3) w3Var.o()));
        this.f9855b.W().n(str, new ArrayList(w3Var.w()));
        try {
            w3Var.t();
            bArr = ((com.google.android.gms.internal.measurement.x3) w3Var.o()).j();
        } catch (RuntimeException e10) {
            this.f9432a.b().w().c("Unable to serialize reduced-size config. Storing full config instead. appId", j3.z(str), e10);
        }
        k W = this.f9855b.W();
        com.google.android.gms.common.internal.p.f(str);
        W.h();
        W.i();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        if (W.f9432a.z().B(null, z2.f10075y0)) {
            contentValues.put("e_tag", str3);
        }
        try {
            if (W.P().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                W.f9432a.b().r().b("Failed to update remote config (got 0). appId", j3.z(str));
            }
        } catch (SQLiteException e11) {
            W.f9432a.b().r().c("Error storing remote config. appId", j3.z(str), e11);
        }
        this.f9458h.put(str, (com.google.android.gms.internal.measurement.x3) w3Var.o());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean I(String str) {
        h();
        o(str);
        return this.f9455e.get(str) != null && ((Set) this.f9455e.get(str)).contains("app_instance_id");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean J(String str) {
        h();
        o(str);
        return this.f9455e.get(str) != null && (((Set) this.f9455e.get(str)).contains(TPDownloadProxyEnum.USER_DEVICE_MODEL) || ((Set) this.f9455e.get(str)).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean K(String str) {
        h();
        o(str);
        return this.f9455e.get(str) != null && ((Set) this.f9455e.get(str)).contains("enhanced_user_id");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean L(String str) {
        h();
        o(str);
        return this.f9455e.get(str) != null && ((Set) this.f9455e.get(str)).contains("google_signals");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean M(String str) {
        h();
        o(str);
        return this.f9455e.get(str) != null && (((Set) this.f9455e.get(str)).contains(TPDownloadProxyEnum.USER_OS_VERSION) || ((Set) this.f9455e.get(str)).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean N(String str) {
        h();
        o(str);
        return this.f9455e.get(str) != null && ((Set) this.f9455e.get(str)).contains(AccessToken.USER_ID_KEY);
    }

    @Override // com.google.android.gms.measurement.internal.f
    @WorkerThread
    public final String e(String str, String str2) {
        h();
        o(str);
        Map map = (Map) this.f9454d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.t8
    protected final boolean l() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final int r(String str, String str2) {
        Integer num;
        h();
        o(str);
        Map map = (Map) this.f9459i.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final com.google.android.gms.internal.measurement.x3 t(String str) {
        i();
        h();
        com.google.android.gms.common.internal.p.f(str);
        o(str);
        return (com.google.android.gms.internal.measurement.x3) this.f9458h.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final String u(String str) {
        h();
        return (String) this.f9464n.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final String v(String str) {
        h();
        return (String) this.f9463m.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String w(String str) {
        h();
        o(str);
        return (String) this.f9462l.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final Set y(String str) {
        h();
        o(str);
        return (Set) this.f9455e.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void z(String str) {
        h();
        this.f9463m.put(str, null);
    }
}
