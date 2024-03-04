package x;

import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements f {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f59542a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(RecyclerView.LayoutManager layoutManager) {
        this.f59542a = layoutManager;
    }

    @Override // x.f
    public e a() {
        return new h(this.f59542a);
    }

    @Override // x.f
    public e b() {
        return new i(this.f59542a);
    }
}
