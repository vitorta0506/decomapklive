package c2;

import com.google.android.exoplayer2.i1;
import com.google.android.exoplayer2.util.l0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class f implements m {

    /* renamed from: b  reason: collision with root package name */
    private final j3.f f1489b;

    /* renamed from: c  reason: collision with root package name */
    private final long f1490c;

    /* renamed from: d  reason: collision with root package name */
    private long f1491d;

    /* renamed from: f  reason: collision with root package name */
    private int f1493f;

    /* renamed from: g  reason: collision with root package name */
    private int f1494g;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f1492e = new byte[65536];

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1488a = new byte[4096];

    static {
        i1.a("goog.exo.extractor");
    }

    public f(j3.f fVar, long j10, long j11) {
        this.f1489b = fVar;
        this.f1491d = j10;
        this.f1490c = j11;
    }

    private void n(int i9) {
        if (i9 != -1) {
            this.f1491d += i9;
        }
    }

    private void o(int i9) {
        int i10 = this.f1493f + i9;
        byte[] bArr = this.f1492e;
        if (i10 > bArr.length) {
            this.f1492e = Arrays.copyOf(this.f1492e, l0.p(bArr.length * 2, 65536 + i10, i10 + 524288));
        }
    }

    private int p(byte[] bArr, int i9, int i10) {
        int i11 = this.f1494g;
        if (i11 == 0) {
            return 0;
        }
        int min = Math.min(i11, i10);
        System.arraycopy(this.f1492e, 0, bArr, i9, min);
        t(min);
        return min;
    }

    private int q(byte[] bArr, int i9, int i10, int i11, boolean z10) throws IOException {
        if (!Thread.interrupted()) {
            int read = this.f1489b.read(bArr, i9 + i11, i10 - i11);
            if (read == -1) {
                if (i11 == 0 && z10) {
                    return -1;
                }
                throw new EOFException();
            }
            return i11 + read;
        }
        throw new InterruptedIOException();
    }

    private int r(int i9) {
        int min = Math.min(this.f1494g, i9);
        t(min);
        return min;
    }

    private void t(int i9) {
        int i10 = this.f1494g - i9;
        this.f1494g = i10;
        this.f1493f = 0;
        byte[] bArr = this.f1492e;
        byte[] bArr2 = i10 < bArr.length - 524288 ? new byte[65536 + i10] : bArr;
        System.arraycopy(bArr, i9, bArr2, 0, i10);
        this.f1492e = bArr2;
    }

    @Override // c2.m
    public long a() {
        return this.f1490c;
    }

    @Override // c2.m
    public boolean d(byte[] bArr, int i9, int i10, boolean z10) throws IOException {
        if (l(i10, z10)) {
            System.arraycopy(this.f1492e, this.f1493f - i10, bArr, i9, i10);
            return true;
        }
        return false;
    }

    @Override // c2.m
    public void f() {
        this.f1493f = 0;
    }

    @Override // c2.m
    public boolean g(byte[] bArr, int i9, int i10, boolean z10) throws IOException {
        int p10 = p(bArr, i9, i10);
        while (p10 < i10 && p10 != -1) {
            p10 = q(bArr, i9, i10, p10, z10);
        }
        n(p10);
        return p10 != -1;
    }

    @Override // c2.m
    public long getPosition() {
        return this.f1491d;
    }

    @Override // c2.m
    public long h() {
        return this.f1491d + this.f1493f;
    }

    @Override // c2.m
    public void i(int i9) throws IOException {
        l(i9, false);
    }

    @Override // c2.m
    public int j(byte[] bArr, int i9, int i10) throws IOException {
        int min;
        o(i10);
        int i11 = this.f1494g;
        int i12 = this.f1493f;
        int i13 = i11 - i12;
        if (i13 == 0) {
            min = q(this.f1492e, i12, i10, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f1494g += min;
        } else {
            min = Math.min(i10, i13);
        }
        System.arraycopy(this.f1492e, this.f1493f, bArr, i9, min);
        this.f1493f += min;
        return min;
    }

    @Override // c2.m
    public void k(int i9) throws IOException {
        s(i9, false);
    }

    @Override // c2.m
    public boolean l(int i9, boolean z10) throws IOException {
        o(i9);
        int i10 = this.f1494g - this.f1493f;
        while (i10 < i9) {
            i10 = q(this.f1492e, this.f1493f, i9, i10, z10);
            if (i10 == -1) {
                return false;
            }
            this.f1494g = this.f1493f + i10;
        }
        this.f1493f += i9;
        return true;
    }

    @Override // c2.m
    public void m(byte[] bArr, int i9, int i10) throws IOException {
        d(bArr, i9, i10, false);
    }

    @Override // c2.m, j3.f
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int p10 = p(bArr, i9, i10);
        if (p10 == 0) {
            p10 = q(bArr, i9, i10, 0, true);
        }
        n(p10);
        return p10;
    }

    @Override // c2.m
    public void readFully(byte[] bArr, int i9, int i10) throws IOException {
        g(bArr, i9, i10, false);
    }

    public boolean s(int i9, boolean z10) throws IOException {
        int r10 = r(i9);
        while (r10 < i9 && r10 != -1) {
            r10 = q(this.f1488a, -r10, Math.min(i9, this.f1488a.length + r10), r10, z10);
        }
        n(r10);
        return r10 != -1;
    }

    @Override // c2.m
    public int skip(int i9) throws IOException {
        int r10 = r(i9);
        if (r10 == 0) {
            byte[] bArr = this.f1488a;
            r10 = q(bArr, 0, Math.min(i9, bArr.length), 0, true);
        }
        n(r10);
        return r10;
    }
}
