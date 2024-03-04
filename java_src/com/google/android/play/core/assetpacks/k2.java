package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class k2 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f10315a = new byte[4096];

    /* renamed from: b  reason: collision with root package name */
    private int f10316b;

    /* renamed from: c  reason: collision with root package name */
    private long f10317c;

    /* renamed from: d  reason: collision with root package name */
    private long f10318d;

    /* renamed from: e  reason: collision with root package name */
    private int f10319e;

    /* renamed from: f  reason: collision with root package name */
    private int f10320f;

    /* renamed from: g  reason: collision with root package name */
    private int f10321g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f10322h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f10323i;

    public k2() {
        d();
    }

    private final int e(int i9, byte[] bArr, int i10, int i11) {
        int i12 = this.f10316b;
        if (i12 < i9) {
            int min = Math.min(i11, i9 - i12);
            System.arraycopy(bArr, i10, this.f10315a, this.f10316b, min);
            int i13 = this.f10316b + min;
            this.f10316b = i13;
            if (i13 < i9) {
                return -1;
            }
            return min;
        }
        return 0;
    }

    public final int a() {
        return this.f10320f;
    }

    public final int b(byte[] bArr, int i9, int i10) {
        int e10 = e(30, bArr, i9, i10);
        if (e10 != -1) {
            if (this.f10317c == -1) {
                long b10 = n0.b(this.f10315a, 0);
                this.f10317c = b10;
                if (b10 == 67324752) {
                    this.f10322h = false;
                    this.f10318d = n0.b(this.f10315a, 18);
                    this.f10321g = n0.a(this.f10315a, 8);
                    this.f10319e = n0.a(this.f10315a, 26);
                    int a10 = this.f10319e + 30 + n0.a(this.f10315a, 28);
                    this.f10320f = a10;
                    int length = this.f10315a.length;
                    if (length < a10) {
                        do {
                            length += length;
                        } while (length < a10);
                        this.f10315a = Arrays.copyOf(this.f10315a, length);
                    }
                } else {
                    this.f10322h = true;
                }
            }
            int e11 = e(this.f10320f, bArr, i9 + e10, i10 - e10);
            if (e11 == -1) {
                return -1;
            }
            int i11 = e10 + e11;
            if (!this.f10322h && this.f10323i == null) {
                this.f10323i = new String(this.f10315a, 30, this.f10319e);
            }
            return i11;
        }
        return -1;
    }

    public final l3 c() {
        int i9 = this.f10316b;
        int i10 = this.f10320f;
        if (i9 < i10) {
            return new m0(this.f10323i, this.f10318d, this.f10321g, true, this.f10322h, Arrays.copyOf(this.f10315a, i9));
        }
        m0 m0Var = new m0(this.f10323i, this.f10318d, this.f10321g, false, this.f10322h, Arrays.copyOf(this.f10315a, i10));
        d();
        return m0Var;
    }

    public final void d() {
        this.f10316b = 0;
        this.f10319e = -1;
        this.f10317c = -1L;
        this.f10322h = false;
        this.f10320f = 30;
        this.f10318d = -1L;
        this.f10321g = -1;
        this.f10323i = null;
    }
}
