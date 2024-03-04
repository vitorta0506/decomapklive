package l5;

import com.google.common.base.o;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f54207a;

    public g(ExecutorService executorService) {
        this.f54207a = (ExecutorService) o.s(executorService);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        shutdown();
    }

    @Override // l5.d
    public boolean isShutdown() {
        return this.f54207a.isShutdown();
    }

    @Override // l5.d
    public void shutdown() {
        this.f54207a.shutdown();
    }
}
