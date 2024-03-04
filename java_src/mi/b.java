package mi;

import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.codec.CodecPolicy;
/* loaded from: classes7.dex */
public abstract class b {

    /* renamed from: h  reason: collision with root package name */
    protected static final CodecPolicy f55142h = CodecPolicy.LENIENT;

    /* renamed from: i  reason: collision with root package name */
    static final byte[] f55143i = {13, 10};
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    protected final byte f55144a = 61;

    /* renamed from: b  reason: collision with root package name */
    protected final byte f55145b;

    /* renamed from: c  reason: collision with root package name */
    private final int f55146c;

    /* renamed from: d  reason: collision with root package name */
    private final int f55147d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f55148e;

    /* renamed from: f  reason: collision with root package name */
    private final int f55149f;

    /* renamed from: g  reason: collision with root package name */
    private final CodecPolicy f55150g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f55151a;

        /* renamed from: b  reason: collision with root package name */
        long f55152b;

        /* renamed from: c  reason: collision with root package name */
        byte[] f55153c;

        /* renamed from: d  reason: collision with root package name */
        int f55154d;

        /* renamed from: e  reason: collision with root package name */
        int f55155e;

        /* renamed from: f  reason: collision with root package name */
        boolean f55156f;

        /* renamed from: g  reason: collision with root package name */
        int f55157g;

        /* renamed from: h  reason: collision with root package name */
        int f55158h;

        a() {
        }

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", getClass().getSimpleName(), Arrays.toString(this.f55153c), Integer.valueOf(this.f55157g), Boolean.valueOf(this.f55156f), Integer.valueOf(this.f55151a), Long.valueOf(this.f55152b), Integer.valueOf(this.f55158h), Integer.valueOf(this.f55154d), Integer.valueOf(this.f55155e));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(int i9, int i10, int i11, int i12, byte b10, CodecPolicy codecPolicy) {
        this.f55146c = i9;
        this.f55147d = i10;
        this.f55148e = i11 > 0 && i12 > 0 ? (i11 / i10) * i10 : 0;
        this.f55149f = i12;
        this.f55145b = b10;
        Objects.requireNonNull(codecPolicy, "codecPolicy");
        this.f55150g = codecPolicy;
    }

    private static int b(int i9, int i10) {
        return Integer.compare(i9 - 2147483648, i10 - 2147483648);
    }

    private static int d(int i9) {
        if (i9 >= 0) {
            if (i9 > 2147483639) {
                return i9;
            }
            return 2147483639;
        }
        throw new OutOfMemoryError("Unable to allocate array size: " + (i9 & 4294967295L));
    }

    private static byte[] m(a aVar, int i9) {
        int length = aVar.f55153c.length * 2;
        if (b(length, i9) < 0) {
            length = i9;
        }
        if (b(length, 2147483639) > 0) {
            length = d(i9);
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = aVar.f55153c;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        aVar.f55153c = bArr;
        return bArr;
    }

    int a(a aVar) {
        if (aVar.f55153c != null) {
            return aVar.f55154d - aVar.f55155e;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b10 : bArr) {
            if (this.f55145b == b10 || k(b10)) {
                return true;
            }
        }
        return false;
    }

    abstract void e(byte[] bArr, int i9, int i10, a aVar);

    public byte[] f(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? bArr : g(bArr, 0, bArr.length);
    }

    public byte[] g(byte[] bArr, int i9, int i10) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        a aVar = new a();
        e(bArr, i9, i10, aVar);
        e(bArr, i9, -1, aVar);
        int i11 = aVar.f55154d - aVar.f55155e;
        byte[] bArr2 = new byte[i11];
        l(bArr2, 0, i11, aVar);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] h(int i9, a aVar) {
        byte[] bArr = aVar.f55153c;
        if (bArr == null) {
            aVar.f55153c = new byte[Math.max(i9, i())];
            aVar.f55154d = 0;
            aVar.f55155e = 0;
        } else {
            int i10 = aVar.f55154d;
            if ((i10 + i9) - bArr.length > 0) {
                return m(aVar, i10 + i9);
            }
        }
        return aVar.f55153c;
    }

    protected int i() {
        return 8192;
    }

    public long j(byte[] bArr) {
        int length = bArr.length;
        int i9 = this.f55146c;
        long j10 = (((length + i9) - 1) / i9) * this.f55147d;
        int i10 = this.f55148e;
        return i10 > 0 ? j10 + ((((i10 + j10) - 1) / i10) * this.f55149f) : j10;
    }

    protected abstract boolean k(byte b10);

    int l(byte[] bArr, int i9, int i10, a aVar) {
        if (aVar.f55153c == null) {
            return aVar.f55156f ? -1 : 0;
        }
        int min = Math.min(a(aVar), i10);
        System.arraycopy(aVar.f55153c, aVar.f55155e, bArr, i9, min);
        int i11 = aVar.f55155e + min;
        aVar.f55155e = i11;
        if (i11 >= aVar.f55154d) {
            aVar.f55153c = null;
        }
        return min;
    }
}
