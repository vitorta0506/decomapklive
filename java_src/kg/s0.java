package kg;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public final class s0 {

    /* renamed from: a  reason: collision with root package name */
    private static final k f53899a;

    /* renamed from: b  reason: collision with root package name */
    public static final ByteOrder f53900b;

    /* renamed from: c  reason: collision with root package name */
    public static final ByteOrder f53901c;

    /* renamed from: d  reason: collision with root package name */
    public static final j f53902d;

    static {
        t0 t0Var = t0.f53908g;
        f53899a = t0Var;
        f53900b = ByteOrder.BIG_ENDIAN;
        f53901c = ByteOrder.LITTLE_ENDIAN;
        f53902d = t0Var.j(0, 0);
    }

    public static j a() {
        return f53899a.k();
    }

    public static j b(int i9) {
        return f53899a.b(i9);
    }

    public static j c(CharSequence charSequence, Charset charset) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(charSequence, TypedValues.Custom.S_STRING);
        if (io.grpc.netty.shaded.io.netty.util.h.f45016d.equals(charset)) {
            return f(charSequence);
        }
        if (io.grpc.netty.shaded.io.netty.util.h.f45018f.equals(charset)) {
            return e(charSequence);
        }
        if (charSequence instanceof CharBuffer) {
            return d((CharBuffer) charSequence, charset);
        }
        return d(CharBuffer.wrap(charSequence), charset);
    }

    private static j d(CharBuffer charBuffer, Charset charset) {
        return n.k(f53899a, true, charBuffer, charset, 0);
    }

    private static j e(CharSequence charSequence) {
        j b10 = f53899a.b(charSequence.length());
        try {
            n.Y(b10, charSequence);
            return b10;
        } catch (Throwable th2) {
            b10.release();
            throw th2;
        }
    }

    private static j f(CharSequence charSequence) {
        j b10 = f53899a.b(n.T(charSequence));
        try {
            n.e0(b10, charSequence);
            return b10;
        } catch (Throwable th2) {
            b10.release();
            throw th2;
        }
    }

    public static j g(int i9) {
        return f53899a.h(i9);
    }

    @Deprecated
    public static j h(j jVar) {
        ByteOrder v12 = jVar.v1();
        ByteOrder byteOrder = f53900b;
        if (v12 == byteOrder) {
            return new l0(jVar);
        }
        return new l0(jVar.w1(byteOrder)).w1(f53901c);
    }

    public static j i(j jVar) {
        return new b1(jVar);
    }

    public static j j(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return f53902d;
        }
        if (!byteBuffer.isDirect() && byteBuffer.hasArray()) {
            return l(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()).w1(byteBuffer.order());
        }
        if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
            if (byteBuffer.isReadOnly()) {
                if (byteBuffer.isDirect()) {
                    return new n0(f53899a, byteBuffer);
                }
                return new m0(f53899a, byteBuffer);
            }
            return new y0(f53899a, byteBuffer, byteBuffer.remaining());
        } else if (byteBuffer.isReadOnly()) {
            return new m0(f53899a, byteBuffer);
        } else {
            return new u0(f53899a, byteBuffer, byteBuffer.remaining());
        }
    }

    public static j k(byte[] bArr) {
        if (bArr.length == 0) {
            return f53902d;
        }
        return new w0(f53899a, bArr, bArr.length);
    }

    public static j l(byte[] bArr, int i9, int i10) {
        if (i10 == 0) {
            return f53902d;
        }
        if (i9 == 0 && i10 == bArr.length) {
            return k(bArr);
        }
        return k(bArr).n2(i9, i10);
    }
}
