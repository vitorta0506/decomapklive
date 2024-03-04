package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class d1 implements o2 {

    /* renamed from: b  reason: collision with root package name */
    private static final n1 f14924b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final n1 f14925a;

    /* loaded from: classes3.dex */
    static class a implements n1 {
        a() {
        }

        @Override // com.google.protobuf.n1
        public m1 a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // com.google.protobuf.n1
        public boolean b(Class<?> cls) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b implements n1 {

        /* renamed from: a  reason: collision with root package name */
        private n1[] f14926a;

        b(n1... n1VarArr) {
            this.f14926a = n1VarArr;
        }

        @Override // com.google.protobuf.n1
        public m1 a(Class<?> cls) {
            n1[] n1VarArr;
            for (n1 n1Var : this.f14926a) {
                if (n1Var.b(cls)) {
                    return n1Var.a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        @Override // com.google.protobuf.n1
        public boolean b(Class<?> cls) {
            for (n1 n1Var : this.f14926a) {
                if (n1Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public d1() {
        this(b());
    }

    private static n1 b() {
        return new b(r0.c(), c());
    }

    private static n1 c() {
        try {
            int i9 = s.f15233d;
            return (n1) s.class.getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f14924b;
        }
    }

    private static boolean d(m1 m1Var) {
        return m1Var.c() == ProtoSyntax.PROTO2;
    }

    private static <T> n2<T> e(Class<T> cls, m1 m1Var) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            if (d(m1Var)) {
                return s1.R(cls, m1Var, a2.b(), a1.b(), p2.O(), j0.b(), k1.b());
            }
            return s1.R(cls, m1Var, a2.b(), a1.b(), p2.O(), null, k1.b());
        } else if (d(m1Var)) {
            return s1.R(cls, m1Var, a2.a(), a1.a(), p2.I(), j0.a(), k1.a());
        } else {
            return s1.R(cls, m1Var, a2.a(), a1.a(), p2.J(), null, k1.a());
        }
    }

    @Override // com.google.protobuf.o2
    public <T> n2<T> a(Class<T> cls) {
        p2.K(cls);
        m1 a10 = this.f14925a.a(cls);
        if (a10.a()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                return t1.m(p2.O(), j0.b(), a10.b());
            }
            return t1.m(p2.I(), j0.a(), a10.b());
        }
        return e(cls, a10);
    }

    private d1(n1 n1Var) {
        this.f14925a = (n1) u0.b(n1Var, "messageInfoFactory");
    }
}
