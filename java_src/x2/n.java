package x2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.google.android.exoplayer2.util.v;
import com.google.android.exoplayer2.v2;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class n extends com.google.android.exoplayer2.f implements Handler.Callback {
    private int A;
    private long B;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final Handler f59598n;

    /* renamed from: o  reason: collision with root package name */
    private final m f59599o;

    /* renamed from: p  reason: collision with root package name */
    private final j f59600p;

    /* renamed from: q  reason: collision with root package name */
    private final l1 f59601q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f59602r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f59603s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f59604t;

    /* renamed from: u  reason: collision with root package name */
    private int f59605u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private k1 f59606v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private i f59607w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private k f59608x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private l f59609y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private l f59610z;

    public n(m mVar, @Nullable Looper looper) {
        this(mVar, looper, j.f59594a);
    }

    private void P() {
        Y(Collections.emptyList());
    }

    private long Q() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        com.google.android.exoplayer2.util.a.e(this.f59609y);
        if (this.A >= this.f59609y.d()) {
            return Long.MAX_VALUE;
        }
        return this.f59609y.c(this.A);
    }

    private void R(SubtitleDecoderException subtitleDecoderException) {
        r.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f59606v, subtitleDecoderException);
        P();
        W();
    }

    private void S() {
        this.f59604t = true;
        this.f59607w = this.f59600p.b((k1) com.google.android.exoplayer2.util.a.e(this.f59606v));
    }

    private void T(List<b> list) {
        this.f59599o.l(list);
        this.f59599o.k(new e(list));
    }

    private void U() {
        this.f59608x = null;
        this.A = -1;
        l lVar = this.f59609y;
        if (lVar != null) {
            lVar.p();
            this.f59609y = null;
        }
        l lVar2 = this.f59610z;
        if (lVar2 != null) {
            lVar2.p();
            this.f59610z = null;
        }
    }

    private void V() {
        U();
        ((i) com.google.android.exoplayer2.util.a.e(this.f59607w)).release();
        this.f59607w = null;
        this.f59605u = 0;
    }

    private void W() {
        V();
        S();
    }

    private void Y(List<b> list) {
        Handler handler = this.f59598n;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            T(list);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        this.f59606v = null;
        this.B = -9223372036854775807L;
        P();
        V();
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j10, boolean z10) {
        P();
        this.f59602r = false;
        this.f59603s = false;
        this.B = -9223372036854775807L;
        if (this.f59605u != 0) {
            W();
            return;
        }
        U();
        ((i) com.google.android.exoplayer2.util.a.e(this.f59607w)).flush();
    }

    @Override // com.google.android.exoplayer2.f
    protected void L(k1[] k1VarArr, long j10, long j11) {
        this.f59606v = k1VarArr[0];
        if (this.f59607w != null) {
            this.f59605u = 1;
        } else {
            S();
        }
    }

    public void X(long j10) {
        com.google.android.exoplayer2.util.a.f(n());
        this.B = j10;
    }

    @Override // com.google.android.exoplayer2.w2
    public int a(k1 k1Var) {
        if (this.f59600p.a(k1Var)) {
            return v2.a(k1Var.E == 0 ? 4 : 2);
        } else if (v.n(k1Var.f6111l)) {
            return v2.a(1);
        } else {
            return v2.a(0);
        }
    }

    @Override // com.google.android.exoplayer2.u2
    public boolean c() {
        return this.f59603s;
    }

    @Override // com.google.android.exoplayer2.u2, com.google.android.exoplayer2.w2
    public String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            T((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.u2
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.u2
    public void s(long j10, long j11) {
        boolean z10;
        if (n()) {
            long j12 = this.B;
            if (j12 != -9223372036854775807L && j10 >= j12) {
                U();
                this.f59603s = true;
            }
        }
        if (this.f59603s) {
            return;
        }
        if (this.f59610z == null) {
            ((i) com.google.android.exoplayer2.util.a.e(this.f59607w)).a(j10);
            try {
                this.f59610z = ((i) com.google.android.exoplayer2.util.a.e(this.f59607w)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e10) {
                R(e10);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f59609y != null) {
            long Q = Q();
            z10 = false;
            while (Q <= j10) {
                this.A++;
                Q = Q();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        l lVar = this.f59610z;
        if (lVar != null) {
            if (lVar.k()) {
                if (!z10 && Q() == Long.MAX_VALUE) {
                    if (this.f59605u == 2) {
                        W();
                    } else {
                        U();
                        this.f59603s = true;
                    }
                }
            } else if (lVar.f1133b <= j10) {
                l lVar2 = this.f59609y;
                if (lVar2 != null) {
                    lVar2.p();
                }
                this.A = lVar.a(j10);
                this.f59609y = lVar;
                this.f59610z = null;
                z10 = true;
            }
        }
        if (z10) {
            com.google.android.exoplayer2.util.a.e(this.f59609y);
            Y(this.f59609y.b(j10));
        }
        if (this.f59605u == 2) {
            return;
        }
        while (!this.f59602r) {
            try {
                k kVar = this.f59608x;
                if (kVar == null) {
                    kVar = ((i) com.google.android.exoplayer2.util.a.e(this.f59607w)).c();
                    if (kVar == null) {
                        return;
                    }
                    this.f59608x = kVar;
                }
                if (this.f59605u == 1) {
                    kVar.o(4);
                    ((i) com.google.android.exoplayer2.util.a.e(this.f59607w)).b(kVar);
                    this.f59608x = null;
                    this.f59605u = 2;
                    return;
                }
                int M = M(this.f59601q, kVar, 0);
                if (M == -4) {
                    if (kVar.k()) {
                        this.f59602r = true;
                        this.f59604t = false;
                    } else {
                        k1 k1Var = this.f59601q.f6166b;
                        if (k1Var == null) {
                            return;
                        }
                        kVar.f59595i = k1Var.f6115p;
                        kVar.r();
                        this.f59604t &= !kVar.m();
                    }
                    if (!this.f59604t) {
                        ((i) com.google.android.exoplayer2.util.a.e(this.f59607w)).b(kVar);
                        this.f59608x = null;
                    }
                } else if (M == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e11) {
                R(e11);
                return;
            }
        }
    }

    public n(m mVar, @Nullable Looper looper, j jVar) {
        super(3);
        this.f59599o = (m) com.google.android.exoplayer2.util.a.e(mVar);
        this.f59598n = looper == null ? null : l0.t(looper, this);
        this.f59600p = jVar;
        this.f59601q = new l1();
        this.B = -9223372036854775807L;
    }
}
