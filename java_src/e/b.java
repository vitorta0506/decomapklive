package e;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private List<s> f38183a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(s sVar) {
        this.f38183a.add(sVar);
    }

    public void b(Path path) {
        for (int size = this.f38183a.size() - 1; size >= 0; size--) {
            m.h.b(path, this.f38183a.get(size));
        }
    }
}
