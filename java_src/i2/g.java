package i2;

import c2.m;
import java.io.IOException;
import kotlin.UByte;
/* loaded from: classes.dex */
final class g {

    /* renamed from: d  reason: collision with root package name */
    private static final long[] f40932d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f40933a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private int f40934b;

    /* renamed from: c  reason: collision with root package name */
    private int f40935c;

    public static long a(byte[] bArr, int i9, boolean z10) {
        long j10 = bArr[0] & 255;
        if (z10) {
            j10 &= ~f40932d[i9 - 1];
        }
        for (int i10 = 1; i10 < i9; i10++) {
            j10 = (j10 << 8) | (bArr[i10] & 255);
        }
        return j10;
    }

    public static int c(int i9) {
        int i10 = 0;
        while (true) {
            long[] jArr = f40932d;
            if (i10 >= jArr.length) {
                return -1;
            }
            if ((jArr[i10] & i9) != 0) {
                return i10 + 1;
            }
            i10++;
        }
    }

    public int b() {
        return this.f40935c;
    }

    public long d(m mVar, boolean z10, boolean z11, int i9) throws IOException {
        if (this.f40934b == 0) {
            if (!mVar.g(this.f40933a, 0, 1, z10)) {
                return -1L;
            }
            int c10 = c(this.f40933a[0] & UByte.MAX_VALUE);
            this.f40935c = c10;
            if (c10 != -1) {
                this.f40934b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i10 = this.f40935c;
        if (i10 > i9) {
            this.f40934b = 0;
            return -2L;
        }
        if (i10 != 1) {
            mVar.readFully(this.f40933a, 1, i10 - 1);
        }
        this.f40934b = 0;
        return a(this.f40933a, this.f40935c, z11);
    }

    public void e() {
        this.f40934b = 0;
        this.f40935c = 0;
    }
}
