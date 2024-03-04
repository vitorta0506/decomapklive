package p;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes.dex */
public class a extends CountDownLatch {
    public a(int i9) {
        super(i9);
    }

    public void a() {
        while (getCount() > 0) {
            countDown();
        }
    }
}
