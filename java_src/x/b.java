package x;

import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f59540a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(RecyclerView.LayoutManager layoutManager) {
        this.f59540a = layoutManager;
    }

    @Override // x.f
    public e a() {
        return new c(this.f59540a);
    }

    @Override // x.f
    public e b() {
        return new d(this.f59540a);
    }
}
