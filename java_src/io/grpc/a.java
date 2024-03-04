package io.grpc;

import java.util.IdentityHashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final IdentityHashMap<c<?>, Object> f41742b;

    /* renamed from: c  reason: collision with root package name */
    public static final a f41743c;

    /* renamed from: a  reason: collision with root package name */
    private final IdentityHashMap<c<?>, Object> f41744a;

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private a f41745a;

        /* renamed from: b  reason: collision with root package name */
        private IdentityHashMap<c<?>, Object> f41746b;

        private IdentityHashMap<c<?>, Object> b(int i9) {
            if (this.f41746b == null) {
                this.f41746b = new IdentityHashMap<>(i9);
            }
            return this.f41746b;
        }

        public a a() {
            if (this.f41746b != null) {
                for (Map.Entry entry : this.f41745a.f41744a.entrySet()) {
                    if (!this.f41746b.containsKey(entry.getKey())) {
                        this.f41746b.put((c) entry.getKey(), entry.getValue());
                    }
                }
                this.f41745a = new a(this.f41746b);
                this.f41746b = null;
            }
            return this.f41745a;
        }

        public <T> b c(c<T> cVar) {
            if (this.f41745a.f41744a.containsKey(cVar)) {
                IdentityHashMap identityHashMap = new IdentityHashMap(this.f41745a.f41744a);
                identityHashMap.remove(cVar);
                this.f41745a = new a(identityHashMap);
            }
            IdentityHashMap<c<?>, Object> identityHashMap2 = this.f41746b;
            if (identityHashMap2 != null) {
                identityHashMap2.remove(cVar);
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <T> b d(c<T> cVar, T t10) {
            b(1).put(cVar, t10);
            return this;
        }

        public b e(a aVar) {
            b(aVar.f41744a.size()).putAll(aVar.f41744a);
            return this;
        }

        private b(a aVar) {
            this.f41745a = aVar;
        }
    }

    /* loaded from: classes5.dex */
    public static final class c<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f41747a;

        private c(String str) {
            this.f41747a = str;
        }

        public static <T> c<T> a(String str) {
            return new c<>(str);
        }

        public String toString() {
            return this.f41747a;
        }
    }

    static {
        IdentityHashMap<c<?>, Object> identityHashMap = new IdentityHashMap<>();
        f41742b = identityHashMap;
        f41743c = new a(identityHashMap);
    }

    public static b c() {
        return new b();
    }

    public <T> T b(c<T> cVar) {
        return (T) this.f41744a.get(cVar);
    }

    public b d() {
        return new b();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r6 != r7) goto L4
            return r0
        L4:
            r1 = 0
            if (r7 == 0) goto L5a
            java.lang.Class<io.grpc.a> r2 = io.grpc.a.class
            java.lang.Class r3 = r7.getClass()
            if (r2 == r3) goto L10
            goto L5a
        L10:
            io.grpc.a r7 = (io.grpc.a) r7
            java.util.IdentityHashMap<io.grpc.a$c<?>, java.lang.Object> r2 = r6.f41744a
            int r2 = r2.size()
            java.util.IdentityHashMap<io.grpc.a$c<?>, java.lang.Object> r3 = r7.f41744a
            int r3 = r3.size()
            if (r2 == r3) goto L21
            return r1
        L21:
            java.util.IdentityHashMap<io.grpc.a$c<?>, java.lang.Object> r2 = r6.f41744a
            java.util.Set r2 = r2.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L2b:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L59
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.util.IdentityHashMap<io.grpc.a$c<?>, java.lang.Object> r4 = r7.f41744a
            java.lang.Object r5 = r3.getKey()
            boolean r4 = r4.containsKey(r5)
            if (r4 != 0) goto L44
            return r1
        L44:
            java.lang.Object r4 = r3.getValue()
            java.util.IdentityHashMap<io.grpc.a$c<?>, java.lang.Object> r5 = r7.f41744a
            java.lang.Object r3 = r3.getKey()
            java.lang.Object r3 = r5.get(r3)
            boolean r3 = com.google.common.base.l.a(r4, r3)
            if (r3 != 0) goto L2b
            return r1
        L59:
            return r0
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i9 = 0;
        for (Map.Entry<c<?>, Object> entry : this.f41744a.entrySet()) {
            i9 += com.google.common.base.l.b(entry.getKey(), entry.getValue());
        }
        return i9;
    }

    public String toString() {
        return this.f41744a.toString();
    }

    private a(IdentityHashMap<c<?>, Object> identityHashMap) {
        this.f41744a = identityHashMap;
    }
}
