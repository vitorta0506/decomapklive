package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.b1;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.y;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import tg.e;
/* loaded from: classes5.dex */
public final class c1 implements b1 {

    /* renamed from: h  reason: collision with root package name */
    static final int f44165h = Math.max(1, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.http2.childrenMapSize", 2));

    /* renamed from: a  reason: collision with root package name */
    private final y.c f44166a;

    /* renamed from: b  reason: collision with root package name */
    private final tg.e<d> f44167b;

    /* renamed from: c  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.internal.v<d> f44168c;

    /* renamed from: d  reason: collision with root package name */
    private final y f44169d;

    /* renamed from: e  reason: collision with root package name */
    private final d f44170e;

    /* renamed from: f  reason: collision with root package name */
    private int f44171f;

    /* renamed from: g  reason: collision with root package name */
    private final int f44172g;

    /* loaded from: classes5.dex */
    class a extends z {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void b(Http2Stream http2Stream) {
            d o10 = c1.this.o(http2Stream);
            o10.f44177a = null;
            if (c1.this.f44172g == 0) {
                o10.f44178b.p(o10);
                return;
            }
            if (c1.this.f44168c.size() == c1.this.f44172g) {
                d dVar = (d) c1.this.f44168c.peek();
                if (e.f44193a.compare(dVar, o10) >= 0) {
                    o10.f44178b.p(o10);
                    return;
                }
                c1.this.f44168c.poll();
                dVar.f44178b.p(dVar);
                c1.this.f44167b.remove(dVar.f44181e);
            }
            c1.this.f44168c.add(o10);
            c1.this.f44167b.n0(o10.f44181e, o10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void c(Http2Stream http2Stream) {
            d dVar = (d) c1.this.f44167b.remove(http2Stream.G());
            if (dVar == null) {
                dVar = new d(c1.this, http2Stream);
                ArrayList arrayList = new ArrayList(1);
                c1.this.f44170e.v(dVar, false, arrayList);
                c1.this.m(arrayList);
            } else {
                c1.this.f44168c.g0(dVar);
                dVar.f44177a = http2Stream;
            }
            int i9 = b.f44174a[http2Stream.h().ordinal()];
            if (i9 == 1 || i9 == 2) {
                dVar.u();
            }
            http2Stream.d(c1.this.f44166a, dVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void f(Http2Stream http2Stream) {
            c1.this.o(http2Stream).c();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void g(Http2Stream http2Stream) {
            c1.this.o(http2Stream).u();
        }
    }

    /* loaded from: classes5.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44174a;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            f44174a = iArr;
            try {
                iArr[Http2Stream.State.RESERVED_REMOTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44174a[Http2Stream.State.RESERVED_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final d f44175a;

        /* renamed from: b  reason: collision with root package name */
        final d f44176b;

        c(d dVar, d dVar2) {
            this.f44175a = dVar;
            this.f44176b = dVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class d implements io.grpc.netty.shaded.io.netty.util.internal.w {

        /* renamed from: a  reason: collision with root package name */
        Http2Stream f44177a;

        /* renamed from: b  reason: collision with root package name */
        d f44178b;

        /* renamed from: c  reason: collision with root package name */
        tg.e<d> f44179c;

        /* renamed from: d  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.util.internal.v<d> f44180d;

        /* renamed from: e  reason: collision with root package name */
        final int f44181e;

        /* renamed from: f  reason: collision with root package name */
        int f44182f;

        /* renamed from: g  reason: collision with root package name */
        int f44183g;

        /* renamed from: h  reason: collision with root package name */
        int f44184h;

        /* renamed from: i  reason: collision with root package name */
        private int f44185i;

        /* renamed from: j  reason: collision with root package name */
        private int f44186j;

        /* renamed from: k  reason: collision with root package name */
        long f44187k;

        /* renamed from: l  reason: collision with root package name */
        long f44188l;

        /* renamed from: m  reason: collision with root package name */
        long f44189m;

        /* renamed from: n  reason: collision with root package name */
        private byte f44190n;

        /* renamed from: o  reason: collision with root package name */
        short f44191o;

        d(c1 c1Var, int i9) {
            this(i9, null, 0);
        }

        private long d() {
            long j10 = 0;
            for (d dVar : this.f44179c.values()) {
                j10 += dVar.f44191o;
            }
            return j10;
        }

        private void e() {
            this.f44179c = new tg.d(c1.f44165h);
        }

        private void f() {
            if (this.f44179c == tg.c.a()) {
                e();
            }
        }

        private tg.e<d> o(d dVar) {
            d remove = this.f44179c.remove(dVar.f44181e);
            tg.e<d> eVar = this.f44179c;
            e();
            if (remove != null) {
                this.f44179c.n0(remove.f44181e, remove);
            }
            return eVar;
        }

        private void r() {
            this.f44190n = (byte) (this.f44190n | 1);
        }

        private void t(d dVar) {
            d dVar2;
            if (this.f44184h != 0 && (dVar2 = this.f44178b) != null) {
                dVar2.q(this);
                this.f44178b.a(-this.f44184h);
            }
            this.f44178b = dVar;
            this.f44183g = dVar == null ? Integer.MAX_VALUE : dVar.f44183g + 1;
        }

        private void x(StringBuilder sb2) {
            sb2.append("{streamId ");
            sb2.append(this.f44181e);
            sb2.append(" streamableBytes ");
            sb2.append(this.f44182f);
            sb2.append(" activeCountForTree ");
            sb2.append(this.f44184h);
            sb2.append(" pseudoTimeQueueIndex ");
            sb2.append(this.f44185i);
            sb2.append(" pseudoTimeToWrite ");
            sb2.append(this.f44187k);
            sb2.append(" pseudoTime ");
            sb2.append(this.f44188l);
            sb2.append(" flags ");
            sb2.append((int) this.f44190n);
            sb2.append(" pseudoTimeQueue.size() ");
            sb2.append(this.f44180d.size());
            sb2.append(" stateOnlyQueueIndex ");
            sb2.append(this.f44186j);
            sb2.append(" parent.streamId ");
            d dVar = this.f44178b;
            sb2.append(dVar == null ? -1 : dVar.f44181e);
            sb2.append("} [");
            if (!this.f44180d.isEmpty()) {
                for (d dVar2 : this.f44180d) {
                    dVar2.x(sb2);
                    sb2.append(", ");
                }
                sb2.setLength(sb2.length() - 2);
            }
            sb2.append(']');
        }

        private void y() {
            this.f44190n = (byte) (this.f44190n & (-2));
        }

        void A(d dVar, int i9, long j10) {
            this.f44187k = Math.min(this.f44187k, dVar.f44188l) + ((i9 * j10) / this.f44191o);
        }

        void B(int i9, boolean z10) {
            if (g() != z10) {
                if (z10) {
                    a(1);
                    r();
                } else {
                    a(-1);
                    y();
                }
            }
            this.f44182f = i9;
        }

        boolean C() {
            return (this.f44190n & 4) != 0;
        }

        void D(int i9, b1.b bVar) throws Http2Exception {
            try {
                bVar.b(this.f44177a, i9);
            } catch (Throwable th2) {
                throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, th2, "byte distribution write error", new Object[0]);
            }
        }

        void a(int i9) {
            int i10 = this.f44184h + i9;
            this.f44184h = i10;
            d dVar = this.f44178b;
            if (dVar != null) {
                if (i10 == 0) {
                    dVar.q(this);
                } else if (i10 == i9 && !j()) {
                    this.f44178b.k(this);
                }
                this.f44178b.a(i9);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.w
        public int b(io.grpc.netty.shaded.io.netty.util.internal.g<?> gVar) {
            return gVar == c1.this.f44168c ? this.f44186j : this.f44185i;
        }

        void c() {
            B(0, false);
            this.f44177a = null;
        }

        boolean g() {
            return (this.f44190n & 1) != 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.w
        public void h(io.grpc.netty.shaded.io.netty.util.internal.g<?> gVar, int i9) {
            if (gVar == c1.this.f44168c) {
                this.f44186j = i9;
            } else {
                this.f44185i = i9;
            }
        }

        boolean i(d dVar) {
            for (d dVar2 = this.f44178b; dVar2 != null; dVar2 = dVar2.f44178b) {
                if (dVar2 == dVar) {
                    return true;
                }
            }
            return false;
        }

        boolean j() {
            return (this.f44190n & 2) != 0;
        }

        void k(d dVar) {
            dVar.f44187k = this.f44188l;
            l(dVar);
        }

        void l(d dVar) {
            this.f44180d.offer(dVar);
            this.f44189m += dVar.f44191o;
        }

        d m() {
            return this.f44180d.peek();
        }

        d n() {
            d poll = this.f44180d.poll();
            this.f44189m -= poll.f44191o;
            return poll;
        }

        void p(d dVar) {
            if (this.f44179c.remove(dVar.f44181e) != null) {
                ArrayList arrayList = new ArrayList(dVar.f44179c.size() + 1);
                arrayList.add(new c(dVar, dVar.f44178b));
                dVar.t(null);
                if (!dVar.f44179c.isEmpty()) {
                    Iterator<e.a<d>> it = dVar.f44179c.entries().iterator();
                    long d10 = dVar.d();
                    do {
                        d value = it.next().value();
                        value.f44191o = (short) Math.max(1L, (value.f44191o * dVar.f44191o) / d10);
                        w(it, value, false, arrayList);
                    } while (it.hasNext());
                    c1.this.m(arrayList);
                }
                c1.this.m(arrayList);
            }
        }

        void q(d dVar) {
            if (this.f44180d.g0(dVar)) {
                this.f44189m -= dVar.f44191o;
            }
        }

        void s() {
            this.f44190n = (byte) (this.f44190n | 2);
        }

        public String toString() {
            int i9 = this.f44184h;
            if (i9 <= 0) {
                i9 = 1;
            }
            StringBuilder sb2 = new StringBuilder(i9 * 256);
            x(sb2);
            return sb2.toString();
        }

        void u() {
            this.f44190n = (byte) (this.f44190n | 4);
        }

        void v(d dVar, boolean z10, List<c> list) {
            w(null, dVar, z10, list);
        }

        void w(Iterator<e.a<d>> it, d dVar, boolean z10, List<c> list) {
            d dVar2 = dVar.f44178b;
            if (dVar2 != this) {
                list.add(new c(dVar, dVar2));
                dVar.t(this);
                if (it != null) {
                    it.remove();
                } else if (dVar2 != null) {
                    dVar2.f44179c.remove(dVar.f44181e);
                }
                f();
                this.f44179c.n0(dVar.f44181e, dVar);
            }
            if (!z10 || this.f44179c.isEmpty()) {
                return;
            }
            Iterator<e.a<d>> it2 = o(dVar).entries().iterator();
            while (it2.hasNext()) {
                dVar.w(it2, it2.next().value(), false, list);
            }
        }

        void z() {
            this.f44190n = (byte) (this.f44190n & (-3));
        }

        d(c1 c1Var, Http2Stream http2Stream) {
            this(c1Var, http2Stream, 0);
        }

        d(c1 c1Var, Http2Stream http2Stream, int i9) {
            this(http2Stream.G(), http2Stream, i9);
        }

        d(int i9, Http2Stream http2Stream, int i10) {
            this.f44179c = tg.c.a();
            this.f44185i = -1;
            this.f44186j = -1;
            this.f44191o = (short) 16;
            this.f44177a = http2Stream;
            this.f44181e = i9;
            this.f44180d = new io.grpc.netty.shaded.io.netty.util.internal.g(f.f44194a, i10);
        }
    }

    /* loaded from: classes5.dex */
    private static final class e implements Comparator<d>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final e f44193a = new e();
        private static final long serialVersionUID = -4806936913002105966L;

        private e() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d dVar, d dVar2) {
            boolean C = dVar.C();
            if (C != dVar2.C()) {
                return C ? -1 : 1;
            }
            int i9 = dVar2.f44183g - dVar.f44183g;
            return i9 != 0 ? i9 : dVar.f44181e - dVar2.f44181e;
        }
    }

    /* loaded from: classes5.dex */
    private static final class f implements Comparator<d>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final f f44194a = new f();
        private static final long serialVersionUID = -1437548640227161828L;

        private f() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d dVar, d dVar2) {
            return io.grpc.netty.shaded.io.netty.util.internal.o.a(dVar.f44187k, dVar2.f44187k);
        }
    }

    public c1(y yVar) {
        this(yVar, 5);
    }

    private int k(int i9, b1.b bVar, d dVar) throws Http2Exception {
        if (dVar.g()) {
            int min = Math.min(i9, dVar.f44182f);
            dVar.D(min, bVar);
            if (min == 0 && i9 != 0) {
                dVar.B(dVar.f44182f, false);
            }
            return min;
        }
        return l(i9, bVar, dVar);
    }

    private int l(int i9, b1.b bVar, d dVar) throws Http2Exception {
        long j10 = dVar.f44189m;
        d n9 = dVar.n();
        d m10 = dVar.m();
        n9.s();
        if (m10 != null) {
            try {
                i9 = Math.min(i9, (int) Math.min((((m10.f44187k - n9.f44187k) * n9.f44191o) / j10) + this.f44171f, 2147483647L));
            } finally {
                n9.z();
                if (n9.f44184h != 0) {
                    dVar.l(n9);
                }
            }
        }
        int k10 = k(i9, bVar, n9);
        dVar.f44188l += k10;
        n9.A(dVar, k10, j10);
        return k10;
    }

    private d n(int i9) {
        Http2Stream c10 = this.f44169d.c(i9);
        return c10 != null ? o(c10) : this.f44167b.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d o(Http2Stream http2Stream) {
        return (d) http2Stream.a(this.f44166a);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1
    public boolean a(int i9, b1.b bVar) throws Http2Exception {
        int i10;
        if (this.f44170e.f44184h == 0) {
            return false;
        }
        while (true) {
            d dVar = this.f44170e;
            int i11 = dVar.f44184h;
            i9 -= l(i9, bVar, dVar);
            i10 = this.f44170e.f44184h;
            if (i10 == 0 || (i9 <= 0 && i11 == i10)) {
                break;
            }
        }
        return i10 != 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1
    public void b(int i9, int i10, short s10, boolean z10) {
        ArrayList arrayList;
        d dVar;
        d n9 = n(i9);
        if (n9 == null) {
            if (this.f44172g == 0) {
                return;
            }
            n9 = new d(this, i9);
            this.f44168c.add(n9);
            this.f44167b.n0(i9, n9);
        }
        d n10 = n(i10);
        if (n10 == null) {
            if (this.f44172g == 0) {
                return;
            }
            n10 = new d(this, i10);
            this.f44168c.add(n10);
            this.f44167b.n0(i10, n10);
            ArrayList arrayList2 = new ArrayList(1);
            this.f44170e.v(n10, false, arrayList2);
            m(arrayList2);
        }
        if (n9.f44184h != 0 && (dVar = n9.f44178b) != null) {
            dVar.f44189m += s10 - n9.f44191o;
        }
        n9.f44191o = s10;
        if (n10 != n9.f44178b || (z10 && n10.f44179c.size() != 1)) {
            if (n10.i(n9)) {
                arrayList = new ArrayList((z10 ? n10.f44179c.size() : 0) + 2);
                n9.f44178b.v(n10, false, arrayList);
            } else {
                arrayList = new ArrayList((z10 ? n10.f44179c.size() : 0) + 1);
            }
            n10.v(n9, z10, arrayList);
            m(arrayList);
        }
        while (this.f44168c.size() > this.f44172g) {
            d poll = this.f44168c.poll();
            poll.f44178b.p(poll);
            this.f44167b.remove(poll.f44181e);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1
    public void c(b1.a aVar) {
        o(aVar.stream()).B(x.h(aVar), aVar.c() && aVar.b() >= 0);
    }

    public void j(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "allocationQuantum");
        this.f44171f = i9;
    }

    void m(List<c> list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            c cVar = list.get(i9);
            this.f44168c.M0(cVar.f44175a);
            d dVar = cVar.f44175a;
            d dVar2 = dVar.f44178b;
            if (dVar2 != null && dVar.f44184h != 0) {
                dVar2.k(dVar);
                d dVar3 = cVar.f44175a;
                dVar3.f44178b.a(dVar3.f44184h);
            }
        }
    }

    public c1(y yVar, int i9) {
        this.f44171f = 1024;
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "maxStateOnlySize");
        if (i9 == 0) {
            this.f44167b = tg.c.a();
            this.f44168c = io.grpc.netty.shaded.io.netty.util.internal.i.c();
        } else {
            this.f44167b = new tg.d(i9);
            this.f44168c = new io.grpc.netty.shaded.io.netty.util.internal.g(e.f44193a, i9 + 2);
        }
        this.f44172g = i9;
        this.f44169d = yVar;
        y.c a10 = yVar.a();
        this.f44166a = a10;
        Http2Stream d10 = yVar.d();
        d dVar = new d(this, d10, 16);
        this.f44170e = dVar;
        d10.d(a10, dVar);
        yVar.g(new a());
    }
}
