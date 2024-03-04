package com.yanzhenjie.recyclerview.swipe;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.yanzhenjie.recyclerview.swipe.touch.DefaultItemTouchHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class SwipeMenuRecyclerView extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    protected int f37800a;

    /* renamed from: b  reason: collision with root package name */
    protected SwipeMenuLayout f37801b;

    /* renamed from: c  reason: collision with root package name */
    protected int f37802c;

    /* renamed from: d  reason: collision with root package name */
    private int f37803d;

    /* renamed from: e  reason: collision with root package name */
    private int f37804e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f37805f;

    /* renamed from: g  reason: collision with root package name */
    private DefaultItemTouchHelper f37806g;

    /* renamed from: h  reason: collision with root package name */
    private bg.d f37807h;

    /* renamed from: i  reason: collision with root package name */
    private bg.f f37808i;

    /* renamed from: j  reason: collision with root package name */
    private bg.a f37809j;

    /* renamed from: k  reason: collision with root package name */
    private bg.b f37810k;

    /* renamed from: l  reason: collision with root package name */
    private SwipeAdapterWrapper f37811l;

    /* renamed from: m  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f37812m;

    /* renamed from: n  reason: collision with root package name */
    private List<View> f37813n;

    /* renamed from: o  reason: collision with root package name */
    private List<View> f37814o;

    /* renamed from: p  reason: collision with root package name */
    private int f37815p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f37816q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f37817r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f37818s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f37819t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f37820u;

    /* renamed from: v  reason: collision with root package name */
    private f f37821v;

    /* renamed from: w  reason: collision with root package name */
    private e f37822w;

    /* loaded from: classes5.dex */
    class a extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GridLayoutManager f37823a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GridLayoutManager.SpanSizeLookup f37824b;

        a(GridLayoutManager gridLayoutManager, GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.f37823a = gridLayoutManager;
            this.f37824b = spanSizeLookup;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i9) {
            if (!SwipeMenuRecyclerView.this.f37811l.k(i9) && !SwipeMenuRecyclerView.this.f37811l.j(i9)) {
                GridLayoutManager.SpanSizeLookup spanSizeLookup = this.f37824b;
                if (spanSizeLookup != null) {
                    return spanSizeLookup.getSpanSize(i9 - SwipeMenuRecyclerView.this.getHeaderItemCount());
                }
                return 1;
            }
            return this.f37823a.getSpanCount();
        }
    }

    /* loaded from: classes5.dex */
    private static class c implements bg.a {

        /* renamed from: a  reason: collision with root package name */
        private SwipeMenuRecyclerView f37827a;

        /* renamed from: b  reason: collision with root package name */
        private bg.a f37828b;

        public c(SwipeMenuRecyclerView swipeMenuRecyclerView, bg.a aVar) {
            this.f37827a = swipeMenuRecyclerView;
            this.f37828b = aVar;
        }

        @Override // bg.a
        public void a(View view, int i9) {
            int headerItemCount = i9 - this.f37827a.getHeaderItemCount();
            if (headerItemCount >= 0) {
                this.f37828b.a(view, headerItemCount);
            }
        }
    }

    /* loaded from: classes5.dex */
    private static class d implements bg.b {

        /* renamed from: a  reason: collision with root package name */
        private SwipeMenuRecyclerView f37829a;

        /* renamed from: b  reason: collision with root package name */
        private bg.b f37830b;

        public d(SwipeMenuRecyclerView swipeMenuRecyclerView, bg.b bVar) {
            this.f37829a = swipeMenuRecyclerView;
            this.f37830b = bVar;
        }

        @Override // bg.b
        public void a(View view, int i9) {
            int headerItemCount = i9 - this.f37829a.getHeaderItemCount();
            if (headerItemCount >= 0) {
                this.f37830b.a(view, headerItemCount);
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface e {
        void onLoadMore();
    }

    /* loaded from: classes5.dex */
    public interface f {
        void a();

        void b(boolean z10, boolean z11);

        void c(e eVar);
    }

    /* loaded from: classes5.dex */
    private static class g implements bg.f {

        /* renamed from: a  reason: collision with root package name */
        private SwipeMenuRecyclerView f37831a;

        /* renamed from: b  reason: collision with root package name */
        private bg.f f37832b;

        public g(SwipeMenuRecyclerView swipeMenuRecyclerView, bg.f fVar) {
            this.f37831a = swipeMenuRecyclerView;
            this.f37832b = fVar;
        }

        @Override // bg.f
        public void a(com.yanzhenjie.recyclerview.swipe.c cVar) {
            int a10 = cVar.a() - this.f37831a.getHeaderItemCount();
            if (a10 >= 0) {
                cVar.f37847e = a10;
                this.f37832b.a(cVar);
            }
        }
    }

    public SwipeMenuRecyclerView(Context context) {
        this(context, null);
    }

    private void b(String str) {
        if (this.f37811l != null) {
            throw new IllegalStateException(str);
        }
    }

    private void c() {
        if (this.f37818s) {
            return;
        }
        if (!this.f37817r) {
            f fVar = this.f37821v;
            if (fVar != null) {
                fVar.c(this.f37822w);
            }
        } else if (this.f37816q || this.f37819t || !this.f37820u) {
        } else {
            this.f37816q = true;
            f fVar2 = this.f37821v;
            if (fVar2 != null) {
                fVar2.a();
            }
            e eVar = this.f37822w;
            if (eVar != null) {
                eVar.onLoadMore();
            }
        }
    }

    private View d(View view) {
        if (view instanceof SwipeMenuLayout) {
            return view;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(view);
        while (!arrayList.isEmpty()) {
            View view2 = (View) arrayList.remove(0);
            if (view2 instanceof ViewGroup) {
                if (view2 instanceof SwipeMenuLayout) {
                    return view2;
                }
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i9 = 0; i9 < childCount; i9++) {
                    arrayList.add(viewGroup.getChildAt(i9));
                }
            }
        }
        return view;
    }

    private boolean e(int i9, int i10, boolean z10) {
        int i11 = this.f37803d - i9;
        int i12 = this.f37804e - i10;
        if (Math.abs(i11) <= this.f37800a || Math.abs(i11) <= Math.abs(i12)) {
            if (Math.abs(i12) >= this.f37800a || Math.abs(i11) >= this.f37800a) {
                return z10;
            }
            return false;
        }
        return false;
    }

    private void f() {
        if (this.f37806g == null) {
            DefaultItemTouchHelper defaultItemTouchHelper = new DefaultItemTouchHelper();
            this.f37806g = defaultItemTouchHelper;
            defaultItemTouchHelper.attachToRecyclerView(this);
        }
    }

    public final void g(boolean z10, boolean z11) {
        this.f37816q = false;
        this.f37818s = false;
        this.f37819t = z10;
        this.f37820u = z11;
        f fVar = this.f37821v;
        if (fVar != null) {
            fVar.b(z10, z11);
        }
    }

    public int getFooterItemCount() {
        SwipeAdapterWrapper swipeAdapterWrapper = this.f37811l;
        if (swipeAdapterWrapper == null) {
            return 0;
        }
        return swipeAdapterWrapper.f();
    }

    public int getHeaderItemCount() {
        SwipeAdapterWrapper swipeAdapterWrapper = this.f37811l;
        if (swipeAdapterWrapper == null) {
            return 0;
        }
        return swipeAdapterWrapper.g();
    }

    public RecyclerView.Adapter getOriginAdapter() {
        SwipeAdapterWrapper swipeAdapterWrapper = this.f37811l;
        if (swipeAdapterWrapper == null) {
            return null;
        }
        return swipeAdapterWrapper.h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        SwipeMenuLayout swipeMenuLayout;
        ViewParent parent;
        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (this.f37805f) {
            return onInterceptTouchEvent;
        }
        boolean z11 = true;
        if (motionEvent.getPointerCount() > 1) {
            return true;
        }
        int action = motionEvent.getAction();
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    onInterceptTouchEvent = e(x10, y10, onInterceptTouchEvent);
                    if (this.f37801b == null || (parent = getParent()) == null) {
                        return onInterceptTouchEvent;
                    }
                    int i9 = this.f37803d - x10;
                    boolean z12 = i9 > 0 && (this.f37801b.e() || this.f37801b.f());
                    boolean z13 = i9 < 0 && (this.f37801b.d() || this.f37801b.j());
                    if (!z12 && !z13) {
                        z11 = false;
                    }
                    parent.requestDisallowInterceptTouchEvent(z11);
                } else if (action != 3) {
                    return onInterceptTouchEvent;
                }
            }
            return e(x10, y10, onInterceptTouchEvent);
        }
        this.f37803d = x10;
        this.f37804e = y10;
        int childAdapterPosition = getChildAdapterPosition(findChildViewUnder(x10, y10));
        if (childAdapterPosition == this.f37802c || (swipeMenuLayout = this.f37801b) == null || !swipeMenuLayout.a()) {
            z10 = false;
        } else {
            this.f37801b.o();
            z10 = true;
        }
        if (z10) {
            this.f37801b = null;
            this.f37802c = -1;
            return z10;
        }
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(childAdapterPosition);
        if (findViewHolderForAdapterPosition != null) {
            View d10 = d(findViewHolderForAdapterPosition.itemView);
            if (d10 instanceof SwipeMenuLayout) {
                this.f37801b = (SwipeMenuLayout) d10;
                this.f37802c = childAdapterPosition;
                return z10;
            }
            return z10;
        }
        return z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i9) {
        this.f37815p = i9;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int i9, int i10) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager != null && (layoutManager instanceof LinearLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int itemCount = layoutManager.getItemCount();
            if (itemCount > 0 && itemCount == linearLayoutManager.findLastVisibleItemPosition() + 1) {
                int i11 = this.f37815p;
                if (i11 == 1 || i11 == 2) {
                    c();
                }
            }
        } else if (layoutManager == null || !(layoutManager instanceof StaggeredGridLayoutManager)) {
        } else {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int itemCount2 = layoutManager.getItemCount();
            if (itemCount2 <= 0) {
                return;
            }
            int[] findLastCompletelyVisibleItemPositions = staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(null);
            if (itemCount2 == findLastCompletelyVisibleItemPositions[findLastCompletelyVisibleItemPositions.length - 1] + 1) {
                int i12 = this.f37815p;
                if (i12 == 1 || i12 == 2) {
                    c();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        SwipeMenuLayout swipeMenuLayout;
        if (motionEvent.getAction() == 2 && (swipeMenuLayout = this.f37801b) != null && swipeMenuLayout.a()) {
            this.f37801b.o();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        SwipeAdapterWrapper swipeAdapterWrapper = this.f37811l;
        if (swipeAdapterWrapper != null) {
            swipeAdapterWrapper.h().unregisterAdapterDataObserver(this.f37812m);
        }
        if (adapter == null) {
            this.f37811l = null;
        } else {
            adapter.registerAdapterDataObserver(this.f37812m);
            SwipeAdapterWrapper swipeAdapterWrapper2 = new SwipeAdapterWrapper(getContext(), adapter);
            this.f37811l = swipeAdapterWrapper2;
            swipeAdapterWrapper2.l(this.f37809j);
            this.f37811l.m(this.f37810k);
            this.f37811l.n(this.f37807h);
            this.f37811l.o(this.f37808i);
            if (this.f37813n.size() > 0) {
                for (View view : this.f37813n) {
                    this.f37811l.d(view);
                }
            }
            if (this.f37814o.size() > 0) {
                for (View view2 : this.f37814o) {
                    this.f37811l.c(view2);
                }
            }
        }
        super.setAdapter(this.f37811l);
    }

    public void setAutoLoadMore(boolean z10) {
        this.f37817r = z10;
    }

    public void setItemViewSwipeEnabled(boolean z10) {
        f();
        this.f37805f = z10;
        this.f37806g.a(z10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new a(gridLayoutManager, gridLayoutManager.getSpanSizeLookup()));
        }
        super.setLayoutManager(layoutManager);
    }

    public void setLoadMoreListener(e eVar) {
        this.f37822w = eVar;
    }

    public void setLoadMoreView(f fVar) {
        this.f37821v = fVar;
    }

    public void setLongPressDragEnabled(boolean z10) {
        f();
        this.f37806g.b(z10);
    }

    public void setOnItemMoveListener(cg.a aVar) {
        f();
        this.f37806g.setOnItemMoveListener(aVar);
    }

    public void setOnItemMovementListener(cg.b bVar) {
        f();
        this.f37806g.setOnItemMovementListener(bVar);
    }

    public void setOnItemStateChangedListener(cg.c cVar) {
        f();
        this.f37806g.setOnItemStateChangedListener(cVar);
    }

    public void setSwipeItemClickListener(bg.a aVar) {
        if (aVar == null) {
            return;
        }
        b("Cannot set item click listener, setAdapter has already been called.");
        this.f37809j = new c(this, aVar);
    }

    public void setSwipeItemLongClickListener(bg.b bVar) {
        if (bVar == null) {
            return;
        }
        b("Cannot set item long click listener, setAdapter has already been called.");
        this.f37810k = new d(this, bVar);
    }

    public void setSwipeMenuCreator(bg.d dVar) {
        if (dVar == null) {
            return;
        }
        b("Cannot set menu creator, setAdapter has already been called.");
        this.f37807h = dVar;
    }

    public void setSwipeMenuItemClickListener(bg.f fVar) {
        if (fVar == null) {
            return;
        }
        b("Cannot set menu item click listener, setAdapter has already been called.");
        this.f37808i = new g(this, fVar);
    }

    /* loaded from: classes5.dex */
    class b extends RecyclerView.AdapterDataObserver {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            SwipeMenuRecyclerView.this.f37811l.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i9, int i10) {
            SwipeMenuRecyclerView.this.f37811l.notifyItemRangeChanged(i9 + SwipeMenuRecyclerView.this.getHeaderItemCount(), i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i9, int i10) {
            SwipeMenuRecyclerView.this.f37811l.notifyItemRangeInserted(i9 + SwipeMenuRecyclerView.this.getHeaderItemCount(), i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i9, int i10, int i11) {
            SwipeMenuRecyclerView.this.f37811l.notifyItemMoved(i9 + SwipeMenuRecyclerView.this.getHeaderItemCount(), i10 + SwipeMenuRecyclerView.this.getHeaderItemCount());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i9, int i10) {
            SwipeMenuRecyclerView.this.f37811l.notifyItemRangeRemoved(i9 + SwipeMenuRecyclerView.this.getHeaderItemCount(), i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i9, int i10, Object obj) {
            SwipeMenuRecyclerView.this.f37811l.notifyItemRangeChanged(i9 + SwipeMenuRecyclerView.this.getHeaderItemCount(), i10, obj);
        }
    }

    public SwipeMenuRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeMenuRecyclerView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37802c = -1;
        this.f37805f = false;
        this.f37812m = new b();
        this.f37813n = new ArrayList();
        this.f37814o = new ArrayList();
        this.f37815p = -1;
        this.f37816q = false;
        this.f37817r = true;
        this.f37818s = false;
        this.f37819t = true;
        this.f37820u = false;
        this.f37800a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }
}
