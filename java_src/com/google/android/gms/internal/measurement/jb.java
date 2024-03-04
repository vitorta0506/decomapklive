package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class jb extends kb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public jb(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.kb
    public final double a(Object obj, long j10) {
        return Double.longBitsToDouble(k(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.kb
    public final float b(Object obj, long j10) {
        return Float.intBitsToFloat(j(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.kb
    public final void c(Object obj, long j10, boolean z10) {
        if (lb.f8191h) {
            lb.d(obj, j10, r3 ? (byte) 1 : (byte) 0);
        } else {
            lb.e(obj, j10, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.kb
    public final void d(Object obj, long j10, byte b10) {
        if (lb.f8191h) {
            lb.d(obj, j10, b10);
        } else {
            lb.e(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.kb
    public final void e(Object obj, long j10, double d10) {
        o(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.kb
    public final void f(Object obj, long j10, float f10) {
        n(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.kb
    public final boolean g(Object obj, long j10) {
        if (lb.f8191h) {
            return lb.y(obj, j10);
        }
        return lb.z(obj, j10);
    }
}
