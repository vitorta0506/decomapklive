package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleUnaryOperator;
/* loaded from: classes2.dex */
public class AtomicDouble extends Number {
    private static final long serialVersionUID = 0;
    private static final AtomicLongFieldUpdater<AtomicDouble> updater = AtomicLongFieldUpdater.newUpdater(AtomicDouble.class, "value");
    private volatile transient long value;

    public AtomicDouble(double d10) {
        this.value = Double.doubleToRawLongBits(d10);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        set(objectInputStream.readDouble());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    public final double accumulateAndGet(final double d10, final DoubleBinaryOperator doubleBinaryOperator) {
        com.google.common.base.o.s(doubleBinaryOperator);
        return updateAndGet(new DoubleUnaryOperator() { // from class: com.google.common.util.concurrent.f
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d11) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d11, d10);
                return applyAsDouble;
            }
        });
    }

    public final double addAndGet(double d10) {
        return accumulateAndGet(d10, d.f13752a);
    }

    public final boolean compareAndSet(double d10, double d11) {
        return updater.compareAndSet(this, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    public final double get() {
        return Double.longBitsToDouble(this.value);
    }

    public final double getAndAccumulate(final double d10, final DoubleBinaryOperator doubleBinaryOperator) {
        com.google.common.base.o.s(doubleBinaryOperator);
        return getAndUpdate(new DoubleUnaryOperator() { // from class: com.google.common.util.concurrent.e
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d11) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d11, d10);
                return applyAsDouble;
            }
        });
    }

    public final double getAndAdd(double d10) {
        return getAndAccumulate(d10, d.f13752a);
    }

    public final double getAndSet(double d10) {
        return Double.longBitsToDouble(updater.getAndSet(this, Double.doubleToRawLongBits(d10)));
    }

    public final double getAndUpdate(DoubleUnaryOperator doubleUnaryOperator) {
        long j10;
        double longBitsToDouble;
        do {
            j10 = this.value;
            longBitsToDouble = Double.longBitsToDouble(j10);
        } while (!updater.compareAndSet(this, j10, Double.doubleToRawLongBits(doubleUnaryOperator.applyAsDouble(longBitsToDouble))));
        return longBitsToDouble;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    public final void lazySet(double d10) {
        updater.lazySet(this, Double.doubleToRawLongBits(d10));
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    public final void set(double d10) {
        this.value = Double.doubleToRawLongBits(d10);
    }

    public String toString() {
        return Double.toString(get());
    }

    public final double updateAndGet(DoubleUnaryOperator doubleUnaryOperator) {
        long j10;
        double applyAsDouble;
        do {
            j10 = this.value;
            applyAsDouble = doubleUnaryOperator.applyAsDouble(Double.longBitsToDouble(j10));
        } while (!updater.compareAndSet(this, j10, Double.doubleToRawLongBits(applyAsDouble)));
        return applyAsDouble;
    }

    public final boolean weakCompareAndSet(double d10, double d11) {
        return updater.weakCompareAndSet(this, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public AtomicDouble() {
    }
}
