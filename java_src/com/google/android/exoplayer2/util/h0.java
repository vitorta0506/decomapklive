package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class h0<V> {

    /* renamed from: a  reason: collision with root package name */
    private long[] f6969a;

    /* renamed from: b  reason: collision with root package name */
    private V[] f6970b;

    /* renamed from: c  reason: collision with root package name */
    private int f6971c;

    /* renamed from: d  reason: collision with root package name */
    private int f6972d;

    public h0() {
        this(10);
    }

    private void b(long j10, V v10) {
        int i9 = this.f6971c;
        int i10 = this.f6972d;
        V[] vArr = this.f6970b;
        int length = (i9 + i10) % vArr.length;
        this.f6969a[length] = j10;
        vArr[length] = v10;
        this.f6972d = i10 + 1;
    }

    private void d(long j10) {
        int i9 = this.f6972d;
        if (i9 > 0) {
            if (j10 <= this.f6969a[((this.f6971c + i9) - 1) % this.f6970b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f6970b.length;
        if (this.f6972d < length) {
            return;
        }
        int i9 = length * 2;
        long[] jArr = new long[i9];
        V[] vArr = (V[]) f(i9);
        int i10 = this.f6971c;
        int i11 = length - i10;
        System.arraycopy(this.f6969a, i10, jArr, 0, i11);
        System.arraycopy(this.f6970b, this.f6971c, vArr, 0, i11);
        int i12 = this.f6971c;
        if (i12 > 0) {
            System.arraycopy(this.f6969a, 0, jArr, i11, i12);
            System.arraycopy(this.f6970b, 0, vArr, i11, this.f6971c);
        }
        this.f6969a = jArr;
        this.f6970b = vArr;
        this.f6971c = 0;
    }

    private static <V> V[] f(int i9) {
        return (V[]) new Object[i9];
    }

    @Nullable
    private V h(long j10, boolean z10) {
        V v10 = null;
        long j11 = Long.MAX_VALUE;
        while (this.f6972d > 0) {
            long j12 = j10 - this.f6969a[this.f6971c];
            if (j12 < 0 && (z10 || (-j12) >= j11)) {
                break;
            }
            v10 = k();
            j11 = j12;
        }
        return v10;
    }

    @Nullable
    private V k() {
        a.f(this.f6972d > 0);
        V[] vArr = this.f6970b;
        int i9 = this.f6971c;
        V v10 = vArr[i9];
        vArr[i9] = null;
        this.f6971c = (i9 + 1) % vArr.length;
        this.f6972d--;
        return v10;
    }

    public synchronized void a(long j10, V v10) {
        d(j10);
        e();
        b(j10, v10);
    }

    public synchronized void c() {
        this.f6971c = 0;
        this.f6972d = 0;
        Arrays.fill(this.f6970b, (Object) null);
    }

    @Nullable
    public synchronized V g(long j10) {
        return h(j10, false);
    }

    @Nullable
    public synchronized V i() {
        return this.f6972d == 0 ? null : k();
    }

    @Nullable
    public synchronized V j(long j10) {
        return h(j10, true);
    }

    public synchronized int l() {
        return this.f6972d;
    }

    public h0(int i9) {
        this.f6969a = new long[i9];
        this.f6970b = (V[]) f(i9);
    }
}
