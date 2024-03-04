package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
final class l<T> implements m<T> {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f58044a = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(k kVar) {
    }

    @Override // t4.d
    public final void a(@NonNull Exception exc) {
        this.f58044a.countDown();
    }

    @Override // t4.b
    public final void b() {
        this.f58044a.countDown();
    }

    public final void c() throws InterruptedException {
        this.f58044a.await();
    }

    public final boolean d(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f58044a.await(j10, timeUnit);
    }

    @Override // t4.e
    public final void onSuccess(T t10) {
        this.f58044a.countDown();
    }
}
