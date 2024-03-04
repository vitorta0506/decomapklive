package io.grpc.netty.shaded.io.netty.channel.unix;

import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import kg.j;
import kg.k;
import kg.n;
import kg.s0;
/* loaded from: classes5.dex */
public abstract class e implements WritableByteChannel {

    /* renamed from: a  reason: collision with root package name */
    private final FileDescriptor f43837a;

    /* JADX INFO: Access modifiers changed from: protected */
    public e(FileDescriptor fileDescriptor) {
        this.f43837a = (FileDescriptor) s.h(fileDescriptor, "fd");
    }

    protected abstract k a();

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f43837a.b();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return this.f43837a.g();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        int m10;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        if (byteBuffer.isDirect()) {
            m10 = this.f43837a.m(byteBuffer, position, byteBuffer.limit());
        } else {
            int i9 = limit - position;
            j jVar = null;
            try {
                if (i9 == 0) {
                    jVar = s0.f53902d;
                } else {
                    k a10 = a();
                    if (a10.e()) {
                        jVar = a10.h(i9);
                    } else {
                        jVar = n.N();
                        if (jVar == null) {
                            jVar = s0.g(i9);
                        }
                    }
                }
                jVar.w2(byteBuffer.duplicate());
                ByteBuffer e12 = jVar.e1(jVar.Q1(), i9);
                m10 = this.f43837a.m(e12, e12.position(), e12.limit());
                jVar.release();
            } catch (Throwable th2) {
                if (jVar != null) {
                    jVar.release();
                }
                throw th2;
            }
        }
        if (m10 > 0) {
            byteBuffer.position(position + m10);
        }
        return m10;
    }
}
