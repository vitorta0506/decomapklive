package mg;

import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
/* loaded from: classes5.dex */
public interface f<C extends SelectableChannel> {
    void a(C c10, Throwable th2) throws Exception;

    void b(C c10, SelectionKey selectionKey) throws Exception;
}
