package com.google.android.exoplayer2;
/* loaded from: classes.dex */
public class k implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final j3.m f6088a;

    /* renamed from: b  reason: collision with root package name */
    private final long f6089b;

    /* renamed from: c  reason: collision with root package name */
    private final long f6090c;

    /* renamed from: d  reason: collision with root package name */
    private final long f6091d;

    /* renamed from: e  reason: collision with root package name */
    private final long f6092e;

    /* renamed from: f  reason: collision with root package name */
    private final int f6093f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f6094g;

    /* renamed from: h  reason: collision with root package name */
    private final long f6095h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f6096i;

    /* renamed from: j  reason: collision with root package name */
    private int f6097j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f6098k;

    public k() {
        this(new j3.m(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    private static void j(int i9, int i10, String str, String str2) {
        boolean z10 = i9 >= i10;
        com.google.android.exoplayer2.util.a.b(z10, str + " cannot be less than " + str2);
    }

    private static int l(int i9) {
        switch (i9) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    private void m(boolean z10) {
        int i9 = this.f6093f;
        if (i9 == -1) {
            i9 = 13107200;
        }
        this.f6097j = i9;
        this.f6098k = false;
        if (z10) {
            this.f6088a.g();
        }
    }

    @Override // com.google.android.exoplayer2.q1
    public j3.b a() {
        return this.f6088a;
    }

    @Override // com.google.android.exoplayer2.q1
    public boolean b() {
        return this.f6096i;
    }

    @Override // com.google.android.exoplayer2.q1
    public long c() {
        return this.f6095h;
    }

    @Override // com.google.android.exoplayer2.q1
    public void d() {
        m(false);
    }

    @Override // com.google.android.exoplayer2.q1
    public boolean e(long j10, float f10, boolean z10, long j11) {
        long Z = com.google.android.exoplayer2.util.l0.Z(j10, f10);
        long j12 = z10 ? this.f6092e : this.f6091d;
        if (j11 != -9223372036854775807L) {
            j12 = Math.min(j11 / 2, j12);
        }
        return j12 <= 0 || Z >= j12 || (!this.f6094g && this.f6088a.f() >= this.f6097j);
    }

    @Override // com.google.android.exoplayer2.q1
    public void f() {
        m(true);
    }

    @Override // com.google.android.exoplayer2.q1
    public void g() {
        m(true);
    }

    @Override // com.google.android.exoplayer2.q1
    public boolean h(long j10, long j11, float f10) {
        boolean z10 = true;
        boolean z11 = this.f6088a.f() >= this.f6097j;
        long j12 = this.f6089b;
        if (f10 > 1.0f) {
            j12 = Math.min(com.google.android.exoplayer2.util.l0.U(j12, f10), this.f6090c);
        }
        if (j11 < Math.max(j12, 500000L)) {
            if (!this.f6094g && z11) {
                z10 = false;
            }
            this.f6098k = z10;
            if (!z10 && j11 < 500000) {
                com.google.android.exoplayer2.util.r.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.f6090c || z11) {
            this.f6098k = false;
        }
        return this.f6098k;
    }

    @Override // com.google.android.exoplayer2.q1
    public void i(u2[] u2VarArr, v2.q0 q0Var, h3.s[] sVarArr) {
        int i9 = this.f6093f;
        if (i9 == -1) {
            i9 = k(u2VarArr, sVarArr);
        }
        this.f6097j = i9;
        this.f6088a.h(i9);
    }

    protected int k(u2[] u2VarArr, h3.s[] sVarArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < u2VarArr.length; i10++) {
            if (sVarArr[i10] != null) {
                i9 += l(u2VarArr[i10].f());
            }
        }
        return Math.max(13107200, i9);
    }

    protected k(j3.m mVar, int i9, int i10, int i11, int i12, int i13, boolean z10, int i14, boolean z11) {
        j(i11, 0, "bufferForPlaybackMs", "0");
        j(i12, 0, "bufferForPlaybackAfterRebufferMs", "0");
        j(i9, i11, "minBufferMs", "bufferForPlaybackMs");
        j(i9, i12, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        j(i10, i9, "maxBufferMs", "minBufferMs");
        j(i14, 0, "backBufferDurationMs", "0");
        this.f6088a = mVar;
        this.f6089b = com.google.android.exoplayer2.util.l0.w0(i9);
        this.f6090c = com.google.android.exoplayer2.util.l0.w0(i10);
        this.f6091d = com.google.android.exoplayer2.util.l0.w0(i11);
        this.f6092e = com.google.android.exoplayer2.util.l0.w0(i12);
        this.f6093f = i13;
        this.f6097j = i13 == -1 ? 13107200 : i13;
        this.f6094g = z10;
        this.f6095h = com.google.android.exoplayer2.util.l0.w0(i14);
        this.f6096i = z11;
    }
}
