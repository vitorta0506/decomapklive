package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SearchTopicBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchEventBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.TopicHomePageActivity;
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
public class TopicFragment extends BaseDynamicListFragment {
    @BindView
    View MusicLayout;

    /* renamed from: a  reason: collision with root package name */
    private RecommendedAdapter f22799a;

    /* renamed from: b  reason: collision with root package name */
    private RecommendedAdapter f22800b;

    /* renamed from: c  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22801c;

    /* renamed from: d  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22802d;

    /* renamed from: e  reason: collision with root package name */
    private UgcSearchComprehensiveBean f22803e;
    @BindView
    View emptyView;

    /* renamed from: f  reason: collision with root package name */
    private String f22804f;

    /* renamed from: g  reason: collision with root package name */
    private long f22805g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f22806h = 1;
    @BindView
    RecyclerView rcvRecommended;
    @BindView
    RecyclerView recyclerView;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    SmartRefreshLayout srlRefresh;

    /* loaded from: classes3.dex */
    class a implements zd.b {
        a() {
        }

        @Override // zd.b
        public void b(@NonNull wd.j jVar) {
            TopicFragment.T1(TopicFragment.this);
            TopicFragment topicFragment = TopicFragment.this;
            topicFragment.c2(topicFragment.f22804f);
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            TopicFragment.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            TopicFragment.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<List<UgcSearchComprehensiveBean>> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<UgcSearchComprehensiveBean>> aVar) {
            TopicFragment.this.srlRefresh.w();
            TopicFragment.this.srlRefresh.f(false);
            TopicFragment.this.emptyView.setVisibility(8);
            TopicFragment.this.f22801c.clear();
            TopicFragment.this.f22799a.notifyDataSetChanged();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<UgcSearchComprehensiveBean> list, @NonNull FaceCastBaseResponse<List<UgcSearchComprehensiveBean>> faceCastBaseResponse) {
            TopicFragment.this.f22805g = 0L;
            TopicFragment.this.srlRefresh.w();
            TopicFragment.this.srlRefresh.f(false);
            TopicFragment.this.emptyView.setVisibility(8);
            TopicFragment.this.f22801c.clear();
            TopicFragment.this.f22801c.add(TopicFragment.this.f22803e);
            if (list != null && list.size() > 0) {
                for (UgcSearchComprehensiveBean ugcSearchComprehensiveBean : list) {
                    ugcSearchComprehensiveBean.setType(1);
                    ugcSearchComprehensiveBean.setImageModel(1);
                    TopicFragment.this.f22801c.add(ugcSearchComprehensiveBean);
                }
            }
            TopicFragment.this.f22799a.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<UgcSearchComprehensiveBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22811a;

        e(String str) {
            this.f22811a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UgcSearchComprehensiveBean ugcSearchComprehensiveBean, @NonNull FaceCastBaseResponse<UgcSearchComprehensiveBean> faceCastBaseResponse) {
            if (TextUtils.isEmpty(TopicFragment.this.f22804f) || TextUtils.isEmpty(this.f22811a) || TopicFragment.this.f22804f.equals(this.f22811a)) {
                TopicFragment.this.rcvRecommended.setVisibility(8);
                TopicFragment.this.MusicLayout.setVisibility(0);
                if (TopicFragment.this.f22806h == 1) {
                    TopicFragment.this.f22802d.clear();
                }
                if (ugcSearchComprehensiveBean != null && ugcSearchComprehensiveBean.getTopicList() != null && ugcSearchComprehensiveBean.getTopicList().size() > 0) {
                    for (UgcSearchComprehensiveBean.Topic topic : ugcSearchComprehensiveBean.getTopicList()) {
                        UgcSearchComprehensiveBean ugcSearchComprehensiveBean2 = new UgcSearchComprehensiveBean();
                        ugcSearchComprehensiveBean2.setTopicName(topic.getTopicName());
                        ugcSearchComprehensiveBean2.setTopicId(topic.getTopicId());
                        ugcSearchComprehensiveBean2.setPartakeTimes(topic.getPartakeTimes());
                        ugcSearchComprehensiveBean2.setType(1);
                        ugcSearchComprehensiveBean2.setImageModel(1);
                        TopicFragment.this.f22802d.add(ugcSearchComprehensiveBean2);
                    }
                    TopicFragment.this.refreshLayout.u(true);
                } else {
                    TopicFragment.this.refreshLayout.v();
                }
                if (TopicFragment.this.f22802d.size() > 0) {
                    TopicFragment.this.emptyView.setVisibility(8);
                } else {
                    TopicFragment.this.emptyView.setVisibility(0);
                }
                TopicFragment.this.f22800b.notifyDataSetChanged();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UgcSearchComprehensiveBean> aVar) {
            TopicFragment.this.refreshLayout.u(false);
            if (TopicFragment.this.f22802d.size() == 0) {
                TopicFragment.this.rcvRecommended.setVisibility(8);
                TopicFragment.this.MusicLayout.setVisibility(0);
                TopicFragment.this.emptyView.setVisibility(8);
                return;
            }
            TopicFragment.this.emptyView.setVisibility(0);
        }
    }

    static /* synthetic */ int T1(TopicFragment topicFragment) {
        int i9 = topicFragment.f22806h;
        topicFragment.f22806h = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2(String str) {
        SearchTopicBean searchTopicBean = new SearchTopicBean();
        searchTopicBean.setTopicName(str);
        searchTopicBean.setCurrPage(this.f22806h);
        searchTopicBean.setPageSize(15);
        post("tokens/search/findTopicByName").u(searchTopicBean).M(new e(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity()) && str.equals(BaseConfig.RECOMMENDED_ITEM)) {
            hideSoftKeyboard();
            g2(this.f22802d.get(i9));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e2(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity())) {
            g2(this.f22801c.get(i9));
        }
    }

    private void f2(String str) {
        if (!TextUtils.isEmpty(this.f22804f)) {
            this.refreshLayout.R(false);
            if (this.f22804f.equals(str)) {
                this.f22802d.clear();
                this.f22800b.notifyDataSetChanged();
            }
        }
        this.f22804f = str;
        if (TextUtils.isEmpty(str)) {
            this.rcvRecommended.setVisibility(0);
            this.MusicLayout.setVisibility(8);
            this.emptyView.setVisibility(8);
            loadData(1);
            return;
        }
        this.f22806h = 1;
        c2(str);
    }

    private void g2(UgcSearchComprehensiveBean ugcSearchComprehensiveBean) {
        UgcTopicBean ugcTopicBean = new UgcTopicBean();
        ugcTopicBean.setTopicId(ugcSearchComprehensiveBean.getTopicId());
        ugcTopicBean.setTopicName(ugcSearchComprehensiveBean.getTopicName());
        TopicHomePageActivity.r0(getActivity(), ugcTopicBean);
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
        this.srlRefresh.L(false);
        this.srlRefresh.q();
        this.refreshLayout.f(false);
        this.refreshLayout.L(true);
        this.f22801c = new ArrayList();
        this.f22802d = new ArrayList();
        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
        this.f22803e = ugcSearchComprehensiveBean;
        ugcSearchComprehensiveBean.setType(5);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.rcvRecommended.setLayoutManager(linearLayoutManager);
        RecommendedAdapter recommendedAdapter = new RecommendedAdapter(getActivity(), this.f22801c);
        this.f22799a = recommendedAdapter;
        this.rcvRecommended.setAdapter(recommendedAdapter);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getActivity());
        linearLayoutManager2.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager2);
        RecommendedAdapter recommendedAdapter2 = new RecommendedAdapter(getActivity(), this.f22802d);
        this.f22800b = recommendedAdapter2;
        this.recyclerView.setAdapter(recommendedAdapter2);
        this.f22800b.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.q
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                TopicFragment.this.d2(view2, str, i9);
            }
        });
        this.f22799a.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.r
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                TopicFragment.this.e2(view2, str, i9);
            }
        });
        this.refreshLayout.S(new a());
        this.rcvRecommended.addOnScrollListener(new b());
        this.recyclerView.addOnScrollListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (this.f22805g != 100 && getUserVisibleHint() && !isHidden() && isVisible()) {
            SearchTopicBean searchTopicBean = new SearchTopicBean();
            searchTopicBean.setHotCount(2);
            searchTopicBean.setRecommendCount(3);
            this.f22805g = 100L;
            post("tokens/search/findRecommendAndHotTopicList").u(searchTopicBean).M(new d());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        super.onDestroy();
    }

    @Subscribe
    public void onMessageEvent(UgcSearchEventBean ugcSearchEventBean) {
        if (ugcSearchEventBean.getType() == 3) {
            f2(ugcSearchEventBean.getText());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (TextUtils.isEmpty(this.f22804f)) {
            loadData(1);
        }
    }
}
