package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SearchUserBean;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchEventBean;
import com.guochao.faceshow.aaspring.modulars.ugc.adapter.RecommendedAdapter;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
/* loaded from: classes3.dex */
public class UserFragMent extends BaseDynamicListFragment {
    @BindView
    View MusicLayout;

    /* renamed from: a  reason: collision with root package name */
    private RecommendedAdapter f22845a;

    /* renamed from: b  reason: collision with root package name */
    private RecommendedAdapter f22846b;

    /* renamed from: c  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22847c;

    /* renamed from: d  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22848d;
    @BindView
    View emptyView;

    /* renamed from: f  reason: collision with root package name */
    private String f22850f;

    /* renamed from: g  reason: collision with root package name */
    private UgcSearchComprehensiveBean f22851g;
    @BindView
    RecyclerView rcvRecommended;
    @BindView
    RecyclerView recyclerView;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    SmartRefreshLayout srlRefresh;

    /* renamed from: e  reason: collision with root package name */
    private int f22849e = 1;

    /* renamed from: h  reason: collision with root package name */
    private long f22852h = 0;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            UserFragMent.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            UserFragMent.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SearchUserNameOrIdBean>> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<SearchUserNameOrIdBean>> aVar) {
            UserFragMent.this.srlRefresh.w();
            UserFragMent.this.srlRefresh.f(false);
            UserFragMent.this.rcvRecommended.setVisibility(0);
            UserFragMent.this.MusicLayout.setVisibility(8);
            UserFragMent.this.emptyView.setVisibility(8);
            UserFragMent.this.f22847c.clear();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<SearchUserNameOrIdBean> list, @NonNull FaceCastBaseResponse<List<SearchUserNameOrIdBean>> faceCastBaseResponse) {
            UserFragMent.this.f22852h = 0L;
            if (TextUtils.isEmpty(UserFragMent.this.f22850f)) {
                UserFragMent.this.srlRefresh.w();
                UserFragMent.this.srlRefresh.f(false);
                UserFragMent.this.rcvRecommended.setVisibility(0);
                UserFragMent.this.MusicLayout.setVisibility(8);
                UserFragMent.this.emptyView.setVisibility(8);
                UserFragMent.this.f22847c.clear();
                UserFragMent.this.f22847c.add(UserFragMent.this.f22851g);
                if (list != null) {
                    for (SearchUserNameOrIdBean searchUserNameOrIdBean : list) {
                        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
                        ugcSearchComprehensiveBean.setType(4);
                        ugcSearchComprehensiveBean.setImageModel(5);
                        ugcSearchComprehensiveBean.setImg(searchUserNameOrIdBean.getUserImg());
                        ugcSearchComprehensiveBean.setUserId(searchUserNameOrIdBean.getUserId());
                        ugcSearchComprehensiveBean.setMname(searchUserNameOrIdBean.getUserNickName());
                        ugcSearchComprehensiveBean.setCountry(searchUserNameOrIdBean.getUserSignature());
                        ugcSearchComprehensiveBean.setCreateTime(searchUserNameOrIdBean.getEnableTime());
                        ugcSearchComprehensiveBean.setIntroduce(searchUserNameOrIdBean.getUserCountryFlag());
                        ugcSearchComprehensiveBean.setTopicName(searchUserNameOrIdBean.getUserSex());
                        ugcSearchComprehensiveBean.setContent(searchUserNameOrIdBean.getAvatar());
                        ugcSearchComprehensiveBean.setUserVipMsg(searchUserNameOrIdBean.getUserVipMsg());
                        UserFragMent.this.f22847c.add(ugcSearchComprehensiveBean);
                    }
                }
                UserFragMent.this.f22845a.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SearchUserNameOrIdBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22856a;

        d(String str) {
            this.f22856a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<SearchUserNameOrIdBean>> aVar) {
            if (UserFragMent.this.f22848d.size() > 0) {
                UserFragMent.this.emptyView.setVisibility(8);
            } else {
                UserFragMent.this.emptyView.setVisibility(0);
            }
            UserFragMent.this.refreshLayout.u(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<SearchUserNameOrIdBean> list, @NonNull FaceCastBaseResponse<List<SearchUserNameOrIdBean>> faceCastBaseResponse) {
            if (UserFragMent.this.f22850f.equals(this.f22856a)) {
                if (UserFragMent.this.f22849e == 1) {
                    UserFragMent.this.f22848d.clear();
                }
                if (list != null && list.size() > 0) {
                    for (SearchUserNameOrIdBean searchUserNameOrIdBean : list) {
                        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
                        ugcSearchComprehensiveBean.setType(10);
                        ugcSearchComprehensiveBean.setImageModel(5);
                        ugcSearchComprehensiveBean.setImg(searchUserNameOrIdBean.getUserImg());
                        ugcSearchComprehensiveBean.setUserId(searchUserNameOrIdBean.getUserId());
                        ugcSearchComprehensiveBean.setMname(searchUserNameOrIdBean.getUserNickName());
                        ugcSearchComprehensiveBean.setCountry(searchUserNameOrIdBean.getUserSignature());
                        ugcSearchComprehensiveBean.setCreateTime(searchUserNameOrIdBean.getEnableTime());
                        ugcSearchComprehensiveBean.setIntroduce(searchUserNameOrIdBean.getUserCountryFlag());
                        ugcSearchComprehensiveBean.setTopicName(searchUserNameOrIdBean.getUserSex());
                        ugcSearchComprehensiveBean.setContent(searchUserNameOrIdBean.getAvatar());
                        ugcSearchComprehensiveBean.setUserVipMsg(searchUserNameOrIdBean.getUserVipMsg());
                        UserFragMent.this.f22848d.add(ugcSearchComprehensiveBean);
                    }
                    UserFragMent.this.f22846b.notifyDataSetChanged();
                    UserFragMent.this.refreshLayout.u(true);
                } else {
                    UserFragMent.this.refreshLayout.v();
                }
                if (UserFragMent.this.f22848d.size() > 0) {
                    UserFragMent.this.emptyView.setVisibility(8);
                } else {
                    UserFragMent.this.emptyView.setVisibility(0);
                }
            }
        }
    }

    private void T1(String str) {
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(str);
        searchUserBean.setCurrPage(this.f22849e);
        searchUserBean.setPageSize(15);
        post("tokens/search/findUserByNickNameOrId").u(searchUserBean).M(new d(str));
    }

    private void c2() {
        if (this.f22852h != 100 && getUserVisibleHint() && !isHidden() && isVisible() && TextUtils.isEmpty(this.f22850f)) {
            this.f22852h = 100L;
            post("tokens/search/officalRecommend").v(RemoteMessageConst.MessageBody.PARAM, new Object()).M(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(View view, String str, int i9) {
        if (this.f22846b.getItemCount() == this.f22848d.size() && i9 < this.f22848d.size() && FileUtils.isNetworkConnected(getActivity())) {
            hideSoftKeyboard();
            h2(i9, this.f22848d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e2(View view, String str, int i9) {
        if (!FileUtils.isNetworkConnected(getActivity()) || i9 >= this.f22847c.size()) {
            return;
        }
        h2(i9, this.f22847c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f2(wd.j jVar) {
        this.f22849e++;
        T1(this.f22850f);
    }

    private void g2(String str) {
        if (!TextUtils.isEmpty(this.f22850f)) {
            this.refreshLayout.R(false);
            if (this.f22850f.equals(str)) {
                this.f22848d.clear();
                this.f22846b.notifyDataSetChanged();
            }
        }
        this.f22850f = str;
        if (TextUtils.isEmpty(str)) {
            this.rcvRecommended.setVisibility(0);
            this.MusicLayout.setVisibility(8);
            this.emptyView.setVisibility(8);
            this.f22849e = 1;
            c2();
            return;
        }
        this.rcvRecommended.setVisibility(8);
        this.MusicLayout.setVisibility(0);
        this.f22849e = 1;
        T1(str);
    }

    private void h2(int i9, List<UgcSearchComprehensiveBean> list) {
        if (getActivity() != null) {
            Intent intent = new Intent(getActivity(), UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, list.get(i9).getUserId());
            startActivity(intent);
        }
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
        this.f22847c = new ArrayList();
        this.f22848d = new ArrayList();
        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
        this.f22851g = ugcSearchComprehensiveBean;
        ugcSearchComprehensiveBean.setType(0);
        this.f22851g.setImageModel(5);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.rcvRecommended.setLayoutManager(linearLayoutManager);
        RecommendedAdapter recommendedAdapter = new RecommendedAdapter(getActivity(), this.f22847c);
        this.f22845a = recommendedAdapter;
        this.rcvRecommended.setAdapter(recommendedAdapter);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getActivity());
        linearLayoutManager2.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager2);
        RecommendedAdapter recommendedAdapter2 = new RecommendedAdapter(getActivity(), this.f22848d);
        this.f22846b = recommendedAdapter2;
        this.recyclerView.setAdapter(recommendedAdapter2);
        this.f22846b.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.x
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                UserFragMent.this.d2(view2, str, i9);
            }
        });
        this.f22845a.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.y
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                UserFragMent.this.e2(view2, str, i9);
            }
        });
        this.refreshLayout.S(new zd.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.z
            @Override // zd.b
            public final void b(wd.j jVar) {
                UserFragMent.this.f2(jVar);
            }
        });
        this.rcvRecommended.addOnScrollListener(new a());
        this.recyclerView.addOnScrollListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (getUserVisibleHint() && !isHidden() && isVisible()) {
            c2();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        super.onDestroy();
    }

    @Subscribe
    public void onMessageEvent(UgcSearchEventBean ugcSearchEventBean) {
        if (ugcSearchEventBean.getType() == 1) {
            g2(ugcSearchEventBean.getText());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (TextUtils.isEmpty(this.f22850f)) {
            c2();
        }
    }
}
