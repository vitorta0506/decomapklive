package io.grpc;

import java.util.Arrays;
/* loaded from: classes5.dex */
final class y0 {

    /* loaded from: classes5.dex */
    static final class a<K, V> implements d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final K[] f50897a;

        /* renamed from: b  reason: collision with root package name */
        private final V[] f50898b;

        a(K k10, V v10, K k11, V v11) {
            this(new Object[]{k10, k11}, new Object[]{v10, v11});
        }

        private int c(K k10) {
            int i9 = 0;
            while (true) {
                K[] kArr = this.f50897a;
                if (i9 >= kArr.length) {
                    return -1;
                }
                if (kArr[i9] == k10) {
                    return i9;
                }
                i9++;
            }
        }

        @Override // io.grpc.y0.d
        public V a(K k10, int i9, int i10) {
            int i11 = 0;
            while (true) {
                K[] kArr = this.f50897a;
                if (i11 >= kArr.length) {
                    return null;
                }
                if (kArr[i11] == k10) {
                    return this.f50898b[i11];
                }
                i11++;
            }
        }

        @Override // io.grpc.y0.d
        public d<K, V> b(K k10, V v10, int i9, int i10) {
            int hashCode = this.f50897a[0].hashCode();
            if (hashCode != i9) {
                return b.c(new c(k10, v10), i9, this, hashCode, i10);
            }
            int c10 = c(k10);
            if (c10 != -1) {
                K[] kArr = this.f50897a;
                Object[] copyOf = Arrays.copyOf(kArr, kArr.length);
                Object[] copyOf2 = Arrays.copyOf(this.f50898b, this.f50897a.length);
                copyOf[c10] = k10;
                copyOf2[c10] = v10;
                return new a(copyOf, copyOf2);
            }
            K[] kArr2 = this.f50897a;
            Object[] copyOf3 = Arrays.copyOf(kArr2, kArr2.length + 1);
            Object[] copyOf4 = Arrays.copyOf(this.f50898b, this.f50897a.length + 1);
            K[] kArr3 = this.f50897a;
            copyOf3[kArr3.length] = k10;
            copyOf4[kArr3.length] = v10;
            return new a(copyOf3, copyOf4);
        }

        @Override // io.grpc.y0.d
        public int size() {
            return this.f50898b.length;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CollisionLeaf(");
            for (int i9 = 0; i9 < this.f50898b.length; i9++) {
                sb2.append("(key=");
                sb2.append(this.f50897a[i9]);
                sb2.append(" value=");
                sb2.append(this.f50898b[i9]);
                sb2.append(") ");
            }
            sb2.append(")");
            return sb2.toString();
        }

        private a(K[] kArr, V[] vArr) {
            this.f50897a = kArr;
            this.f50898b = vArr;
        }
    }

    /* loaded from: classes5.dex */
    static final class b<K, V> implements d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final int f50899a;

        /* renamed from: b  reason: collision with root package name */
        final d<K, V>[] f50900b;

        /* renamed from: c  reason: collision with root package name */
        private final int f50901c;

        private b(int i9, d<K, V>[] dVarArr, int i10) {
            this.f50899a = i9;
            this.f50900b = dVarArr;
            this.f50901c = i10;
        }

        static <K, V> d<K, V> c(d<K, V> dVar, int i9, d<K, V> dVar2, int i10, int i11) {
            int e10 = e(i9, i11);
            int e11 = e(i10, i11);
            if (e10 == e11) {
                d c10 = c(dVar, i9, dVar2, i10, i11 + 5);
                return new b(e10, new d[]{c10}, c10.size());
            }
            if (f(i9, i11) > f(i10, i11)) {
                dVar2 = dVar;
                dVar = dVar2;
            }
            return new b(e10 | e11, new d[]{dVar, dVar2}, dVar.size() + dVar2.size());
        }

        private int d(int i9) {
            return Integer.bitCount((i9 - 1) & this.f50899a);
        }

        private static int e(int i9, int i10) {
            return 1 << f(i9, i10);
        }

        private static int f(int i9, int i10) {
            return (i9 >>> i10) & 31;
        }

        @Override // io.grpc.y0.d
        public V a(K k10, int i9, int i10) {
            int e10 = e(i9, i10);
            if ((this.f50899a & e10) == 0) {
                return null;
            }
            return this.f50900b[d(e10)].a(k10, i9, i10 + 5);
        }

        @Override // io.grpc.y0.d
        public d<K, V> b(K k10, V v10, int i9, int i10) {
            int e10 = e(i9, i10);
            int d10 = d(e10);
            int i11 = this.f50899a;
            if ((i11 & e10) == 0) {
                int i12 = i11 | e10;
                d<K, V>[] dVarArr = this.f50900b;
                d[] dVarArr2 = new d[dVarArr.length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, d10);
                dVarArr2[d10] = new c(k10, v10);
                d<K, V>[] dVarArr3 = this.f50900b;
                System.arraycopy(dVarArr3, d10, dVarArr2, d10 + 1, dVarArr3.length - d10);
                return new b(i12, dVarArr2, size() + 1);
            }
            d<K, V>[] dVarArr4 = this.f50900b;
            d[] dVarArr5 = (d[]) Arrays.copyOf(dVarArr4, dVarArr4.length);
            dVarArr5[d10] = this.f50900b[d10].b(k10, v10, i9, i10 + 5);
            return new b(this.f50899a, dVarArr5, (size() + dVarArr5[d10].size()) - this.f50900b[d10].size());
        }

        @Override // io.grpc.y0.d
        public int size() {
            return this.f50901c;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CompressedIndex(");
            sb2.append(String.format("bitmap=%s ", Integer.toBinaryString(this.f50899a)));
            for (d<K, V> dVar : this.f50900b) {
                sb2.append(dVar);
                sb2.append(" ");
            }
            sb2.append(")");
            return sb2.toString();
        }
    }

    /* loaded from: classes5.dex */
    static final class c<K, V> implements d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f50902a;

        /* renamed from: b  reason: collision with root package name */
        private final V f50903b;

        public c(K k10, V v10) {
            this.f50902a = k10;
            this.f50903b = v10;
        }

        @Override // io.grpc.y0.d
        public V a(K k10, int i9, int i10) {
            if (this.f50902a == k10) {
                return this.f50903b;
            }
            return null;
        }

        @Override // io.grpc.y0.d
        public d<K, V> b(K k10, V v10, int i9, int i10) {
            int hashCode = this.f50902a.hashCode();
            if (hashCode != i9) {
                return b.c(new c(k10, v10), i9, this, hashCode, i10);
            }
            if (this.f50902a == k10) {
                return new c(k10, v10);
            }
            return new a(this.f50902a, this.f50903b, k10, v10);
        }

        @Override // io.grpc.y0.d
        public int size() {
            return 1;
        }

        public String toString() {
            return String.format("Leaf(key=%s value=%s)", this.f50902a, this.f50903b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface d<K, V> {
        V a(K k10, int i9, int i10);

        d<K, V> b(K k10, V v10, int i9, int i10);

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> V a(d<K, V> dVar, K k10) {
        if (dVar == null) {
            return null;
        }
        return dVar.a(k10, k10.hashCode(), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> d<K, V> b(d<K, V> dVar, K k10, V v10) {
        if (dVar == null) {
            return new c(k10, v10);
        }
        return dVar.b(k10, v10, k10.hashCode(), 0);
    }
}
