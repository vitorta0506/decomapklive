package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class k extends t {

    /* renamed from: b  reason: collision with root package name */
    static final Iterator<Map.Entry<CharSequence, CharSequence>> f43968b = Collections.emptyList().iterator();

    /* renamed from: c  reason: collision with root package name */
    public static final k f43969c = b0();

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    /* loaded from: classes5.dex */
    public static final class a {
        @Deprecated

        /* renamed from: a  reason: collision with root package name */
        private static final k f43970a = new k();
    }

    protected k() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static k b0() {
        return a.f43970a;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public String G(String str) {
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public List<String> I(String str) {
        return Collections.emptyList();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public Iterator<Map.Entry<CharSequence, CharSequence>> J() {
        return f43968b;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t L(String str) {
        throw new UnsupportedOperationException("read only");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t P(String str, Iterable<?> iterable) {
        throw new UnsupportedOperationException("read only");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t Q(String str, Object obj) {
        throw new UnsupportedOperationException("read only");
    }

    public List<Map.Entry<String, String>> a0() {
        return Collections.emptyList();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t f(String str, Object obj) {
        throw new UnsupportedOperationException("read only");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t g() {
        throw new UnsupportedOperationException("read only");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean isEmpty() {
        return true;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t, java.lang.Iterable
    public Iterator<Map.Entry<String, String>> iterator() {
        return a0().iterator();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public int size() {
        return 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean u(String str) {
        return false;
    }
}
