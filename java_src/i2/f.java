package i2;

import c2.m;
import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
import kotlin.UByte;
/* loaded from: classes.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f40930a = new b0(8);

    /* renamed from: b  reason: collision with root package name */
    private int f40931b;

    private long a(m mVar) throws IOException {
        int i9 = 0;
        mVar.m(this.f40930a.d(), 0, 1);
        int i10 = this.f40930a.d()[0] & UByte.MAX_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int i11 = 128;
        int i12 = 0;
        while ((i10 & i11) == 0) {
            i11 >>= 1;
            i12++;
        }
        int i13 = i10 & (~i11);
        mVar.m(this.f40930a.d(), 1, i12);
        while (i9 < i12) {
            i9++;
            i13 = (this.f40930a.d()[i9] & UByte.MAX_VALUE) + (i13 << 8);
        }
        this.f40931b += i12 + 1;
        return i13;
    }

    public boolean b(m mVar) throws IOException {
        long a10;
        int i9;
        long a11 = mVar.a();
        long j10 = 1024;
        int i10 = (a11 > (-1L) ? 1 : (a11 == (-1L) ? 0 : -1));
        if (i10 != 0 && a11 <= 1024) {
            j10 = a11;
        }
        int i11 = (int) j10;
        mVar.m(this.f40930a.d(), 0, 4);
        long F = this.f40930a.F();
        this.f40931b = 4;
        while (F != 440786851) {
            int i12 = this.f40931b + 1;
            this.f40931b = i12;
            if (i12 == i11) {
                return false;
            }
            mVar.m(this.f40930a.d(), 0, 1);
            F = ((F << 8) & (-256)) | (this.f40930a.d()[0] & UByte.MAX_VALUE);
        }
        long a12 = a(mVar);
        long j11 = this.f40931b;
        if (a12 == Long.MIN_VALUE) {
            return false;
        }
        if (i10 != 0 && j11 + a12 >= a11) {
            return false;
        }
        while (true) {
            int i13 = this.f40931b;
            long j12 = j11 + a12;
            if (i13 >= j12) {
                return ((long) i13) == j12;
            } else if (a(mVar) != Long.MIN_VALUE && (a(mVar)) >= 0 && a10 <= 2147483647L) {
                if (i9 != 0) {
                    int i14 = (int) a10;
                    mVar.i(i14);
                    this.f40931b += i14;
                }
            }
        }
    }
}
