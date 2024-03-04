package mg;

import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.SelectorProvider;
import java.util.Set;
/* loaded from: classes5.dex */
final class h extends Selector {

    /* renamed from: a  reason: collision with root package name */
    private final g f55105a;

    /* renamed from: b  reason: collision with root package name */
    private final Selector f55106b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Selector selector, g gVar) {
        this.f55106b = selector;
        this.f55105a = gVar;
    }

    @Override // java.nio.channels.Selector, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f55106b.close();
    }

    @Override // java.nio.channels.Selector
    public boolean isOpen() {
        return this.f55106b.isOpen();
    }

    @Override // java.nio.channels.Selector
    public Set<SelectionKey> keys() {
        return this.f55106b.keys();
    }

    @Override // java.nio.channels.Selector
    public SelectorProvider provider() {
        return this.f55106b.provider();
    }

    @Override // java.nio.channels.Selector
    public int select(long j10) throws IOException {
        this.f55105a.f();
        return this.f55106b.select(j10);
    }

    @Override // java.nio.channels.Selector
    public int selectNow() throws IOException {
        this.f55105a.f();
        return this.f55106b.selectNow();
    }

    @Override // java.nio.channels.Selector
    public Set<SelectionKey> selectedKeys() {
        return this.f55106b.selectedKeys();
    }

    @Override // java.nio.channels.Selector
    public Selector wakeup() {
        return this.f55106b.wakeup();
    }

    @Override // java.nio.channels.Selector
    public int select() throws IOException {
        this.f55105a.f();
        return this.f55106b.select();
    }
}
