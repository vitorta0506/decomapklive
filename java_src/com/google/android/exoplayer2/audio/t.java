package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
final class t {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    /* renamed from: a  reason: collision with root package name */
    private final a f5602a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f5603b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AudioTrack f5604c;

    /* renamed from: d  reason: collision with root package name */
    private int f5605d;

    /* renamed from: e  reason: collision with root package name */
    private int f5606e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private s f5607f;

    /* renamed from: g  reason: collision with root package name */
    private int f5608g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5609h;

    /* renamed from: i  reason: collision with root package name */
    private long f5610i;

    /* renamed from: j  reason: collision with root package name */
    private float f5611j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f5612k;

    /* renamed from: l  reason: collision with root package name */
    private long f5613l;

    /* renamed from: m  reason: collision with root package name */
    private long f5614m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Method f5615n;

    /* renamed from: o  reason: collision with root package name */
    private long f5616o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f5617p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f5618q;

    /* renamed from: r  reason: collision with root package name */
    private long f5619r;

    /* renamed from: s  reason: collision with root package name */
    private long f5620s;

    /* renamed from: t  reason: collision with root package name */
    private long f5621t;

    /* renamed from: u  reason: collision with root package name */
    private long f5622u;

    /* renamed from: v  reason: collision with root package name */
    private int f5623v;

    /* renamed from: w  reason: collision with root package name */
    private int f5624w;

    /* renamed from: x  reason: collision with root package name */
    private long f5625x;

    /* renamed from: y  reason: collision with root package name */
    private long f5626y;

    /* renamed from: z  reason: collision with root package name */
    private long f5627z;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i9, long j10);

        void b(long j10);

        void c(long j10);

        void d(long j10, long j11, long j12, long j13);

        void e(long j10, long j11, long j12, long j13);
    }

    public t(a aVar) {
        this.f5602a = (a) com.google.android.exoplayer2.util.a.e(aVar);
        if (l0.f6985a >= 18) {
            try {
                this.f5615n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f5603b = new long[10];
    }

    private boolean a() {
        return this.f5609h && ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f5604c)).getPlayState() == 2 && e() == 0;
    }

    private long b(long j10) {
        return (j10 * 1000000) / this.f5608g;
    }

    private long e() {
        AudioTrack audioTrack = (AudioTrack) com.google.android.exoplayer2.util.a.e(this.f5604c);
        if (this.f5625x != -9223372036854775807L) {
            return Math.min(this.A, this.f5627z + ((((SystemClock.elapsedRealtime() * 1000) - this.f5625x) * this.f5608g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        if (this.f5609h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f5622u = this.f5620s;
            }
            playbackHeadPosition += this.f5622u;
        }
        if (l0.f6985a <= 29) {
            if (playbackHeadPosition == 0 && this.f5620s > 0 && playState == 3) {
                if (this.f5626y == -9223372036854775807L) {
                    this.f5626y = SystemClock.elapsedRealtime();
                }
                return this.f5620s;
            }
            this.f5626y = -9223372036854775807L;
        }
        if (this.f5620s > playbackHeadPosition) {
            this.f5621t++;
        }
        this.f5620s = playbackHeadPosition;
        return playbackHeadPosition + (this.f5621t << 32);
    }

    private long f() {
        return b(e());
    }

    private void l(long j10, long j11) {
        s sVar = (s) com.google.android.exoplayer2.util.a.e(this.f5607f);
        if (sVar.e(j10)) {
            long c10 = sVar.c();
            long b10 = sVar.b();
            if (Math.abs(c10 - j10) > 5000000) {
                this.f5602a.e(b10, c10, j10, j11);
                sVar.f();
            } else if (Math.abs(b(b10) - j11) > 5000000) {
                this.f5602a.d(b10, c10, j10, j11);
                sVar.f();
            } else {
                sVar.a();
            }
        }
    }

    private void m() {
        long f10 = f();
        if (f10 == 0) {
            return;
        }
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.f5614m >= 30000) {
            long[] jArr = this.f5603b;
            int i9 = this.f5623v;
            jArr[i9] = f10 - nanoTime;
            this.f5623v = (i9 + 1) % 10;
            int i10 = this.f5624w;
            if (i10 < 10) {
                this.f5624w = i10 + 1;
            }
            this.f5614m = nanoTime;
            this.f5613l = 0L;
            int i11 = 0;
            while (true) {
                int i12 = this.f5624w;
                if (i11 >= i12) {
                    break;
                }
                this.f5613l += this.f5603b[i11] / i12;
                i11++;
            }
        }
        if (this.f5609h) {
            return;
        }
        l(nanoTime, f10);
        n(nanoTime);
    }

    private void n(long j10) {
        Method method;
        if (!this.f5618q || (method = this.f5615n) == null || j10 - this.f5619r < 500000) {
            return;
        }
        try {
            long intValue = (((Integer) l0.j((Integer) method.invoke(com.google.android.exoplayer2.util.a.e(this.f5604c), new Object[0]))).intValue() * 1000) - this.f5610i;
            this.f5616o = intValue;
            long max = Math.max(intValue, 0L);
            this.f5616o = max;
            if (max > 5000000) {
                this.f5602a.b(max);
                this.f5616o = 0L;
            }
        } catch (Exception unused) {
            this.f5615n = null;
        }
        this.f5619r = j10;
    }

    private static boolean o(int i9) {
        return l0.f6985a < 23 && (i9 == 5 || i9 == 6);
    }

    private void r() {
        this.f5613l = 0L;
        this.f5624w = 0;
        this.f5623v = 0;
        this.f5614m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.f5612k = false;
    }

    public int c(long j10) {
        return this.f5606e - ((int) (j10 - (e() * this.f5605d)));
    }

    public long d(boolean z10) {
        long j10;
        if (((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f5604c)).getPlayState() == 3) {
            m();
        }
        long nanoTime = System.nanoTime() / 1000;
        s sVar = (s) com.google.android.exoplayer2.util.a.e(this.f5607f);
        boolean d10 = sVar.d();
        if (d10) {
            j10 = b(sVar.b()) + l0.U(nanoTime - sVar.c(), this.f5611j);
        } else {
            if (this.f5624w == 0) {
                j10 = f();
            } else {
                j10 = this.f5613l + nanoTime;
            }
            if (!z10) {
                j10 = Math.max(0L, j10 - this.f5616o);
            }
        }
        if (this.D != d10) {
            this.F = this.C;
            this.E = this.B;
        }
        long j11 = nanoTime - this.F;
        if (j11 < 1000000) {
            long j12 = (j11 * 1000) / 1000000;
            j10 = ((j10 * j12) + ((1000 - j12) * (this.E + l0.U(j11, this.f5611j)))) / 1000;
        }
        if (!this.f5612k) {
            long j13 = this.B;
            if (j10 > j13) {
                this.f5612k = true;
                this.f5602a.c(System.currentTimeMillis() - l0.P0(l0.Z(l0.P0(j10 - j13), this.f5611j)));
            }
        }
        this.C = nanoTime;
        this.B = j10;
        this.D = d10;
        return j10;
    }

    public void g(long j10) {
        this.f5627z = e();
        this.f5625x = SystemClock.elapsedRealtime() * 1000;
        this.A = j10;
    }

    public boolean h(long j10) {
        return j10 > e() || a();
    }

    public boolean i() {
        return ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f5604c)).getPlayState() == 3;
    }

    public boolean j(long j10) {
        return this.f5626y != -9223372036854775807L && j10 > 0 && SystemClock.elapsedRealtime() - this.f5626y >= 200;
    }

    public boolean k(long j10) {
        int playState = ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f5604c)).getPlayState();
        if (this.f5609h) {
            if (playState == 2) {
                this.f5617p = false;
                return false;
            } else if (playState == 1 && e() == 0) {
                return false;
            }
        }
        boolean z10 = this.f5617p;
        boolean h10 = h(j10);
        this.f5617p = h10;
        if (z10 && !h10 && playState != 1) {
            this.f5602a.a(this.f5606e, l0.P0(this.f5610i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f5625x == -9223372036854775807L) {
            ((s) com.google.android.exoplayer2.util.a.e(this.f5607f)).g();
            return true;
        }
        return false;
    }

    public void q() {
        r();
        this.f5604c = null;
        this.f5607f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i9, int i10, int i11) {
        this.f5604c = audioTrack;
        this.f5605d = i10;
        this.f5606e = i11;
        this.f5607f = new s(audioTrack);
        this.f5608g = audioTrack.getSampleRate();
        this.f5609h = z10 && o(i9);
        boolean o02 = l0.o0(i9);
        this.f5618q = o02;
        this.f5610i = o02 ? b(i11 / i10) : -9223372036854775807L;
        this.f5620s = 0L;
        this.f5621t = 0L;
        this.f5622u = 0L;
        this.f5617p = false;
        this.f5625x = -9223372036854775807L;
        this.f5626y = -9223372036854775807L;
        this.f5619r = 0L;
        this.f5616o = 0L;
        this.f5611j = 1.0f;
    }

    public void t(float f10) {
        this.f5611j = f10;
        s sVar = this.f5607f;
        if (sVar != null) {
            sVar.g();
        }
    }

    public void u() {
        ((s) com.google.android.exoplayer2.util.a.e(this.f5607f)).g();
    }
}
