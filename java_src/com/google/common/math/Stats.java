package com.google.common.math;

import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
/* loaded from: classes2.dex */
public final class Stats implements Serializable {
    static final int BYTES = 40;
    private static final long serialVersionUID = 0;
    private final long count;
    private final double max;
    private final double mean;
    private final double min;
    private final double sumOfSquaresOfDeltas;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Stats(long j10, double d10, double d11, double d12, double d13) {
        this.count = j10;
        this.mean = d10;
        this.sumOfSquaresOfDeltas = d11;
        this.min = d12;
        this.max = d13;
    }

    public static Stats fromByteArray(byte[] bArr) {
        com.google.common.base.o.s(bArr);
        com.google.common.base.o.i(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toStats$0(o oVar, Number number) {
        oVar.a(number.doubleValue());
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.common.math.o lambda$toStats$1(com.google.common.math.o r0, com.google.common.math.o r1) {
        /*
            r0.b(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.Stats.lambda$toStats$1(com.google.common.math.o, com.google.common.math.o):com.google.common.math.o");
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static Stats of(Iterable<? extends Number> iterable) {
        o oVar = new o();
        oVar.c(iterable);
        return oVar.n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Stats readFrom(ByteBuffer byteBuffer) {
        com.google.common.base.o.s(byteBuffer);
        com.google.common.base.o.i(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public static Collector<Number, o, Stats> toStats() {
        return Collector.of(n.f13616a, new BiConsumer() { // from class: com.google.common.math.h
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Stats.lambda$toStats$0((o) obj, (Number) obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.math.i
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Stats.lambda$toStats$1((o) obj, (o) obj2);
            }
        }, new Function() { // from class: com.google.common.math.j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((o) obj).n();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public long count() {
        return this.count;
    }

    public boolean equals(Object obj) {
        if (obj != null && Stats.class == obj.getClass()) {
            Stats stats = (Stats) obj;
            return this.count == stats.count && Double.doubleToLongBits(this.mean) == Double.doubleToLongBits(stats.mean) && Double.doubleToLongBits(this.sumOfSquaresOfDeltas) == Double.doubleToLongBits(stats.sumOfSquaresOfDeltas) && Double.doubleToLongBits(this.min) == Double.doubleToLongBits(stats.min) && Double.doubleToLongBits(this.max) == Double.doubleToLongBits(stats.max);
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(Long.valueOf(this.count), Double.valueOf(this.mean), Double.valueOf(this.sumOfSquaresOfDeltas), Double.valueOf(this.min), Double.valueOf(this.max));
    }

    public double max() {
        com.google.common.base.o.z(this.count != 0);
        return this.max;
    }

    public double mean() {
        com.google.common.base.o.z(this.count != 0);
        return this.mean;
    }

    public double min() {
        com.google.common.base.o.z(this.count != 0);
        return this.min;
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double populationVariance() {
        com.google.common.base.o.z(this.count > 0);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        if (this.count == 1) {
            return 0.0d;
        }
        return b.a(this.sumOfSquaresOfDeltas) / count();
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double sampleVariance() {
        com.google.common.base.o.z(this.count > 1);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        return b.a(this.sumOfSquaresOfDeltas) / (this.count - 1);
    }

    public double sum() {
        return this.mean * this.count;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double sumOfSquaresOfDeltas() {
        return this.sumOfSquaresOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        writeTo(order);
        return order.array();
    }

    public String toString() {
        if (count() > 0) {
            return com.google.common.base.j.c(this).c(AnimatedPasterJsonConfig.CONFIG_COUNT, this.count).a("mean", this.mean).a("populationStandardDeviation", populationStandardDeviation()).a("min", this.min).a("max", this.max).toString();
        }
        return com.google.common.base.j.c(this).c(AnimatedPasterJsonConfig.CONFIG_COUNT, this.count).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeTo(ByteBuffer byteBuffer) {
        com.google.common.base.o.s(byteBuffer);
        com.google.common.base.o.i(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.count).putDouble(this.mean).putDouble(this.sumOfSquaresOfDeltas).putDouble(this.min).putDouble(this.max);
    }

    public static double meanOf(Iterator<? extends Number> it) {
        com.google.common.base.o.d(it.hasNext());
        double doubleValue = it.next().doubleValue();
        long j10 = 1;
        while (it.hasNext()) {
            double doubleValue2 = it.next().doubleValue();
            j10++;
            doubleValue = (com.google.common.primitives.b.f(doubleValue2) && com.google.common.primitives.b.f(doubleValue)) ? doubleValue + ((doubleValue2 - doubleValue) / j10) : o.h(doubleValue, doubleValue2);
        }
        return doubleValue;
    }

    public static Stats of(Iterator<? extends Number> it) {
        o oVar = new o();
        oVar.d(it);
        return oVar.n();
    }

    public static Stats of(double... dArr) {
        o oVar = new o();
        oVar.e(dArr);
        return oVar.n();
    }

    public static double meanOf(double... dArr) {
        com.google.common.base.o.d(dArr.length > 0);
        double d10 = dArr[0];
        for (int i9 = 1; i9 < dArr.length; i9++) {
            double d11 = dArr[i9];
            d10 = (com.google.common.primitives.b.f(d11) && com.google.common.primitives.b.f(d10)) ? d10 + ((d11 - d10) / (i9 + 1)) : o.h(d10, d11);
        }
        return d10;
    }

    public static Stats of(int... iArr) {
        o oVar = new o();
        oVar.f(iArr);
        return oVar.n();
    }

    public static Stats of(long... jArr) {
        o oVar = new o();
        oVar.g(jArr);
        return oVar.n();
    }

    public static double meanOf(int... iArr) {
        com.google.common.base.o.d(iArr.length > 0);
        double d10 = iArr[0];
        for (int i9 = 1; i9 < iArr.length; i9++) {
            double d11 = iArr[i9];
            d10 = (com.google.common.primitives.b.f(d11) && com.google.common.primitives.b.f(d10)) ? d10 + ((d11 - d10) / (i9 + 1)) : o.h(d10, d11);
        }
        return d10;
    }

    public static Stats of(DoubleStream doubleStream) {
        return ((o) doubleStream.collect(n.f13616a, new ObjDoubleConsumer() { // from class: com.google.common.math.k
            @Override // java.util.function.ObjDoubleConsumer
            public final void accept(Object obj, double d10) {
                ((o) obj).a(d10);
            }
        }, g.f13609a)).n();
    }

    public static Stats of(IntStream intStream) {
        return ((o) intStream.collect(n.f13616a, new ObjIntConsumer() { // from class: com.google.common.math.l
            @Override // java.util.function.ObjIntConsumer
            public final void accept(Object obj, int i9) {
                ((o) obj).a(i9);
            }
        }, g.f13609a)).n();
    }

    public static double meanOf(long... jArr) {
        com.google.common.base.o.d(jArr.length > 0);
        double d10 = jArr[0];
        for (int i9 = 1; i9 < jArr.length; i9++) {
            double d11 = jArr[i9];
            d10 = (com.google.common.primitives.b.f(d11) && com.google.common.primitives.b.f(d10)) ? d10 + ((d11 - d10) / (i9 + 1)) : o.h(d10, d11);
        }
        return d10;
    }

    public static Stats of(LongStream longStream) {
        return ((o) longStream.collect(n.f13616a, new ObjLongConsumer() { // from class: com.google.common.math.m
            @Override // java.util.function.ObjLongConsumer
            public final void accept(Object obj, long j10) {
                ((o) obj).a(j10);
            }
        }, g.f13609a)).n();
    }
}
