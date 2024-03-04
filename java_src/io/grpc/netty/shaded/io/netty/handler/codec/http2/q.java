package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
class q {

    /* renamed from: a  reason: collision with root package name */
    final CharSequence f44422a;

    /* renamed from: b  reason: collision with root package name */
    final CharSequence f44423b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(CharSequence charSequence, CharSequence charSequence2) {
        this.f44422a = (CharSequence) io.grpc.netty.shaded.io.netty.util.internal.s.h(charSequence, "name");
        this.f44423b = (CharSequence) io.grpc.netty.shaded.io.netty.util.internal.s.h(charSequence2, "value");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence.length() + charSequence2.length() + 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.f44422a.length() + this.f44423b.length() + 32;
    }

    public String toString() {
        return ((Object) this.f44422a) + ": " + ((Object) this.f44423b);
    }
}
