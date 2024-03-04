package ig;

import com.google.common.io.BaseEncoding;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
abstract class l extends a {

    /* renamed from: d  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.c f41205d = new io.grpc.netty.shaded.io.netty.util.c("-bin".getBytes(com.google.common.base.e.f12354a));

    /* renamed from: a  reason: collision with root package name */
    private byte[][] f41206a;

    /* renamed from: b  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.util.c[] f41207b;

    /* renamed from: c  reason: collision with root package name */
    private int f41208c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(int i9) {
        com.google.common.base.o.h(i9 > 0, "numHeadersGuess needs to be positive: %s", i9);
        this.f41206a = new byte[i9 * 2];
        this.f41207b = new io.grpc.netty.shaded.io.netty.util.c[i9];
    }

    private void B() {
        io.grpc.netty.shaded.io.netty.util.c[] cVarArr = this.f41207b;
        int max = Math.max(2, cVarArr.length + (cVarArr.length / 2));
        byte[][] bArr = new byte[max * 2];
        io.grpc.netty.shaded.io.netty.util.c[] cVarArr2 = new io.grpc.netty.shaded.io.netty.util.c[max];
        byte[][] bArr2 = this.f41206a;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        io.grpc.netty.shaded.io.netty.util.c[] cVarArr3 = this.f41207b;
        System.arraycopy(cVarArr3, 0, cVarArr2, 0, cVarArr3.length);
        this.f41206a = bArr;
        this.f41207b = cVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static io.grpc.netty.shaded.io.netty.util.c K(CharSequence charSequence) {
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            return (io.grpc.netty.shaded.io.netty.util.c) charSequence;
        }
        throw new IllegalArgumentException("AsciiString expected. Was: " + charSequence.getClass().getName());
    }

    private void n(io.grpc.netty.shaded.io.netty.util.c cVar, byte[] bArr, byte[] bArr2) {
        if (this.f41208c == this.f41206a.length) {
            B();
        }
        io.grpc.netty.shaded.io.netty.util.c[] cVarArr = this.f41207b;
        int i9 = this.f41208c;
        cVarArr[i9 / 2] = cVar;
        byte[][] bArr3 = this.f41206a;
        bArr3[i9] = bArr;
        int i10 = i9 + 1;
        this.f41208c = i10;
        bArr3[i10] = bArr2;
        this.f41208c = i10 + 1;
    }

    protected static void u(StringBuilder sb2, CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        if (z10) {
            sb2.append(", ");
        }
        sb2.append(charSequence);
        sb2.append(": ");
        sb2.append(charSequence2);
    }

    protected static byte[] x(io.grpc.netty.shaded.io.netty.util.c cVar) {
        return cVar.w() ? cVar.a() : cVar.F();
    }

    protected static boolean y(io.grpc.netty.shaded.io.netty.util.c cVar, byte[] bArr) {
        return z(cVar.a(), cVar.b(), cVar.length(), bArr, 0, bArr.length);
    }

    protected static boolean z(byte[] bArr, int i9, int i10, byte[] bArr2, int i11, int i12) {
        if (i10 != i12) {
            return false;
        }
        return io.grpc.netty.shaded.io.netty.util.internal.t.w(bArr, i9, bArr2, i11, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CharSequence F(io.grpc.netty.shaded.io.netty.util.c cVar) {
        for (int i9 = 0; i9 < this.f41208c; i9 += 2) {
            if (y(cVar, this.f41206a[i9])) {
                return this.f41207b[i9 / 2];
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[][] G() {
        return this.f41206a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String H() {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        for (int i9 = 0; i9 < this.f41208c; i9 += 2) {
            u(sb2, new String(this.f41206a[i9], com.google.common.base.e.f12354a), this.f41207b[i9 / 2], z10);
            z10 = true;
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int I() {
        return this.f41208c / 2;
    }

    public boolean J(CharSequence charSequence) {
        io.grpc.netty.shaded.io.netty.util.c K = K(charSequence);
        int i9 = 0;
        while (i9 < this.f41208c && !y(K, this.f41206a[i9])) {
            i9 += 2;
        }
        if (i9 >= this.f41208c) {
            return false;
        }
        int i10 = i9;
        while (i9 < this.f41208c) {
            if (!y(K, this.f41206a[i9])) {
                io.grpc.netty.shaded.io.netty.util.c[] cVarArr = this.f41207b;
                cVarArr[i10 / 2] = cVarArr[i9 / 2];
                byte[][] bArr = this.f41206a;
                bArr[i10] = bArr[i9];
                bArr[i10 + 1] = bArr[i9 + 1];
                i10 += 2;
            }
            i9 += 2;
        }
        this.f41208c = i10;
        return true;
    }

    public Http2Headers L(CharSequence charSequence, CharSequence charSequence2) {
        J(charSequence);
        return Z0(charSequence, charSequence2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public io.grpc.netty.shaded.io.netty.util.c M(io.grpc.netty.shaded.io.netty.util.c cVar) {
        int b10 = cVar.b();
        int length = cVar.length();
        byte[] a10 = cVar.a();
        for (int i9 = b10; i9 < b10 + length; i9++) {
            if (io.grpc.netty.shaded.io.netty.util.c.x(a10[i9])) {
                io.grpc.netty.shaded.io.netty.util.internal.t.R0(Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "invalid header name '%s'", cVar));
            }
        }
        return cVar;
    }

    @Override // ig.a, pg.i
    /* renamed from: f */
    public List<CharSequence> d0(CharSequence charSequence) {
        io.grpc.netty.shaded.io.netty.util.c K = K(charSequence);
        ArrayList arrayList = new ArrayList(4);
        for (int i9 = 0; i9 < this.f41208c; i9 += 2) {
            if (y(K, this.f41206a[i9])) {
                arrayList.add(this.f41207b[i9 / 2]);
            }
        }
        return arrayList;
    }

    @Override // ig.a, pg.i
    /* renamed from: g */
    public Http2Headers K0(CharSequence charSequence, long j10) {
        return L(charSequence, io.grpc.netty.shaded.io.netty.util.c.z(pg.b.f56817a.b(j10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Http2Headers m(io.grpc.netty.shaded.io.netty.util.c cVar, io.grpc.netty.shaded.io.netty.util.c cVar2) {
        byte[] x10 = x(cVar);
        if (!cVar.m(f41205d)) {
            n(cVar2, x10, x(cVar2));
            return this;
        }
        int i9 = -1;
        int i10 = 0;
        while (i9 < cVar2.length()) {
            int t10 = cVar2.t(',', i10);
            int length = t10 == -1 ? cVar2.length() : t10;
            io.grpc.netty.shaded.io.netty.util.c C = cVar2.C(i10, length, false);
            n(C, x10, BaseEncoding.b().d(C));
            i10 = t10 + 1;
            i9 = length;
        }
        return this;
    }

    @Override // pg.i
    public int size() {
        return I();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers
    public CharSequence t() {
        return F(Http2Headers.PseudoHeaderName.STATUS.value());
    }
}
