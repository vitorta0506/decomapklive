package com.tencent.liteav.videoconsumer.decoder;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4.dex */
public final class q {

    /* renamed from: b  reason: collision with root package name */
    int f32303b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f32304c;

    /* renamed from: d  reason: collision with root package name */
    private int f32305d;

    /* renamed from: e  reason: collision with root package name */
    private int f32306e;

    /* renamed from: f  reason: collision with root package name */
    private final OutputStream f32307f;

    /* renamed from: h  reason: collision with root package name */
    private int f32309h;

    /* renamed from: a  reason: collision with root package name */
    protected a f32302a = new a();

    /* renamed from: g  reason: collision with root package name */
    private int[] f32308g = new int[8];

    public q(InputStream inputStream, OutputStream outputStream) throws IOException {
        this.f32304c = inputStream;
        this.f32307f = outputStream;
        this.f32305d = inputStream.read();
        this.f32306e = inputStream.read();
    }

    private int c(boolean z10) throws IOException {
        if (this.f32303b == 8) {
            f();
            if (this.f32305d == -1) {
                return -1;
            }
        }
        int i9 = this.f32305d;
        int i10 = this.f32303b;
        int i11 = (i9 >> (7 - i10)) & 1;
        this.f32303b = i10 + 1;
        if (z10 && this.f32307f != null) {
            f(i11);
        }
        return i11;
    }

    private long e(int i9) throws IOException {
        if (i9 <= 64) {
            long j10 = 0;
            for (int i10 = 0; i10 < i9; i10++) {
                j10 = (j10 << 1) | c(true);
            }
            return j10;
        }
        throw new IllegalArgumentException("Can not readByte more then 64 bit");
    }

    private void f() throws IOException {
        this.f32305d = this.f32306e;
        this.f32306e = this.f32304c.read();
        this.f32303b = 0;
    }

    private int g() throws IOException {
        int i9 = 0;
        while (c(true) == 0) {
            i9++;
        }
        if (i9 > 0) {
            return (int) (((1 << i9) - 1) + e(i9));
        }
        return 0;
    }

    private void h() throws IOException {
        int[] iArr = this.f32308g;
        this.f32307f.write(iArr[7] | (iArr[0] << 7) | (iArr[1] << 6) | (iArr[2] << 5) | (iArr[3] << 4) | (iArr[4] << 3) | (iArr[5] << 2) | (iArr[6] << 1));
    }

    public final boolean a(boolean z10) throws IOException {
        return c(z10) == 1;
    }

    public final void b(int i9) throws IOException {
        a(i9);
    }

    public final void d() throws IOException {
        int i9 = 0;
        while (c(true) == 0) {
            i9++;
        }
        if (i9 > 0) {
            a(i9);
        }
    }

    public final long a() throws IOException {
        long e10 = e(8);
        String.valueOf(e10);
        return e10;
    }

    public final int b() throws IOException {
        int i9 = 0;
        while (c(false) == 0) {
            i9++;
        }
        if (i9 > 0) {
            if (i9 <= 64) {
                long j10 = 0;
                for (int i10 = 0; i10 < i9; i10++) {
                    j10 = (j10 << 1) | c(false);
                }
                return (int) (((1 << i9) - 1) + j10);
            }
            throw new IllegalArgumentException("Can not readByte more then 64 bit");
        }
        return 0;
    }

    public final void d(int i9) throws IOException {
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= 15) {
                break;
            }
            int i13 = (1 << i11) + i12;
            if (i9 < i13) {
                i10 = i11;
                break;
            } else {
                i11++;
                i12 = i13;
            }
        }
        a(0L, i10);
        f(1);
        a(i9 - i12, i10);
    }

    public final void e() throws IOException {
        f(1);
        a(0L, 8 - this.f32309h);
        for (int i9 = this.f32309h; i9 < 8; i9++) {
            this.f32308g[i9] = 0;
        }
        this.f32309h = 0;
        h();
    }

    private void f(int i9) throws IOException {
        if (this.f32309h == 8) {
            this.f32309h = 0;
            h();
        }
        int[] iArr = this.f32308g;
        int i10 = this.f32309h;
        this.f32309h = i10 + 1;
        iArr[i10] = i9;
    }

    public final void a(int i9) throws IOException {
        if (i9 > 64) {
            throw new IllegalArgumentException("Can not skip more then 64 bit");
        }
        for (int i10 = 0; i10 < i9; i10++) {
            c(true);
        }
    }

    public final void b(boolean z10) throws IOException {
        f(z10 ? 1 : 0);
    }

    private void a(long j10, int i9) throws IOException {
        for (int i10 = 0; i10 < i9; i10++) {
            f(((int) (j10 >> ((i9 - i10) - 1))) & 1);
        }
    }

    public final int c() throws IOException {
        int g10 = g();
        String.valueOf(g10);
        return g10;
    }

    public final void c(int i9) throws IOException {
        int[] iArr = new int[i9];
        int i10 = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i9; i12++) {
            if (i10 != 0) {
                int g10 = g();
                int i13 = g10 & 1;
                int i14 = ((g10 >> 1) + i13) * ((i13 << 1) - 1);
                String.valueOf(i14);
                i10 = ((i14 + i11) + 256) % 256;
            }
            if (i10 != 0) {
                i11 = i10;
            }
            iArr[i12] = i11;
            i11 = iArr[i12];
        }
    }
}
