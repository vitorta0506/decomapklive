package s6;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f57681b;

    /* renamed from: a  reason: collision with root package name */
    private final Set<f> f57682a = new HashSet();

    d() {
    }

    public static d a() {
        d dVar = f57681b;
        if (dVar == null) {
            synchronized (d.class) {
                dVar = f57681b;
                if (dVar == null) {
                    dVar = new d();
                    f57681b = dVar;
                }
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<f> b() {
        Set<f> unmodifiableSet;
        synchronized (this.f57682a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f57682a);
        }
        return unmodifiableSet;
    }
}
