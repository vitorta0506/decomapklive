package io.grpc.alts.internal;

import io.grpc.alts.internal.f0;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public final class l implements f0 {

    /* renamed from: a  reason: collision with root package name */
    private final c f41919a;

    /* renamed from: b  reason: collision with root package name */
    private final d f41920b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41921a;

        static {
            int[] iArr = new int[b.values().length];
            f41921a = iArr;
            try {
                iArr[b.READ_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41921a[b.READ_PROTECTED_PAYLOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum b {
        READ_HEADER,
        READ_PROTECTED_PAYLOAD
    }

    /* loaded from: classes5.dex */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f41925a;

        /* renamed from: b  reason: collision with root package name */
        private final int f41926b;

        /* renamed from: c  reason: collision with root package name */
        private p f41927c;

        c(int i9, p pVar) {
            int d10 = pVar.d();
            this.f41926b = d10;
            this.f41925a = (i9 - 8) - d10;
            this.f41927c = pVar;
        }

        private kg.j b(List<kg.j> list, kg.k kVar) throws GeneralSecurityException {
            Iterator<kg.j> it;
            long j10 = 0;
            while (list.iterator().hasNext()) {
                j10 += it.next().P1();
            }
            com.google.common.base.o.d(j10 > 0);
            int i9 = this.f41925a;
            long j11 = (j10 / i9) + 1;
            int i10 = (int) (j10 % i9);
            if (i10 == 0) {
                j11--;
            } else {
                i9 = i10;
            }
            kg.j h10 = kVar.h(com.google.common.primitives.f.d(((this.f41926b + 8) * j11) + j10));
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j12 = i11;
                if (j12 < j11) {
                    int i13 = j12 == j11 - 1 ? i9 : this.f41925a;
                    h10.F2(i13 + 4 + this.f41926b);
                    h10.F2(6);
                    kg.j f10 = l.f(h10, this.f41926b + i13);
                    ArrayList arrayList = new ArrayList();
                    while (i13 > 0) {
                        try {
                            kg.j jVar = list.get(i12);
                            if (jVar.P1() <= i13) {
                                arrayList.add(jVar);
                                i13 -= jVar.P1();
                                i12++;
                            } else {
                                arrayList.add(jVar.K1(i13));
                                i13 = 0;
                            }
                        } finally {
                        }
                    }
                    this.f41927c.b(f10, arrayList);
                    com.google.common.base.a0.a(!f10.q0());
                    i11++;
                } else {
                    h10.R1(0);
                    h10.L2(h10.F());
                    return h10.retain();
                }
                h10.release();
            }
        }

        void a() {
            this.f41927c = null;
        }

        void c(List<kg.j> list, f0.a<kg.j> aVar, kg.k kVar) throws GeneralSecurityException {
            com.google.common.base.o.A(this.f41927c != null, "Cannot protectFlush after destroy.");
            try {
                kg.j b10 = b(list, kVar);
                if (b10 != null) {
                    aVar.accept(b10);
                }
            } finally {
                for (kg.j next : list) {
                    next.release();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final int f41928a;

        /* renamed from: b  reason: collision with root package name */
        private final p f41929b;

        /* renamed from: d  reason: collision with root package name */
        private int f41931d;

        /* renamed from: e  reason: collision with root package name */
        private kg.j f41932e;

        /* renamed from: f  reason: collision with root package name */
        private kg.j f41933f;

        /* renamed from: c  reason: collision with root package name */
        private b f41930c = b.READ_HEADER;

        /* renamed from: g  reason: collision with root package name */
        private int f41934g = 0;

        /* renamed from: h  reason: collision with root package name */
        private long f41935h = 0;

        /* renamed from: i  reason: collision with root package name */
        private List<kg.j> f41936i = new ArrayList(16);

        d(p pVar, kg.k kVar) {
            this.f41929b = pVar;
            int d10 = pVar.d();
            this.f41928a = d10;
            this.f41932e = kVar.h(8);
            this.f41933f = kVar.h(d10);
        }

        private void a(kg.j jVar) {
            kg.j I1;
            if (jVar.j1()) {
                this.f41936i.add(jVar.I1(jVar.P1()));
                this.f41935h += I1.P1();
            }
        }

        private void b() {
            int size = this.f41936i.size();
            int i9 = size - 1;
            kg.j jVar = this.f41936i.get(i9);
            boolean j12 = jVar.j1();
            int i10 = 0;
            while (true) {
                if (i10 >= (j12 ? i9 : size)) {
                    break;
                }
                this.f41936i.get(i10).release();
                i10++;
            }
            this.f41936i.clear();
            this.f41935h = 0L;
            this.f41934g = 0;
            if (j12) {
                this.f41936i.add(jVar);
                this.f41935h = jVar.P1();
            }
            this.f41930c = b.READ_HEADER;
            this.f41931d = 0;
            this.f41932e.L();
            this.f41933f.L();
        }

        private void c(kg.k kVar, List<Object> list) throws GeneralSecurityException {
            int i9 = a.f41921a[this.f41930c.ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    throw new AssertionError("impossible enum value");
                }
            } else if (this.f41935h < 8) {
                return;
            } else {
                e();
            }
            if (this.f41935h < this.f41931d) {
                return;
            }
            try {
                kg.j f10 = f(kVar);
                if (f10 != null) {
                    list.add(f10);
                }
            } finally {
                b();
            }
        }

        private void e() {
            while (true) {
                if (!this.f41932e.q0()) {
                    break;
                }
                kg.j jVar = this.f41936i.get(this.f41934g);
                int min = Math.min(jVar.P1(), this.f41932e.t2());
                this.f41932e.y2(jVar, min);
                this.f41935h -= min;
                if (!jVar.j1()) {
                    this.f41934g++;
                }
            }
            int F1 = this.f41932e.F1() - 4;
            this.f41931d = F1;
            com.google.common.base.o.e(F1 >= this.f41928a, "Invalid header field: frame size too small");
            com.google.common.base.o.e(this.f41931d <= 1048568, "Invalid header field: frame size too large");
            com.google.common.base.o.e(this.f41932e.F1() == 6, "Invalid header field: frame type");
            this.f41930c = b.READ_PROTECTED_PAYLOAD;
        }

        private kg.j f(kg.k kVar) throws GeneralSecurityException {
            int i9 = this.f41931d - this.f41928a;
            ArrayList arrayList = new ArrayList();
            int i10 = i9;
            while (i10 > 0) {
                kg.j jVar = this.f41936i.get(this.f41934g);
                if (jVar.P1() <= i10) {
                    arrayList.add(jVar);
                    i10 -= jVar.P1();
                    this.f41934g++;
                } else {
                    arrayList.add(jVar.K1(i10));
                    i10 = 0;
                }
            }
            int i11 = this.f41928a;
            while (true) {
                kg.j jVar2 = this.f41936i.get(this.f41934g);
                if (jVar2.P1() <= i11) {
                    i11 -= jVar2.P1();
                    this.f41933f.x2(jVar2);
                    if (i11 == 0) {
                        break;
                    }
                    this.f41934g++;
                } else {
                    this.f41933f.y2(jVar2, i11);
                    break;
                }
            }
            com.google.common.base.a0.a(this.f41934g == this.f41936i.size() - 1);
            kg.j jVar3 = this.f41936i.get(this.f41934g);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            long j10 = i9;
            while (true) {
                if (jVar3.P1() < this.f41928a + 8) {
                    break;
                }
                int F1 = jVar3.F1();
                int i12 = (F1 - 4) - this.f41928a;
                if (jVar3.P1() < F1) {
                    jVar3.R1(jVar3.Q1() - 4);
                    break;
                }
                com.google.common.base.o.d(jVar3.F1() == 6);
                arrayList2.add(jVar3.K1(this.f41928a + i12));
                j10 += i12;
                arrayList3.add(Integer.valueOf(i12));
            }
            kg.j h10 = kVar.h(com.google.common.primitives.f.d(j10 + this.f41928a));
            try {
                kg.j f10 = l.f(h10, i9 + this.f41928a);
                this.f41929b.c(f10, this.f41933f, arrayList);
                com.google.common.base.a0.a(f10.t2() == this.f41928a);
                h10.L2(h10.K2() - this.f41928a);
                for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                    kg.j f11 = l.f(h10, ((Integer) arrayList3.get(i13)).intValue() + this.f41928a);
                    this.f41929b.a(f11, (kg.j) arrayList2.get(i13));
                    com.google.common.base.a0.a(f11.t2() == this.f41928a);
                    h10.L2(h10.K2() - this.f41928a);
                }
                return h10.retain();
            } finally {
                h10.release();
            }
        }

        void d() {
            for (kg.j jVar : this.f41936i) {
                jVar.release();
            }
            this.f41936i.clear();
            kg.j jVar2 = this.f41932e;
            if (jVar2 != null) {
                jVar2.release();
                this.f41932e = null;
            }
            kg.j jVar3 = this.f41933f;
            if (jVar3 != null) {
                jVar3.release();
                this.f41933f = null;
            }
            this.f41929b.destroy();
        }

        void g(kg.j jVar, List<Object> list, kg.k kVar) throws GeneralSecurityException {
            com.google.common.base.o.A(this.f41932e != null, "Cannot unprotect after destroy.");
            a(jVar);
            c(kVar, list);
        }
    }

    public l(int i9, p pVar, kg.k kVar) {
        com.google.common.base.o.d(i9 > pVar.d() + 8);
        this.f41919a = new c(Math.min(1048576, i9), pVar);
        this.f41920b = new d(pVar, kVar);
    }

    public static int d() {
        return 131072;
    }

    public static int e() {
        return 16384;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static kg.j f(kg.j jVar, int i9) {
        com.google.common.base.o.d(i9 <= jVar.t2());
        kg.j n22 = jVar.n2(jVar.K2(), i9);
        jVar.L2(jVar.K2() + i9);
        return n22.L2(0);
    }

    @Override // io.grpc.alts.internal.f0
    public void a(kg.j jVar, List<Object> list, kg.k kVar) throws GeneralSecurityException {
        this.f41920b.g(jVar, list, kVar);
    }

    @Override // io.grpc.alts.internal.f0
    public void b(List<kg.j> list, f0.a<kg.j> aVar, kg.k kVar) throws GeneralSecurityException {
        this.f41919a.c(list, aVar, kVar);
    }

    @Override // io.grpc.alts.internal.f0
    public void destroy() {
        try {
            this.f41920b.d();
        } finally {
            this.f41919a.a();
        }
    }
}
