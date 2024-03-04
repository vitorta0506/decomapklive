package com.google.common.util.concurrent;

import com.google.common.primitives.ImmutableLongArray;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleUnaryOperator;
import okhttp3.HttpUrl;
/* loaded from: classes2.dex */
public class AtomicDoubleArray implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLongArray longs;

    public AtomicDoubleArray(int i9) {
        this.longs = new AtomicLongArray(i9);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        ImmutableLongArray.c builder = ImmutableLongArray.builder();
        for (int i9 = 0; i9 < readInt; i9++) {
            builder.a(Double.doubleToRawLongBits(objectInputStream.readDouble()));
        }
        this.longs = new AtomicLongArray(builder.d().toArray());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i9 = 0; i9 < length; i9++) {
            objectOutputStream.writeDouble(get(i9));
        }
    }

    public final double accumulateAndGet(int i9, final double d10, final DoubleBinaryOperator doubleBinaryOperator) {
        com.google.common.base.o.s(doubleBinaryOperator);
        return updateAndGet(i9, new DoubleUnaryOperator() { // from class: com.google.common.util.concurrent.h
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d11) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d11, d10);
                return applyAsDouble;
            }
        });
    }

    public double addAndGet(int i9, double d10) {
        return accumulateAndGet(i9, d10, d.f13752a);
    }

    public final boolean compareAndSet(int i9, double d10, double d11) {
        return this.longs.compareAndSet(i9, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public final double get(int i9) {
        return Double.longBitsToDouble(this.longs.get(i9));
    }

    public final double getAndAccumulate(int i9, final double d10, final DoubleBinaryOperator doubleBinaryOperator) {
        com.google.common.base.o.s(doubleBinaryOperator);
        return getAndUpdate(i9, new DoubleUnaryOperator() { // from class: com.google.common.util.concurrent.g
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d11) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d11, d10);
                return applyAsDouble;
            }
        });
    }

    public final double getAndAdd(int i9, double d10) {
        return getAndAccumulate(i9, d10, d.f13752a);
    }

    public final double getAndSet(int i9, double d10) {
        return Double.longBitsToDouble(this.longs.getAndSet(i9, Double.doubleToRawLongBits(d10)));
    }

    public final double getAndUpdate(int i9, DoubleUnaryOperator doubleUnaryOperator) {
        long j10;
        double longBitsToDouble;
        do {
            j10 = this.longs.get(i9);
            longBitsToDouble = Double.longBitsToDouble(j10);
        } while (!this.longs.compareAndSet(i9, j10, Double.doubleToRawLongBits(doubleUnaryOperator.applyAsDouble(longBitsToDouble))));
        return longBitsToDouble;
    }

    public final void lazySet(int i9, double d10) {
        this.longs.lazySet(i9, Double.doubleToRawLongBits(d10));
    }

    public final int length() {
        return this.longs.length();
    }

    public final void set(int i9, double d10) {
        this.longs.set(i9, Double.doubleToRawLongBits(d10));
    }

    public String toString() {
        int length = length() - 1;
        if (length == -1) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb2 = new StringBuilder((length + 1) * 19);
        sb2.append('[');
        int i9 = 0;
        while (true) {
            sb2.append(Double.longBitsToDouble(this.longs.get(i9)));
            if (i9 == length) {
                sb2.append(']');
                return sb2.toString();
            }
            sb2.append(',');
            sb2.append(' ');
            i9++;
        }
    }

    public final double updateAndGet(int i9, DoubleUnaryOperator doubleUnaryOperator) {
        long j10;
        double applyAsDouble;
        do {
            j10 = this.longs.get(i9);
            applyAsDouble = doubleUnaryOperator.applyAsDouble(Double.longBitsToDouble(j10));
        } while (!this.longs.compareAndSet(i9, j10, Double.doubleToRawLongBits(applyAsDouble)));
        return applyAsDouble;
    }

    public final boolean weakCompareAndSet(int i9, double d10, double d11) {
        return this.longs.weakCompareAndSet(i9, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i9 = 0; i9 < length; i9++) {
            jArr[i9] = Double.doubleToRawLongBits(dArr[i9]);
        }
        this.longs = new AtomicLongArray(jArr);
    }
}
