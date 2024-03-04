package h2;

import androidx.annotation.Nullable;
import c2.a0;
import c2.b0;
import c2.l;
import c2.m;
import c2.n;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
import k2.k;
/* loaded from: classes.dex */
public final class a implements l {

    /* renamed from: b  reason: collision with root package name */
    private n f40326b;

    /* renamed from: c  reason: collision with root package name */
    private int f40327c;

    /* renamed from: d  reason: collision with root package name */
    private int f40328d;

    /* renamed from: e  reason: collision with root package name */
    private int f40329e;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private MotionPhotoMetadata f40331g;

    /* renamed from: h  reason: collision with root package name */
    private m f40332h;

    /* renamed from: i  reason: collision with root package name */
    private c f40333i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private k f40334j;

    /* renamed from: a  reason: collision with root package name */
    private final b0 f40325a = new b0(6);

    /* renamed from: f  reason: collision with root package name */
    private long f40330f = -1;

    private void c(m mVar) throws IOException {
        this.f40325a.L(2);
        mVar.m(this.f40325a.d(), 0, 2);
        mVar.i(this.f40325a.J() - 2);
    }

    private void d() {
        g(new Metadata.Entry[0]);
        ((n) com.google.android.exoplayer2.util.a.e(this.f40326b)).o();
        this.f40326b.l(new b0.b(-9223372036854775807L));
        this.f40327c = 6;
    }

    @Nullable
    private static MotionPhotoMetadata e(String str, long j10) throws IOException {
        b a10;
        if (j10 == -1 || (a10 = e.a(str)) == null) {
            return null;
        }
        return a10.a(j10);
    }

    private void g(Metadata.Entry... entryArr) {
        ((n) com.google.android.exoplayer2.util.a.e(this.f40326b)).q(1024, 4).d(new k1.b().K("image/jpeg").X(new Metadata(entryArr)).E());
    }

    private int i(m mVar) throws IOException {
        this.f40325a.L(2);
        mVar.m(this.f40325a.d(), 0, 2);
        return this.f40325a.J();
    }

    private void j(m mVar) throws IOException {
        this.f40325a.L(2);
        mVar.readFully(this.f40325a.d(), 0, 2);
        int J = this.f40325a.J();
        this.f40328d = J;
        if (J == 65498) {
            if (this.f40330f != -1) {
                this.f40327c = 4;
            } else {
                d();
            }
        } else if ((J < 65488 || J > 65497) && J != 65281) {
            this.f40327c = 1;
        }
    }

    private void k(m mVar) throws IOException {
        String x10;
        if (this.f40328d == 65505) {
            com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(this.f40329e);
            mVar.readFully(b0Var.d(), 0, this.f40329e);
            if (this.f40331g == null && "http://ns.adobe.com/xap/1.0/".equals(b0Var.x()) && (x10 = b0Var.x()) != null) {
                MotionPhotoMetadata e10 = e(x10, mVar.a());
                this.f40331g = e10;
                if (e10 != null) {
                    this.f40330f = e10.videoStartPosition;
                }
            }
        } else {
            mVar.k(this.f40329e);
        }
        this.f40327c = 0;
    }

    private void l(m mVar) throws IOException {
        this.f40325a.L(2);
        mVar.readFully(this.f40325a.d(), 0, 2);
        this.f40329e = this.f40325a.J() - 2;
        this.f40327c = 2;
    }

    private void m(m mVar) throws IOException {
        if (!mVar.d(this.f40325a.d(), 0, 1, true)) {
            d();
            return;
        }
        mVar.f();
        if (this.f40334j == null) {
            this.f40334j = new k();
        }
        c cVar = new c(mVar, this.f40330f);
        this.f40333i = cVar;
        if (this.f40334j.h(cVar)) {
            this.f40334j.f(new d(this.f40330f, (n) com.google.android.exoplayer2.util.a.e(this.f40326b)));
            n();
            return;
        }
        d();
    }

    private void n() {
        g((Metadata.Entry) com.google.android.exoplayer2.util.a.e(this.f40331g));
        this.f40327c = 5;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        if (j10 == 0) {
            this.f40327c = 0;
            this.f40334j = null;
        } else if (this.f40327c == 5) {
            ((k) com.google.android.exoplayer2.util.a.e(this.f40334j)).a(j10, j11);
        }
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        int i9 = this.f40327c;
        if (i9 == 0) {
            j(mVar);
            return 0;
        } else if (i9 == 1) {
            l(mVar);
            return 0;
        } else if (i9 == 2) {
            k(mVar);
            return 0;
        } else if (i9 == 4) {
            long position = mVar.getPosition();
            long j10 = this.f40330f;
            if (position != j10) {
                a0Var.f1463a = j10;
                return 1;
            }
            m(mVar);
            return 0;
        } else if (i9 != 5) {
            if (i9 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        } else {
            if (this.f40333i == null || mVar != this.f40332h) {
                this.f40332h = mVar;
                this.f40333i = new c(mVar, this.f40330f);
            }
            int b10 = ((k) com.google.android.exoplayer2.util.a.e(this.f40334j)).b(this.f40333i, a0Var);
            if (b10 == 1) {
                a0Var.f1463a += this.f40330f;
            }
            return b10;
        }
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f40326b = nVar;
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        if (i(mVar) != 65496) {
            return false;
        }
        int i9 = i(mVar);
        this.f40328d = i9;
        if (i9 == 65504) {
            c(mVar);
            this.f40328d = i(mVar);
        }
        if (this.f40328d != 65505) {
            return false;
        }
        mVar.i(2);
        this.f40325a.L(6);
        mVar.m(this.f40325a.d(), 0, 6);
        return this.f40325a.F() == 1165519206 && this.f40325a.J() == 0;
    }

    @Override // c2.l
    public void release() {
        k kVar = this.f40334j;
        if (kVar != null) {
            kVar.release();
        }
    }
}
