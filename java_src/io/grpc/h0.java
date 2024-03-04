package io.grpc;

import com.google.common.io.BaseEncoding;
import io.grpc.s0;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public final class h0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f42330a = Charset.forName("US-ASCII");

    /* renamed from: b  reason: collision with root package name */
    public static final BaseEncoding f42331b = s0.f45384f;

    /* loaded from: classes5.dex */
    public interface a<T> extends s0.l<T> {
    }

    public static int a(s0 s0Var) {
        return s0Var.m();
    }

    public static <T> s0.i<T> b(String str, a<T> aVar) {
        boolean z10 = false;
        if (str != null && !str.isEmpty() && str.charAt(0) == ':') {
            z10 = true;
        }
        return s0.i.h(str, z10, aVar);
    }

    public static s0 c(int i9, byte[]... bArr) {
        return new s0(i9, bArr);
    }

    public static s0 d(byte[]... bArr) {
        return new s0(bArr);
    }

    public static byte[][] e(s0 s0Var) {
        return s0Var.u();
    }
}
