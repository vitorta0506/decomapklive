package com.google.android.exoplayer2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.b;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.e2;
import com.google.android.exoplayer2.h1;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.q;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.tencent.thumbplayer.api.TPErrorCode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import v2.k0;
import v2.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v0 extends com.google.android.exoplayer2.e implements q {
    private final com.google.android.exoplayer2.d A;
    private final d3 B;
    private final o3 C;
    private final p3 D;
    private final long E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private boolean J;
    private int K;
    private z2 L;
    private v2.k0 M;
    private boolean N;
    private l2.b O;
    private x1 P;
    private x1 Q;
    @Nullable
    private k1 R;
    @Nullable
    private k1 S;
    @Nullable
    private AudioTrack T;
    @Nullable
    private Object U;
    @Nullable
    private Surface V;
    @Nullable
    private SurfaceHolder W;
    @Nullable
    private SphericalGLSurfaceView X;
    private boolean Y;
    @Nullable
    private TextureView Z;

    /* renamed from: a0  reason: collision with root package name */
    private int f7082a0;

    /* renamed from: b  reason: collision with root package name */
    final h3.c0 f7083b;

    /* renamed from: b0  reason: collision with root package name */
    private int f7084b0;

    /* renamed from: c  reason: collision with root package name */
    final l2.b f7085c;

    /* renamed from: c0  reason: collision with root package name */
    private int f7086c0;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f7087d;

    /* renamed from: d0  reason: collision with root package name */
    private int f7088d0;

    /* renamed from: e  reason: collision with root package name */
    private final Context f7089e;
    @Nullable

    /* renamed from: e0  reason: collision with root package name */
    private b2.e f7090e0;

    /* renamed from: f  reason: collision with root package name */
    private final l2 f7091f;
    @Nullable

    /* renamed from: f0  reason: collision with root package name */
    private b2.e f7092f0;

    /* renamed from: g  reason: collision with root package name */
    private final u2[] f7093g;

    /* renamed from: g0  reason: collision with root package name */
    private int f7094g0;

    /* renamed from: h  reason: collision with root package name */
    private final h3.b0 f7095h;

    /* renamed from: h0  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f7096h0;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.n f7097i;

    /* renamed from: i0  reason: collision with root package name */
    private float f7098i0;

    /* renamed from: j  reason: collision with root package name */
    private final h1.f f7099j;

    /* renamed from: j0  reason: collision with root package name */
    private boolean f7100j0;

    /* renamed from: k  reason: collision with root package name */
    private final h1 f7101k;

    /* renamed from: k0  reason: collision with root package name */
    private x2.e f7102k0;

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.q<l2.d> f7103l;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f7104l0;

    /* renamed from: m  reason: collision with root package name */
    private final CopyOnWriteArraySet<q.a> f7105m;

    /* renamed from: m0  reason: collision with root package name */
    private boolean f7106m0;

    /* renamed from: n  reason: collision with root package name */
    private final i3.b f7107n;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private PriorityTaskManager f7108n0;

    /* renamed from: o  reason: collision with root package name */
    private final List<e> f7109o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f7110o0;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f7111p;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f7112p0;

    /* renamed from: q  reason: collision with root package name */
    private final q.a f7113q;

    /* renamed from: q0  reason: collision with root package name */
    private o f7114q0;

    /* renamed from: r  reason: collision with root package name */
    private final a2.a f7115r;

    /* renamed from: r0  reason: collision with root package name */
    private k3.y f7116r0;

    /* renamed from: s  reason: collision with root package name */
    private final Looper f7117s;

    /* renamed from: s0  reason: collision with root package name */
    private x1 f7118s0;

    /* renamed from: t  reason: collision with root package name */
    private final j3.d f7119t;

    /* renamed from: t0  reason: collision with root package name */
    private i2 f7120t0;

    /* renamed from: u  reason: collision with root package name */
    private final long f7121u;

    /* renamed from: u0  reason: collision with root package name */
    private int f7122u0;

    /* renamed from: v  reason: collision with root package name */
    private final long f7123v;

    /* renamed from: v0  reason: collision with root package name */
    private int f7124v0;

    /* renamed from: w  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f7125w;

    /* renamed from: w0  reason: collision with root package name */
    private long f7126w0;

    /* renamed from: x  reason: collision with root package name */
    private final c f7127x;

    /* renamed from: y  reason: collision with root package name */
    private final d f7128y;

    /* renamed from: z  reason: collision with root package name */
    private final com.google.android.exoplayer2.b f7129z;

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static final class b {
        @DoNotInline
        public static a2.s1 a(Context context, v0 v0Var, boolean z10) {
            a2.q1 z02 = a2.q1.z0(context);
            if (z02 == null) {
                com.google.android.exoplayer2.util.r.i("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return new a2.s1(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z10) {
                v0Var.d1(z02);
            }
            return new a2.s1(z02.G0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class c implements k3.w, com.google.android.exoplayer2.audio.r, x2.m, o2.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, d.b, b.InterfaceC0078b, d3.b, q.a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void R(l2.d dVar) {
            dVar.K(v0.this.P);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void A(Surface surface) {
            v0.this.l2(surface);
        }

        @Override // com.google.android.exoplayer2.d3.b
        public void B(final int i9, final boolean z10) {
            v0.this.f7103l.l(30, new q.a() { // from class: com.google.android.exoplayer2.w0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).N(i9, z10);
                }
            });
        }

        @Override // k3.w
        public /* synthetic */ void C(k1 k1Var) {
            k3.l.a(this, k1Var);
        }

        @Override // com.google.android.exoplayer2.q.a
        public void D(boolean z10) {
            v0.this.s2();
        }

        @Override // com.google.android.exoplayer2.d.b
        public void E(float f10) {
            v0.this.e2();
        }

        @Override // com.google.android.exoplayer2.d.b
        public void F(int i9) {
            boolean A = v0.this.A();
            v0.this.p2(A, i9, v0.r1(A, i9));
        }

        @Override // com.google.android.exoplayer2.audio.r
        public /* synthetic */ void G(k1 k1Var) {
            com.google.android.exoplayer2.audio.g.a(this, k1Var);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void a(final boolean z10) {
            if (v0.this.f7100j0 == z10) {
                return;
            }
            v0.this.f7100j0 = z10;
            v0.this.f7103l.l(23, new q.a() { // from class: com.google.android.exoplayer2.d1
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).a(z10);
                }
            });
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void b(Exception exc) {
            v0.this.f7115r.b(exc);
        }

        @Override // k3.w
        public void c(String str) {
            v0.this.f7115r.c(str);
        }

        @Override // k3.w
        public void d(String str, long j10, long j11) {
            v0.this.f7115r.d(str, j10, j11);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void e(String str) {
            v0.this.f7115r.e(str);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void f(String str, long j10, long j11) {
            v0.this.f7115r.f(str, j10, j11);
        }

        @Override // o2.e
        public void g(final Metadata metadata) {
            v0 v0Var = v0.this;
            v0Var.f7118s0 = v0Var.f7118s0.b().I(metadata).F();
            x1 g12 = v0.this.g1();
            if (!g12.equals(v0.this.P)) {
                v0.this.P = g12;
                v0.this.f7103l.i(14, new q.a() { // from class: com.google.android.exoplayer2.y0
                    @Override // com.google.android.exoplayer2.util.q.a
                    public final void invoke(Object obj) {
                        v0.c.this.R((l2.d) obj);
                    }
                });
            }
            v0.this.f7103l.i(28, new q.a() { // from class: com.google.android.exoplayer2.z0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).g(Metadata.this);
                }
            });
            v0.this.f7103l.f();
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void h(k1 k1Var, @Nullable b2.g gVar) {
            v0.this.S = k1Var;
            v0.this.f7115r.h(k1Var, gVar);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void i(b2.e eVar) {
            v0.this.f7092f0 = eVar;
            v0.this.f7115r.i(eVar);
        }

        @Override // k3.w
        public void j(k1 k1Var, @Nullable b2.g gVar) {
            v0.this.R = k1Var;
            v0.this.f7115r.j(k1Var, gVar);
        }

        @Override // x2.m
        public void k(final x2.e eVar) {
            v0.this.f7102k0 = eVar;
            v0.this.f7103l.l(27, new q.a() { // from class: com.google.android.exoplayer2.c1
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).k(x2.e.this);
                }
            });
        }

        @Override // x2.m
        public void l(final List<x2.b> list) {
            v0.this.f7103l.l(27, new q.a() { // from class: com.google.android.exoplayer2.a1
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).l(list);
                }
            });
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void m(long j10) {
            v0.this.f7115r.m(j10);
        }

        @Override // k3.w
        public void n(final k3.y yVar) {
            v0.this.f7116r0 = yVar;
            v0.this.f7103l.l(25, new q.a() { // from class: com.google.android.exoplayer2.b1
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).n(k3.y.this);
                }
            });
        }

        @Override // k3.w
        public void o(Exception exc) {
            v0.this.f7115r.o(exc);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i9, int i10) {
            v0.this.k2(surfaceTexture);
            v0.this.Y1(i9, i10);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            v0.this.l2(null);
            v0.this.Y1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i9, int i10) {
            v0.this.Y1(i9, i10);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // k3.w
        public void p(b2.e eVar) {
            v0.this.f7115r.p(eVar);
            v0.this.R = null;
            v0.this.f7090e0 = null;
        }

        @Override // com.google.android.exoplayer2.d3.b
        public void q(int i9) {
            final o j12 = v0.j1(v0.this.B);
            if (j12.equals(v0.this.f7114q0)) {
                return;
            }
            v0.this.f7114q0 = j12;
            v0.this.f7103l.l(29, new q.a() { // from class: com.google.android.exoplayer2.x0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).I(o.this);
                }
            });
        }

        @Override // com.google.android.exoplayer2.b.InterfaceC0078b
        public void r() {
            v0.this.p2(false, -1, 3);
        }

        @Override // k3.w
        public void s(b2.e eVar) {
            v0.this.f7090e0 = eVar;
            v0.this.f7115r.s(eVar);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i9, int i10, int i11) {
            v0.this.Y1(i10, i11);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (v0.this.Y) {
                v0.this.l2(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (v0.this.Y) {
                v0.this.l2(null);
            }
            v0.this.Y1(0, 0);
        }

        @Override // k3.w
        public void t(int i9, long j10) {
            v0.this.f7115r.t(i9, j10);
        }

        @Override // k3.w
        public void u(Object obj, long j10) {
            v0.this.f7115r.u(obj, j10);
            if (v0.this.U == obj) {
                v0.this.f7103l.l(26, new q.a() { // from class: com.google.android.exoplayer2.e1
                    @Override // com.google.android.exoplayer2.util.q.a
                    public final void invoke(Object obj2) {
                        ((l2.d) obj2).O();
                    }
                });
            }
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void v(Exception exc) {
            v0.this.f7115r.v(exc);
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void w(b2.e eVar) {
            v0.this.f7115r.w(eVar);
            v0.this.S = null;
            v0.this.f7092f0 = null;
        }

        @Override // com.google.android.exoplayer2.audio.r
        public void x(int i9, long j10, long j11) {
            v0.this.f7115r.x(i9, j10, j11);
        }

        @Override // k3.w
        public void y(long j10, int i9) {
            v0.this.f7115r.y(j10, i9);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void z(Surface surface) {
            v0.this.l2(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements k3.i, l3.a, p2.b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private k3.i f7131a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private l3.a f7132b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private k3.i f7133c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private l3.a f7134d;

        private d() {
        }

        @Override // k3.i
        public void a(long j10, long j11, k1 k1Var, @Nullable MediaFormat mediaFormat) {
            k3.i iVar = this.f7133c;
            if (iVar != null) {
                iVar.a(j10, j11, k1Var, mediaFormat);
            }
            k3.i iVar2 = this.f7131a;
            if (iVar2 != null) {
                iVar2.a(j10, j11, k1Var, mediaFormat);
            }
        }

        @Override // l3.a
        public void b(long j10, float[] fArr) {
            l3.a aVar = this.f7134d;
            if (aVar != null) {
                aVar.b(j10, fArr);
            }
            l3.a aVar2 = this.f7132b;
            if (aVar2 != null) {
                aVar2.b(j10, fArr);
            }
        }

        @Override // l3.a
        public void d() {
            l3.a aVar = this.f7134d;
            if (aVar != null) {
                aVar.d();
            }
            l3.a aVar2 = this.f7132b;
            if (aVar2 != null) {
                aVar2.d();
            }
        }

        @Override // com.google.android.exoplayer2.p2.b
        public void k(int i9, @Nullable Object obj) {
            if (i9 == 7) {
                this.f7131a = (k3.i) obj;
            } else if (i9 == 8) {
                this.f7132b = (l3.a) obj;
            } else if (i9 != 10000) {
            } else {
                SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
                if (sphericalGLSurfaceView == null) {
                    this.f7133c = null;
                    this.f7134d = null;
                    return;
                }
                this.f7133c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f7134d = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e implements c2 {

        /* renamed from: a  reason: collision with root package name */
        private final Object f7135a;

        /* renamed from: b  reason: collision with root package name */
        private i3 f7136b;

        public e(Object obj, i3 i3Var) {
            this.f7135a = obj;
            this.f7136b = i3Var;
        }

        @Override // com.google.android.exoplayer2.c2
        public i3 a() {
            return this.f7136b;
        }

        @Override // com.google.android.exoplayer2.c2
        public Object getUid() {
            return this.f7135a;
        }
    }

    static {
        i1.a("goog.exo.exoplayer");
    }

    public v0(q.b bVar, @Nullable l2 l2Var) {
        a2.s1 a10;
        com.google.android.exoplayer2.util.g gVar = new com.google.android.exoplayer2.util.g();
        this.f7087d = gVar;
        try {
            com.google.android.exoplayer2.util.r.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + com.google.android.exoplayer2.util.l0.f6989e + "]");
            Context applicationContext = bVar.f6409a.getApplicationContext();
            this.f7089e = applicationContext;
            a2.a apply = bVar.f6417i.apply(bVar.f6410b);
            this.f7115r = apply;
            this.f7108n0 = bVar.f6419k;
            this.f7096h0 = bVar.f6420l;
            this.f7082a0 = bVar.f6425q;
            this.f7084b0 = bVar.f6426r;
            this.f7100j0 = bVar.f6424p;
            this.E = bVar.f6433y;
            c cVar = new c();
            this.f7127x = cVar;
            d dVar = new d();
            this.f7128y = dVar;
            Handler handler = new Handler(bVar.f6418j);
            u2[] a11 = bVar.f6412d.get().a(handler, cVar, cVar, cVar, cVar);
            this.f7093g = a11;
            com.google.android.exoplayer2.util.a.f(a11.length > 0);
            h3.b0 b0Var = bVar.f6414f.get();
            this.f7095h = b0Var;
            this.f7113q = bVar.f6413e.get();
            j3.d dVar2 = bVar.f6416h.get();
            this.f7119t = dVar2;
            this.f7111p = bVar.f6427s;
            this.L = bVar.f6428t;
            this.f7121u = bVar.f6429u;
            this.f7123v = bVar.f6430v;
            this.N = bVar.f6434z;
            Looper looper = bVar.f6418j;
            this.f7117s = looper;
            com.google.android.exoplayer2.util.d dVar3 = bVar.f6410b;
            this.f7125w = dVar3;
            v0 v0Var = l2Var == null ? this : l2Var;
            this.f7091f = v0Var;
            this.f7103l = new com.google.android.exoplayer2.util.q<>(looper, dVar3, new q.b() { // from class: com.google.android.exoplayer2.l0
                @Override // com.google.android.exoplayer2.util.q.b
                public final void a(Object obj, com.google.android.exoplayer2.util.l lVar) {
                    v0.this.A1((l2.d) obj, lVar);
                }
            });
            this.f7105m = new CopyOnWriteArraySet<>();
            this.f7109o = new ArrayList();
            this.M = new k0.a(0);
            h3.c0 c0Var = new h3.c0(new x2[a11.length], new h3.s[a11.length], n3.f6352b, null);
            this.f7083b = c0Var;
            this.f7107n = new i3.b();
            l2.b e10 = new l2.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).d(29, b0Var.e()).e();
            this.f7085c = e10;
            this.O = new l2.b.a().b(e10).a(4).a(10).e();
            this.f7097i = dVar3.d(looper, null);
            h1.f fVar = new h1.f() { // from class: com.google.android.exoplayer2.x
                @Override // com.google.android.exoplayer2.h1.f
                public final void a(h1.e eVar) {
                    v0.this.C1(eVar);
                }
            };
            this.f7099j = fVar;
            this.f7120t0 = i2.j(c0Var);
            apply.M(v0Var, looper);
            int i9 = com.google.android.exoplayer2.util.l0.f6985a;
            if (i9 < 31) {
                a10 = new a2.s1();
            } else {
                a10 = b.a(applicationContext, this, bVar.A);
            }
            h1 h1Var = new h1(a11, b0Var, c0Var, bVar.f6415g.get(), dVar2, this.F, this.G, apply, this.L, bVar.f6431w, bVar.f6432x, this.N, looper, dVar3, fVar, a10);
            this.f7101k = h1Var;
            this.f7098i0 = 1.0f;
            this.F = 0;
            x1 x1Var = x1.G;
            this.P = x1Var;
            this.Q = x1Var;
            this.f7118s0 = x1Var;
            this.f7122u0 = -1;
            if (i9 < 21) {
                this.f7094g0 = x1(0);
            } else {
                this.f7094g0 = com.google.android.exoplayer2.util.l0.C(applicationContext);
            }
            this.f7102k0 = x2.e.f59581b;
            this.f7104l0 = true;
            K(apply);
            dVar2.f(new Handler(looper), apply);
            e1(cVar);
            long j10 = bVar.f6411c;
            if (j10 > 0) {
                h1Var.t(j10);
            }
            com.google.android.exoplayer2.b bVar2 = new com.google.android.exoplayer2.b(bVar.f6409a, handler, cVar);
            this.f7129z = bVar2;
            bVar2.b(bVar.f6423o);
            com.google.android.exoplayer2.d dVar4 = new com.google.android.exoplayer2.d(bVar.f6409a, handler, cVar);
            this.A = dVar4;
            dVar4.m(bVar.f6421m ? this.f7096h0 : null);
            d3 d3Var = new d3(bVar.f6409a, handler, cVar);
            this.B = d3Var;
            d3Var.h(com.google.android.exoplayer2.util.l0.a0(this.f7096h0.f5492c));
            o3 o3Var = new o3(bVar.f6409a);
            this.C = o3Var;
            o3Var.a(bVar.f6422n != 0);
            p3 p3Var = new p3(bVar.f6409a);
            this.D = p3Var;
            p3Var.a(bVar.f6422n == 2);
            this.f7114q0 = j1(d3Var);
            this.f7116r0 = k3.y.f53629e;
            b0Var.i(this.f7096h0);
            d2(1, 10, Integer.valueOf(this.f7094g0));
            d2(2, 10, Integer.valueOf(this.f7094g0));
            d2(1, 3, this.f7096h0);
            d2(2, 4, Integer.valueOf(this.f7082a0));
            d2(2, 5, Integer.valueOf(this.f7084b0));
            d2(1, 9, Boolean.valueOf(this.f7100j0));
            d2(2, 7, dVar);
            d2(6, 8, dVar);
            gVar.e();
        } catch (Throwable th2) {
            this.f7087d.e();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A1(l2.d dVar, com.google.android.exoplayer2.util.l lVar) {
        dVar.f0(this.f7091f, new l2.c(lVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C1(final h1.e eVar) {
        this.f7097i.h(new Runnable() { // from class: com.google.android.exoplayer2.m0
            @Override // java.lang.Runnable
            public final void run() {
                v0.this.B1(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(l2.d dVar) {
        dVar.Z(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H1(l2.d dVar) {
        dVar.C(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I1(i2 i2Var, int i9, l2.d dVar) {
        dVar.F(i2Var.f6005a, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J1(int i9, l2.e eVar, l2.e eVar2, l2.d dVar) {
        dVar.U(i9);
        dVar.z(eVar, eVar2, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L1(i2 i2Var, l2.d dVar) {
        dVar.S(i2Var.f6010f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M1(i2 i2Var, l2.d dVar) {
        dVar.Z(i2Var.f6010f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N1(i2 i2Var, l2.d dVar) {
        dVar.W(i2Var.f6013i.f40386d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P1(i2 i2Var, l2.d dVar) {
        dVar.B(i2Var.f6011g);
        dVar.X(i2Var.f6011g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Q1(i2 i2Var, l2.d dVar) {
        dVar.g0(i2Var.f6016l, i2Var.f6009e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void R1(i2 i2Var, l2.d dVar) {
        dVar.G(i2Var.f6009e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void S1(i2 i2Var, int i9, l2.d dVar) {
        dVar.j0(i2Var.f6016l, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T1(i2 i2Var, l2.d dVar) {
        dVar.A(i2Var.f6017m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U1(i2 i2Var, l2.d dVar) {
        dVar.m0(y1(i2Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void V1(i2 i2Var, l2.d dVar) {
        dVar.q(i2Var.f6018n);
    }

    private i2 W1(i2 i2Var, i3 i3Var, @Nullable Pair<Object, Long> pair) {
        int i9;
        long j10;
        com.google.android.exoplayer2.util.a.a(i3Var.u() || pair != null);
        i3 i3Var2 = i2Var.f6005a;
        i2 i10 = i2Var.i(i3Var);
        if (i3Var.u()) {
            q.b k10 = i2.k();
            long w02 = com.google.android.exoplayer2.util.l0.w0(this.f7126w0);
            i2 b10 = i10.c(k10, w02, w02, w02, 0L, v2.q0.f58918d, this.f7083b, ImmutableList.of()).b(k10);
            b10.f6020p = b10.f6022r;
            return b10;
        }
        Object obj = i10.f6006b.f58906a;
        boolean z10 = !obj.equals(((Pair) com.google.android.exoplayer2.util.l0.j(pair)).first);
        q.b bVar = z10 ? new q.b(pair.first) : i10.f6006b;
        long longValue = ((Long) pair.second).longValue();
        long w03 = com.google.android.exoplayer2.util.l0.w0(J());
        if (!i3Var2.u()) {
            w03 -= i3Var2.l(obj, this.f7107n).q();
        }
        if (z10 || longValue < w03) {
            com.google.android.exoplayer2.util.a.f(!bVar.b());
            i2 b11 = i10.c(bVar, longValue, longValue, longValue, 0L, z10 ? v2.q0.f58918d : i10.f6012h, z10 ? this.f7083b : i10.f6013i, z10 ? ImmutableList.of() : i10.f6014j).b(bVar);
            b11.f6020p = longValue;
            return b11;
        }
        if (i9 == 0) {
            int f10 = i3Var.f(i10.f6015k.f58906a);
            if (f10 == -1 || i3Var.j(f10, this.f7107n).f6028c != i3Var.l(bVar.f58906a, this.f7107n).f6028c) {
                i3Var.l(bVar.f58906a, this.f7107n);
                if (bVar.b()) {
                    j10 = this.f7107n.e(bVar.f58907b, bVar.f58908c);
                } else {
                    j10 = this.f7107n.f6029d;
                }
                i10 = i10.c(bVar, i10.f6022r, i10.f6022r, i10.f6008d, j10 - i10.f6022r, i10.f6012h, i10.f6013i, i10.f6014j).b(bVar);
                i10.f6020p = j10;
            }
        } else {
            com.google.android.exoplayer2.util.a.f(!bVar.b());
            long max = Math.max(0L, i10.f6021q - (longValue - w03));
            long j11 = i10.f6020p;
            if (i10.f6015k.equals(i10.f6006b)) {
                j11 = longValue + max;
            }
            i10 = i10.c(bVar, longValue, longValue, longValue, max, i10.f6012h, i10.f6013i, i10.f6014j);
            i10.f6020p = j11;
        }
        return i10;
    }

    @Nullable
    private Pair<Object, Long> X1(i3 i3Var, int i9, long j10) {
        if (i3Var.u()) {
            this.f7122u0 = i9;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.f7126w0 = j10;
            this.f7124v0 = 0;
            return null;
        }
        if (i9 == -1 || i9 >= i3Var.t()) {
            i9 = i3Var.e(this.G);
            j10 = i3Var.r(i9, this.f5851a).d();
        }
        return i3Var.n(this.f5851a, this.f7107n, i9, com.google.android.exoplayer2.util.l0.w0(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(final int i9, final int i10) {
        if (i9 == this.f7086c0 && i10 == this.f7088d0) {
            return;
        }
        this.f7086c0 = i9;
        this.f7088d0 = i10;
        this.f7103l.l(24, new q.a() { // from class: com.google.android.exoplayer2.n0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((l2.d) obj).R(i9, i10);
            }
        });
    }

    private long Z1(i3 i3Var, q.b bVar, long j10) {
        i3Var.l(bVar.f58906a, this.f7107n);
        return j10 + this.f7107n.q();
    }

    private i2 a2(int i9, int i10) {
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.a(i9 >= 0 && i10 >= i9 && i10 <= this.f7109o.size());
        int M = M();
        i3 t10 = t();
        int size = this.f7109o.size();
        this.H++;
        b2(i9, i10);
        i3 k12 = k1();
        i2 W1 = W1(this.f7120t0, k12, q1(t10, k12));
        int i11 = W1.f6009e;
        if (i11 != 1 && i11 != 4 && i9 < i10 && i10 == size && M >= W1.f6005a.t()) {
            z10 = true;
        }
        if (z10) {
            W1 = W1.g(4);
        }
        this.f7101k.m0(i9, i10, this.M);
        return W1;
    }

    private void b2(int i9, int i10) {
        for (int i11 = i10 - 1; i11 >= i9; i11--) {
            this.f7109o.remove(i11);
        }
        this.M = this.M.b(i9, i10);
    }

    private void c2() {
        if (this.X != null) {
            l1(this.f7128y).n(10000).m(null).l();
            this.X.i(this.f7127x);
            this.X = null;
        }
        TextureView textureView = this.Z;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f7127x) {
                com.google.android.exoplayer2.util.r.i("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.Z.setSurfaceTextureListener(null);
            }
            this.Z = null;
        }
        SurfaceHolder surfaceHolder = this.W;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f7127x);
            this.W = null;
        }
    }

    private void d2(int i9, int i10, @Nullable Object obj) {
        u2[] u2VarArr;
        for (u2 u2Var : this.f7093g) {
            if (u2Var.f() == i9) {
                l1(u2Var).n(i10).m(obj).l();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        d2(1, 2, Float.valueOf(this.f7098i0 * this.A.g()));
    }

    private List<e2.c> f1(int i9, List<v2.q> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            e2.c cVar = new e2.c(list.get(i10), this.f7111p);
            arrayList.add(cVar);
            this.f7109o.add(i10 + i9, new e(cVar.f5875b, cVar.f5874a.L()));
        }
        this.M = this.M.h(i9, arrayList.size());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public x1 g1() {
        i3 t10 = t();
        if (t10.u()) {
            return this.f7118s0;
        }
        return this.f7118s0.b().H(t10.r(M(), this.f5851a).f6043c.f6456e).F();
    }

    private void i2(List<v2.q> list, int i9, long j10, boolean z10) {
        int i10;
        long j11;
        int p12 = p1();
        long currentPosition = getCurrentPosition();
        boolean z11 = true;
        this.H++;
        if (!this.f7109o.isEmpty()) {
            b2(0, this.f7109o.size());
        }
        List<e2.c> f12 = f1(0, list);
        i3 k12 = k1();
        if (!k12.u() && i9 >= k12.t()) {
            throw new IllegalSeekPositionException(k12, i9, j10);
        }
        if (z10) {
            j11 = -9223372036854775807L;
            i10 = k12.e(this.G);
        } else if (i9 == -1) {
            i10 = p12;
            j11 = currentPosition;
        } else {
            i10 = i9;
            j11 = j10;
        }
        i2 W1 = W1(this.f7120t0, k12, X1(k12, i10, j11));
        int i11 = W1.f6009e;
        if (i10 != -1 && i11 != 1) {
            i11 = (k12.u() || i10 >= k12.t()) ? 4 : 2;
        }
        i2 g10 = W1.g(i11);
        this.f7101k.L0(f12, i10, com.google.android.exoplayer2.util.l0.w0(j11), this.M);
        q2(g10, 0, 1, false, (this.f7120t0.f6006b.f58906a.equals(g10.f6006b.f58906a) || this.f7120t0.f6005a.u()) ? false : false, 4, o1(g10), -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o j1(d3 d3Var) {
        return new o(0, d3Var.d(), d3Var.c());
    }

    private void j2(SurfaceHolder surfaceHolder) {
        this.Y = false;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f7127x);
        Surface surface = this.W.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceFrame = this.W.getSurfaceFrame();
            Y1(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        Y1(0, 0);
    }

    private i3 k1() {
        return new q2(this.f7109o, this.M);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        l2(surface);
        this.V = surface;
    }

    private p2 l1(p2.b bVar) {
        int p12 = p1();
        h1 h1Var = this.f7101k;
        return new p2(h1Var, bVar, this.f7120t0.f6005a, p12 == -1 ? 0 : p12, this.f7125w, h1Var.A());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2(@Nullable Object obj) {
        boolean z10;
        ArrayList<p2> arrayList = new ArrayList();
        u2[] u2VarArr = this.f7093g;
        int length = u2VarArr.length;
        int i9 = 0;
        while (true) {
            z10 = true;
            if (i9 >= length) {
                break;
            }
            u2 u2Var = u2VarArr[i9];
            if (u2Var.f() == 2) {
                arrayList.add(l1(u2Var).n(1).m(obj).l());
            }
            i9++;
        }
        Object obj2 = this.U;
        if (obj2 == null || obj2 == obj) {
            z10 = false;
        } else {
            try {
                for (p2 p2Var : arrayList) {
                    p2Var.a(this.E);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z10 = false;
            Object obj3 = this.U;
            Surface surface = this.V;
            if (obj3 == surface) {
                surface.release();
                this.V = null;
            }
        }
        this.U = obj;
        if (z10) {
            n2(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    private Pair<Boolean, Integer> m1(i2 i2Var, i2 i2Var2, boolean z10, int i9, boolean z11) {
        i3 i3Var = i2Var2.f6005a;
        i3 i3Var2 = i2Var.f6005a;
        if (i3Var2.u() && i3Var.u()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i10 = 3;
        if (i3Var2.u() != i3Var.u()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (!i3Var.r(i3Var.l(i2Var2.f6006b.f58906a, this.f7107n).f6028c, this.f5851a).f6041a.equals(i3Var2.r(i3Var2.l(i2Var.f6006b.f58906a, this.f7107n).f6028c, this.f5851a).f6041a)) {
            if (z10 && i9 == 0) {
                i10 = 1;
            } else if (z10 && i9 == 1) {
                i10 = 2;
            } else if (!z11) {
                throw new IllegalStateException();
            }
            return new Pair<>(Boolean.TRUE, Integer.valueOf(i10));
        } else if (z10 && i9 == 0 && i2Var2.f6006b.f58909d < i2Var.f6006b.f58909d) {
            return new Pair<>(Boolean.TRUE, 0);
        } else {
            return new Pair<>(Boolean.FALSE, -1);
        }
    }

    private void n2(boolean z10, @Nullable ExoPlaybackException exoPlaybackException) {
        i2 b10;
        if (z10) {
            b10 = a2(0, this.f7109o.size()).e(null);
        } else {
            i2 i2Var = this.f7120t0;
            b10 = i2Var.b(i2Var.f6006b);
            b10.f6020p = b10.f6022r;
            b10.f6021q = 0L;
        }
        i2 g10 = b10.g(1);
        if (exoPlaybackException != null) {
            g10 = g10.e(exoPlaybackException);
        }
        i2 i2Var2 = g10;
        this.H++;
        this.f7101k.f1();
        q2(i2Var2, 0, 1, false, i2Var2.f6005a.u() && !this.f7120t0.f6005a.u(), 4, o1(i2Var2), -1);
    }

    private long o1(i2 i2Var) {
        if (i2Var.f6005a.u()) {
            return com.google.android.exoplayer2.util.l0.w0(this.f7126w0);
        }
        if (i2Var.f6006b.b()) {
            return i2Var.f6022r;
        }
        return Z1(i2Var.f6005a, i2Var.f6006b, i2Var.f6022r);
    }

    private void o2() {
        l2.b bVar = this.O;
        l2.b E = com.google.android.exoplayer2.util.l0.E(this.f7091f, this.f7085c);
        this.O = E;
        if (E.equals(bVar)) {
            return;
        }
        this.f7103l.i(13, new q.a() { // from class: com.google.android.exoplayer2.p0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                v0.this.H1((l2.d) obj);
            }
        });
    }

    private int p1() {
        if (this.f7120t0.f6005a.u()) {
            return this.f7122u0;
        }
        i2 i2Var = this.f7120t0;
        return i2Var.f6005a.l(i2Var.f6006b.f58906a, this.f7107n).f6028c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p2(boolean z10, int i9, int i10) {
        int i11 = 0;
        boolean z11 = z10 && i9 != -1;
        if (z11 && i9 != 1) {
            i11 = 1;
        }
        i2 i2Var = this.f7120t0;
        if (i2Var.f6016l == z11 && i2Var.f6017m == i11) {
            return;
        }
        this.H++;
        i2 d10 = i2Var.d(z11, i11);
        this.f7101k.O0(z11, i11);
        q2(d10, 0, i10, false, false, 5, -9223372036854775807L, -1);
    }

    @Nullable
    private Pair<Object, Long> q1(i3 i3Var, i3 i3Var2) {
        long J = J();
        if (!i3Var.u() && !i3Var2.u()) {
            Pair<Object, Long> n9 = i3Var.n(this.f5851a, this.f7107n, M(), com.google.android.exoplayer2.util.l0.w0(J));
            Object obj = ((Pair) com.google.android.exoplayer2.util.l0.j(n9)).first;
            if (i3Var2.f(obj) != -1) {
                return n9;
            }
            Object x02 = h1.x0(this.f5851a, this.f7107n, this.F, this.G, obj, i3Var, i3Var2);
            if (x02 != null) {
                i3Var2.l(x02, this.f7107n);
                int i9 = this.f7107n.f6028c;
                return X1(i3Var2, i9, i3Var2.r(i9, this.f5851a).d());
            }
            return X1(i3Var2, -1, -9223372036854775807L);
        }
        boolean z10 = !i3Var.u() && i3Var2.u();
        int p12 = z10 ? -1 : p1();
        if (z10) {
            J = -9223372036854775807L;
        }
        return X1(i3Var2, p12, J);
    }

    private void q2(final i2 i2Var, final int i9, final int i10, boolean z10, boolean z11, final int i11, long j10, int i12) {
        i2 i2Var2 = this.f7120t0;
        this.f7120t0 = i2Var;
        Pair<Boolean, Integer> m12 = m1(i2Var, i2Var2, z11, i11, !i2Var2.f6005a.equals(i2Var.f6005a));
        boolean booleanValue = ((Boolean) m12.first).booleanValue();
        final int intValue = ((Integer) m12.second).intValue();
        x1 x1Var = this.P;
        if (booleanValue) {
            r3 = i2Var.f6005a.u() ? null : i2Var.f6005a.r(i2Var.f6005a.l(i2Var.f6006b.f58906a, this.f7107n).f6028c, this.f5851a).f6043c;
            this.f7118s0 = x1.G;
        }
        if (booleanValue || !i2Var2.f6014j.equals(i2Var.f6014j)) {
            this.f7118s0 = this.f7118s0.b().J(i2Var.f6014j).F();
            x1Var = g1();
        }
        boolean z12 = !x1Var.equals(this.P);
        this.P = x1Var;
        boolean z13 = i2Var2.f6016l != i2Var.f6016l;
        boolean z14 = i2Var2.f6009e != i2Var.f6009e;
        if (z14 || z13) {
            s2();
        }
        boolean z15 = i2Var2.f6011g;
        boolean z16 = i2Var.f6011g;
        boolean z17 = z15 != z16;
        if (z17) {
            r2(z16);
        }
        if (!i2Var2.f6005a.equals(i2Var.f6005a)) {
            this.f7103l.i(0, new q.a() { // from class: com.google.android.exoplayer2.e0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.I1(i2.this, i9, (l2.d) obj);
                }
            });
        }
        if (z11) {
            final l2.e u12 = u1(i11, i2Var2, i12);
            final l2.e t12 = t1(j10);
            this.f7103l.i(11, new q.a() { // from class: com.google.android.exoplayer2.o0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.J1(i11, u12, t12, (l2.d) obj);
                }
            });
        }
        if (booleanValue) {
            this.f7103l.i(1, new q.a() { // from class: com.google.android.exoplayer2.q0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).h0(s1.this, intValue);
                }
            });
        }
        if (i2Var2.f6010f != i2Var.f6010f) {
            this.f7103l.i(10, new q.a() { // from class: com.google.android.exoplayer2.s0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.L1(i2.this, (l2.d) obj);
                }
            });
            if (i2Var.f6010f != null) {
                this.f7103l.i(10, new q.a() { // from class: com.google.android.exoplayer2.b0
                    @Override // com.google.android.exoplayer2.util.q.a
                    public final void invoke(Object obj) {
                        v0.M1(i2.this, (l2.d) obj);
                    }
                });
            }
        }
        h3.c0 c0Var = i2Var2.f6013i;
        h3.c0 c0Var2 = i2Var.f6013i;
        if (c0Var != c0Var2) {
            this.f7095h.f(c0Var2.f40387e);
            this.f7103l.i(2, new q.a() { // from class: com.google.android.exoplayer2.u0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.N1(i2.this, (l2.d) obj);
                }
            });
        }
        if (z12) {
            final x1 x1Var2 = this.P;
            this.f7103l.i(14, new q.a() { // from class: com.google.android.exoplayer2.r0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).K(x1.this);
                }
            });
        }
        if (z17) {
            this.f7103l.i(3, new q.a() { // from class: com.google.android.exoplayer2.d0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.P1(i2.this, (l2.d) obj);
                }
            });
        }
        if (z14 || z13) {
            this.f7103l.i(-1, new q.a() { // from class: com.google.android.exoplayer2.c0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.Q1(i2.this, (l2.d) obj);
                }
            });
        }
        if (z14) {
            this.f7103l.i(4, new q.a() { // from class: com.google.android.exoplayer2.t0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.R1(i2.this, (l2.d) obj);
                }
            });
        }
        if (z13) {
            this.f7103l.i(5, new q.a() { // from class: com.google.android.exoplayer2.f0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.S1(i2.this, i10, (l2.d) obj);
                }
            });
        }
        if (i2Var2.f6017m != i2Var.f6017m) {
            this.f7103l.i(6, new q.a() { // from class: com.google.android.exoplayer2.y
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.T1(i2.this, (l2.d) obj);
                }
            });
        }
        if (y1(i2Var2) != y1(i2Var)) {
            this.f7103l.i(7, new q.a() { // from class: com.google.android.exoplayer2.a0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.U1(i2.this, (l2.d) obj);
                }
            });
        }
        if (!i2Var2.f6018n.equals(i2Var.f6018n)) {
            this.f7103l.i(12, new q.a() { // from class: com.google.android.exoplayer2.z
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.V1(i2.this, (l2.d) obj);
                }
            });
        }
        if (z10) {
            this.f7103l.i(-1, new q.a() { // from class: com.google.android.exoplayer2.k0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).Y();
                }
            });
        }
        o2();
        this.f7103l.f();
        if (i2Var2.f6019o != i2Var.f6019o) {
            Iterator<q.a> it = this.f7105m.iterator();
            while (it.hasNext()) {
                it.next().D(i2Var.f6019o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r1(boolean z10, int i9) {
        return (!z10 || i9 == 1) ? 1 : 2;
    }

    private void r2(boolean z10) {
        PriorityTaskManager priorityTaskManager = this.f7108n0;
        if (priorityTaskManager != null) {
            if (z10 && !this.f7110o0) {
                priorityTaskManager.a(0);
                this.f7110o0 = true;
            } else if (z10 || !this.f7110o0) {
            } else {
                priorityTaskManager.b(0);
                this.f7110o0 = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s2() {
        int playbackState = getPlaybackState();
        boolean z10 = true;
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.C.b((!A() || n1()) ? false : false);
                this.D.b(A());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.C.b(false);
        this.D.b(false);
    }

    private l2.e t1(long j10) {
        s1 s1Var;
        Object obj;
        int i9;
        int M = M();
        Object obj2 = null;
        if (this.f7120t0.f6005a.u()) {
            s1Var = null;
            obj = null;
            i9 = -1;
        } else {
            i2 i2Var = this.f7120t0;
            Object obj3 = i2Var.f6006b.f58906a;
            i2Var.f6005a.l(obj3, this.f7107n);
            i9 = this.f7120t0.f6005a.f(obj3);
            obj = obj3;
            obj2 = this.f7120t0.f6005a.r(M, this.f5851a).f6041a;
            s1Var = this.f5851a.f6043c;
        }
        long P0 = com.google.android.exoplayer2.util.l0.P0(j10);
        long P02 = this.f7120t0.f6006b.b() ? com.google.android.exoplayer2.util.l0.P0(v1(this.f7120t0)) : P0;
        q.b bVar = this.f7120t0.f6006b;
        return new l2.e(obj2, M, s1Var, obj, i9, P0, P02, bVar.f58907b, bVar.f58908c);
    }

    private void t2() {
        this.f7087d.b();
        if (Thread.currentThread() != u().getThread()) {
            String z10 = com.google.android.exoplayer2.util.l0.z("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), u().getThread().getName());
            if (!this.f7104l0) {
                com.google.android.exoplayer2.util.r.j("ExoPlayerImpl", z10, this.f7106m0 ? null : new IllegalStateException());
                this.f7106m0 = true;
                return;
            }
            throw new IllegalStateException(z10);
        }
    }

    private l2.e u1(int i9, i2 i2Var, int i10) {
        int i11;
        Object obj;
        s1 s1Var;
        Object obj2;
        int i12;
        long j10;
        long v12;
        i3.b bVar = new i3.b();
        if (i2Var.f6005a.u()) {
            i11 = i10;
            obj = null;
            s1Var = null;
            obj2 = null;
            i12 = -1;
        } else {
            Object obj3 = i2Var.f6006b.f58906a;
            i2Var.f6005a.l(obj3, bVar);
            int i13 = bVar.f6028c;
            i11 = i13;
            obj2 = obj3;
            i12 = i2Var.f6005a.f(obj3);
            obj = i2Var.f6005a.r(i13, this.f5851a).f6041a;
            s1Var = this.f5851a.f6043c;
        }
        if (i9 == 0) {
            if (i2Var.f6006b.b()) {
                q.b bVar2 = i2Var.f6006b;
                j10 = bVar.e(bVar2.f58907b, bVar2.f58908c);
                v12 = v1(i2Var);
            } else {
                if (i2Var.f6006b.f58910e != -1) {
                    j10 = v1(this.f7120t0);
                } else {
                    j10 = bVar.f6030e + bVar.f6029d;
                }
                v12 = j10;
            }
        } else if (i2Var.f6006b.b()) {
            j10 = i2Var.f6022r;
            v12 = v1(i2Var);
        } else {
            j10 = bVar.f6030e + i2Var.f6022r;
            v12 = j10;
        }
        long P0 = com.google.android.exoplayer2.util.l0.P0(j10);
        long P02 = com.google.android.exoplayer2.util.l0.P0(v12);
        q.b bVar3 = i2Var.f6006b;
        return new l2.e(obj, i11, s1Var, obj2, i12, P0, P02, bVar3.f58907b, bVar3.f58908c);
    }

    private static long v1(i2 i2Var) {
        i3.d dVar = new i3.d();
        i3.b bVar = new i3.b();
        i2Var.f6005a.l(i2Var.f6006b.f58906a, bVar);
        if (i2Var.f6007c == -9223372036854775807L) {
            return i2Var.f6005a.r(bVar.f6028c, dVar).e();
        }
        return bVar.q() + i2Var.f6007c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w1 */
    public void B1(h1.e eVar) {
        long j10;
        boolean z10;
        long j11;
        int i9 = this.H - eVar.f5980c;
        this.H = i9;
        boolean z11 = true;
        if (eVar.f5981d) {
            this.I = eVar.f5982e;
            this.J = true;
        }
        if (eVar.f5983f) {
            this.K = eVar.f5984g;
        }
        if (i9 == 0) {
            i3 i3Var = eVar.f5979b.f6005a;
            if (!this.f7120t0.f6005a.u() && i3Var.u()) {
                this.f7122u0 = -1;
                this.f7126w0 = 0L;
                this.f7124v0 = 0;
            }
            if (!i3Var.u()) {
                List<i3> J = ((q2) i3Var).J();
                com.google.android.exoplayer2.util.a.f(J.size() == this.f7109o.size());
                for (int i10 = 0; i10 < J.size(); i10++) {
                    this.f7109o.get(i10).f7136b = J.get(i10);
                }
            }
            if (this.J) {
                if (eVar.f5979b.f6006b.equals(this.f7120t0.f6006b) && eVar.f5979b.f6008d == this.f7120t0.f6022r) {
                    z11 = false;
                }
                if (z11) {
                    if (!i3Var.u() && !eVar.f5979b.f6006b.b()) {
                        i2 i2Var = eVar.f5979b;
                        j11 = Z1(i3Var, i2Var.f6006b, i2Var.f6008d);
                    } else {
                        j11 = eVar.f5979b.f6008d;
                    }
                    j10 = j11;
                } else {
                    j10 = -9223372036854775807L;
                }
                z10 = z11;
            } else {
                j10 = -9223372036854775807L;
                z10 = false;
            }
            this.J = false;
            q2(eVar.f5979b, 1, this.K, false, z10, this.I, j10, -1);
        }
    }

    private int x1(int i9) {
        AudioTrack audioTrack = this.T;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i9) {
            this.T.release();
            this.T = null;
        }
        if (this.T == null) {
            this.T = new AudioTrack(3, TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY, 4, 2, 2, 0, i9);
        }
        return this.T.getAudioSessionId();
    }

    private static boolean y1(i2 i2Var) {
        return i2Var.f6009e == 3 && i2Var.f6016l && i2Var.f6017m == 0;
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean A() {
        t2();
        return this.f7120t0.f6016l;
    }

    @Override // com.google.android.exoplayer2.l2
    public void B(final boolean z10) {
        t2();
        if (this.G != z10) {
            this.G = z10;
            this.f7101k.V0(z10);
            this.f7103l.i(9, new q.a() { // from class: com.google.android.exoplayer2.h0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).L(z10);
                }
            });
            o2();
            this.f7103l.f();
        }
    }

    @Override // com.google.android.exoplayer2.l2
    public void C(boolean z10) {
        t2();
        this.A.p(A(), 1);
        n2(z10, null);
        this.f7102k0 = x2.e.f59581b;
    }

    @Override // com.google.android.exoplayer2.l2
    public long D() {
        t2();
        return 3000L;
    }

    @Override // com.google.android.exoplayer2.l2
    public int E() {
        t2();
        if (this.f7120t0.f6005a.u()) {
            return this.f7124v0;
        }
        i2 i2Var = this.f7120t0;
        return i2Var.f6005a.f(i2Var.f6006b.f58906a);
    }

    @Override // com.google.android.exoplayer2.l2
    public void F(@Nullable TextureView textureView) {
        t2();
        if (textureView == null || textureView != this.Z) {
            return;
        }
        h1();
    }

    @Override // com.google.android.exoplayer2.l2
    public int H() {
        t2();
        if (e()) {
            return this.f7120t0.f6006b.f58908c;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.l2
    public long I() {
        t2();
        return this.f7123v;
    }

    @Override // com.google.android.exoplayer2.l2
    public long J() {
        t2();
        if (e()) {
            i2 i2Var = this.f7120t0;
            i2Var.f6005a.l(i2Var.f6006b.f58906a, this.f7107n);
            i2 i2Var2 = this.f7120t0;
            if (i2Var2.f6007c == -9223372036854775807L) {
                return i2Var2.f6005a.r(M(), this.f5851a).d();
            }
            return this.f7107n.p() + com.google.android.exoplayer2.util.l0.P0(this.f7120t0.f6007c);
        }
        return getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.l2
    public void K(l2.d dVar) {
        com.google.android.exoplayer2.util.a.e(dVar);
        this.f7103l.c(dVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public int M() {
        t2();
        int p12 = p1();
        if (p12 == -1) {
            return 0;
        }
        return p12;
    }

    @Override // com.google.android.exoplayer2.l2
    public void N(@Nullable SurfaceView surfaceView) {
        t2();
        i1(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean O() {
        t2();
        return this.G;
    }

    @Override // com.google.android.exoplayer2.l2
    public long P() {
        t2();
        if (this.f7120t0.f6005a.u()) {
            return this.f7126w0;
        }
        i2 i2Var = this.f7120t0;
        if (i2Var.f6015k.f58909d != i2Var.f6006b.f58909d) {
            return i2Var.f6005a.r(M(), this.f5851a).f();
        }
        long j10 = i2Var.f6020p;
        if (this.f7120t0.f6015k.b()) {
            i2 i2Var2 = this.f7120t0;
            i3.b l10 = i2Var2.f6005a.l(i2Var2.f6015k.f58906a, this.f7107n);
            long i9 = l10.i(this.f7120t0.f6015k.f58907b);
            j10 = i9 == Long.MIN_VALUE ? l10.f6029d : i9;
        }
        i2 i2Var3 = this.f7120t0;
        return com.google.android.exoplayer2.util.l0.P0(Z1(i2Var3.f6005a, i2Var3.f6015k, j10));
    }

    @Override // com.google.android.exoplayer2.l2
    public x1 S() {
        t2();
        return this.P;
    }

    @Override // com.google.android.exoplayer2.l2
    public long T() {
        t2();
        return this.f7121u;
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void a(v2.q qVar) {
        t2();
        f2(qVar);
        prepare();
    }

    @Override // com.google.android.exoplayer2.l2
    public k2 b() {
        t2();
        return this.f7120t0.f6018n;
    }

    @Override // com.google.android.exoplayer2.l2
    public void d(k2 k2Var) {
        t2();
        if (k2Var == null) {
            k2Var = k2.f6152d;
        }
        if (this.f7120t0.f6018n.equals(k2Var)) {
            return;
        }
        i2 f10 = this.f7120t0.f(k2Var);
        this.H++;
        this.f7101k.Q0(k2Var);
        q2(f10, 0, 1, false, false, 5, -9223372036854775807L, -1);
    }

    public void d1(a2.c cVar) {
        com.google.android.exoplayer2.util.a.e(cVar);
        this.f7115r.b0(cVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean e() {
        t2();
        return this.f7120t0.f6006b.b();
    }

    public void e1(q.a aVar) {
        this.f7105m.add(aVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public long f() {
        t2();
        return com.google.android.exoplayer2.util.l0.P0(this.f7120t0.f6021q);
    }

    public void f2(v2.q qVar) {
        t2();
        g2(Collections.singletonList(qVar));
    }

    @Override // com.google.android.exoplayer2.l2
    public void g(l2.d dVar) {
        com.google.android.exoplayer2.util.a.e(dVar);
        this.f7103l.k(dVar);
    }

    public void g2(List<v2.q> list) {
        t2();
        h2(list, true);
    }

    @Override // com.google.android.exoplayer2.l2
    public long getCurrentPosition() {
        t2();
        return com.google.android.exoplayer2.util.l0.P0(o1(this.f7120t0));
    }

    @Override // com.google.android.exoplayer2.l2
    public long getDuration() {
        t2();
        if (e()) {
            i2 i2Var = this.f7120t0;
            q.b bVar = i2Var.f6006b;
            i2Var.f6005a.l(bVar.f58906a, this.f7107n);
            return com.google.android.exoplayer2.util.l0.P0(this.f7107n.e(bVar.f58907b, bVar.f58908c));
        }
        return c();
    }

    @Override // com.google.android.exoplayer2.l2
    public int getPlaybackState() {
        t2();
        return this.f7120t0.f6009e;
    }

    @Override // com.google.android.exoplayer2.l2
    public int getRepeatMode() {
        t2();
        return this.F;
    }

    @Override // com.google.android.exoplayer2.l2
    public k3.y getVideoSize() {
        t2();
        return this.f7116r0;
    }

    @Override // com.google.android.exoplayer2.l2
    public void h(@Nullable SurfaceView surfaceView) {
        t2();
        if (surfaceView instanceof k3.h) {
            c2();
            l2(surfaceView);
            j2(surfaceView.getHolder());
        } else if (surfaceView instanceof SphericalGLSurfaceView) {
            c2();
            this.X = (SphericalGLSurfaceView) surfaceView;
            l1(this.f7128y).n(10000).m(this.X).l();
            this.X.d(this.f7127x);
            l2(this.X.getVideoSurface());
            j2(surfaceView.getHolder());
        } else {
            m2(surfaceView == null ? null : surfaceView.getHolder());
        }
    }

    public void h1() {
        t2();
        c2();
        l2(null);
        Y1(0, 0);
    }

    public void h2(List<v2.q> list, boolean z10) {
        t2();
        i2(list, -1, -9223372036854775807L, z10);
    }

    @Override // com.google.android.exoplayer2.l2
    public void i(final h3.z zVar) {
        t2();
        if (!this.f7095h.e() || zVar.equals(this.f7095h.b())) {
            return;
        }
        this.f7095h.j(zVar);
        this.f7103l.l(19, new q.a() { // from class: com.google.android.exoplayer2.g0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((l2.d) obj).T(h3.z.this);
            }
        });
    }

    public void i1(@Nullable SurfaceHolder surfaceHolder) {
        t2();
        if (surfaceHolder == null || surfaceHolder != this.W) {
            return;
        }
        h1();
    }

    @Override // com.google.android.exoplayer2.l2
    public void l(boolean z10) {
        t2();
        int p10 = this.A.p(z10, getPlaybackState());
        p2(z10, p10, r1(z10, p10));
    }

    @Override // com.google.android.exoplayer2.l2
    public n3 m() {
        t2();
        return this.f7120t0.f6013i.f40386d;
    }

    public void m2(@Nullable SurfaceHolder surfaceHolder) {
        t2();
        if (surfaceHolder == null) {
            h1();
            return;
        }
        c2();
        this.Y = true;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f7127x);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            l2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            Y1(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        l2(null);
        Y1(0, 0);
    }

    public boolean n1() {
        t2();
        return this.f7120t0.f6019o;
    }

    @Override // com.google.android.exoplayer2.l2
    public x2.e o() {
        t2();
        return this.f7102k0;
    }

    @Override // com.google.android.exoplayer2.l2
    public int p() {
        t2();
        if (e()) {
            return this.f7120t0.f6006b.f58907b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.l2
    public void prepare() {
        t2();
        boolean A = A();
        int p10 = this.A.p(A, 2);
        p2(A, p10, r1(A, p10));
        i2 i2Var = this.f7120t0;
        if (i2Var.f6009e != 1) {
            return;
        }
        i2 e10 = i2Var.e(null);
        i2 g10 = e10.g(e10.f6005a.u() ? 4 : 2);
        this.H++;
        this.f7101k.h0();
        q2(g10, 1, 1, false, false, 5, -9223372036854775807L, -1);
    }

    @Override // com.google.android.exoplayer2.l2
    public void release() {
        AudioTrack audioTrack;
        com.google.android.exoplayer2.util.r.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + com.google.android.exoplayer2.util.l0.f6989e + "] [" + i1.b() + "]");
        t2();
        if (com.google.android.exoplayer2.util.l0.f6985a < 21 && (audioTrack = this.T) != null) {
            audioTrack.release();
            this.T = null;
        }
        this.f7129z.b(false);
        this.B.g();
        this.C.b(false);
        this.D.b(false);
        this.A.i();
        if (!this.f7101k.j0()) {
            this.f7103l.l(10, new q.a() { // from class: com.google.android.exoplayer2.j0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    v0.D1((l2.d) obj);
                }
            });
        }
        this.f7103l.j();
        this.f7097i.f(null);
        this.f7119t.g(this.f7115r);
        i2 g10 = this.f7120t0.g(1);
        this.f7120t0 = g10;
        i2 b10 = g10.b(g10.f6006b);
        this.f7120t0 = b10;
        b10.f6020p = b10.f6022r;
        this.f7120t0.f6021q = 0L;
        this.f7115r.release();
        this.f7095h.g();
        c2();
        Surface surface = this.V;
        if (surface != null) {
            surface.release();
            this.V = null;
        }
        if (this.f7110o0) {
            ((PriorityTaskManager) com.google.android.exoplayer2.util.a.e(this.f7108n0)).b(0);
            this.f7110o0 = false;
        }
        this.f7102k0 = x2.e.f59581b;
        this.f7112p0 = true;
    }

    @Override // com.google.android.exoplayer2.l2
    public int s() {
        t2();
        return this.f7120t0.f6017m;
    }

    @Override // com.google.android.exoplayer2.l2
    @Nullable
    /* renamed from: s1 */
    public ExoPlaybackException k() {
        t2();
        return this.f7120t0.f6010f;
    }

    @Override // com.google.android.exoplayer2.l2
    public void setRepeatMode(final int i9) {
        t2();
        if (this.F != i9) {
            this.F = i9;
            this.f7101k.S0(i9);
            this.f7103l.i(8, new q.a() { // from class: com.google.android.exoplayer2.i0
                @Override // com.google.android.exoplayer2.util.q.a
                public final void invoke(Object obj) {
                    ((l2.d) obj).onRepeatModeChanged(i9);
                }
            });
            o2();
            this.f7103l.f();
        }
    }

    @Override // com.google.android.exoplayer2.l2
    public void stop() {
        t2();
        C(false);
    }

    @Override // com.google.android.exoplayer2.l2
    public i3 t() {
        t2();
        return this.f7120t0.f6005a;
    }

    @Override // com.google.android.exoplayer2.l2
    public Looper u() {
        return this.f7117s;
    }

    @Override // com.google.android.exoplayer2.l2
    public h3.z v() {
        t2();
        return this.f7095h.b();
    }

    @Override // com.google.android.exoplayer2.l2
    public void x(@Nullable TextureView textureView) {
        t2();
        if (textureView == null) {
            h1();
            return;
        }
        c2();
        this.Z = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            com.google.android.exoplayer2.util.r.i("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f7127x);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            l2(null);
            Y1(0, 0);
            return;
        }
        k2(surfaceTexture);
        Y1(textureView.getWidth(), textureView.getHeight());
    }

    @Override // com.google.android.exoplayer2.l2
    public void y(int i9, long j10) {
        t2();
        this.f7115r.J();
        i3 i3Var = this.f7120t0.f6005a;
        if (i9 >= 0 && (i3Var.u() || i9 < i3Var.t())) {
            this.H++;
            if (e()) {
                com.google.android.exoplayer2.util.r.i("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                h1.e eVar = new h1.e(this.f7120t0);
                eVar.b(1);
                this.f7099j.a(eVar);
                return;
            }
            int i10 = getPlaybackState() != 1 ? 2 : 1;
            int M = M();
            i2 W1 = W1(this.f7120t0.g(i10), i3Var, X1(i3Var, i9, j10));
            this.f7101k.z0(i3Var, i9, com.google.android.exoplayer2.util.l0.w0(j10));
            q2(W1, 0, 1, true, true, 1, o1(W1), M);
            return;
        }
        throw new IllegalSeekPositionException(i3Var, i9, j10);
    }

    @Override // com.google.android.exoplayer2.l2
    public l2.b z() {
        t2();
        return this.O;
    }
}
