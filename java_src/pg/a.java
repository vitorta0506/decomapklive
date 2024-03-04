package pg;

import io.grpc.netty.shaded.io.netty.channel.p;
import io.grpc.netty.shaded.io.netty.handler.codec.DecoderException;
import io.grpc.netty.shaded.io.netty.util.internal.b0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.util.List;
import kg.s0;
/* loaded from: classes5.dex */
public abstract class a extends p {

    /* renamed from: j  reason: collision with root package name */
    public static final c f56807j = new C0617a();

    /* renamed from: k  reason: collision with root package name */
    public static final c f56808k = new b();

    /* renamed from: b  reason: collision with root package name */
    kg.j f56809b;

    /* renamed from: d  reason: collision with root package name */
    private boolean f56811d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f56812e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56813f;

    /* renamed from: i  reason: collision with root package name */
    private int f56816i;

    /* renamed from: c  reason: collision with root package name */
    private c f56810c = f56807j;

    /* renamed from: g  reason: collision with root package name */
    private byte f56814g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f56815h = 16;

    /* renamed from: pg.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static class C0617a implements c {
        C0617a() {
        }

        @Override // pg.a.c
        public kg.j a(kg.k kVar, kg.j jVar, kg.j jVar2) {
            if (!jVar.j1() && jVar2.g1()) {
                jVar.release();
                return jVar2;
            }
            try {
                int P1 = jVar2.P1();
                if (P1 <= jVar.o1() && ((P1 <= jVar.n1() || jVar.refCnt() <= 1) && !jVar.i1())) {
                    jVar.z2(jVar2, jVar2.Q1(), P1);
                    jVar2.R1(jVar2.K2());
                    return jVar;
                }
                return a.F(kVar, jVar, jVar2);
            } finally {
                jVar2.release();
            }
        }
    }

    /* loaded from: classes5.dex */
    static class b implements c {
        b() {
        }

        @Override // pg.a.c
        public kg.j a(kg.k kVar, kg.j jVar, kg.j jVar2) {
            Throwable th2;
            kg.o oVar;
            if (!jVar.j1()) {
                jVar.release();
                return jVar2;
            }
            kg.o oVar2 = null;
            try {
                if ((jVar instanceof kg.o) && jVar.refCnt() == 1) {
                    oVar = (kg.o) jVar;
                    try {
                        if (oVar.K2() != oVar.F()) {
                            oVar.I(oVar.K2());
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        if (jVar2 != null) {
                            jVar2.release();
                            if (oVar != null && oVar != jVar) {
                                oVar.release();
                            }
                        }
                        throw th2;
                    }
                } else {
                    oVar = kVar.m(Integer.MAX_VALUE).K3(true, jVar);
                }
                oVar2 = oVar;
                oVar2.K3(true, jVar2);
                return oVar2;
            } catch (Throwable th4) {
                kg.o oVar3 = oVar2;
                th2 = th4;
                oVar = oVar3;
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface c {
        kg.j a(kg.k kVar, kg.j jVar, kg.j jVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        p();
    }

    static kg.j F(kg.k kVar, kg.j jVar, kg.j jVar2) {
        int P1 = jVar.P1();
        int P12 = jVar2.P1();
        int i9 = P1 + P12;
        kg.j l10 = kVar.l(kVar.c(i9, Integer.MAX_VALUE));
        try {
            l10.a2(0, jVar, jVar.Q1(), P1).a2(P1, jVar2, jVar2.Q1(), P12).L2(i9);
            jVar2.R1(jVar2.K2());
            jVar.release();
            return l10;
        } catch (Throwable th2) {
            l10.release();
            throw th2;
        }
    }

    static void G(io.grpc.netty.shaded.io.netty.channel.m mVar, List<Object> list, int i9) {
        if (list instanceof pg.c) {
            H(mVar, (pg.c) list, i9);
            return;
        }
        for (int i10 = 0; i10 < i9; i10++) {
            mVar.p(list.get(i10));
        }
    }

    static void H(io.grpc.netty.shaded.io.netty.channel.m mVar, pg.c cVar, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            mVar.p(cVar.g(i10));
        }
    }

    private void w(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10) {
        pg.c u10 = pg.c.u();
        try {
            try {
                v(mVar, u10);
                try {
                    kg.j jVar = this.f56809b;
                    if (jVar != null) {
                        jVar.release();
                        this.f56809b = null;
                    }
                    int size = u10.size();
                    H(mVar, u10, size);
                    if (size > 0) {
                        mVar.k();
                    }
                    if (z10) {
                        mVar.n0();
                    }
                } finally {
                }
            } catch (DecoderException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        } catch (Throwable th2) {
            try {
                kg.j jVar2 = this.f56809b;
                if (jVar2 != null) {
                    jVar2.release();
                    this.f56809b = null;
                }
                int size2 = u10.size();
                H(mVar, u10, size2);
                if (size2 > 0) {
                    mVar.k();
                }
                if (z10) {
                    mVar.n0();
                }
                throw th2;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void B() {
        kg.j jVar = this.f56809b;
        if (jVar == null || this.f56812e || jVar.refCnt() != 1) {
            return;
        }
        this.f56809b.c0();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public final void E(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (this.f56814g == 1) {
            this.f56814g = (byte) 2;
            return;
        }
        kg.j jVar = this.f56809b;
        if (jVar != null) {
            this.f56809b = null;
            this.f56816i = 0;
            if (jVar.P1() > 0) {
                mVar.p(jVar);
                mVar.k();
            } else {
                jVar.release();
            }
        }
        I(mVar);
    }

    protected void I(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
    }

    protected kg.j J() {
        kg.j jVar = this.f56809b;
        return jVar != null ? jVar : s0.f53902d;
    }

    public boolean K() {
        return this.f56811d;
    }

    public void L(c cVar) {
        this.f56810c = (c) s.h(cVar, "cumulator");
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void X(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
        if (obj instanceof ng.a) {
            w(mVar, false);
        }
        super.X(mVar, obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void Z(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        this.f56816i = 0;
        B();
        if (!this.f56813f && !mVar.d().b0().l()) {
            mVar.read();
        }
        this.f56813f = false;
        mVar.k();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void h(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
        if (obj instanceof kg.j) {
            pg.c u10 = pg.c.u();
            try {
                try {
                    this.f56812e = this.f56809b == null;
                    kg.j a10 = this.f56810c.a(mVar.P(), this.f56812e ? s0.f53902d : this.f56809b, (kg.j) obj);
                    this.f56809b = a10;
                    u(mVar, a10, u10);
                    try {
                        kg.j jVar = this.f56809b;
                        if (jVar != null && !jVar.j1()) {
                            this.f56816i = 0;
                            this.f56809b.release();
                            this.f56809b = null;
                        } else {
                            int i9 = this.f56816i + 1;
                            this.f56816i = i9;
                            if (i9 >= this.f56815h) {
                                this.f56816i = 0;
                                B();
                            }
                        }
                        int size = u10.size();
                        this.f56813f |= u10.n();
                        H(mVar, u10, size);
                        return;
                    } finally {
                    }
                } catch (Throwable th2) {
                    try {
                        kg.j jVar2 = this.f56809b;
                        if (jVar2 != null && !jVar2.j1()) {
                            this.f56816i = 0;
                            this.f56809b.release();
                            this.f56809b = null;
                            int size2 = u10.size();
                            this.f56813f |= u10.n();
                            H(mVar, u10, size2);
                            throw th2;
                        }
                        int i10 = this.f56816i + 1;
                        this.f56816i = i10;
                        if (i10 >= this.f56815h) {
                            this.f56816i = 0;
                            B();
                        }
                        int size22 = u10.size();
                        this.f56813f |= u10.n();
                        H(mVar, u10, size22);
                        throw th2;
                    } finally {
                    }
                }
            } catch (DecoderException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        }
        mVar.p(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int s() {
        return J().P1();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void t(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        w(mVar, true);
    }

    protected void u(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) {
        while (jVar.j1()) {
            try {
                int size = list.size();
                if (size > 0) {
                    G(mVar, list, size);
                    list.clear();
                    if (mVar.f0()) {
                        return;
                    }
                }
                int P1 = jVar.P1();
                z(mVar, jVar, list);
                if (mVar.f0()) {
                    return;
                }
                if (list.isEmpty()) {
                    if (P1 == jVar.P1()) {
                        return;
                    }
                } else if (P1 != jVar.P1()) {
                    if (K()) {
                        return;
                    }
                } else {
                    throw new DecoderException(b0.l(getClass()) + ".decode() did not read anything but decoded a message.");
                }
            } catch (DecoderException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        }
    }

    void v(io.grpc.netty.shaded.io.netty.channel.m mVar, List<Object> list) throws Exception {
        kg.j jVar = this.f56809b;
        if (jVar != null) {
            u(mVar, jVar, list);
            if (mVar.f0()) {
                return;
            }
            kg.j jVar2 = this.f56809b;
            if (jVar2 == null) {
                jVar2 = s0.f53902d;
            }
            y(mVar, jVar2, list);
            return;
        }
        y(mVar, s0.f53902d, list);
    }

    protected abstract void x(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public void y(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
        if (jVar.j1()) {
            z(mVar, jVar, list);
        }
    }

    final void z(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
        this.f56814g = (byte) 1;
        try {
            x(mVar, jVar, list);
        } finally {
            r0 = this.f56814g == 2;
            this.f56814g = (byte) 0;
            if (r0) {
                G(mVar, list, list.size());
                list.clear();
                E(mVar);
            }
        }
    }
}
