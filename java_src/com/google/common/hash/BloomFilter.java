package com.google.common.hash;

import com.google.common.hash.g;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public final class BloomFilter<T> implements com.google.common.base.q<T>, Serializable {
    private final g.c bits;
    private final Funnel<? super T> funnel;
    private final int numHashFunctions;
    private final c strategy;

    /* loaded from: classes2.dex */
    private static class b<T> implements Serializable {
        private static final long serialVersionUID = 1;

        /* renamed from: a  reason: collision with root package name */
        final long[] f13514a;

        /* renamed from: b  reason: collision with root package name */
        final int f13515b;

        /* renamed from: c  reason: collision with root package name */
        final Funnel<? super T> f13516c;

        /* renamed from: d  reason: collision with root package name */
        final c f13517d;

        b(BloomFilter<T> bloomFilter) {
            this.f13514a = g.c.h(((BloomFilter) bloomFilter).bits.f13529a);
            this.f13515b = ((BloomFilter) bloomFilter).numHashFunctions;
            this.f13516c = ((BloomFilter) bloomFilter).funnel;
            this.f13517d = ((BloomFilter) bloomFilter).strategy;
        }

        Object readResolve() {
            return new BloomFilter(new g.c(this.f13514a), this.f13515b, this.f13516c, this.f13517d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface c extends Serializable {
        <T> boolean M(T t10, Funnel<? super T> funnel, int i9, g.c cVar);

        int ordinal();

        <T> boolean y(T t10, Funnel<? super T> funnel, int i9, g.c cVar);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i9, double d10) {
        return create(funnel, i9, d10);
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.common.hash.BloomFilter lambda$toBloomFilter$1(com.google.common.hash.BloomFilter r0, com.google.common.hash.BloomFilter r1) {
        /*
            r0.putAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.hash.BloomFilter.lambda$toBloomFilter$1(com.google.common.hash.BloomFilter, com.google.common.hash.BloomFilter):com.google.common.hash.BloomFilter");
    }

    static long optimalNumOfBits(long j10, double d10) {
        if (d10 == 0.0d) {
            d10 = Double.MIN_VALUE;
        }
        return (long) (((-j10) * Math.log(d10)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    static int optimalNumOfHashFunctions(long j10, long j11) {
        return Math.max(1, (int) Math.round((j11 / j10) * Math.log(2.0d)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i9;
        int i10;
        com.google.common.base.o.t(inputStream, "InputStream");
        com.google.common.base.o.t(funnel, "Funnel");
        byte b10 = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte readByte = dataInputStream.readByte();
            try {
                i10 = com.google.common.primitives.k.b(dataInputStream.readByte());
                try {
                    int readInt = dataInputStream.readInt();
                    try {
                        g gVar = g.values()[readByte];
                        g.c cVar = new g.c(com.google.common.math.e.b(readInt, 64L));
                        for (int i11 = 0; i11 < readInt; i11++) {
                            cVar.f(i11, dataInputStream.readLong());
                        }
                        return new BloomFilter<>(cVar, i10, funnel, gVar);
                    } catch (RuntimeException e10) {
                        e = e10;
                        b10 = readByte;
                        i9 = readInt;
                        StringBuilder sb2 = new StringBuilder(134);
                        sb2.append("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ");
                        sb2.append((int) b10);
                        sb2.append(" numHashFunctions: ");
                        sb2.append(i10);
                        sb2.append(" dataLength: ");
                        sb2.append(i9);
                        throw new IOException(sb2.toString(), e);
                    }
                } catch (RuntimeException e11) {
                    e = e11;
                    b10 = readByte;
                    i9 = -1;
                    StringBuilder sb22 = new StringBuilder(134);
                    sb22.append("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ");
                    sb22.append((int) b10);
                    sb22.append(" numHashFunctions: ");
                    sb22.append(i10);
                    sb22.append(" dataLength: ");
                    sb22.append(i9);
                    throw new IOException(sb22.toString(), e);
                }
            } catch (RuntimeException e12) {
                e = e12;
                i10 = -1;
            }
        } catch (RuntimeException e13) {
            e = e13;
            i9 = -1;
            i10 = -1;
        }
    }

    public static <T> Collector<T, ?, BloomFilter<T>> toBloomFilter(Funnel<? super T> funnel, long j10) {
        return toBloomFilter(funnel, j10, 0.03d);
    }

    private Object writeReplace() {
        return new b(this);
    }

    @Override // com.google.common.base.q
    @Deprecated
    public boolean apply(T t10) {
        return mightContain(t10);
    }

    public long approximateElementCount() {
        double b10 = this.bits.b();
        return com.google.common.math.a.c(((-Math.log1p(-(this.bits.a() / b10))) * b10) / this.numHashFunctions, RoundingMode.HALF_UP);
    }

    long bitSize() {
        return this.bits.b();
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.c(), this.numHashFunctions, this.funnel, this.strategy);
    }

    @Override // com.google.common.base.q
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BloomFilter) {
            BloomFilter bloomFilter = (BloomFilter) obj;
            return this.numHashFunctions == bloomFilter.numHashFunctions && this.funnel.equals(bloomFilter.funnel) && this.bits.equals(bloomFilter.bits) && this.strategy.equals(bloomFilter.strategy);
        }
        return false;
    }

    public double expectedFpp() {
        return Math.pow(this.bits.a() / bitSize(), this.numHashFunctions);
    }

    public int hashCode() {
        return com.google.common.base.l.b(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        com.google.common.base.o.s(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public boolean mightContain(T t10) {
        return this.strategy.y(t10, this.funnel, this.numHashFunctions, this.bits);
    }

    public boolean put(T t10) {
        return this.strategy.M(t10, this.funnel, this.numHashFunctions, this.bits);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        com.google.common.base.o.s(bloomFilter);
        com.google.common.base.o.e(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i9 = this.numHashFunctions;
        int i10 = bloomFilter.numHashFunctions;
        com.google.common.base.o.i(i9 == i10, "BloomFilters must have the same number of hash functions (%s != %s)", i9, i10);
        com.google.common.base.o.k(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", bitSize(), bloomFilter.bitSize());
        com.google.common.base.o.n(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        com.google.common.base.o.n(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.e(bloomFilter.bits);
    }

    @Override // com.google.common.base.q, java.util.function.Predicate
    public /* bridge */ /* synthetic */ boolean test(Object obj) {
        return com.google.common.base.p.a(this, obj);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(com.google.common.primitives.j.a(this.strategy.ordinal()));
        dataOutputStream.writeByte(com.google.common.primitives.k.a(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.f13529a.length());
        for (int i9 = 0; i9 < this.bits.f13529a.length(); i9++) {
            dataOutputStream.writeLong(this.bits.f13529a.get(i9));
        }
    }

    private BloomFilter(g.c cVar, int i9, Funnel<? super T> funnel, c cVar2) {
        com.google.common.base.o.h(i9 > 0, "numHashFunctions (%s) must be > 0", i9);
        com.google.common.base.o.h(i9 <= 255, "numHashFunctions (%s) must be <= 255", i9);
        this.bits = (g.c) com.google.common.base.o.s(cVar);
        this.numHashFunctions = i9;
        this.funnel = (Funnel) com.google.common.base.o.s(funnel);
        this.strategy = (c) com.google.common.base.o.s(cVar2);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j10, double d10) {
        return create(funnel, j10, d10, g.f13527b);
    }

    public static <T> Collector<T, ?, BloomFilter<T>> toBloomFilter(final Funnel<? super T> funnel, final long j10, final double d10) {
        com.google.common.base.o.s(funnel);
        com.google.common.base.o.j(j10 >= 0, "Expected insertions (%s) must be >= 0", j10);
        com.google.common.base.o.m(d10 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d10));
        com.google.common.base.o.m(d10 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d10));
        return Collector.of(new Supplier() { // from class: com.google.common.hash.f
            @Override // java.util.function.Supplier
            public final Object get() {
                BloomFilter create;
                create = BloomFilter.create(Funnel.this, j10, d10);
                return create;
            }
        }, new BiConsumer() { // from class: com.google.common.hash.d
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((BloomFilter) obj).put(obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.hash.e
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return BloomFilter.lambda$toBloomFilter$1((BloomFilter) obj, (BloomFilter) obj2);
            }
        }, Collector.Characteristics.UNORDERED, Collector.Characteristics.CONCURRENT);
    }

    static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j10, double d10, c cVar) {
        com.google.common.base.o.s(funnel);
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        com.google.common.base.o.j(i9 >= 0, "Expected insertions (%s) must be >= 0", j10);
        com.google.common.base.o.m(d10 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d10));
        com.google.common.base.o.m(d10 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d10));
        com.google.common.base.o.s(cVar);
        if (i9 == 0) {
            j10 = 1;
        }
        long optimalNumOfBits = optimalNumOfBits(j10, d10);
        try {
            return new BloomFilter<>(new g.c(optimalNumOfBits), optimalNumOfHashFunctions(j10, optimalNumOfBits), funnel, cVar);
        } catch (IllegalArgumentException e10) {
            StringBuilder sb2 = new StringBuilder(57);
            sb2.append("Could not create BloomFilter of ");
            sb2.append(optimalNumOfBits);
            sb2.append(" bits");
            throw new IllegalArgumentException(sb2.toString(), e10);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i9) {
        return create(funnel, i9);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j10) {
        return create(funnel, j10, 0.03d);
    }
}
