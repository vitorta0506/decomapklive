package n1;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
abstract class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a() {
        return new m(Executors.newSingleThreadExecutor());
    }
}
