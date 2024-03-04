package io.grpc.netty.shaded.io.netty.util.internal;
/* loaded from: classes5.dex */
public final class x {
    public static void a(ug.x<?> xVar, io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar) {
        if (xVar.cancel(false) || bVar == null) {
            return;
        }
        Throwable L = xVar.L();
        if (L == null) {
            bVar.warn("Failed to cancel promise because it has succeeded already: {}", xVar);
        } else {
            bVar.warn("Failed to cancel promise because it has failed already: {}, unnotified cause:", xVar, L);
        }
    }

    public static void b(ug.x<?> xVar, Throwable th2, io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar) {
        if (xVar.z(th2) || bVar == null) {
            return;
        }
        Throwable L = xVar.L();
        if (L == null) {
            bVar.warn("Failed to mark a promise as failure because it has succeeded already: {}", xVar, th2);
        } else if (bVar.isWarnEnabled()) {
            bVar.warn("Failed to mark a promise as failure because it has failed already: {}, unnotified cause: {}", xVar, e0.e(L), th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <V> void c(ug.x<? super V> xVar, V v10, io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar) {
        if (xVar.B(v10) || bVar == null) {
            return;
        }
        Throwable L = xVar.L();
        if (L == null) {
            bVar.warn("Failed to mark a promise as success because it has succeeded already: {}", xVar);
        } else {
            bVar.warn("Failed to mark a promise as success because it has failed already: {}, unnotified cause:", xVar, L);
        }
    }
}
