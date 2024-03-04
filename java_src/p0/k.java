package p0;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class k implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Set<s0.k<?>> f56724a = Collections.newSetFromMap(new WeakHashMap());

    public void a() {
        this.f56724a.clear();
    }

    @NonNull
    public List<s0.k<?>> b() {
        return v0.k.j(this.f56724a);
    }

    public void c(@NonNull s0.k<?> kVar) {
        this.f56724a.add(kVar);
    }

    public void d(@NonNull s0.k<?> kVar) {
        this.f56724a.remove(kVar);
    }

    @Override // p0.f
    public void onDestroy() {
        for (s0.k kVar : v0.k.j(this.f56724a)) {
            kVar.onDestroy();
        }
    }

    @Override // p0.f
    public void onStart() {
        for (s0.k kVar : v0.k.j(this.f56724a)) {
            kVar.onStart();
        }
    }

    @Override // p0.f
    public void onStop() {
        for (s0.k kVar : v0.k.j(this.f56724a)) {
            kVar.onStop();
        }
    }
}
