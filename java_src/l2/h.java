package l2;

import c2.h0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.c0;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.b0;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;
import kotlin.UByte;
import l2.i;
import okio.Utf8;
/* loaded from: classes.dex */
final class h extends i {

    /* renamed from: o  reason: collision with root package name */
    private static final byte[] f54154o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: p  reason: collision with root package name */
    private static final byte[] f54155p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: n  reason: collision with root package name */
    private boolean f54156n;

    private long n(byte[] bArr) {
        int i9 = bArr[0] & UByte.MAX_VALUE;
        int i10 = i9 & 3;
        int i11 = 2;
        if (i10 == 0) {
            i11 = 1;
        } else if (i10 != 1 && i10 != 2) {
            i11 = bArr[1] & Utf8.REPLACEMENT_BYTE;
        }
        int i12 = i9 >> 3;
        int i13 = i12 & 3;
        return i11 * (i12 >= 16 ? 2500 << i13 : i12 >= 12 ? 10000 << (i13 & 1) : i13 == 3 ? 60000 : 10000 << i13);
    }

    private static boolean o(b0 b0Var, byte[] bArr) {
        if (b0Var.a() < bArr.length) {
            return false;
        }
        int e10 = b0Var.e();
        byte[] bArr2 = new byte[bArr.length];
        b0Var.j(bArr2, 0, bArr.length);
        b0Var.P(e10);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean p(b0 b0Var) {
        return o(b0Var, f54154o);
    }

    @Override // l2.i
    protected long f(b0 b0Var) {
        return c(n(b0Var.d()));
    }

    @Override // l2.i
    protected boolean i(b0 b0Var, long j10, i.b bVar) throws ParserException {
        if (o(b0Var, f54154o)) {
            byte[] copyOf = Arrays.copyOf(b0Var.d(), b0Var.f());
            int c10 = c0.c(copyOf);
            List<byte[]> a10 = c0.a(copyOf);
            if (bVar.f54170a != null) {
                return true;
            }
            bVar.f54170a = new k1.b().e0("audio/opus").H(c10).f0(48000).T(a10).E();
            return true;
        }
        byte[] bArr = f54155p;
        if (o(b0Var, bArr)) {
            com.google.android.exoplayer2.util.a.h(bVar.f54170a);
            if (this.f54156n) {
                return true;
            }
            this.f54156n = true;
            b0Var.Q(bArr.length);
            Metadata c11 = h0.c(ImmutableList.copyOf(h0.j(b0Var, false, false).f1514b));
            if (c11 == null) {
                return true;
            }
            bVar.f54170a = bVar.f54170a.b().X(c11.b(bVar.f54170a.f6109j)).E();
            return true;
        }
        com.google.android.exoplayer2.util.a.h(bVar.f54170a);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // l2.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f54156n = false;
        }
    }
}
