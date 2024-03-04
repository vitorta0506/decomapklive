package b5;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference f1176a = new AtomicReference(null);

    public static void a(i iVar) {
        f1176a.compareAndSet(null, iVar);
    }
}
