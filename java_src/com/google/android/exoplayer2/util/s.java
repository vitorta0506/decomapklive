package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private int f7032a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f7033b;

    public s() {
        this(32);
    }

    public void a(long j10) {
        int i9 = this.f7032a;
        long[] jArr = this.f7033b;
        if (i9 == jArr.length) {
            this.f7033b = Arrays.copyOf(jArr, i9 * 2);
        }
        long[] jArr2 = this.f7033b;
        int i10 = this.f7032a;
        this.f7032a = i10 + 1;
        jArr2[i10] = j10;
    }

    public long b(int i9) {
        if (i9 >= 0 && i9 < this.f7032a) {
            return this.f7033b[i9];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i9 + ", size is " + this.f7032a);
    }

    public int c() {
        return this.f7032a;
    }

    public long[] d() {
        return Arrays.copyOf(this.f7033b, this.f7032a);
    }

    public s(int i9) {
        this.f7033b = new long[i9];
    }
}
