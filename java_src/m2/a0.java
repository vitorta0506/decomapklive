package m2;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import c2.b0;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import java.util.Map;
import kotlin.UByte;
import m2.i0;
/* loaded from: classes.dex */
public final class a0 implements c2.l {

    /* renamed from: l  reason: collision with root package name */
    public static final c2.r f54411l = new c2.r() { // from class: m2.z
        @Override // c2.r
        public /* synthetic */ c2.l[] a(Uri uri, Map map) {
            return c2.q.a(this, uri, map);
        }

        @Override // c2.r
        public final c2.l[] b() {
            c2.l[] d10;
            d10 = a0.d();
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.i0 f54412a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<a> f54413b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54414c;

    /* renamed from: d  reason: collision with root package name */
    private final y f54415d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54416e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54417f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54418g;

    /* renamed from: h  reason: collision with root package name */
    private long f54419h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private x f54420i;

    /* renamed from: j  reason: collision with root package name */
    private c2.n f54421j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54422k;

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final m f54423a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.i0 f54424b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.a0 f54425c = new com.google.android.exoplayer2.util.a0(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        private boolean f54426d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f54427e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f54428f;

        /* renamed from: g  reason: collision with root package name */
        private int f54429g;

        /* renamed from: h  reason: collision with root package name */
        private long f54430h;

        public a(m mVar, com.google.android.exoplayer2.util.i0 i0Var) {
            this.f54423a = mVar;
            this.f54424b = i0Var;
        }

        private void b() {
            this.f54425c.r(8);
            this.f54426d = this.f54425c.g();
            this.f54427e = this.f54425c.g();
            this.f54425c.r(6);
            this.f54429g = this.f54425c.h(8);
        }

        private void c() {
            this.f54430h = 0L;
            if (this.f54426d) {
                this.f54425c.r(4);
                this.f54425c.r(1);
                this.f54425c.r(1);
                long h10 = (this.f54425c.h(3) << 30) | (this.f54425c.h(15) << 15) | this.f54425c.h(15);
                this.f54425c.r(1);
                if (!this.f54428f && this.f54427e) {
                    this.f54425c.r(4);
                    this.f54425c.r(1);
                    this.f54425c.r(1);
                    this.f54425c.r(1);
                    this.f54424b.b((this.f54425c.h(3) << 30) | (this.f54425c.h(15) << 15) | this.f54425c.h(15));
                    this.f54428f = true;
                }
                this.f54430h = this.f54424b.b(h10);
            }
        }

        public void a(com.google.android.exoplayer2.util.b0 b0Var) throws ParserException {
            b0Var.j(this.f54425c.f6939a, 0, 3);
            this.f54425c.p(0);
            b();
            b0Var.j(this.f54425c.f6939a, 0, this.f54429g);
            this.f54425c.p(0);
            c();
            this.f54423a.f(this.f54430h, 4);
            this.f54423a.b(b0Var);
            this.f54423a.e();
        }

        public void d() {
            this.f54428f = false;
            this.f54423a.c();
        }
    }

    public a0() {
        this(new com.google.android.exoplayer2.util.i0(0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c2.l[] d() {
        return new c2.l[]{new a0()};
    }

    private void e(long j10) {
        if (this.f54422k) {
            return;
        }
        this.f54422k = true;
        if (this.f54415d.c() != -9223372036854775807L) {
            x xVar = new x(this.f54415d.d(), this.f54415d.c(), j10);
            this.f54420i = xVar;
            this.f54421j.l(xVar.b());
            return;
        }
        this.f54421j.l(new b0.b(this.f54415d.c()));
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        boolean z10 = true;
        boolean z11 = this.f54412a.e() == -9223372036854775807L;
        if (!z11) {
            long c10 = this.f54412a.c();
            z11 = (c10 == -9223372036854775807L || c10 == 0 || c10 == j11) ? false : false;
        }
        if (z11) {
            this.f54412a.g(j11);
        }
        x xVar = this.f54420i;
        if (xVar != null) {
            xVar.h(j11);
        }
        for (int i9 = 0; i9 < this.f54413b.size(); i9++) {
            this.f54413b.valueAt(i9).d();
        }
    }

    @Override // c2.l
    public int b(c2.m mVar, c2.a0 a0Var) throws IOException {
        com.google.android.exoplayer2.util.a.h(this.f54421j);
        long a10 = mVar.a();
        int i9 = (a10 > (-1L) ? 1 : (a10 == (-1L) ? 0 : -1));
        if ((i9 != 0) && !this.f54415d.e()) {
            return this.f54415d.g(mVar, a0Var);
        }
        e(a10);
        x xVar = this.f54420i;
        if (xVar != null && xVar.d()) {
            return this.f54420i.c(mVar, a0Var);
        }
        mVar.f();
        long h10 = i9 != 0 ? a10 - mVar.h() : -1L;
        if ((h10 == -1 || h10 >= 4) && mVar.d(this.f54414c.d(), 0, 4, true)) {
            this.f54414c.P(0);
            int n9 = this.f54414c.n();
            if (n9 == 441) {
                return -1;
            }
            if (n9 == 442) {
                mVar.m(this.f54414c.d(), 0, 10);
                this.f54414c.P(9);
                mVar.k((this.f54414c.D() & 7) + 14);
                return 0;
            } else if (n9 == 443) {
                mVar.m(this.f54414c.d(), 0, 2);
                this.f54414c.P(0);
                mVar.k(this.f54414c.J() + 6);
                return 0;
            } else if (((n9 & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
                mVar.k(1);
                return 0;
            } else {
                int i10 = n9 & 255;
                a aVar = this.f54413b.get(i10);
                if (!this.f54416e) {
                    if (aVar == null) {
                        m mVar2 = null;
                        if (i10 == 189) {
                            mVar2 = new c();
                            this.f54417f = true;
                            this.f54419h = mVar.getPosition();
                        } else if ((i10 & 224) == 192) {
                            mVar2 = new t();
                            this.f54417f = true;
                            this.f54419h = mVar.getPosition();
                        } else if ((i10 & 240) == 224) {
                            mVar2 = new n();
                            this.f54418g = true;
                            this.f54419h = mVar.getPosition();
                        }
                        if (mVar2 != null) {
                            mVar2.d(this.f54421j, new i0.d(i10, 256));
                            aVar = new a(mVar2, this.f54412a);
                            this.f54413b.put(i10, aVar);
                        }
                    }
                    if (mVar.getPosition() > ((this.f54417f && this.f54418g) ? this.f54419h + 8192 : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                        this.f54416e = true;
                        this.f54421j.o();
                    }
                }
                mVar.m(this.f54414c.d(), 0, 2);
                this.f54414c.P(0);
                int J = this.f54414c.J() + 6;
                if (aVar == null) {
                    mVar.k(J);
                } else {
                    this.f54414c.L(J);
                    mVar.readFully(this.f54414c.d(), 0, J);
                    this.f54414c.P(6);
                    aVar.a(this.f54414c);
                    com.google.android.exoplayer2.util.b0 b0Var = this.f54414c;
                    b0Var.O(b0Var.b());
                }
                return 0;
            }
        }
        return -1;
    }

    @Override // c2.l
    public void f(c2.n nVar) {
        this.f54421j = nVar;
    }

    @Override // c2.l
    public boolean h(c2.m mVar) throws IOException {
        byte[] bArr = new byte[14];
        mVar.m(bArr, 0, 14);
        if (442 == (((bArr[0] & UByte.MAX_VALUE) << 24) | ((bArr[1] & UByte.MAX_VALUE) << 16) | ((bArr[2] & UByte.MAX_VALUE) << 8) | (bArr[3] & UByte.MAX_VALUE)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            mVar.i(bArr[13] & 7);
            mVar.m(bArr, 0, 3);
            return 1 == ((((bArr[0] & UByte.MAX_VALUE) << 16) | ((bArr[1] & UByte.MAX_VALUE) << 8)) | (bArr[2] & UByte.MAX_VALUE));
        }
        return false;
    }

    @Override // c2.l
    public void release() {
    }

    public a0(com.google.android.exoplayer2.util.i0 i0Var) {
        this.f54412a = i0Var;
        this.f54414c = new com.google.android.exoplayer2.util.b0(4096);
        this.f54413b = new SparseArray<>();
        this.f54415d = new y();
    }
}
