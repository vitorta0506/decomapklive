package io.grpc.netty.shaded.io.netty.util.internal;
/* loaded from: classes5.dex */
final class q {
    private q() {
    }

    public static void a(String str, boolean z10) {
        if (z10) {
            System.load(str);
        } else {
            System.loadLibrary(str);
        }
    }
}
