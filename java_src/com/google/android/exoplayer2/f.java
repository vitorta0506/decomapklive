package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class f implements u2, w2 {

    /* renamed from: a  reason: collision with root package name */
    private final int f5911a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private x2 f5913c;

    /* renamed from: d  reason: collision with root package name */
    private int f5914d;

    /* renamed from: e  reason: collision with root package name */
    private a2.s1 f5915e;

    /* renamed from: f  reason: collision with root package name */
    private int f5916f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private v2.i0 f5917g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private k1[] f5918h;

    /* renamed from: i  reason: collision with root package name */
    private long f5919i;

    /* renamed from: j  reason: collision with root package name */
    private long f5920j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f5922l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f5923m;

    /* renamed from: b  reason: collision with root package name */
    private final l1 f5912b = new l1();

    /* renamed from: k  reason: collision with root package name */
    private long f5921k = Long.MIN_VALUE;

    public f(int i9) {
        this.f5911a = i9;
    }

    private void N(long j10, boolean z10) throws ExoPlaybackException {
        this.f5922l = false;
        this.f5920j = j10;
        this.f5921k = j10;
        H(j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final l1 A() {
        this.f5912b.a();
        return this.f5912b;
    }

    protected final int B() {
        return this.f5914d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a2.s1 C() {
        return (a2.s1) com.google.android.exoplayer2.util.a.e(this.f5915e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final k1[] D() {
        return (k1[]) com.google.android.exoplayer2.util.a.e(this.f5918h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean E() {
        return g() ? this.f5922l : ((v2.i0) com.google.android.exoplayer2.util.a.e(this.f5917g)).isReady();
    }

    protected abstract void F();

    protected void G(boolean z10, boolean z11) throws ExoPlaybackException {
    }

    protected abstract void H(long j10, boolean z10) throws ExoPlaybackException;

    protected void I() {
    }

    protected void J() throws ExoPlaybackException {
    }

    protected void K() {
    }

    protected abstract void L(k1[] k1VarArr, long j10, long j11) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    public final int M(l1 l1Var, DecoderInputBuffer decoderInputBuffer, int i9) {
        int b10 = ((v2.i0) com.google.android.exoplayer2.util.a.e(this.f5917g)).b(l1Var, decoderInputBuffer, i9);
        if (b10 == -4) {
            if (decoderInputBuffer.k()) {
                this.f5921k = Long.MIN_VALUE;
                return this.f5922l ? -4 : -3;
            }
            long j10 = decoderInputBuffer.f5710e + this.f5919i;
            decoderInputBuffer.f5710e = j10;
            this.f5921k = Math.max(this.f5921k, j10);
        } else if (b10 == -5) {
            k1 k1Var = (k1) com.google.android.exoplayer2.util.a.e(l1Var.f6166b);
            if (k1Var.f6115p != Long.MAX_VALUE) {
                l1Var.f6166b = k1Var.b().i0(k1Var.f6115p + this.f5919i).E();
            }
        }
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int O(long j10) {
        return ((v2.i0) com.google.android.exoplayer2.util.a.e(this.f5917g)).c(j10 - this.f5919i);
    }

    @Override // com.google.android.exoplayer2.u2
    public final void e() {
        com.google.android.exoplayer2.util.a.f(this.f5916f == 1);
        this.f5912b.a();
        this.f5916f = 0;
        this.f5917g = null;
        this.f5918h = null;
        this.f5922l = false;
        F();
    }

    @Override // com.google.android.exoplayer2.u2, com.google.android.exoplayer2.w2
    public final int f() {
        return this.f5911a;
    }

    @Override // com.google.android.exoplayer2.u2
    public final boolean g() {
        return this.f5921k == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.u2
    public final int getState() {
        return this.f5916f;
    }

    @Override // com.google.android.exoplayer2.u2
    public final void h(k1[] k1VarArr, v2.i0 i0Var, long j10, long j11) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.f(!this.f5922l);
        this.f5917g = i0Var;
        if (this.f5921k == Long.MIN_VALUE) {
            this.f5921k = j10;
        }
        this.f5918h = k1VarArr;
        this.f5919i = j11;
        L(k1VarArr, j10, j11);
    }

    @Override // com.google.android.exoplayer2.u2
    public final void i() {
        this.f5922l = true;
    }

    @Override // com.google.android.exoplayer2.u2
    public final void j(int i9, a2.s1 s1Var) {
        this.f5914d = i9;
        this.f5915e = s1Var;
    }

    @Override // com.google.android.exoplayer2.p2.b
    public void k(int i9, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.u2
    public final void l(x2 x2Var, k1[] k1VarArr, v2.i0 i0Var, long j10, boolean z10, boolean z11, long j11, long j12) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.f(this.f5916f == 0);
        this.f5913c = x2Var;
        this.f5916f = 1;
        G(z10, z11);
        h(k1VarArr, i0Var, j11, j12);
        N(j10, z10);
    }

    @Override // com.google.android.exoplayer2.u2
    public final void m() throws IOException {
        ((v2.i0) com.google.android.exoplayer2.util.a.e(this.f5917g)).a();
    }

    @Override // com.google.android.exoplayer2.u2
    public final boolean n() {
        return this.f5922l;
    }

    @Override // com.google.android.exoplayer2.u2
    public final w2 o() {
        return this;
    }

    @Override // com.google.android.exoplayer2.u2
    public /* synthetic */ void q(float f10, float f11) {
        t2.a(this, f10, f11);
    }

    @Override // com.google.android.exoplayer2.w2
    public int r() throws ExoPlaybackException {
        return 0;
    }

    @Override // com.google.android.exoplayer2.u2
    public final void reset() {
        com.google.android.exoplayer2.util.a.f(this.f5916f == 0);
        this.f5912b.a();
        I();
    }

    @Override // com.google.android.exoplayer2.u2
    public final void start() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.f(this.f5916f == 1);
        this.f5916f = 2;
        J();
    }

    @Override // com.google.android.exoplayer2.u2
    public final void stop() {
        com.google.android.exoplayer2.util.a.f(this.f5916f == 2);
        this.f5916f = 1;
        K();
    }

    @Override // com.google.android.exoplayer2.u2
    @Nullable
    public final v2.i0 t() {
        return this.f5917g;
    }

    @Override // com.google.android.exoplayer2.u2
    public final long u() {
        return this.f5921k;
    }

    @Override // com.google.android.exoplayer2.u2
    public final void v(long j10) throws ExoPlaybackException {
        N(j10, false);
    }

    @Override // com.google.android.exoplayer2.u2
    @Nullable
    public com.google.android.exoplayer2.util.t w() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException x(Throwable th2, @Nullable k1 k1Var, int i9) {
        return y(th2, k1Var, false, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException y(Throwable th2, @Nullable k1 k1Var, boolean z10, int i9) {
        int i10;
        if (k1Var != null && !this.f5923m) {
            this.f5923m = true;
            try {
                int f10 = v2.f(a(k1Var));
                this.f5923m = false;
                i10 = f10;
            } catch (ExoPlaybackException unused) {
                this.f5923m = false;
            } catch (Throwable th3) {
                this.f5923m = false;
                throw th3;
            }
            return ExoPlaybackException.createForRenderer(th2, getName(), B(), k1Var, i10, z10, i9);
        }
        i10 = 4;
        return ExoPlaybackException.createForRenderer(th2, getName(), B(), k1Var, i10, z10, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final x2 z() {
        return (x2) com.google.android.exoplayer2.util.a.e(this.f5913c);
    }
}
