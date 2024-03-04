package d7;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.adapter.HeaderFooterRecyclerViewAdapter;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.views.FakeFooter;
import com.guochao.faceshow.aaspring.views.UgcFooter;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import io.reactivex.k;
import java.util.List;
import java.util.concurrent.TimeUnit;
import wd.j;
/* loaded from: classes3.dex */
public class d<T, VH extends BaseViewHolder> extends d7.b<T, VH> implements c<T, VH>, zd.d, zd.b {

    /* renamed from: i  reason: collision with root package name */
    private c<T, VH> f37956i;

    /* renamed from: j  reason: collision with root package name */
    private int f37957j;

    /* renamed from: k  reason: collision with root package name */
    SmartRefreshLayout f37958k;

    /* renamed from: l  reason: collision with root package name */
    UgcFooter f37959l;

    /* renamed from: m  reason: collision with root package name */
    FakeFooter f37960m;

    /* renamed from: n  reason: collision with root package name */
    private int f37961n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f37962o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f37963p;

    /* loaded from: classes3.dex */
    class a extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.LayoutManager f37964a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GridLayoutManager.SpanSizeLookup f37965b;

        a(RecyclerView.LayoutManager layoutManager, GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.f37964a = layoutManager;
            this.f37965b = spanSizeLookup;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i9) {
            if (d.this.o().e(i9)) {
                return ((GridLayoutManager) this.f37964a).getSpanCount();
            }
            GridLayoutManager.SpanSizeLookup spanSizeLookup = this.f37965b;
            if (spanSizeLookup != null) {
                return spanSizeLookup.getSpanSize(i9);
            }
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    class b extends SimpleObserver<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f37967a;

        b(boolean z10) {
            this.f37967a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            SmartRefreshLayout smartRefreshLayout = d.this.f37958k;
            if (smartRefreshLayout == null) {
                return;
            }
            if (smartRefreshLayout.getState() == RefreshState.Refreshing || d.this.f37958k.getState() == RefreshState.PullDownToRefresh) {
                d.this.f37958k.d(0);
                if (d.this.canLoadMore()) {
                    d.this.f37958k.L(true);
                    d dVar = d.this;
                    UgcFooter ugcFooter = dVar.f37959l;
                    if (ugcFooter != null) {
                        ugcFooter.t(this.f37967a, dVar.f37962o);
                    }
                } else {
                    d.this.f37958k.L(false);
                }
            }
            if (d.this.f37958k.getState() == RefreshState.Loading || d.this.f37958k.getState() == RefreshState.PullUpToLoad) {
                d dVar2 = d.this;
                UgcFooter ugcFooter2 = dVar2.f37959l;
                if (ugcFooter2 != null) {
                    ugcFooter2.t(this.f37967a, dVar2.f37962o);
                }
                if (this.f37967a && d.this.canLoadMore()) {
                    d.this.f37958k.s(0);
                } else {
                    d.this.f37958k.v();
                }
            }
        }
    }

    public d(c<T, VH> cVar) {
        super(cVar);
        this.f37957j = 1;
        this.f37961n = 1;
        this.f37963p = true;
        this.f37956i = cVar;
    }

    @Override // zd.d
    public void a(@NonNull j jVar) {
        int i9 = this.f37957j;
        this.f37961n = i9;
        loadData(i9);
    }

    @Override // d7.b, d7.a
    public void addDatas(List<T> list) {
        if (this.f37961n == this.f37957j) {
            getList().clear();
        }
        super.addDatas(list);
    }

    @Override // d7.c
    public void addFooterView(View view, int i9) {
        o().c(view, i9);
    }

    @Override // d7.c
    public void addHeaderView(View view, int i9) {
        o().d(view, i9);
    }

    @Override // zd.b
    public void b(@NonNull j jVar) {
        int i9 = this.f37961n + 1;
        this.f37961n = i9;
        loadData(i9);
    }

    @Override // d7.c
    public boolean canLoadMore() {
        return this.f37956i.canLoadMore();
    }

    @Override // d7.c
    public boolean canRefresh() {
        return this.f37956i.canRefresh();
    }

    @Override // d7.b, d7.a
    public void convertItem(VH vh2, int i9, T t10) {
    }

    @Override // d7.c
    public int getCurrentPage() {
        return this.f37961n;
    }

    @Override // d7.c
    public int getDefaultPage() {
        return this.f37957j;
    }

    @Override // d7.c
    public View getEmptyView() {
        return this.f37952f;
    }

    @Override // d7.a
    public View getFooterView() {
        return this.f37959l;
    }

    @Override // d7.c
    public SmartRefreshLayout getRefreshableLayout() {
        return this.f37958k;
    }

    @Override // d7.a
    public void hideFooterView() {
        setFooterView(8);
    }

    @Override // d7.b, d7.a
    public void init(Context context, View view) {
        super.init(context, view);
        this.f37958k = (SmartRefreshLayout) g(R.id.refresh_layout);
        this.f37957j = this.f37956i.getDefaultPage();
        if (this.f37958k != null) {
            if (canRefresh()) {
                this.f37958k.T(this);
                this.f37958k.f(true);
            } else {
                this.f37958k.f(false);
            }
            if (canLoadMore()) {
                this.f37958k.S(this);
                this.f37958k.b(true);
                this.f37960m = (FakeFooter) view.findViewById(R.id.ugc_footer);
                this.f37959l = new UgcFooter(context);
                this.f37959l.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                FakeFooter fakeFooter = this.f37960m;
                if (fakeFooter != null) {
                    fakeFooter.setDelegate(this.f37959l);
                    this.f37960m.setVisibility(4);
                }
                UgcFooter ugcFooter = this.f37959l;
                if (ugcFooter != null) {
                    ugcFooter.setVisibility(4);
                }
                if (this.f37953g == null) {
                    addFooterView(this.f37959l, 100221);
                }
                this.f37958k.L(true);
                this.f37958k.b(true);
            } else {
                this.f37958k.L(false);
            }
            if (this.f37963p) {
                this.f37958k.p(0, 60, 1.0f, true);
            }
            this.f37958k.M(true);
        }
        RecyclerView.LayoutManager layoutManager = this.f37949c.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new a(layoutManager, gridLayoutManager.getSpanSizeLookup()));
        }
    }

    @Override // d7.c
    public void loadData(int i9) {
        this.f37956i.loadData(i9);
    }

    @Override // d7.c
    public void notifyDataLoaded(boolean z10) {
        RecyclerView recyclerView = this.f37949c;
        if (recyclerView != null && recyclerView.getAdapter() != null) {
            this.f37949c.getAdapter().notifyDataSetChanged();
        }
        k.just(1).delay(100L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new b(z10));
        BaseRecyclerAdapter<T, VH> baseRecyclerAdapter = this.f37951e;
        if (baseRecyclerAdapter != null) {
            baseRecyclerAdapter.a();
        }
    }

    public HeaderFooterRecyclerViewAdapter<T, VH> o() {
        return (HeaderFooterRecyclerViewAdapter) this.f37951e;
    }

    @Override // d7.b, d7.a
    public RecyclerView.Adapter<VH> onCreateAdapter(RecyclerView recyclerView) {
        HeaderFooterRecyclerViewAdapter headerFooterRecyclerViewAdapter = new HeaderFooterRecyclerViewAdapter(e(), getList(), this.f37956i, super.onCreateAdapter(recyclerView));
        this.f37951e = headerFooterRecyclerViewAdapter;
        return headerFooterRecyclerViewAdapter;
    }

    @Override // d7.a
    public void reload() {
        setCurrentPage(getDefaultPage());
        loadData(getCurrentPage());
        View view = this.f37952f;
        if (view != null) {
            view.setVisibility(8);
        }
        SmartRefreshLayout smartRefreshLayout = this.f37958k;
        if (smartRefreshLayout != null) {
            smartRefreshLayout.setVisibility(0);
            this.f37958k.p(0, 60, 1.0f, true);
        }
    }

    @Override // d7.c
    public void removeFooterView(View view) {
        o().removeFooterView(view);
    }

    @Override // d7.c
    public void removeHeaderView(View view) {
        o().removeHeaderView(view);
    }

    @Override // d7.c
    public void setCurrentPage(int i9) {
        this.f37961n = i9;
    }

    @Override // d7.c
    public void setDefaultPage(int i9) {
        this.f37957j = i9;
    }

    @Override // d7.a
    public void setFooterView(int i9) {
        this.f37962o = i9 != 0;
        UgcFooter ugcFooter = this.f37959l;
        if (ugcFooter == null || this.f37953g != null) {
            return;
        }
        if (i9 == 8) {
            removeFooterView(ugcFooter);
        } else {
            removeFooterView(ugcFooter);
            addFooterView(this.f37959l, 100221);
        }
        this.f37959l.setVisibility(i9);
    }

    @Override // d7.c
    public void setShowRefreshOnInit(boolean z10) {
        this.f37963p = z10;
    }

    @Override // d7.a
    public void showEmptyView() {
        if (getItemCount() == 0) {
            View view = this.f37952f;
            if (view != null) {
                view.setVisibility(0);
            }
            hideFooterView();
            SmartRefreshLayout smartRefreshLayout = this.f37958k;
            if (smartRefreshLayout != null) {
                smartRefreshLayout.setVisibility(8);
                return;
            }
            RecyclerView recyclerView = this.f37949c;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
                return;
            }
            return;
        }
        View view2 = this.f37952f;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        UgcFooter ugcFooter = this.f37959l;
        if (ugcFooter != null) {
            ugcFooter.setVisibility(0);
        }
        SmartRefreshLayout smartRefreshLayout2 = this.f37958k;
        if (smartRefreshLayout2 != null) {
            smartRefreshLayout2.setVisibility(0);
            return;
        }
        RecyclerView recyclerView2 = this.f37949c;
        if (recyclerView2 != null) {
            recyclerView2.setVisibility(0);
        }
    }
}
