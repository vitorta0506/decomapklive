package com.google.android.exoplayer2.drm;

import a2.s1;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DefaultDrmSession;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c0;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.k1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.e9;
import com.google.common.collect.w7;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
@RequiresApi(18)
/* loaded from: classes.dex */
public class DefaultDrmSessionManager implements u {

    /* renamed from: c  reason: collision with root package name */
    private final UUID f5746c;

    /* renamed from: d  reason: collision with root package name */
    private final c0.f f5747d;

    /* renamed from: e  reason: collision with root package name */
    private final k0 f5748e;

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<String, String> f5749f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f5750g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f5751h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f5752i;

    /* renamed from: j  reason: collision with root package name */
    private final f f5753j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f5754k;

    /* renamed from: l  reason: collision with root package name */
    private final g f5755l;

    /* renamed from: m  reason: collision with root package name */
    private final long f5756m;

    /* renamed from: n  reason: collision with root package name */
    private final List<DefaultDrmSession> f5757n;

    /* renamed from: o  reason: collision with root package name */
    private final Set<e> f5758o;

    /* renamed from: p  reason: collision with root package name */
    private final Set<DefaultDrmSession> f5759p;

    /* renamed from: q  reason: collision with root package name */
    private int f5760q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private c0 f5761r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private DefaultDrmSession f5762s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private DefaultDrmSession f5763t;

    /* renamed from: u  reason: collision with root package name */
    private Looper f5764u;

    /* renamed from: v  reason: collision with root package name */
    private Handler f5765v;

    /* renamed from: w  reason: collision with root package name */
    private int f5766w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private byte[] f5767x;

    /* renamed from: y  reason: collision with root package name */
    private s1 f5768y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    volatile d f5769z;

    /* loaded from: classes.dex */
    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        private boolean f5773d;

        /* renamed from: f  reason: collision with root package name */
        private boolean f5775f;

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<String, String> f5770a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private UUID f5771b = com.google.android.exoplayer2.i.f5999d;

        /* renamed from: c  reason: collision with root package name */
        private c0.f f5772c = i0.f5815d;

        /* renamed from: g  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.b f5776g = new com.google.android.exoplayer2.upstream.a();

        /* renamed from: e  reason: collision with root package name */
        private int[] f5774e = new int[0];

        /* renamed from: h  reason: collision with root package name */
        private long f5777h = 300000;

        public DefaultDrmSessionManager a(k0 k0Var) {
            return new DefaultDrmSessionManager(this.f5771b, this.f5772c, k0Var, this.f5770a, this.f5773d, this.f5774e, this.f5775f, this.f5776g, this.f5777h);
        }

        public b b(boolean z10) {
            this.f5773d = z10;
            return this;
        }

        public b c(boolean z10) {
            this.f5775f = z10;
            return this;
        }

        public b d(int... iArr) {
            for (int i9 : iArr) {
                boolean z10 = true;
                if (i9 != 2 && i9 != 1) {
                    z10 = false;
                }
                com.google.android.exoplayer2.util.a.a(z10);
            }
            this.f5774e = (int[]) iArr.clone();
            return this;
        }

        public b e(UUID uuid, c0.f fVar) {
            this.f5771b = (UUID) com.google.android.exoplayer2.util.a.e(uuid);
            this.f5772c = (c0.f) com.google.android.exoplayer2.util.a.e(fVar);
            return this;
        }
    }

    /* loaded from: classes.dex */
    private class c implements c0.c {
        private c() {
        }

        @Override // com.google.android.exoplayer2.drm.c0.c
        public void a(c0 c0Var, @Nullable byte[] bArr, int i9, int i10, @Nullable byte[] bArr2) {
            ((d) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f5769z)).obtainMessage(i9, bArr).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f5757n) {
                if (defaultDrmSession.q(bArr)) {
                    defaultDrmSession.y(message.what);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e implements u.b {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final s.a f5780b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private DrmSession f5781c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5782d;

        public e(@Nullable s.a aVar) {
            this.f5780b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(k1 k1Var) {
            if (DefaultDrmSessionManager.this.f5760q == 0 || this.f5782d) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.f5781c = defaultDrmSessionManager.s((Looper) com.google.android.exoplayer2.util.a.e(defaultDrmSessionManager.f5764u), this.f5780b, k1Var, false);
            DefaultDrmSessionManager.this.f5758o.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.f5782d) {
                return;
            }
            DrmSession drmSession = this.f5781c;
            if (drmSession != null) {
                drmSession.b(this.f5780b);
            }
            DefaultDrmSessionManager.this.f5758o.remove(this);
            this.f5782d = true;
        }

        public void c(final k1 k1Var) {
            ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f5765v)).post(new Runnable() { // from class: com.google.android.exoplayer2.drm.h
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.e.this.d(k1Var);
                }
            });
        }

        @Override // com.google.android.exoplayer2.drm.u.b
        public void release() {
            com.google.android.exoplayer2.util.l0.C0((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f5765v), new Runnable() { // from class: com.google.android.exoplayer2.drm.g
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.e.this.e();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements DefaultDrmSession.a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<DefaultDrmSession> f5784a = new HashSet();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private DefaultDrmSession f5785b;

        public f(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void a(Exception exc, boolean z10) {
            this.f5785b = null;
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f5784a);
            this.f5784a.clear();
            e9 it = copyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).A(exc, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void b(DefaultDrmSession defaultDrmSession) {
            this.f5784a.add(defaultDrmSession);
            if (this.f5785b != null) {
                return;
            }
            this.f5785b = defaultDrmSession;
            defaultDrmSession.E();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void c() {
            this.f5785b = null;
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f5784a);
            this.f5784a.clear();
            e9 it = copyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).z();
            }
        }

        public void d(DefaultDrmSession defaultDrmSession) {
            this.f5784a.remove(defaultDrmSession);
            if (this.f5785b == defaultDrmSession) {
                this.f5785b = null;
                if (this.f5784a.isEmpty()) {
                    return;
                }
                DefaultDrmSession next = this.f5784a.iterator().next();
                this.f5785b = next;
                next.E();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g implements DefaultDrmSession.b {
        private g() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void a(DefaultDrmSession defaultDrmSession, int i9) {
            if (DefaultDrmSessionManager.this.f5756m != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f5759p.remove(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f5765v)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void b(final DefaultDrmSession defaultDrmSession, int i9) {
            if (i9 == 1 && DefaultDrmSessionManager.this.f5760q > 0 && DefaultDrmSessionManager.this.f5756m != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f5759p.add(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f5765v)).postAtTime(new Runnable() { // from class: com.google.android.exoplayer2.drm.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultDrmSession.this.b(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f5756m);
            } else if (i9 == 0) {
                DefaultDrmSessionManager.this.f5757n.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f5762s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f5762s = null;
                }
                if (DefaultDrmSessionManager.this.f5763t == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f5763t = null;
                }
                DefaultDrmSessionManager.this.f5753j.d(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f5756m != -9223372036854775807L) {
                    ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f5765v)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f5759p.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }
    }

    private void A(Looper looper) {
        if (this.f5769z == null) {
            this.f5769z = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f5761r != null && this.f5760q == 0 && this.f5757n.isEmpty() && this.f5758o.isEmpty()) {
            ((c0) com.google.android.exoplayer2.util.a.e(this.f5761r)).release();
            this.f5761r = null;
        }
    }

    private void C() {
        e9 it = ImmutableSet.copyOf((Collection) this.f5759p).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).b(null);
        }
    }

    private void D() {
        e9 it = ImmutableSet.copyOf((Collection) this.f5758o).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    private void F(DrmSession drmSession, @Nullable s.a aVar) {
        drmSession.b(aVar);
        if (this.f5756m != -9223372036854775807L) {
            drmSession.b(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public DrmSession s(Looper looper, @Nullable s.a aVar, k1 k1Var, boolean z10) {
        List<DrmInitData.SchemeData> list;
        A(looper);
        DrmInitData drmInitData = k1Var.f6114o;
        if (drmInitData == null) {
            return z(com.google.android.exoplayer2.util.v.i(k1Var.f6111l), z10);
        }
        DefaultDrmSession defaultDrmSession = null;
        if (this.f5767x == null) {
            list = x((DrmInitData) com.google.android.exoplayer2.util.a.e(drmInitData), this.f5746c, false);
            if (list.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f5746c);
                com.google.android.exoplayer2.util.r.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new a0(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            list = null;
        }
        if (!this.f5750g) {
            defaultDrmSession = this.f5763t;
        } else {
            Iterator<DefaultDrmSession> it = this.f5757n.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DefaultDrmSession next = it.next();
                if (com.google.android.exoplayer2.util.l0.c(next.f5714a, list)) {
                    defaultDrmSession = next;
                    break;
                }
            }
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = w(list, false, aVar, z10);
            if (!this.f5750g) {
                this.f5763t = defaultDrmSession;
            }
            this.f5757n.add(defaultDrmSession);
        } else {
            defaultDrmSession.a(aVar);
        }
        return defaultDrmSession;
    }

    private static boolean t(DrmSession drmSession) {
        return drmSession.getState() == 1 && (com.google.android.exoplayer2.util.l0.f6985a < 19 || (((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(drmSession.e())).getCause() instanceof ResourceBusyException));
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f5767x != null) {
            return true;
        }
        if (x(drmInitData, this.f5746c, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.c(0).b(com.google.android.exoplayer2.i.f5997b)) {
                return false;
            }
            com.google.android.exoplayer2.util.r.i("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f5746c);
        }
        String str = drmInitData.schemeType;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        return "cbcs".equals(str) ? com.google.android.exoplayer2.util.l0.f6985a >= 25 : ("cbc1".equals(str) || "cens".equals(str)) ? false : true;
    }

    private DefaultDrmSession v(@Nullable List<DrmInitData.SchemeData> list, boolean z10, @Nullable s.a aVar) {
        com.google.android.exoplayer2.util.a.e(this.f5761r);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f5746c, this.f5761r, this.f5753j, this.f5755l, list, this.f5766w, this.f5752i | z10, z10, this.f5767x, this.f5749f, this.f5748e, (Looper) com.google.android.exoplayer2.util.a.e(this.f5764u), this.f5754k, (s1) com.google.android.exoplayer2.util.a.e(this.f5768y));
        defaultDrmSession.a(aVar);
        if (this.f5756m != -9223372036854775807L) {
            defaultDrmSession.a(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(@Nullable List<DrmInitData.SchemeData> list, boolean z10, @Nullable s.a aVar, boolean z11) {
        DefaultDrmSession v10 = v(list, z10, aVar);
        if (t(v10) && !this.f5759p.isEmpty()) {
            C();
            F(v10, aVar);
            v10 = v(list, z10, aVar);
        }
        if (t(v10) && z11 && !this.f5758o.isEmpty()) {
            D();
            if (!this.f5759p.isEmpty()) {
                C();
            }
            F(v10, aVar);
            return v(list, z10, aVar);
        }
        return v10;
    }

    private static List<DrmInitData.SchemeData> x(DrmInitData drmInitData, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i9 = 0; i9 < drmInitData.schemeDataCount; i9++) {
            DrmInitData.SchemeData c10 = drmInitData.c(i9);
            if ((c10.b(uuid) || (com.google.android.exoplayer2.i.f5998c.equals(uuid) && c10.b(com.google.android.exoplayer2.i.f5997b))) && (c10.data != null || z10)) {
                arrayList.add(c10);
            }
        }
        return arrayList;
    }

    private synchronized void y(Looper looper) {
        Looper looper2 = this.f5764u;
        if (looper2 == null) {
            this.f5764u = looper;
            this.f5765v = new Handler(looper);
        } else {
            com.google.android.exoplayer2.util.a.f(looper2 == looper);
            com.google.android.exoplayer2.util.a.e(this.f5765v);
        }
    }

    @Nullable
    private DrmSession z(int i9, boolean z10) {
        c0 c0Var = (c0) com.google.android.exoplayer2.util.a.e(this.f5761r);
        if ((c0Var.g() == 2 && d0.f5798d) || com.google.android.exoplayer2.util.l0.t0(this.f5751h, i9) == -1 || c0Var.g() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f5762s;
        if (defaultDrmSession == null) {
            DefaultDrmSession w6 = w(ImmutableList.of(), true, null, z10);
            this.f5757n.add(w6);
            this.f5762s = w6;
        } else {
            defaultDrmSession.a(null);
        }
        return this.f5762s;
    }

    public void E(int i9, @Nullable byte[] bArr) {
        com.google.android.exoplayer2.util.a.f(this.f5757n.isEmpty());
        if (i9 == 1 || i9 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.f5766w = i9;
        this.f5767x = bArr;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public int a(k1 k1Var) {
        int g10 = ((c0) com.google.android.exoplayer2.util.a.e(this.f5761r)).g();
        DrmInitData drmInitData = k1Var.f6114o;
        if (drmInitData == null) {
            if (com.google.android.exoplayer2.util.l0.t0(this.f5751h, com.google.android.exoplayer2.util.v.i(k1Var.f6111l)) != -1) {
                return g10;
            }
            return 0;
        } else if (u(drmInitData)) {
            return g10;
        } else {
            return 1;
        }
    }

    @Override // com.google.android.exoplayer2.drm.u
    public void b(Looper looper, s1 s1Var) {
        y(looper);
        this.f5768y = s1Var;
    }

    @Override // com.google.android.exoplayer2.drm.u
    @Nullable
    public DrmSession c(@Nullable s.a aVar, k1 k1Var) {
        com.google.android.exoplayer2.util.a.f(this.f5760q > 0);
        com.google.android.exoplayer2.util.a.h(this.f5764u);
        return s(this.f5764u, aVar, k1Var, true);
    }

    @Override // com.google.android.exoplayer2.drm.u
    public u.b d(@Nullable s.a aVar, k1 k1Var) {
        com.google.android.exoplayer2.util.a.f(this.f5760q > 0);
        com.google.android.exoplayer2.util.a.h(this.f5764u);
        e eVar = new e(aVar);
        eVar.c(k1Var);
        return eVar;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public final void prepare() {
        int i9 = this.f5760q;
        this.f5760q = i9 + 1;
        if (i9 != 0) {
            return;
        }
        if (this.f5761r == null) {
            c0 a10 = this.f5747d.a(this.f5746c);
            this.f5761r = a10;
            a10.setOnEventListener(new c());
        } else if (this.f5756m != -9223372036854775807L) {
            for (int i10 = 0; i10 < this.f5757n.size(); i10++) {
                this.f5757n.get(i10).a(null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.u
    public final void release() {
        int i9 = this.f5760q - 1;
        this.f5760q = i9;
        if (i9 != 0) {
            return;
        }
        if (this.f5756m != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f5757n);
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                ((DefaultDrmSession) arrayList.get(i10)).b(null);
            }
        }
        D();
        B();
    }

    private DefaultDrmSessionManager(UUID uuid, c0.f fVar, k0 k0Var, HashMap<String, String> hashMap, boolean z10, int[] iArr, boolean z11, com.google.android.exoplayer2.upstream.b bVar, long j10) {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.i.f5997b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f5746c = uuid;
        this.f5747d = fVar;
        this.f5748e = k0Var;
        this.f5749f = hashMap;
        this.f5750g = z10;
        this.f5751h = iArr;
        this.f5752i = z11;
        this.f5754k = bVar;
        this.f5753j = new f(this);
        this.f5755l = new g();
        this.f5766w = 0;
        this.f5757n = new ArrayList();
        this.f5758o = w7.l();
        this.f5759p = w7.l();
        this.f5756m = j10;
    }
}
