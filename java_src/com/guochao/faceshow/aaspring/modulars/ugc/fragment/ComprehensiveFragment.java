package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.SearchUserBean;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchEventBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.RelatedUserMoreActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.VoiceRoomMoreActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.adapter.ComprehensiveDynamicAdapter;
import com.guochao.faceshow.aaspring.modulars.ugc.adapter.ComprehensiveHeadAdapter;
import com.guochao.faceshow.aaspring.modulars.ugc.adapter.RecommendedAdapter;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.VideoDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.views.RecycleViewDivider;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
/* loaded from: classes3.dex */
public class ComprehensiveFragment extends BaseDynamicListFragment {

    /* renamed from: c  reason: collision with root package name */
    private String f22628c;
    @BindView
    CoordinatorLayout cdlLayout;

    /* renamed from: d  reason: collision with root package name */
    private List<IM_User> f22629d;

    /* renamed from: e  reason: collision with root package name */
    private ComprehensiveHeadAdapter f22630e;
    @BindView
    View emptyView;

    /* renamed from: f  reason: collision with root package name */
    private ComprehensiveDynamicAdapter f22631f;

    /* renamed from: g  reason: collision with root package name */
    private RecommendedAdapter f22632g;

    /* renamed from: h  reason: collision with root package name */
    private RecommendedAdapter f22633h;

    /* renamed from: i  reason: collision with root package name */
    private RecommendedAdapter f22634i;

    /* renamed from: j  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22635j;

    /* renamed from: k  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22636k;

    /* renamed from: l  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22637l;

    /* renamed from: m  reason: collision with root package name */
    private List<DynamicBean> f22638m;
    @BindView
    AppBarLayout mAppBarLayout;

    /* renamed from: n  reason: collision with root package name */
    private UgcSearchComprehensiveBean f22639n;

    /* renamed from: o  reason: collision with root package name */
    private int f22640o;

    /* renamed from: q  reason: collision with root package name */
    LinearLayoutManager f22642q;
    @BindView
    SmartRefreshLayout refreshLayout;
    @BindView
    RelativeLayout rlRelatedUserMore;
    @BindView
    RelativeLayout rlRelatedVoiceRoom;
    @BindView
    RecyclerView rvDefault;
    @BindView
    RecyclerView rvHeadView;
    @BindView
    RecyclerView rvHostSearch;
    @BindView
    RecyclerView rvItemView;
    @BindView
    RecyclerView rvVoiceRoomView;
    @BindView
    SmartRefreshLayout srlRefresh;
    @BindView
    TextView tvRelatedDynamic;
    @BindView
    TextView tvUserTitle;
    @BindView
    TextView tvVoiceRoomTitle;

    /* renamed from: a  reason: collision with root package name */
    private int f22626a = 1;

    /* renamed from: b  reason: collision with root package name */
    private int f22627b = 1;

    /* renamed from: p  reason: collision with root package name */
    private int f22641p = 0;

    /* renamed from: r  reason: collision with root package name */
    private int f22643r = -1;

    /* renamed from: s  reason: collision with root package name */
    private int f22644s = 0;

    /* renamed from: t  reason: collision with root package name */
    RecyclerView.OnScrollListener f22645t = new a();

    /* loaded from: classes3.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            if (i9 == 0) {
                ComprehensiveFragment.this.findNextPlay(ComprehensiveFragment.this.f22642q.findFirstVisibleItemPosition(), ComprehensiveFragment.this.f22642q.findLastVisibleItemPosition());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SearchUserNameOrIdBean>> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<SearchUserNameOrIdBean>> aVar) {
            ComprehensiveFragment.this.f22635j.clear();
            ComprehensiveFragment.this.f22632g.notifyDataSetChanged();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<SearchUserNameOrIdBean> list, @NonNull FaceCastBaseResponse<List<SearchUserNameOrIdBean>> faceCastBaseResponse) {
            if (list != null) {
                ComprehensiveFragment.this.f22635j.clear();
                ComprehensiveFragment.this.f22635j.add(ComprehensiveFragment.this.f22639n);
                for (SearchUserNameOrIdBean searchUserNameOrIdBean : list) {
                    UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
                    ugcSearchComprehensiveBean.setType(4);
                    ugcSearchComprehensiveBean.setImg(searchUserNameOrIdBean.getUserImg());
                    ugcSearchComprehensiveBean.setUserId(searchUserNameOrIdBean.getUserId());
                    ugcSearchComprehensiveBean.setMname(searchUserNameOrIdBean.getUserNickName());
                    ugcSearchComprehensiveBean.setCountry(searchUserNameOrIdBean.getUserSignature());
                    ugcSearchComprehensiveBean.setCreateTime(searchUserNameOrIdBean.getEnableTime());
                    ugcSearchComprehensiveBean.setIntroduce(searchUserNameOrIdBean.getUserSex());
                    ugcSearchComprehensiveBean.setTopicName(searchUserNameOrIdBean.getUserCountryFlag());
                    ugcSearchComprehensiveBean.setContent(searchUserNameOrIdBean.getAvatar());
                    ugcSearchComprehensiveBean.setUserVipMsg(searchUserNameOrIdBean.getUserVipMsg());
                    ComprehensiveFragment.this.f22635j.add(ugcSearchComprehensiveBean);
                }
            }
            ComprehensiveFragment.this.f22632g.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            ComprehensiveFragment.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends RecyclerView.OnScrollListener {
        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            ComprehensiveFragment.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends RecyclerView.OnScrollListener {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            ComprehensiveFragment.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<List<UgcSearchComprehensiveBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22651a;

        f(String str) {
            this.f22651a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<UgcSearchComprehensiveBean>> aVar) {
            ComprehensiveFragment.this.f22636k.clear();
            ComprehensiveFragment.this.srlRefresh.r();
            if (ComprehensiveFragment.this.f22636k.size() > 0) {
                ComprehensiveFragment.this.srlRefresh.setVisibility(0);
                ComprehensiveFragment.this.rvHostSearch.setVisibility(0);
                ComprehensiveFragment.this.emptyView.setVisibility(8);
            } else {
                ComprehensiveFragment.this.f22641p = 0;
                ComprehensiveFragment.this.srlRefresh.setVisibility(8);
                ComprehensiveFragment.this.rvHostSearch.setVisibility(8);
                ComprehensiveFragment.this.emptyView.setVisibility(0);
            }
            ComprehensiveFragment.this.f22633h.notifyDataSetChanged();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<UgcSearchComprehensiveBean> list, @NonNull FaceCastBaseResponse<List<UgcSearchComprehensiveBean>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            if (ComprehensiveFragment.this.f22628c.equals(this.f22651a)) {
                ComprehensiveFragment.this.srlRefresh.u(true);
                if (ComprehensiveFragment.this.f22627b == 1) {
                    ComprehensiveFragment.this.f22636k.clear();
                }
                for (UgcSearchComprehensiveBean ugcSearchComprehensiveBean : list) {
                    ugcSearchComprehensiveBean.setType(8);
                    ComprehensiveFragment.this.f22636k.add(ugcSearchComprehensiveBean);
                }
                if (ComprehensiveFragment.this.f22636k.size() > 0) {
                    ComprehensiveFragment.this.srlRefresh.setVisibility(0);
                    ComprehensiveFragment.this.rvHostSearch.setVisibility(0);
                    ComprehensiveFragment.this.emptyView.setVisibility(8);
                } else {
                    ComprehensiveFragment.this.f22641p = 0;
                    ComprehensiveFragment.this.srlRefresh.setVisibility(8);
                    ComprehensiveFragment.this.rvHostSearch.setVisibility(8);
                    ComprehensiveFragment.this.emptyView.setVisibility(0);
                }
                ComprehensiveFragment.this.f22633h.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<List<IM_User>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22653a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f22654b;

        g(String str, int i9) {
            this.f22653a = str;
            this.f22654b = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<IM_User>> aVar) {
            TextView textView = ComprehensiveFragment.this.tvUserTitle;
            if (textView != null) {
                textView.setVisibility(8);
            }
            RecyclerView recyclerView = ComprehensiveFragment.this.rvHeadView;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
            }
            RelativeLayout relativeLayout = ComprehensiveFragment.this.rlRelatedUserMore;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            ComprehensiveFragment.this.u2(this.f22653a, this.f22654b);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<IM_User> list, @NonNull FaceCastBaseResponse<List<IM_User>> faceCastBaseResponse) {
            ComprehensiveFragment.this.f22629d.clear();
            ComprehensiveFragment.this.refreshLayout.setVisibility(0);
            ComprehensiveFragment.this.cdlLayout.setVisibility(0);
            ComprehensiveFragment.this.rvHostSearch.setVisibility(8);
            ComprehensiveFragment.this.rvDefault.setVisibility(8);
            if (list == null) {
                list = new ArrayList<>();
            }
            if (list.size() > 0) {
                ComprehensiveFragment.this.f22629d.addAll(list);
                if (ComprehensiveFragment.this.f22629d.size() < 15) {
                    ComprehensiveFragment.this.tvUserTitle.setVisibility(0);
                    ComprehensiveFragment.this.rvHeadView.setVisibility(0);
                    ComprehensiveFragment.this.rlRelatedUserMore.setVisibility(8);
                } else {
                    ComprehensiveFragment.this.tvUserTitle.setVisibility(0);
                    ComprehensiveFragment.this.rvHeadView.setVisibility(0);
                    ComprehensiveFragment.this.rlRelatedUserMore.setVisibility(0);
                }
                ComprehensiveFragment.this.f22630e.notifyDataSetChanged();
            } else {
                ComprehensiveFragment.this.tvUserTitle.setVisibility(8);
                ComprehensiveFragment.this.rvHeadView.setVisibility(8);
                ComprehensiveFragment.this.rlRelatedUserMore.setVisibility(8);
            }
            ComprehensiveFragment.this.u2(this.f22653a, this.f22654b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements GCRequestJava.c<Object> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            TextView textView = ComprehensiveFragment.this.tvVoiceRoomTitle;
            if (textView != null) {
                textView.setVisibility(8);
            }
            RecyclerView recyclerView = ComprehensiveFragment.this.rvVoiceRoomView;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
            }
            RelativeLayout relativeLayout = ComprehensiveFragment.this.rlRelatedVoiceRoom;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements GCRequestJava.d<VoiceRoomMyRoomListModel> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22657a;

        i(String str) {
            this.f22657a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<VoiceRoomMyRoomListModel> response) {
            if (TextUtils.isEmpty(ComprehensiveFragment.this.f22628c) || TextUtils.isEmpty(this.f22657a) || ComprehensiveFragment.this.f22628c.equals(this.f22657a)) {
                ComprehensiveFragment.this.f22637l.clear();
                ComprehensiveFragment.this.refreshLayout.setVisibility(0);
                ComprehensiveFragment.this.cdlLayout.setVisibility(0);
                ComprehensiveFragment.this.rvHostSearch.setVisibility(8);
                ComprehensiveFragment.this.rvDefault.setVisibility(8);
                List<VoiceRoomInfoModel> list = response.getData().getList();
                if (list != null && list.size() > 0) {
                    int i9 = 0;
                    for (VoiceRoomInfoModel voiceRoomInfoModel : list) {
                        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
                        ugcSearchComprehensiveBean.setType(RecommendedAdapter.f22517h);
                        ugcSearchComprehensiveBean.voiceRoomInfoModel = voiceRoomInfoModel;
                        ComprehensiveFragment.this.f22637l.add(ugcSearchComprehensiveBean);
                        i9++;
                        if (i9 >= 3) {
                            break;
                        }
                    }
                }
                if (ComprehensiveFragment.this.f22637l != null && ComprehensiveFragment.this.f22637l.size() > 0) {
                    ComprehensiveFragment.this.f22634i.notifyDataSetChanged();
                    if (ComprehensiveFragment.this.f22637l.size() < 3) {
                        ComprehensiveFragment.this.rlRelatedVoiceRoom.setVisibility(8);
                        return;
                    } else {
                        ComprehensiveFragment.this.rlRelatedVoiceRoom.setVisibility(0);
                        return;
                    }
                }
                ComprehensiveFragment.this.tvVoiceRoomTitle.setVisibility(8);
                ComprehensiveFragment.this.rvVoiceRoomView.setVisibility(8);
                ComprehensiveFragment.this.rlRelatedVoiceRoom.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<List<DynamicBean>> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<DynamicBean>> aVar) {
            if (ComprehensiveFragment.this.f22629d.size() == 0 && ComprehensiveFragment.this.f22638m.size() == 0) {
                ComprehensiveFragment.this.rvItemView.setVisibility(8);
                ComprehensiveFragment.this.refreshLayout.setVisibility(8);
                ComprehensiveFragment.this.cdlLayout.setVisibility(8);
                ComprehensiveFragment.this.rvHostSearch.setVisibility(8);
                ComprehensiveFragment.this.rvDefault.setVisibility(8);
                ComprehensiveFragment.this.emptyView.setVisibility(0);
                ComprehensiveFragment.this.tvUserTitle.setVisibility(8);
                ComprehensiveFragment.this.rvHeadView.setVisibility(8);
                ComprehensiveFragment.this.rlRelatedUserMore.setVisibility(8);
                ComprehensiveFragment.this.f22641p = 1;
            }
            ComprehensiveFragment.this.refreshLayout.u(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<DynamicBean> list, @NonNull FaceCastBaseResponse<List<DynamicBean>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            LogUtils.e("data", list.size() + "");
            ComprehensiveFragment.this.rvItemView.setVisibility(0);
            ComprehensiveFragment.this.refreshLayout.setVisibility(0);
            ComprehensiveFragment.this.cdlLayout.setVisibility(0);
            ComprehensiveFragment.this.rvHostSearch.setVisibility(8);
            ComprehensiveFragment.this.rvDefault.setVisibility(8);
            if (ComprehensiveFragment.this.f22626a == 1) {
                ComprehensiveFragment.this.f22638m.clear();
            }
            if (list.size() > 0) {
                ComprehensiveFragment.this.tvRelatedDynamic.setVisibility(0);
                ComprehensiveFragment.this.rvItemView.setVisibility(0);
                ComprehensiveFragment.this.refreshLayout.setVisibility(0);
                ComprehensiveFragment.this.cdlLayout.setVisibility(0);
                ComprehensiveFragment.this.emptyView.setVisibility(8);
                ComprehensiveFragment.this.f22638m.addAll(list);
                ComprehensiveFragment.this.refreshLayout.u(true);
            } else {
                if (ComprehensiveFragment.this.f22626a == 1) {
                    ComprehensiveFragment.this.tvRelatedDynamic.setVisibility(8);
                }
                ComprehensiveFragment.this.refreshLayout.v();
            }
            if (ComprehensiveFragment.this.f22629d.size() == 0 && ComprehensiveFragment.this.f22638m.size() == 0) {
                ComprehensiveFragment.this.rvItemView.setVisibility(8);
                ComprehensiveFragment.this.refreshLayout.setVisibility(8);
                ComprehensiveFragment.this.cdlLayout.setVisibility(8);
                ComprehensiveFragment.this.rvHostSearch.setVisibility(8);
                ComprehensiveFragment.this.rvDefault.setVisibility(8);
                ComprehensiveFragment.this.tvUserTitle.setVisibility(8);
                ComprehensiveFragment.this.rvHeadView.setVisibility(8);
                ComprehensiveFragment.this.rlRelatedUserMore.setVisibility(8);
                ComprehensiveFragment.this.emptyView.setVisibility(0);
                ComprehensiveFragment.this.f22641p = 1;
            } else {
                ComprehensiveFragment.this.emptyView.setVisibility(8);
            }
            ComprehensiveFragment.this.f22631f.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findNextPlay(int i9, int i10) {
        if (!autoPlayVideos()) {
            stopCurrentPlay();
            return;
        }
        VideoDynamicViewHolder videoDynamicViewHolder = null;
        if (i9 < 0) {
            stopCurrentPlay();
            return;
        }
        while (true) {
            if (i9 > i10) {
                break;
            }
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.rvItemView.findViewHolderForAdapterPosition(i9);
            if (findViewHolderForAdapterPosition instanceof VideoDynamicViewHolder) {
                videoDynamicViewHolder = (VideoDynamicViewHolder) findViewHolderForAdapterPosition;
                break;
            }
            i9++;
        }
        if (videoDynamicViewHolder == null) {
            stopCurrentPlay();
        } else if (this.mCurrentHolder != null && this.f22643r == videoDynamicViewHolder.getAdapterPosition()) {
            if (videoDynamicViewHolder.c0()) {
                return;
            }
            videoDynamicViewHolder.d0();
            this.mCurrentHolder = videoDynamicViewHolder;
            this.f22643r = videoDynamicViewHolder.getAdapterPosition();
        } else {
            stopCurrentPlay();
            videoDynamicViewHolder.d0();
            this.mCurrentHolder = videoDynamicViewHolder;
            this.f22643r = videoDynamicViewHolder.getAdapterPosition();
        }
    }

    private void initListener() {
        this.f22632g.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.a
            @Override // z9.a
            public final void b(View view, String str, int i9) {
                ComprehensiveFragment.this.o2(view, str, i9);
            }
        });
        this.f22633h.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.c
            @Override // z9.a
            public final void b(View view, String str, int i9) {
                ComprehensiveFragment.this.p2(view, str, i9);
            }
        });
        this.f22634i.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.b
            @Override // z9.a
            public final void b(View view, String str, int i9) {
                ComprehensiveFragment.this.q2(view, str, i9);
            }
        });
        this.refreshLayout.S(new zd.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.e
            @Override // zd.b
            public final void b(wd.j jVar) {
                ComprehensiveFragment.this.r2(jVar);
            }
        });
        this.srlRefresh.S(new zd.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.f
            @Override // zd.b
            public final void b(wd.j jVar) {
                ComprehensiveFragment.this.s2(jVar);
            }
        });
        this.rvDefault.addOnScrollListener(new c());
        this.rvItemView.addOnScrollListener(new d());
        this.rvHostSearch.addOnScrollListener(new e());
    }

    private void initRecycleView() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(0);
        this.rvHeadView.setLayoutManager(linearLayoutManager);
        this.rvHeadView.setNestedScrollingEnabled(false);
        ComprehensiveHeadAdapter comprehensiveHeadAdapter = new ComprehensiveHeadAdapter(getActivity(), this.f22629d);
        this.f22630e = comprehensiveHeadAdapter;
        this.rvHeadView.setAdapter(comprehensiveHeadAdapter);
        this.f22630e.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.d
            @Override // z9.a
            public final void b(View view, String str, int i9) {
                ComprehensiveFragment.this.t2(view, str, i9);
            }
        });
        this.rvVoiceRoomView.setNestedScrollingEnabled(false);
        this.f22637l = new ArrayList();
        RecommendedAdapter recommendedAdapter = new RecommendedAdapter(getActivity(), this.f22637l);
        this.f22634i = recommendedAdapter;
        this.rvVoiceRoomView.setAdapter(recommendedAdapter);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getActivity());
        linearLayoutManager2.setOrientation(1);
        this.rvItemView.setLayoutManager(linearLayoutManager2);
        this.rvItemView.addItemDecoration(new RecycleViewDivider(getActivity(), 0, DensityUtil.dp2px(getActivity(), 8.0f), getResources().getColor(R.color.color_ugc_divider_dialog)));
        ComprehensiveDynamicAdapter comprehensiveDynamicAdapter = new ComprehensiveDynamicAdapter(getActivity(), this.f22638m);
        this.f22631f = comprehensiveDynamicAdapter;
        this.rvItemView.setAdapter(comprehensiveDynamicAdapter);
        this.f22642q = (LinearLayoutManager) this.rvItemView.getLayoutManager();
        this.rvItemView.addOnScrollListener(this.f22645t);
        LinearLayoutManager linearLayoutManager3 = new LinearLayoutManager(getActivity());
        linearLayoutManager3.setOrientation(1);
        this.rvDefault.setLayoutManager(linearLayoutManager3);
        RecommendedAdapter recommendedAdapter2 = new RecommendedAdapter(getActivity(), this.f22635j);
        this.f22632g = recommendedAdapter2;
        this.rvDefault.setAdapter(recommendedAdapter2);
        LinearLayoutManager linearLayoutManager4 = new LinearLayoutManager(getActivity());
        linearLayoutManager4.setOrientation(1);
        this.f22633h = new RecommendedAdapter(getActivity(), this.f22636k);
        this.rvHostSearch.setLayoutManager(linearLayoutManager4);
        this.rvHostSearch.setAdapter(this.f22633h);
    }

    private void n2() {
        if (TextUtils.isEmpty(this.f22628c)) {
            this.f22626a = 1;
            this.rvDefault.setVisibility(0);
            this.srlRefresh.setVisibility(8);
            this.rvHostSearch.setVisibility(8);
            this.refreshLayout.setVisibility(8);
            this.cdlLayout.setVisibility(8);
            this.rvItemView.setVisibility(8);
            post("tokens/search/smartRecommend").u(new SearchUserNameOrIdBean()).M(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o2(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity())) {
            if (str.equals(BaseConfig.ITEM)) {
                UgcSearchEventBean ugcSearchEventBean = new UgcSearchEventBean();
                ugcSearchEventBean.setText(this.f22635j.get(i9).getMname());
                ugcSearchEventBean.setType(10);
                w2(this.f22635j.get(i9).getMname(), this.f22640o);
                x2(this.f22636k.get(i9).getMname(), this.f22640o);
                EventBus.getDefault().post(ugcSearchEventBean);
            } else if (str.equals(BaseConfig.PEOPLE_NEARBY_ITEM)) {
                Intent intent = new Intent(getActivity(), UserHomePageAct.class);
                intent.putExtra(Contants.USER_ID, this.f22635j.get(i9).getUserId());
                startActivity(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p2(View view, String str, int i9) {
        if (!FileUtils.isNetworkConnected(getActivity()) || this.f22636k.size() <= i9) {
            return;
        }
        this.f22640o = Integer.parseInt(this.f22636k.get(i9).getSearchType());
        this.f22628c = this.f22636k.get(i9).getContent();
        UgcSearchEventBean ugcSearchEventBean = new UgcSearchEventBean();
        ugcSearchEventBean.setText(this.f22636k.get(i9).getContent());
        ugcSearchEventBean.setType(10);
        EventBus.getDefault().post(ugcSearchEventBean);
        hideSoftKeyboard();
        List<UgcSearchComprehensiveBean> list = this.f22636k;
        if (list == null || list.size() <= i9) {
            return;
        }
        w2(this.f22636k.get(i9).getContent(), this.f22640o);
        x2(this.f22636k.get(i9).getContent(), this.f22640o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q2(View view, String str, int i9) {
        VoiceRoomFragment.h2(getActivity(), this.f22637l.get(i9), this.f22637l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r2(wd.j jVar) {
        this.f22626a++;
        u2(this.f22628c, this.f22640o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s2(wd.j jVar) {
        this.f22627b++;
        v2(this.f22628c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t2(View view, String str, int i9) {
        Intent intent = new Intent(getActivity(), UserHomePageAct.class);
        intent.putExtra(Contants.USER_ID, this.f22629d.get(i9).getUserId());
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u2(String str, int i9) {
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(str);
        searchUserBean.setCurrPage(this.f22626a);
        searchUserBean.setPageSize(15);
        searchUserBean.setSearchType(i9);
        post("tokens/search/comprehensiveRing").u(searchUserBean).M(new j());
    }

    private void v2(String str) {
        this.f22626a = 1;
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(str);
        searchUserBean.setCurrPage(this.f22627b);
        searchUserBean.setPageSize(15);
        post("tokens/search/keyWordList").u(searchUserBean).M(new f(str));
    }

    private void w2(String str, int i9) {
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(str);
        searchUserBean.setCurrPage(1);
        searchUserBean.setPageSize(15);
        post("tokens/search/comprehensiveUser").u(searchUserBean).M(new g(str, i9));
    }

    private void x2(String str, int i9) {
        new GCRequestJava("api/token/live/voice/room/searchRoomByNames").putBody("title", str).j(new i(str)).d(new h()).request();
    }

    private void y2(String str) {
        this.f22628c = str;
        if (TextUtils.isEmpty(str)) {
            this.rvDefault.setVisibility(0);
            this.rvHostSearch.setVisibility(8);
            this.srlRefresh.setVisibility(8);
            this.refreshLayout.setVisibility(8);
            this.cdlLayout.setVisibility(8);
            this.rvItemView.setVisibility(8);
            this.emptyView.setVisibility(8);
            this.f22626a = 1;
            n2();
            return;
        }
        this.rvItemView.setVisibility(8);
        this.refreshLayout.setVisibility(8);
        this.cdlLayout.setVisibility(8);
        this.rvDefault.setVisibility(8);
        this.tvUserTitle.setVisibility(8);
        this.rvHeadView.setVisibility(8);
        this.rlRelatedUserMore.setVisibility(8);
        this.rvHostSearch.setVisibility(0);
        this.srlRefresh.setVisibility(0);
        this.f22627b = 1;
        v2(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().e(true).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        if (EventBus.getDefault().isRegistered(this)) {
            return R.layout.fragment_ugc_comprehensive;
        }
        EventBus.getDefault().register(this);
        return R.layout.fragment_ugc_comprehensive;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.refreshLayout.f(false);
        this.refreshLayout.L(true);
        this.refreshLayout.b(true);
        this.srlRefresh.f(false);
        this.f22629d = new ArrayList();
        this.f22635j = new ArrayList();
        this.f22636k = new ArrayList();
        this.f22638m = new ArrayList();
        this.rvDefault.setVisibility(0);
        this.srlRefresh.setVisibility(8);
        this.rvHostSearch.setVisibility(8);
        this.refreshLayout.setVisibility(8);
        this.cdlLayout.setVisibility(8);
        this.mAppBarLayout.setExpanded(true, true);
        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
        this.f22639n = ugcSearchComprehensiveBean;
        ugcSearchComprehensiveBean.setType(0);
        initRecycleView();
        initListener();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (getUserVisibleHint() && !isHidden() && isVisible()) {
            n2();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        stopCurrentPlay();
        RecyclerView recyclerView = this.rvItemView;
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this.f22645t);
        }
        super.onDestroy();
    }

    @Subscribe
    public void onMessageEvent(UgcSearchEventBean ugcSearchEventBean) {
        if (ugcSearchEventBean.getType() == 0) {
            y2(ugcSearchEventBean.getText());
        } else if (ugcSearchEventBean.getType() == 6) {
            w2(ugcSearchEventBean.getText(), this.f22640o);
            x2(ugcSearchEventBean.getText(), this.f22640o);
        }
    }

    @OnClick
    public void onViewClicked() {
        Intent intent = new Intent(getActivity(), RelatedUserMoreActivity.class);
        intent.putExtra(BaseConfig.USER_SEARCH_NAME, this.f22628c);
        startActivity(intent);
    }

    @OnClick
    public void onVoiceRoomViewClicked() {
        VoiceRoomMoreActivity.b0(getActivity(), this.f22628c);
    }
}
