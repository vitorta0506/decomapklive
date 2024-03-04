package sg;

import java.io.Closeable;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public interface a<T extends SocketAddress> extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}
