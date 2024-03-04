package d5;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
final class t implements u {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f37942a = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ t(s sVar) {
    }

    @Override // d5.b
    public final void a(Exception exc) {
        this.f37942a.countDown();
    }

    public final void b() throws InterruptedException {
        this.f37942a.await();
    }

    @Override // d5.c
    public final void onSuccess(Object obj) {
        this.f37942a.countDown();
    }
}
