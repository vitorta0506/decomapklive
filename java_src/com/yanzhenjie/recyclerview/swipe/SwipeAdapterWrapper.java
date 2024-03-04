package com.yanzhenjie.recyclerview.swipe;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import bg.f;
import com.tencent.bugly.BuglyStrategy;
import java.lang.reflect.Field;
import java.util.List;
/* loaded from: classes5.dex */
public class SwipeAdapterWrapper extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private SparseArrayCompat<View> f37767a = new SparseArrayCompat<>();

    /* renamed from: b  reason: collision with root package name */
    private SparseArrayCompat<View> f37768b = new SparseArrayCompat<>();

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView.Adapter f37769c;

    /* renamed from: d  reason: collision with root package name */
    private LayoutInflater f37770d;

    /* renamed from: e  reason: collision with root package name */
    private bg.d f37771e;

    /* renamed from: f  reason: collision with root package name */
    private f f37772f;

    /* renamed from: g  reason: collision with root package name */
    private bg.a f37773g;

    /* renamed from: h  reason: collision with root package name */
    private bg.b f37774h;

    /* loaded from: classes5.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f37775a;

        a(RecyclerView.ViewHolder viewHolder) {
            this.f37775a = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SwipeAdapterWrapper.this.f37773g.a(view, this.f37775a.getAdapterPosition());
        }
    }

    /* loaded from: classes5.dex */
    class b implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f37777a;

        b(RecyclerView.ViewHolder viewHolder) {
            this.f37777a = viewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            SwipeAdapterWrapper.this.f37774h.a(view, this.f37777a.getAdapterPosition());
            return true;
        }
    }

    /* loaded from: classes5.dex */
    static class c extends RecyclerView.ViewHolder {
        public c(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SwipeAdapterWrapper(Context context, RecyclerView.Adapter adapter) {
        this.f37770d = LayoutInflater.from(context);
        this.f37769c = adapter;
    }

    private int e() {
        return this.f37769c.getItemCount();
    }

    private Class<?> i(Class<?> cls) {
        Class<? super Object> superclass = cls.getSuperclass();
        return (superclass == null || superclass.equals(Object.class)) ? cls : i(superclass);
    }

    public void c(View view) {
        this.f37768b.put(f() + 200000, view);
    }

    public void d(View view) {
        this.f37767a.put(g() + BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH, view);
    }

    public int f() {
        return this.f37768b.size();
    }

    public int g() {
        return this.f37767a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return g() + e() + f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i9) {
        if (!k(i9) && !j(i9)) {
            return this.f37769c.getItemId(i9);
        }
        return super.getItemId(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        if (k(i9)) {
            return this.f37767a.keyAt(i9);
        }
        if (j(i9)) {
            return this.f37768b.keyAt((i9 - g()) - e());
        }
        return this.f37769c.getItemViewType(i9 - g());
    }

    public RecyclerView.Adapter h() {
        return this.f37769c;
    }

    public boolean j(int i9) {
        return i9 >= g() + e();
    }

    public boolean k(int i9) {
        return i9 >= 0 && i9 < g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(bg.a aVar) {
        this.f37773g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(bg.b bVar) {
        this.f37774h = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(bg.d dVar) {
        this.f37771e = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(f fVar) {
        this.f37772f = fVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.f37769c.onAttachedToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9, List<Object> list) {
        if (k(i9) || j(i9)) {
            return;
        }
        View view = viewHolder.itemView;
        if (view instanceof SwipeMenuLayout) {
            SwipeMenuLayout swipeMenuLayout = (SwipeMenuLayout) view;
            int childCount = swipeMenuLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = swipeMenuLayout.getChildAt(i10);
                if (childAt instanceof SwipeMenuView) {
                    ((SwipeMenuView) childAt).a(viewHolder);
                }
            }
        }
        this.f37769c.onBindViewHolder(viewHolder, i9 - g(), list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        if (this.f37767a.get(i9) != null) {
            return new c(this.f37767a.get(i9));
        }
        if (this.f37768b.get(i9) != null) {
            return new c(this.f37768b.get(i9));
        }
        RecyclerView.ViewHolder onCreateViewHolder = this.f37769c.onCreateViewHolder(viewGroup, i9);
        if (this.f37773g != null) {
            onCreateViewHolder.itemView.setOnClickListener(new a(onCreateViewHolder));
        }
        if (this.f37774h != null) {
            onCreateViewHolder.itemView.setOnLongClickListener(new b(onCreateViewHolder));
        }
        if (this.f37771e == null) {
            return onCreateViewHolder;
        }
        SwipeMenuLayout swipeMenuLayout = (SwipeMenuLayout) this.f37770d.inflate(R$layout.recycler_swipe_view_item, viewGroup, false);
        bg.c cVar = new bg.c(swipeMenuLayout, i9);
        bg.c cVar2 = new bg.c(swipeMenuLayout, i9);
        this.f37771e.a(cVar, cVar2, i9);
        if (cVar.a().size() > 0) {
            SwipeMenuView swipeMenuView = (SwipeMenuView) swipeMenuLayout.findViewById(R$id.swipe_left);
            swipeMenuView.setOrientation(cVar.b());
            swipeMenuView.c(cVar, swipeMenuLayout, this.f37772f, 1);
        }
        if (cVar2.a().size() > 0) {
            SwipeMenuView swipeMenuView2 = (SwipeMenuView) swipeMenuLayout.findViewById(R$id.swipe_right);
            swipeMenuView2.setOrientation(cVar2.b());
            swipeMenuView2.c(cVar2, swipeMenuLayout, this.f37772f, -1);
        }
        ((ViewGroup) swipeMenuLayout.findViewById(R$id.swipe_content)).addView(onCreateViewHolder.itemView);
        try {
            Field declaredField = i(onCreateViewHolder.getClass()).getDeclaredField("itemView");
            if (!declaredField.isAccessible()) {
                declaredField.setAccessible(true);
            }
            declaredField.set(onCreateViewHolder, swipeMenuLayout);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return onCreateViewHolder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.f37769c.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        int adapterPosition = viewHolder.getAdapterPosition();
        if (k(adapterPosition) || j(adapterPosition)) {
            return false;
        }
        return this.f37769c.onFailedToRecycleView(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        int adapterPosition = viewHolder.getAdapterPosition();
        if (!k(adapterPosition) && !j(adapterPosition)) {
            this.f37769c.onViewAttachedToWindow(viewHolder);
            return;
        }
        ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams == null || !(layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            return;
        }
        ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        int adapterPosition = viewHolder.getAdapterPosition();
        if (k(adapterPosition) || j(adapterPosition)) {
            return;
        }
        this.f37769c.onViewDetachedFromWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        int adapterPosition = viewHolder.getAdapterPosition();
        if (k(adapterPosition) || j(adapterPosition)) {
            return;
        }
        this.f37769c.onViewRecycled(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
        super.registerAdapterDataObserver(adapterDataObserver);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z10) {
        this.f37769c.setHasStableIds(z10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
        super.unregisterAdapterDataObserver(adapterDataObserver);
    }
}
