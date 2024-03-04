package i;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
abstract class n<V, O> implements m<V, O> {

    /* renamed from: a  reason: collision with root package name */
    final List<n.a<V>> f40835a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(V v10) {
        this(Collections.singletonList(new n.a(v10)));
    }

    @Override // i.m
    public List<n.a<V>> b() {
        return this.f40835a;
    }

    @Override // i.m
    public boolean c() {
        return this.f40835a.isEmpty() || (this.f40835a.size() == 1 && this.f40835a.get(0).h());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.f40835a.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.f40835a.toArray()));
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(List<n.a<V>> list) {
        this.f40835a = list;
    }
}
