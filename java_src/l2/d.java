package l2;

import android.net.Uri;
import c2.a0;
import c2.e0;
import c2.l;
import c2.m;
import c2.n;
import c2.q;
import c2.r;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes.dex */
public class d implements l {

    /* renamed from: d  reason: collision with root package name */
    public static final r f54134d = new r() { // from class: l2.c
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            l[] d10;
            d10 = d.d();
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private n f54135a;

    /* renamed from: b  reason: collision with root package name */
    private i f54136b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54137c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] d() {
        return new l[]{new d()};
    }

    private static b0 e(b0 b0Var) {
        b0Var.P(0);
        return b0Var;
    }

    private boolean g(m mVar) throws IOException {
        f fVar = new f();
        if (fVar.a(mVar, true) && (fVar.f54144b & 2) == 2) {
            int min = Math.min(fVar.f54151i, 8);
            b0 b0Var = new b0(min);
            mVar.m(b0Var.d(), 0, min);
            if (b.p(e(b0Var))) {
                this.f54136b = new b();
            } else if (j.r(e(b0Var))) {
                this.f54136b = new j();
            } else if (h.p(e(b0Var))) {
                this.f54136b = new h();
            }
            return true;
        }
        return false;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        i iVar = this.f54136b;
        if (iVar != null) {
            iVar.m(j10, j11);
        }
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        com.google.android.exoplayer2.util.a.h(this.f54135a);
        if (this.f54136b == null) {
            if (g(mVar)) {
                mVar.f();
            } else {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
        }
        if (!this.f54137c) {
            e0 q10 = this.f54135a.q(0, 1);
            this.f54135a.o();
            this.f54136b.d(this.f54135a, q10);
            this.f54137c = true;
        }
        return this.f54136b.g(mVar, a0Var);
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f54135a = nVar;
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        try {
            return g(mVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // c2.l
    public void release() {
    }
}
