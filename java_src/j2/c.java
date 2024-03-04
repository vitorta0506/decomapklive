package j2;

import android.util.Pair;
import c2.b0;
import c2.c0;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f52966a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f52967b;

    /* renamed from: c  reason: collision with root package name */
    private final long f52968c;

    private c(long[] jArr, long[] jArr2, long j10) {
        this.f52966a = jArr;
        this.f52967b = jArr2;
        this.f52968c = j10 == -9223372036854775807L ? l0.w0(jArr2[jArr2.length - 1]) : j10;
    }

    public static c a(long j10, MlltFrame mlltFrame, long j11) {
        int length = mlltFrame.bytesDeviations.length;
        int i9 = length + 1;
        long[] jArr = new long[i9];
        long[] jArr2 = new long[i9];
        jArr[0] = j10;
        long j12 = 0;
        jArr2[0] = 0;
        for (int i10 = 1; i10 <= length; i10++) {
            int i11 = i10 - 1;
            j10 += mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i11];
            j12 += mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i11];
            jArr[i10] = j10;
            jArr2[i10] = j12;
        }
        return new c(jArr, jArr2, j11);
    }

    private static Pair<Long, Long> b(long j10, long[] jArr, long[] jArr2) {
        int i9 = l0.i(jArr, j10, true, true);
        long j11 = jArr[i9];
        long j12 = jArr2[i9];
        int i10 = i9 + 1;
        if (i10 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i10];
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) ((j13 == j11 ? 0.0d : (j10 - j11) / (j13 - j11)) * (jArr2[i10] - j12))) + j12));
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        Pair<Long, Long> b10 = b(l0.P0(l0.q(j10, 0L, this.f52968c)), this.f52967b, this.f52966a);
        return new b0.a(new c0(l0.w0(((Long) b10.first).longValue()), ((Long) b10.second).longValue()));
    }

    @Override // j2.g
    public long d() {
        return -1L;
    }

    @Override // c2.b0
    public boolean e() {
        return true;
    }

    @Override // j2.g
    public long g(long j10) {
        return l0.w0(((Long) b(j10, this.f52966a, this.f52967b).second).longValue());
    }

    @Override // c2.b0
    public long i() {
        return this.f52968c;
    }
}
