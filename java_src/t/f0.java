package t;

import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes.dex */
public class f0 extends g0 {

    /* renamed from: b  reason: collision with root package name */
    private boolean f57991b;

    public f0(@NonNull q qVar, boolean z10) {
        super(qVar);
        this.f57991b = z10;
    }

    @Override // t.g0, t.q
    public void a(u.a aVar, List<u.o> list) {
        if (!this.f57991b || aVar.O()) {
            super.a(aVar, list);
        }
    }
}
