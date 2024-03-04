package z;

import android.util.SparseArray;
import android.view.View;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import java.util.Locale;
/* loaded from: classes.dex */
class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<View> f60285a;

    /* renamed from: b  reason: collision with root package name */
    private int f60286b;

    /* renamed from: c  reason: collision with root package name */
    private int f60287c;

    /* renamed from: d  reason: collision with root package name */
    private int f60288d;

    /* renamed from: e  reason: collision with root package name */
    private int f60289e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(SparseArray<View> sparseArray) {
        this.f60285a = sparseArray;
    }

    @Override // z.b
    public void a(int i9) {
        c.b("fillWithLayouter", " recycle position =" + this.f60285a.keyAt(i9), 3);
        this.f60289e = this.f60289e + 1;
    }

    @Override // z.b
    public void b() {
        this.f60289e = this.f60285a.size();
    }

    @Override // z.b
    public void c() {
        c.b("fillWithLayouter", String.format(Locale.getDefault(), "reattached items = %d : requested items = %d recycledItems = %d", Integer.valueOf(this.f60288d - this.f60285a.size()), Integer.valueOf(this.f60286b), Integer.valueOf(this.f60287c)), 3);
    }

    @Override // z.b
    public void d() {
        c.b("fillWithLayouter", "recycled count = " + this.f60289e, 3);
    }

    @Override // z.b
    public void e(AnchorViewState anchorViewState) {
        if (anchorViewState.a() != null) {
            c.b("fill", "anchorPos " + anchorViewState.c(), 3);
            c.b("fill", "anchorTop " + anchorViewState.a().top, 3);
        }
    }

    @Override // z.b
    public void f() {
        this.f60286b++;
    }

    @Override // z.b
    public void g(int i9) {
        this.f60286b = 0;
        this.f60287c = 0;
        this.f60288d = this.f60285a.size();
        c.b("fillWithLayouter", "start position = " + i9, 3);
        c.b("fillWithLayouter", "cached items = " + this.f60288d, 3);
    }

    @Override // z.b
    public void h() {
        this.f60287c++;
    }
}
