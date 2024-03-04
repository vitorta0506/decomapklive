package v2;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.s1;
/* loaded from: classes.dex */
public final class l0 extends i3 {

    /* renamed from: p  reason: collision with root package name */
    private static final Object f58880p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private static final s1 f58881q = new s1.c().c("SinglePeriodTimeline").e(Uri.EMPTY).a();

    /* renamed from: c  reason: collision with root package name */
    private final long f58882c;

    /* renamed from: d  reason: collision with root package name */
    private final long f58883d;

    /* renamed from: e  reason: collision with root package name */
    private final long f58884e;

    /* renamed from: f  reason: collision with root package name */
    private final long f58885f;

    /* renamed from: g  reason: collision with root package name */
    private final long f58886g;

    /* renamed from: h  reason: collision with root package name */
    private final long f58887h;

    /* renamed from: i  reason: collision with root package name */
    private final long f58888i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f58889j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f58890k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f58891l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final Object f58892m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final s1 f58893n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final s1.g f58894o;

    public l0(long j10, boolean z10, boolean z11, boolean z12, @Nullable Object obj, s1 s1Var) {
        this(j10, j10, 0L, 0L, z10, z11, z12, obj, s1Var);
    }

    @Override // com.google.android.exoplayer2.i3
    public int f(Object obj) {
        return f58880p.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.i3
    public i3.b k(int i9, i3.b bVar, boolean z10) {
        com.google.android.exoplayer2.util.a.c(i9, 0, 1);
        return bVar.v(null, z10 ? f58880p : null, 0, this.f58885f, -this.f58887h);
    }

    @Override // com.google.android.exoplayer2.i3
    public int m() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.i3
    public Object q(int i9) {
        com.google.android.exoplayer2.util.a.c(i9, 0, 1);
        return f58880p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r1 > r5) goto L9;
     */
    @Override // com.google.android.exoplayer2.i3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.i3.d s(int r25, com.google.android.exoplayer2.i3.d r26, long r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = 0
            r2 = 1
            r3 = r25
            com.google.android.exoplayer2.util.a.c(r3, r1, r2)
            long r1 = r0.f58888i
            boolean r14 = r0.f58890k
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r14 == 0) goto L2e
            boolean r5 = r0.f58891l
            if (r5 != 0) goto L2e
            r5 = 0
            int r7 = (r27 > r5 ? 1 : (r27 == r5 ? 0 : -1))
            if (r7 == 0) goto L2e
            long r5 = r0.f58886g
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 != 0) goto L27
        L24:
            r16 = r3
            goto L30
        L27:
            long r1 = r1 + r27
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 <= 0) goto L2e
            goto L24
        L2e:
            r16 = r1
        L30:
            java.lang.Object r4 = com.google.android.exoplayer2.i3.d.f6037r
            com.google.android.exoplayer2.s1 r5 = r0.f58893n
            java.lang.Object r6 = r0.f58892m
            long r7 = r0.f58882c
            long r9 = r0.f58883d
            long r11 = r0.f58884e
            boolean r13 = r0.f58889j
            com.google.android.exoplayer2.s1$g r15 = r0.f58894o
            long r1 = r0.f58886g
            r18 = r1
            r20 = 0
            r21 = 0
            long r1 = r0.f58887h
            r22 = r1
            r3 = r26
            com.google.android.exoplayer2.i3$d r1 = r3.i(r4, r5, r6, r7, r9, r11, r13, r14, r15, r16, r18, r20, r21, r22)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.l0.s(int, com.google.android.exoplayer2.i3$d, long):com.google.android.exoplayer2.i3$d");
    }

    @Override // com.google.android.exoplayer2.i3
    public int t() {
        return 1;
    }

    public l0(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, @Nullable Object obj, s1 s1Var) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j10, j11, j12, j13, z10, z11, false, obj, s1Var, z12 ? s1Var.f6455d : null);
    }

    public l0(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, @Nullable Object obj, s1 s1Var, @Nullable s1.g gVar) {
        this.f58882c = j10;
        this.f58883d = j11;
        this.f58884e = j12;
        this.f58885f = j13;
        this.f58886g = j14;
        this.f58887h = j15;
        this.f58888i = j16;
        this.f58889j = z10;
        this.f58890k = z11;
        this.f58891l = z12;
        this.f58892m = obj;
        this.f58893n = (s1) com.google.android.exoplayer2.util.a.e(s1Var);
        this.f58894o = gVar;
    }
}
