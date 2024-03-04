package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SearchMusicBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchEventBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.MusicVideoActivity;
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
public class MusicFragment extends BaseDynamicListFragment {
    @BindView
    View MusicLayout;

    /* renamed from: a  reason: collision with root package name */
    private RecommendedAdapter f22726a;

    /* renamed from: b  reason: collision with root package name */
    private RecommendedAdapter f22727b;

    /* renamed from: c  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22728c;

    /* renamed from: d  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22729d;

    /* renamed from: e  reason: collision with root package name */
    private UgcSearchComprehensiveBean f22730e;
    @BindView
    View emptyView;

    /* renamed from: g  reason: collision with root package name */
    private String f22732g;
    @BindView
    RecyclerView rcvRecommended;
    @BindView
    RecyclerView recyclerView;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    SmartRefreshLayout srlRefresh;

    /* renamed from: f  reason: collision with root package name */
    private int f22731f = 1;

    /* renamed from: h  reason: collision with root package name */
    private long f22733h = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<UgcSearchComprehensiveBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<UgcSearchComprehensiveBean>> aVar) {
            MusicFragment.this.srlRefresh.w();
            MusicFragment.this.srlRefresh.f(false);
            MusicFragment.this.rcvRecommended.setVisibility(0);
            MusicFragment.this.MusicLayout.setVisibility(8);
            MusicFragment.this.emptyView.setVisibility(8);
            MusicFragment.this.f22728c.clear();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<UgcSearchComprehensiveBean> list, @NonNull FaceCastBaseResponse<List<UgcSearchComprehensiveBean>> faceCastBaseResponse) {
            MusicFragment.this.f22733h = 0L;
            MusicFragment.this.srlRefresh.w();
            MusicFragment.this.srlRefresh.f(false);
            MusicFragment.this.rcvRecommended.setVisibility(0);
            MusicFragment.this.MusicLayout.setVisibility(8);
            MusicFragment.this.emptyView.setVisibility(8);
            MusicFragment.this.f22728c.clear();
            MusicFragment.this.f22728c.add(MusicFragment.this.f22730e);
            if (list != null && list.size() > 0) {
                for (UgcSearchComprehensiveBean ugcSearchComprehensiveBean : list) {
                    ugcSearchComprehensiveBean.setType(1);
                    ugcSearchComprehensiveBean.setImageModel(4);
                    MusicFragment.this.f22728c.add(ugcSearchComprehensiveBean);
                }
            }
            MusicFragment.this.f22726a.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<List<UgcSearchComprehensiveBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22735a;

        b(String str) {
            this.f22735a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<UgcSearchComprehensiveBean>> aVar) {
            if (MusicFragment.this.f22729d.size() == 0) {
                MusicFragment.this.rcvRecommended.setVisibility(8);
                MusicFragment.this.refreshLayout.setVisibility(0);
                MusicFragment.this.recyclerView.setVisibility(0);
                MusicFragment.this.emptyView.setVisibility(0);
            } else {
                MusicFragment.this.emptyView.setVisibility(8);
            }
            MusicFragment.this.refreshLayout.u(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<UgcSearchComprehensiveBean> list, @NonNull FaceCastBaseResponse<List<UgcSearchComprehensiveBean>> faceCastBaseResponse) {
            if (MusicFragment.this.f22732g.equals(this.f22735a)) {
                MusicFragment.this.rcvRecommended.setVisibility(8);
                MusicFragment.this.MusicLayout.setVisibility(0);
                if (MusicFragment.this.f22731f == 1) {
                    MusicFragment.this.f22729d.clear();
                    MusicFragment.this.f22727b.notifyDataSetChanged();
                }
                if (list == null) {
                    list = new ArrayList<>();
                }
                for (UgcSearchComprehensiveBean ugcSearchComprehensiveBean : list) {
                    ugcSearchComprehensiveBean.setType(1);
                    ugcSearchComprehensiveBean.setImageModel(4);
                    MusicFragment.this.f22729d.add(ugcSearchComprehensiveBean);
                }
                MusicFragment.this.f22727b.notifyDataSetChanged();
                if (MusicFragment.this.f22729d.size() == 0) {
                    MusicFragment.this.emptyView.setVisibility(0);
                } else {
                    MusicFragment.this.emptyView.setVisibility(8);
                }
                if (list.size() > 0) {
                    MusicFragment.this.refreshLayout.u(true);
                } else {
                    MusicFragment.this.refreshLayout.v();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            MusicFragment.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class d extends RecyclerView.OnScrollListener {
        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            MusicFragment.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c2(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity()) && str.equals(BaseConfig.RECOMMENDED_ITEM)) {
            g2(this.f22729d.get(i9));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity())) {
            Intent intent = new Intent(getActivity(), MusicVideoActivity.class);
            intent.putExtra("type_id", this.f22728c.get(i9).getTypeId() + "");
            intent.putExtra("from", 1);
            intent.putExtra("tyPeName", this.f22728c.get(i9).getMname());
            intent.putExtra("musicId", this.f22728c.get(i9).getMusicId());
            intent.putExtra("topic_id", this.f22728c.get(i9).getTopicId());
            intent.putExtra("titleName", this.f22728c.get(i9).getMname());
            intent.putExtra("musicName", this.f22728c.get(i9).getMname());
            intent.putExtra("musicUrl", this.f22728c.get(i9).getUrl());
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e2(wd.j jVar) {
        this.f22731f++;
        b2(this.f22732g);
    }

    private void f2(String str) {
        if (!TextUtils.isEmpty(this.f22732g)) {
            this.refreshLayout.R(false);
            if (this.f22732g.equals(str)) {
                this.f22729d.clear();
                this.f22727b.notifyDataSetChanged();
            }
        }
        this.f22732g = str;
        if (TextUtils.isEmpty(str)) {
            loadData(1);
            return;
        }
        this.f22731f = 1;
        b2(str);
    }

    private void g2(UgcSearchComprehensiveBean ugcSearchComprehensiveBean) {
        Intent intent = new Intent(getActivity(), MusicVideoActivity.class);
        intent.putExtra("type_id", ugcSearchComprehensiveBean.getTypeId() + "");
        intent.putExtra("from", 1);
        intent.putExtra("tyPeName", ugcSearchComprehensiveBean.getMname());
        intent.putExtra("musicId", ugcSearchComprehensiveBean.getMusicId());
        intent.putExtra("topic_id", ugcSearchComprehensiveBean.getTopicId());
        intent.putExtra("titleName", ugcSearchComprehensiveBean.getMname());
        intent.putExtra("musicUrl", ugcSearchComprehensiveBean.getUrl());
        startActivity(intent);
    }

    public void b2(String str) {
        SearchMusicBean searchMusicBean = new SearchMusicBean();
        searchMusicBean.setMusicName(str);
        searchMusicBean.setCurrPage(this.f22731f);
        searchMusicBean.setPageSize(15);
        post("tokens/search/findMusicByName").u(searchMusicBean).M(new b(str));
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
        this.srlRefresh.L(false);
        this.srlRefresh.q();
        this.f22728c = new ArrayList();
        this.f22729d = new ArrayList();
        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
        this.f22730e = ugcSearchComprehensiveBean;
        ugcSearchComprehensiveBean.setType(6);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.rcvRecommended.setLayoutManager(linearLayoutManager);
        RecommendedAdapter recommendedAdapter = new RecommendedAdapter(getActivity(), this.f22728c);
        this.f22726a = recommendedAdapter;
        this.rcvRecommended.setAdapter(recommendedAdapter);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getActivity());
        linearLayoutManager2.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager2);
        RecommendedAdapter recommendedAdapter2 = new RecommendedAdapter(getActivity(), this.f22729d);
        this.f22727b = recommendedAdapter2;
        this.recyclerView.setAdapter(recommendedAdapter2);
        this.f22727b.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.h
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                MusicFragment.this.c2(view2, str, i9);
            }
        });
        this.f22726a.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.i
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                MusicFragment.this.d2(view2, str, i9);
            }
        });
        this.refreshLayout.S(new zd.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.j
            @Override // zd.b
            public final void b(wd.j jVar) {
                MusicFragment.this.e2(jVar);
            }
        });
        this.rcvRecommended.addOnScrollListener(new c());
        this.recyclerView.addOnScrollListener(new d());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (this.f22733h != 100 && getUserVisibleHint() && !isHidden() && isVisible() && TextUtils.isEmpty(this.f22732g)) {
            SearchMusicBean searchMusicBean = new SearchMusicBean();
            searchMusicBean.setCurrPage(1);
            searchMusicBean.setPageSize(5);
            this.f22733h = 100L;
            post("tokens/search/getRecommendMusicList").u(searchMusicBean).M(new a());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        super.onDestroy();
    }

    @Subscribe
    public void onMessageEvent(UgcSearchEventBean ugcSearchEventBean) {
        if (ugcSearchEventBean.getType() == 5) {
            this.f22731f = 1;
            f2(ugcSearchEventBean.getText());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (TextUtils.isEmpty(this.f22732g)) {
            loadData(1);
        }
    }

    @OnClick
    public void onViewClicked() {
        this.f22731f = 1;
        b2(this.f22732g);
    }
}
