package com.google.android.exoplayer2.drm;

import a2.s1;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c0;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.upstream.b;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(18)
/* loaded from: classes.dex */
public class DefaultDrmSession implements DrmSession {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final List<DrmInitData.SchemeData> f5714a;

    /* renamed from: b  reason: collision with root package name */
    private final c0 f5715b;

    /* renamed from: c  reason: collision with root package name */
    private final a f5716c;

    /* renamed from: d  reason: collision with root package name */
    private final b f5717d;

    /* renamed from: e  reason: collision with root package name */
    private final int f5718e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f5719f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f5720g;

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<String, String> f5721h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.i<s.a> f5722i;

    /* renamed from: j  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f5723j;

    /* renamed from: k  reason: collision with root package name */
    private final s1 f5724k;

    /* renamed from: l  reason: collision with root package name */
    final k0 f5725l;

    /* renamed from: m  reason: collision with root package name */
    final UUID f5726m;

    /* renamed from: n  reason: collision with root package name */
    final e f5727n;

    /* renamed from: o  reason: collision with root package name */
    private int f5728o;

    /* renamed from: p  reason: collision with root package name */
    private int f5729p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private HandlerThread f5730q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private c f5731r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private b2.b f5732s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private DrmSession.DrmSessionException f5733t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private byte[] f5734u;

    /* renamed from: v  reason: collision with root package name */
    private byte[] f5735v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private c0.a f5736w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private c0.g f5737x;

    /* loaded from: classes.dex */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th2) {
            super(th2);
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(Exception exc, boolean z10);

        void b(DefaultDrmSession defaultDrmSession);

        void c();
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(DefaultDrmSession defaultDrmSession, int i9);

        void b(DefaultDrmSession defaultDrmSession, int i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends Handler {
        @GuardedBy("this")

        /* renamed from: a  reason: collision with root package name */
        private boolean f5738a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            IOException unexpectedDrmSessionException;
            d dVar = (d) message.obj;
            if (dVar.f5741b) {
                int i9 = dVar.f5744e + 1;
                dVar.f5744e = i9;
                if (i9 > DefaultDrmSession.this.f5723j.b(3)) {
                    return false;
                }
                v2.j jVar = new v2.j(dVar.f5740a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f5742c, mediaDrmCallbackException.bytesLoaded);
                v2.m mVar = new v2.m(3);
                if (mediaDrmCallbackException.getCause() instanceof IOException) {
                    unexpectedDrmSessionException = (IOException) mediaDrmCallbackException.getCause();
                } else {
                    unexpectedDrmSessionException = new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause());
                }
                long a10 = DefaultDrmSession.this.f5723j.a(new b.a(jVar, mVar, unexpectedDrmSessionException, dVar.f5744e));
                if (a10 == -9223372036854775807L) {
                    return false;
                }
                synchronized (this) {
                    if (this.f5738a) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), a10);
                    return true;
                }
            }
            return false;
        }

        void b(int i9, Object obj, boolean z10) {
            obtainMessage(i9, new d(v2.j.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f5738a = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable, java.lang.Exception] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr;
            d dVar = (d) message.obj;
            try {
                int i9 = message.what;
                if (i9 == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    bArr = defaultDrmSession.f5725l.a(defaultDrmSession.f5726m, (c0.g) dVar.f5743d);
                } else if (i9 == 1) {
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    bArr = defaultDrmSession2.f5725l.b(defaultDrmSession2.f5726m, (c0.a) dVar.f5743d);
                } else {
                    throw new RuntimeException();
                }
            } catch (MediaDrmCallbackException e10) {
                boolean a10 = a(message, e10);
                bArr = e10;
                if (a10) {
                    return;
                }
            } catch (Exception e11) {
                com.google.android.exoplayer2.util.r.j("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e11);
                bArr = e11;
            }
            DefaultDrmSession.this.f5723j.c(dVar.f5740a);
            synchronized (this) {
                if (!this.f5738a) {
                    DefaultDrmSession.this.f5727n.obtainMessage(message.what, Pair.create(dVar.f5743d, bArr)).sendToTarget();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f5740a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f5741b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5742c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f5743d;

        /* renamed from: e  reason: collision with root package name */
        public int f5744e;

        public d(long j10, boolean z10, long j11, Object obj) {
            this.f5740a = j10;
            this.f5741b = z10;
            this.f5742c = j11;
            this.f5743d = obj;
        }
    }

    /* loaded from: classes.dex */
    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i9 = message.what;
            if (i9 == 0) {
                DefaultDrmSession.this.B(obj, obj2);
            } else if (i9 != 1) {
            } else {
                DefaultDrmSession.this.v(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, c0 c0Var, a aVar, b bVar, @Nullable List<DrmInitData.SchemeData> list, int i9, boolean z10, boolean z11, @Nullable byte[] bArr, HashMap<String, String> hashMap, k0 k0Var, Looper looper, com.google.android.exoplayer2.upstream.b bVar2, s1 s1Var) {
        if (i9 == 1 || i9 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.f5726m = uuid;
        this.f5716c = aVar;
        this.f5717d = bVar;
        this.f5715b = c0Var;
        this.f5718e = i9;
        this.f5719f = z10;
        this.f5720g = z11;
        if (bArr != null) {
            this.f5735v = bArr;
            this.f5714a = null;
        } else {
            this.f5714a = Collections.unmodifiableList((List) com.google.android.exoplayer2.util.a.e(list));
        }
        this.f5721h = hashMap;
        this.f5725l = k0Var;
        this.f5722i = new com.google.android.exoplayer2.util.i<>();
        this.f5723j = bVar2;
        this.f5724k = s1Var;
        this.f5728o = 2;
        this.f5727n = new e(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Object obj, Object obj2) {
        if (obj == this.f5737x) {
            if (this.f5728o == 2 || r()) {
                this.f5737x = null;
                if (obj2 instanceof Exception) {
                    this.f5716c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f5715b.f((byte[]) obj2);
                    this.f5716c.c();
                } catch (Exception e10) {
                    this.f5716c.a(e10, true);
                }
            }
        }
    }

    private boolean C() {
        if (r()) {
            return true;
        }
        try {
            byte[] d10 = this.f5715b.d();
            this.f5734u = d10;
            this.f5715b.c(d10, this.f5724k);
            this.f5732s = this.f5715b.h(this.f5734u);
            this.f5728o = 3;
            n(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.b
                @Override // com.google.android.exoplayer2.util.h
                public final void accept(Object obj) {
                    ((s.a) obj).k(r1);
                }
            });
            com.google.android.exoplayer2.util.a.e(this.f5734u);
            return true;
        } catch (NotProvisionedException unused) {
            this.f5716c.b(this);
            return false;
        } catch (Exception e10) {
            u(e10, 1);
            return false;
        }
    }

    private void D(byte[] bArr, int i9, boolean z10) {
        try {
            this.f5736w = this.f5715b.l(bArr, this.f5714a, i9, this.f5721h);
            ((c) com.google.android.exoplayer2.util.l0.j(this.f5731r)).b(1, com.google.android.exoplayer2.util.a.e(this.f5736w), z10);
        } catch (Exception e10) {
            w(e10, true);
        }
    }

    private boolean F() {
        try {
            this.f5715b.e(this.f5734u, this.f5735v);
            return true;
        } catch (Exception e10) {
            u(e10, 1);
            return false;
        }
    }

    private void n(com.google.android.exoplayer2.util.h<s.a> hVar) {
        for (s.a aVar : this.f5722i.elementSet()) {
            hVar.accept(aVar);
        }
    }

    private void o(boolean z10) {
        if (this.f5720g) {
            return;
        }
        byte[] bArr = (byte[]) com.google.android.exoplayer2.util.l0.j(this.f5734u);
        int i9 = this.f5718e;
        if (i9 != 0 && i9 != 1) {
            if (i9 == 2) {
                if (this.f5735v == null || F()) {
                    D(bArr, 2, z10);
                }
            } else if (i9 != 3) {
            } else {
                com.google.android.exoplayer2.util.a.e(this.f5735v);
                com.google.android.exoplayer2.util.a.e(this.f5734u);
                D(this.f5735v, 3, z10);
            }
        } else if (this.f5735v == null) {
            D(bArr, 1, z10);
        } else if (this.f5728o == 4 || F()) {
            long p10 = p();
            if (this.f5718e != 0 || p10 > 60) {
                if (p10 <= 0) {
                    u(new KeysExpiredException(), 2);
                    return;
                }
                this.f5728o = 4;
                n(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.f
                    @Override // com.google.android.exoplayer2.util.h
                    public final void accept(Object obj) {
                        ((s.a) obj).j();
                    }
                });
                return;
            }
            com.google.android.exoplayer2.util.r.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + p10);
            D(bArr, 2, z10);
        }
    }

    private long p() {
        if (com.google.android.exoplayer2.i.f5999d.equals(this.f5726m)) {
            Pair pair = (Pair) com.google.android.exoplayer2.util.a.e(l0.b(this));
            return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
        }
        return Long.MAX_VALUE;
    }

    private boolean r() {
        int i9 = this.f5728o;
        return i9 == 3 || i9 == 4;
    }

    private void u(final Exception exc, int i9) {
        this.f5733t = new DrmSession.DrmSessionException(exc, y.a(exc, i9));
        com.google.android.exoplayer2.util.r.d("DefaultDrmSession", "DRM session error", exc);
        n(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.c
            @Override // com.google.android.exoplayer2.util.h
            public final void accept(Object obj) {
                ((s.a) obj).l(exc);
            }
        });
        if (this.f5728o != 4) {
            this.f5728o = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Object obj, Object obj2) {
        if (obj == this.f5736w && r()) {
            this.f5736w = null;
            if (obj2 instanceof Exception) {
                w((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f5718e == 3) {
                    this.f5715b.k((byte[]) com.google.android.exoplayer2.util.l0.j(this.f5735v), bArr);
                    n(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.e
                        @Override // com.google.android.exoplayer2.util.h
                        public final void accept(Object obj3) {
                            ((s.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] k10 = this.f5715b.k(this.f5734u, bArr);
                int i9 = this.f5718e;
                if ((i9 == 2 || (i9 == 0 && this.f5735v != null)) && k10 != null && k10.length != 0) {
                    this.f5735v = k10;
                }
                this.f5728o = 4;
                n(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.d
                    @Override // com.google.android.exoplayer2.util.h
                    public final void accept(Object obj3) {
                        ((s.a) obj3).h();
                    }
                });
            } catch (Exception e10) {
                w(e10, true);
            }
        }
    }

    private void w(Exception exc, boolean z10) {
        if (exc instanceof NotProvisionedException) {
            this.f5716c.b(this);
        } else {
            u(exc, z10 ? 1 : 2);
        }
    }

    private void x() {
        if (this.f5718e == 0 && this.f5728o == 4) {
            com.google.android.exoplayer2.util.l0.j(this.f5734u);
            o(false);
        }
    }

    public void A(Exception exc, boolean z10) {
        u(exc, z10 ? 1 : 3);
    }

    public void E() {
        this.f5737x = this.f5715b.b();
        ((c) com.google.android.exoplayer2.util.l0.j(this.f5731r)).b(0, com.google.android.exoplayer2.util.a.e(this.f5737x), true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void a(@Nullable s.a aVar) {
        if (this.f5729p < 0) {
            com.google.android.exoplayer2.util.r.c("DefaultDrmSession", "Session reference count less than zero: " + this.f5729p);
            this.f5729p = 0;
        }
        if (aVar != null) {
            this.f5722i.c(aVar);
        }
        int i9 = this.f5729p + 1;
        this.f5729p = i9;
        if (i9 == 1) {
            com.google.android.exoplayer2.util.a.f(this.f5728o == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f5730q = handlerThread;
            handlerThread.start();
            this.f5731r = new c(this.f5730q.getLooper());
            if (C()) {
                o(true);
            }
        } else if (aVar != null && r() && this.f5722i.count(aVar) == 1) {
            aVar.k(this.f5728o);
        }
        this.f5717d.a(this, this.f5729p);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void b(@Nullable s.a aVar) {
        int i9 = this.f5729p;
        if (i9 <= 0) {
            com.google.android.exoplayer2.util.r.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i10 = i9 - 1;
        this.f5729p = i10;
        if (i10 == 0) {
            this.f5728o = 0;
            ((e) com.google.android.exoplayer2.util.l0.j(this.f5727n)).removeCallbacksAndMessages(null);
            ((c) com.google.android.exoplayer2.util.l0.j(this.f5731r)).c();
            this.f5731r = null;
            ((HandlerThread) com.google.android.exoplayer2.util.l0.j(this.f5730q)).quit();
            this.f5730q = null;
            this.f5732s = null;
            this.f5733t = null;
            this.f5736w = null;
            this.f5737x = null;
            byte[] bArr = this.f5734u;
            if (bArr != null) {
                this.f5715b.j(bArr);
                this.f5734u = null;
            }
        }
        if (aVar != null) {
            this.f5722i.d(aVar);
            if (this.f5722i.count(aVar) == 0) {
                aVar.m();
            }
        }
        this.f5717d.b(this, this.f5729p);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID c() {
        return this.f5726m;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean d() {
        return this.f5719f;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final DrmSession.DrmSessionException e() {
        if (this.f5728o == 1) {
            return this.f5733t;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final b2.b f() {
        return this.f5732s;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public Map<String, String> g() {
        byte[] bArr = this.f5734u;
        if (bArr == null) {
            return null;
        }
        return this.f5715b.a(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.f5728o;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean h(String str) {
        return this.f5715b.i((byte[]) com.google.android.exoplayer2.util.a.h(this.f5734u), str);
    }

    public boolean q(byte[] bArr) {
        return Arrays.equals(this.f5734u, bArr);
    }

    public void y(int i9) {
        if (i9 != 2) {
            return;
        }
        x();
    }

    public void z() {
        if (C()) {
            o(true);
        }
    }
}
