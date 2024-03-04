package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SearchTopicBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchEventBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.AddressDynamicListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.adapter.RecommendedAdapter;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
/* loaded from: classes3.dex */
public class PlaceFragment extends BaseDynamicListFragment {
    @BindView
    View MusicLayout;

    /* renamed from: a  reason: collision with root package name */
    private RecommendedAdapter f22784a;

    /* renamed from: b  reason: collision with root package name */
    private RecommendedAdapter f22785b;

    /* renamed from: c  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22786c;

    /* renamed from: d  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22787d;

    /* renamed from: e  reason: collision with root package name */
    private int f22788e = 0;
    @BindView
    View emptyView;

    /* renamed from: f  reason: collision with root package name */
    private String f22789f;

    /* renamed from: g  reason: collision with root package name */
    private UgcSearchComprehensiveBean f22790g;
    @BindView
    RecyclerView rcvRecommended;
    @BindView
    RecyclerView recyclerView;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    SmartRefreshLayout srlRefresh;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            PlaceFragment.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            PlaceFragment.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<List<UgcSearchComprehensiveBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22793a;

        c(String str) {
            this.f22793a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<UgcSearchComprehensiveBean>> aVar) {
            if (PlaceFragment.this.f22787d.size() == 0) {
                PlaceFragment.this.rcvRecommended.setVisibility(8);
                PlaceFragment.this.MusicLayout.setVisibility(0);
                PlaceFragment.this.recyclerView.setVisibility(8);
                PlaceFragment.this.emptyView.setVisibility(0);
            }
            PlaceFragment.this.refreshLayout.u(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<UgcSearchComprehensiveBean> list, @NonNull FaceCastBaseResponse<List<UgcSearchComprehensiveBean>> faceCastBaseResponse) {
            if (PlaceFragment.this.f22789f.equals(this.f22793a)) {
                PlaceFragment.this.rcvRecommended.setVisibility(8);
                PlaceFragment.this.MusicLayout.setVisibility(0);
                PlaceFragment.this.recyclerView.setVisibility(0);
                if (PlaceFragment.this.f22788e == 1) {
                    PlaceFragment.this.f22787d.clear();
                }
                if (list != null && list.size() > 0) {
                    for (UgcSearchComprehensiveBean ugcSearchComprehensiveBean : list) {
                        ugcSearchComprehensiveBean.setType(1);
                        ugcSearchComprehensiveBean.setImageModel(3);
                        PlaceFragment.this.f22787d.add(ugcSearchComprehensiveBean);
                    }
                    PlaceFragment.this.refreshLayout.u(true);
                } else {
                    PlaceFragment.this.refreshLayout.v();
                }
                if (PlaceFragment.this.f22788e == 1 && PlaceFragment.this.f22787d.size() == 0) {
                    PlaceFragment.this.emptyView.setVisibility(0);
                } else {
                    PlaceFragment.this.emptyView.setVisibility(8);
                }
                PlaceFragment.this.f22785b.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y1(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity()) && str.equals(BaseConfig.RECOMMENDED_ITEM)) {
            hideSoftKeyboard();
            AddressDynamicListActivity.start(getActivity(), this.f22787d.get(i9).getPlaceName(), this.f22787d.get(i9).getPartakeTimes());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z1(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity())) {
            AddressDynamicListActivity.start(getActivity(), this.f22786c.get(i9).getPlaceName(), this.f22786c.get(i9).getPartakeTimes());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a2(wd.j jVar) {
        this.f22788e++;
        X1(this.f22789f);
    }

    private void b2(String str) {
        if (!TextUtils.isEmpty(this.f22789f)) {
            this.refreshLayout.R(false);
            if (this.f22789f.equals(str)) {
                this.f22787d.clear();
                this.f22785b.notifyDataSetChanged();
            }
        }
        this.f22789f = str;
        if (TextUtils.isEmpty(str)) {
            this.rcvRecommended.setVisibility(0);
            this.MusicLayout.setVisibility(8);
            this.emptyView.setVisibility(8);
            return;
        }
        RecyclerView recyclerView = this.rcvRecommended;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
            this.MusicLayout.setVisibility(0);
        }
        this.f22788e = 1;
        X1(str);
    }

    public void X1(String str) {
        SearchTopicBean searchTopicBean = new SearchTopicBean();
        searchTopicBean.setPlaceName(str);
        searchTopicBean.setCurrPage(this.f22788e);
        searchTopicBean.setPageSize(15);
        post("tokens/search/findPlaceByName/v2").u(searchTopicBean).M(new c(str));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().e(true).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        if (EventBus.getDefault().isRegistered(this)) {
            return R.layout.fragment_ugc_music;
        }
        EventBus.getDefault().register(this);
        return R.layout.fragment_ugc_music;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.refreshLayout.f(false);
        this.refreshLayout.L(true);
        this.srlRefresh.f(false);
        this.srlRefresh.L(false);
        this.f22786c = new ArrayList();
        this.f22787d = new ArrayList();
        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
        this.f22790g = ugcSearchComprehensiveBean;
        ugcSearchComprehensiveBean.setType(2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.rcvRecommended.setLayoutManager(linearLayoutManager);
        RecommendedAdapter recommendedAdapter = new RecommendedAdapter(getActivity(), this.f22786c);
        this.f22784a = recommendedAdapter;
        this.rcvRecommended.setAdapter(recommendedAdapter);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getActivity());
        linearLayoutManager2.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager2);
        RecommendedAdapter recommendedAdapter2 = new RecommendedAdapter(getActivity(), this.f22787d);
        this.f22785b = recommendedAdapter2;
        this.recyclerView.setAdapter(recommendedAdapter2);
        this.f22785b.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.n
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                PlaceFragment.this.Y1(view2, str, i9);
            }
        });
        this.f22784a.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.m
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                PlaceFragment.this.Z1(view2, str, i9);
            }
        });
        this.refreshLayout.S(new zd.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.o
            @Override // zd.b
            public final void b(wd.j jVar) {
                PlaceFragment.this.a2(jVar);
            }
        });
        this.rcvRecommended.addOnScrollListener(new a());
        this.recyclerView.addOnScrollListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        super.onDestroy();
    }

    @Subscribe
    public void onMessageEvent(UgcSearchEventBean ugcSearchEventBean) {
        if (ugcSearchEventBean.getType() == 4) {
            b2(ugcSearchEventBean.getText());
        }
    }
}
