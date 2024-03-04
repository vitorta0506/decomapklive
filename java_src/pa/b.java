package pa;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* loaded from: classes3.dex */
public class b implements pa.a {

    /* renamed from: a  reason: collision with root package name */
    protected final RecyclerView f56777a;

    /* renamed from: b  reason: collision with root package name */
    protected final a f56778b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f56779c = false;

    /* loaded from: classes3.dex */
    protected interface a {
        boolean a();

        boolean b();
    }

    /* renamed from: pa.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    protected class C0614b implements a {
        protected C0614b() {
        }

        @Override // pa.b.a
        public boolean a() {
            return !b.this.f56777a.canScrollHorizontally(1);
        }

        @Override // pa.b.a
        public boolean b() {
            return !b.this.f56777a.canScrollHorizontally(-1);
        }
    }

    /* loaded from: classes3.dex */
    protected class c implements a {
        protected c() {
        }

        @Override // pa.b.a
        public boolean a() {
            return !b.this.f56777a.canScrollVertically(1);
        }

        @Override // pa.b.a
        public boolean b() {
            return !b.this.f56777a.canScrollVertically(-1);
        }
    }

    public b(RecyclerView recyclerView) {
        int orientation;
        this.f56777a = recyclerView;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        boolean z10 = layoutManager instanceof LinearLayoutManager;
        if (!z10 && !(layoutManager instanceof StaggeredGridLayoutManager)) {
            throw new IllegalArgumentException("Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit 'impl' parameter to the other c'tors, or otherwise create a custom adapter subclass of your own.");
        }
        if (z10) {
            orientation = ((LinearLayoutManager) layoutManager).getOrientation();
        } else {
            orientation = ((StaggeredGridLayoutManager) layoutManager).getOrientation();
        }
        if (orientation == 0) {
            this.f56778b = new C0614b();
        } else {
            this.f56778b = new c();
        }
    }

    @Override // pa.a
    public boolean a() {
        return !this.f56779c && this.f56778b.a();
    }

    @Override // pa.a
    public boolean b() {
        return !this.f56779c && this.f56778b.b();
    }

    @Override // pa.a
    public View getView() {
        return this.f56777a;
    }
}
