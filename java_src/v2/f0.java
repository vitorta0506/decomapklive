package v2;

import androidx.annotation.Nullable;
import c2.e0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import j3.b;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import v2.h0;
/* loaded from: classes.dex */
class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final j3.b f58798a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58799b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f58800c;

    /* renamed from: d  reason: collision with root package name */
    private a f58801d;

    /* renamed from: e  reason: collision with root package name */
    private a f58802e;

    /* renamed from: f  reason: collision with root package name */
    private a f58803f;

    /* renamed from: g  reason: collision with root package name */
    private long f58804g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        public long f58805a;

        /* renamed from: b  reason: collision with root package name */
        public long f58806b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public j3.a f58807c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public a f58808d;

        public a(long j10, int i9) {
            d(j10, i9);
        }

        @Override // j3.b.a
        public j3.a a() {
            return (j3.a) com.google.android.exoplayer2.util.a.e(this.f58807c);
        }

        public a b() {
            this.f58807c = null;
            a aVar = this.f58808d;
            this.f58808d = null;
            return aVar;
        }

        public void c(j3.a aVar, a aVar2) {
            this.f58807c = aVar;
            this.f58808d = aVar2;
        }

        public void d(long j10, int i9) {
            com.google.android.exoplayer2.util.a.f(this.f58807c == null);
            this.f58805a = j10;
            this.f58806b = j10 + i9;
        }

        public int e(long j10) {
            return ((int) (j10 - this.f58805a)) + this.f58807c.f53004b;
        }

        @Override // j3.b.a
        @Nullable
        public b.a next() {
            a aVar = this.f58808d;
            if (aVar == null || aVar.f58807c == null) {
                return null;
            }
            return aVar;
        }
    }

    public f0(j3.b bVar) {
        this.f58798a = bVar;
        int e10 = bVar.e();
        this.f58799b = e10;
        this.f58800c = new com.google.android.exoplayer2.util.b0(32);
        a aVar = new a(0L, e10);
        this.f58801d = aVar;
        this.f58802e = aVar;
        this.f58803f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f58807c == null) {
            return;
        }
        this.f58798a.b(aVar);
        aVar.b();
    }

    private static a c(a aVar, long j10) {
        while (j10 >= aVar.f58806b) {
            aVar = aVar.f58808d;
        }
        return aVar;
    }

    private void f(int i9) {
        long j10 = this.f58804g + i9;
        this.f58804g = j10;
        a aVar = this.f58803f;
        if (j10 == aVar.f58806b) {
            this.f58803f = aVar.f58808d;
        }
    }

    private int g(int i9) {
        a aVar = this.f58803f;
        if (aVar.f58807c == null) {
            aVar.c(this.f58798a.a(), new a(this.f58803f.f58806b, this.f58799b));
        }
        return Math.min(i9, (int) (this.f58803f.f58806b - this.f58804g));
    }

    private static a h(a aVar, long j10, ByteBuffer byteBuffer, int i9) {
        a c10 = c(aVar, j10);
        while (i9 > 0) {
            int min = Math.min(i9, (int) (c10.f58806b - j10));
            byteBuffer.put(c10.f58807c.f53003a, c10.e(j10), min);
            i9 -= min;
            j10 += min;
            if (j10 == c10.f58806b) {
                c10 = c10.f58808d;
            }
        }
        return c10;
    }

    private static a i(a aVar, long j10, byte[] bArr, int i9) {
        a c10 = c(aVar, j10);
        int i10 = i9;
        while (i10 > 0) {
            int min = Math.min(i10, (int) (c10.f58806b - j10));
            System.arraycopy(c10.f58807c.f53003a, c10.e(j10), bArr, i9 - i10, min);
            i10 -= min;
            j10 += min;
            if (j10 == c10.f58806b) {
                c10 = c10.f58808d;
            }
        }
        return c10;
    }

    private static a j(a aVar, DecoderInputBuffer decoderInputBuffer, h0.b bVar, com.google.android.exoplayer2.util.b0 b0Var) {
        int i9;
        long j10 = bVar.f58838b;
        b0Var.L(1);
        a i10 = i(aVar, j10, b0Var.d(), 1);
        long j11 = j10 + 1;
        byte b10 = b0Var.d()[0];
        boolean z10 = (b10 & ByteCompanionObject.MIN_VALUE) != 0;
        int i11 = b10 & ByteCompanionObject.MAX_VALUE;
        b2.c cVar = decoderInputBuffer.f5707b;
        byte[] bArr = cVar.f1109a;
        if (bArr == null) {
            cVar.f1109a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a i12 = i(i10, j11, cVar.f1109a, i11);
        long j12 = j11 + i11;
        if (z10) {
            b0Var.L(2);
            i12 = i(i12, j12, b0Var.d(), 2);
            j12 += 2;
            i9 = b0Var.J();
        } else {
            i9 = 1;
        }
        int[] iArr = cVar.f1112d;
        if (iArr == null || iArr.length < i9) {
            iArr = new int[i9];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f1113e;
        if (iArr3 == null || iArr3.length < i9) {
            iArr3 = new int[i9];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i13 = i9 * 6;
            b0Var.L(i13);
            i12 = i(i12, j12, b0Var.d(), i13);
            j12 += i13;
            b0Var.P(0);
            for (int i14 = 0; i14 < i9; i14++) {
                iArr2[i14] = b0Var.J();
                iArr4[i14] = b0Var.H();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f58837a - ((int) (j12 - bVar.f58838b));
        }
        e0.a aVar2 = (e0.a) com.google.android.exoplayer2.util.l0.j(bVar.f58839c);
        cVar.c(i9, iArr2, iArr4, aVar2.f1485b, cVar.f1109a, aVar2.f1484a, aVar2.f1486c, aVar2.f1487d);
        long j13 = bVar.f58838b;
        int i15 = (int) (j12 - j13);
        bVar.f58838b = j13 + i15;
        bVar.f58837a -= i15;
        return i12;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, h0.b bVar, com.google.android.exoplayer2.util.b0 b0Var) {
        if (decoderInputBuffer.s()) {
            aVar = j(aVar, decoderInputBuffer, bVar, b0Var);
        }
        if (decoderInputBuffer.i()) {
            b0Var.L(4);
            a i9 = i(aVar, bVar.f58838b, b0Var.d(), 4);
            int H = b0Var.H();
            bVar.f58838b += 4;
            bVar.f58837a -= 4;
            decoderInputBuffer.q(H);
            a h10 = h(i9, bVar.f58838b, decoderInputBuffer.f5708c, H);
            bVar.f58838b += H;
            int i10 = bVar.f58837a - H;
            bVar.f58837a = i10;
            decoderInputBuffer.u(i10);
            return h(h10, bVar.f58838b, decoderInputBuffer.f5711f, bVar.f58837a);
        }
        decoderInputBuffer.q(bVar.f58837a);
        return h(aVar, bVar.f58838b, decoderInputBuffer.f5708c, bVar.f58837a);
    }

    public void b(long j10) {
        a aVar;
        if (j10 == -1) {
            return;
        }
        while (true) {
            aVar = this.f58801d;
            if (j10 < aVar.f58806b) {
                break;
            }
            this.f58798a.c(aVar.f58807c);
            this.f58801d = this.f58801d.b();
        }
        if (this.f58802e.f58805a < aVar.f58805a) {
            this.f58802e = aVar;
        }
    }

    public long d() {
        return this.f58804g;
    }

    public void e(DecoderInputBuffer decoderInputBuffer, h0.b bVar) {
        k(this.f58802e, decoderInputBuffer, bVar, this.f58800c);
    }

    public void l(DecoderInputBuffer decoderInputBuffer, h0.b bVar) {
        this.f58802e = k(this.f58802e, decoderInputBuffer, bVar, this.f58800c);
    }

    public void m() {
        a(this.f58801d);
        this.f58801d.d(0L, this.f58799b);
        a aVar = this.f58801d;
        this.f58802e = aVar;
        this.f58803f = aVar;
        this.f58804g = 0L;
        this.f58798a.d();
    }

    public void n() {
        this.f58802e = this.f58801d;
    }

    public int o(j3.f fVar, int i9, boolean z10) throws IOException {
        int g10 = g(i9);
        a aVar = this.f58803f;
        int read = fVar.read(aVar.f58807c.f53003a, aVar.e(this.f58804g), g10);
        if (read != -1) {
            f(read);
            return read;
        } else if (z10) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public void p(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        while (i9 > 0) {
            int g10 = g(i9);
            a aVar = this.f58803f;
            b0Var.j(aVar.f58807c.f53003a, aVar.e(this.f58804g), g10);
            i9 -= g10;
            f(g10);
        }
    }
}
