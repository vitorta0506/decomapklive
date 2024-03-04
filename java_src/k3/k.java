package k3;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.facebook.internal.ServerProtocol;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.video.PlaceholderSurface;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final k3.e f53574a = new k3.e();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b f53575b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final e f53576c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f53577d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Surface f53578e;

    /* renamed from: f  reason: collision with root package name */
    private float f53579f;

    /* renamed from: g  reason: collision with root package name */
    private float f53580g;

    /* renamed from: h  reason: collision with root package name */
    private float f53581h;

    /* renamed from: i  reason: collision with root package name */
    private float f53582i;

    /* renamed from: j  reason: collision with root package name */
    private int f53583j;

    /* renamed from: k  reason: collision with root package name */
    private long f53584k;

    /* renamed from: l  reason: collision with root package name */
    private long f53585l;

    /* renamed from: m  reason: collision with root package name */
    private long f53586m;

    /* renamed from: n  reason: collision with root package name */
    private long f53587n;

    /* renamed from: o  reason: collision with root package name */
    private long f53588o;

    /* renamed from: p  reason: collision with root package name */
    private long f53589p;

    /* renamed from: q  reason: collision with root package name */
    private long f53590q;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes2.dex */
    public static final class a {
        @DoNotInline
        public static void a(Surface surface, float f10) {
            try {
                surface.setFrameRate(f10, f10 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e10) {
                com.google.android.exoplayer2.util.r.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface b {

        /* loaded from: classes2.dex */
        public interface a {
            void a(@Nullable Display display);
        }

        void a();

        void b(a aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final WindowManager f53591a;

        private c(WindowManager windowManager) {
            this.f53591a = windowManager;
        }

        @Nullable
        public static b c(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        @Override // k3.k.b
        public void a() {
        }

        @Override // k3.k.b
        public void b(b.a aVar) {
            aVar.a(this.f53591a.getDefaultDisplay());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(17)
    /* loaded from: classes2.dex */
    public static final class d implements b, DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayManager f53592a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private b.a f53593b;

        private d(DisplayManager displayManager) {
            this.f53592a = displayManager;
        }

        private Display c() {
            return this.f53592a.getDisplay(0);
        }

        @Nullable
        public static b d(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        @Override // k3.k.b
        public void a() {
            this.f53592a.unregisterDisplayListener(this);
            this.f53593b = null;
        }

        @Override // k3.k.b
        public void b(b.a aVar) {
            this.f53593b = aVar;
            this.f53592a.registerDisplayListener(this, l0.u());
            aVar.a(c());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i9) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i9) {
            b.a aVar = this.f53593b;
            if (aVar == null || i9 != 0) {
                return;
            }
            aVar.a(c());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i9) {
        }
    }

    /* loaded from: classes2.dex */
    private static final class e implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f  reason: collision with root package name */
        private static final e f53594f = new e();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f53595a = -9223372036854775807L;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f53596b;

        /* renamed from: c  reason: collision with root package name */
        private final HandlerThread f53597c;

        /* renamed from: d  reason: collision with root package name */
        private Choreographer f53598d;

        /* renamed from: e  reason: collision with root package name */
        private int f53599e;

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f53597c = handlerThread;
            handlerThread.start();
            Handler t10 = l0.t(handlerThread.getLooper(), this);
            this.f53596b = t10;
            t10.sendEmptyMessage(0);
        }

        private void b() {
            Choreographer choreographer = this.f53598d;
            if (choreographer != null) {
                int i9 = this.f53599e + 1;
                this.f53599e = i9;
                if (i9 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f53598d = Choreographer.getInstance();
            } catch (RuntimeException e10) {
                com.google.android.exoplayer2.util.r.j("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
            }
        }

        public static e d() {
            return f53594f;
        }

        private void f() {
            Choreographer choreographer = this.f53598d;
            if (choreographer != null) {
                int i9 = this.f53599e - 1;
                this.f53599e = i9;
                if (i9 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f53595a = -9223372036854775807L;
                }
            }
        }

        public void a() {
            this.f53596b.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            this.f53595a = j10;
            ((Choreographer) com.google.android.exoplayer2.util.a.e(this.f53598d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f53596b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i9 = message.what;
            if (i9 == 0) {
                c();
                return true;
            } else if (i9 == 1) {
                b();
                return true;
            } else if (i9 != 2) {
                return false;
            } else {
                f();
                return true;
            }
        }
    }

    public k(@Nullable Context context) {
        b f10 = f(context);
        this.f53575b = f10;
        this.f53576c = f10 != null ? e.d() : null;
        this.f53584k = -9223372036854775807L;
        this.f53585l = -9223372036854775807L;
        this.f53579f = -1.0f;
        this.f53582i = 1.0f;
        this.f53583j = 0;
    }

    private static boolean c(long j10, long j11) {
        return Math.abs(j10 - j11) <= 20000000;
    }

    private void d() {
        Surface surface;
        if (l0.f6985a < 30 || (surface = this.f53578e) == null || this.f53583j == Integer.MIN_VALUE || this.f53581h == 0.0f) {
            return;
        }
        this.f53581h = 0.0f;
        a.a(surface, 0.0f);
    }

    private static long e(long j10, long j11, long j12) {
        long j13;
        long j14 = j11 + (((j10 - j11) / j12) * j12);
        if (j10 <= j14) {
            j13 = j14 - j12;
        } else {
            j14 = j12 + j14;
            j13 = j14;
        }
        return j14 - j10 < j10 - j13 ? j14 : j13;
    }

    @Nullable
    private static b f(@Nullable Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            b d10 = l0.f6985a >= 17 ? d.d(applicationContext) : null;
            return d10 == null ? c.c(applicationContext) : d10;
        }
        return null;
    }

    private void n() {
        this.f53586m = 0L;
        this.f53589p = -1L;
        this.f53587n = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(@Nullable Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.f53584k = refreshRate;
            this.f53585l = (refreshRate * 80) / 100;
            return;
        }
        com.google.android.exoplayer2.util.r.i("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.f53584k = -9223372036854775807L;
        this.f53585l = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005c, code lost:
        if (java.lang.Math.abs(r0 - r8.f53580g) >= (r8.f53574a.e() && (r8.f53574a.d() > 5000000000L ? 1 : (r8.f53574a.d() == 5000000000L ? 0 : -1)) >= 0 ? 0.02f : 1.0f)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005f, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006a, code lost:
        if (r8.f53574a.c() >= 30) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void q() {
        /*
            r8 = this;
            int r0 = com.google.android.exoplayer2.util.l0.f6985a
            r1 = 30
            if (r0 < r1) goto L73
            android.view.Surface r0 = r8.f53578e
            if (r0 != 0) goto Lc
            goto L73
        Lc:
            k3.e r0 = r8.f53574a
            boolean r0 = r0.e()
            if (r0 == 0) goto L1b
            k3.e r0 = r8.f53574a
            float r0 = r0.b()
            goto L1d
        L1b:
            float r0 = r8.f53579f
        L1d:
            float r2 = r8.f53580g
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L24
            return
        L24:
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 0
            r5 = 1
            int r6 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r6 == 0) goto L61
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 == 0) goto L61
            k3.e r1 = r8.f53574a
            boolean r1 = r1.e()
            if (r1 == 0) goto L49
            k3.e r1 = r8.f53574a
            long r1 = r1.d()
            r6 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 < 0) goto L49
            r1 = 1
            goto L4a
        L49:
            r1 = 0
        L4a:
            if (r1 == 0) goto L50
            r1 = 1017370378(0x3ca3d70a, float:0.02)
            goto L52
        L50:
            r1 = 1065353216(0x3f800000, float:1.0)
        L52:
            float r2 = r8.f53580g
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 < 0) goto L5f
            goto L6c
        L5f:
            r5 = 0
            goto L6c
        L61:
            if (r6 == 0) goto L64
            goto L6c
        L64:
            k3.e r2 = r8.f53574a
            int r2 = r2.c()
            if (r2 < r1) goto L5f
        L6c:
            if (r5 == 0) goto L73
            r8.f53580g = r0
            r8.r(r4)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k3.k.q():void");
    }

    private void r(boolean z10) {
        Surface surface;
        if (l0.f6985a < 30 || (surface = this.f53578e) == null || this.f53583j == Integer.MIN_VALUE) {
            return;
        }
        float f10 = 0.0f;
        if (this.f53577d) {
            float f11 = this.f53580g;
            if (f11 != -1.0f) {
                f10 = this.f53582i * f11;
            }
        }
        if (z10 || this.f53581h != f10) {
            this.f53581h = f10;
            a.a(surface, f10);
        }
    }

    public long b(long j10) {
        long j11;
        e eVar;
        if (this.f53589p != -1 && this.f53574a.e()) {
            long a10 = this.f53590q + (((float) (this.f53574a.a() * (this.f53586m - this.f53589p))) / this.f53582i);
            if (!c(j10, a10)) {
                n();
            } else {
                j11 = a10;
                this.f53587n = this.f53586m;
                this.f53588o = j11;
                eVar = this.f53576c;
                if (eVar != null || this.f53584k == -9223372036854775807L) {
                    return j11;
                }
                long j12 = eVar.f53595a;
                return j12 == -9223372036854775807L ? j11 : e(j11, j12, this.f53584k) - this.f53585l;
            }
        }
        j11 = j10;
        this.f53587n = this.f53586m;
        this.f53588o = j11;
        eVar = this.f53576c;
        if (eVar != null) {
        }
        return j11;
    }

    public void g(float f10) {
        this.f53579f = f10;
        this.f53574a.g();
        q();
    }

    public void h(long j10) {
        long j11 = this.f53587n;
        if (j11 != -1) {
            this.f53589p = j11;
            this.f53590q = this.f53588o;
        }
        this.f53586m++;
        this.f53574a.f(j10 * 1000);
        q();
    }

    public void i(float f10) {
        this.f53582i = f10;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f53577d = true;
        n();
        if (this.f53575b != null) {
            ((e) com.google.android.exoplayer2.util.a.e(this.f53576c)).a();
            this.f53575b.b(new b.a() { // from class: k3.j
                @Override // k3.k.b.a
                public final void a(Display display) {
                    k.this.p(display);
                }
            });
        }
        r(false);
    }

    public void l() {
        this.f53577d = false;
        b bVar = this.f53575b;
        if (bVar != null) {
            bVar.a();
            ((e) com.google.android.exoplayer2.util.a.e(this.f53576c)).e();
        }
        d();
    }

    public void m(@Nullable Surface surface) {
        if (surface instanceof PlaceholderSurface) {
            surface = null;
        }
        if (this.f53578e == surface) {
            return;
        }
        d();
        this.f53578e = surface;
        r(true);
    }

    public void o(int i9) {
        if (this.f53583j == i9) {
            return;
        }
        this.f53583j = i9;
        r(true);
    }
}
