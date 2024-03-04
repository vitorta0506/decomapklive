package io.grpc.netty.shaded.io.netty.channel.unix;

import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5.dex */
public final class Buffer {
    public static int a() {
        if (t.T()) {
            return t.e();
        }
        return addressSize0();
    }

    private static native int addressSize0();

    public static ByteBuffer b(int i9) {
        return ByteBuffer.allocateDirect(i9).order(t.A ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
    }

    public static void c(ByteBuffer byteBuffer) {
        t.z(byteBuffer);
    }

    public static long d(ByteBuffer byteBuffer) {
        if (t.T()) {
            return t.u(byteBuffer);
        }
        return memoryAddress0(byteBuffer);
    }

    private static native long memoryAddress0(ByteBuffer byteBuffer);
}
