package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean;
import com.guochao.faceshow.aaspring.beans.UgcSearchEventBean;
import com.guochao.faceshow.aaspring.modulars.ugc.adapter.RecommendedAdapter;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
/* loaded from: classes3.dex */
public class VoiceRoomFragment extends BaseDynamicListFragment {

    /* renamed from: i  reason: collision with root package name */
    public static String f22864i = "key_name";
    @BindView
    View MusicLayout;

    /* renamed from: a  reason: collision with root package name */
    private RecommendedAdapter f22865a;

    /* renamed from: b  reason: collision with root package name */
    private RecommendedAdapter f22866b;

    /* renamed from: c  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22867c;

    /* renamed from: d  reason: collision with root package name */
    private List<UgcSearchComprehensiveBean> f22868d;

    /* renamed from: e  reason: collision with root package name */
    private UgcSearchComprehensiveBean f22869e;
    @BindView
    View emptyView;

    /* renamed from: f  reason: collision with root package name */
    private String f22870f;

    /* renamed from: g  reason: collision with root package name */
    private long f22871g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f22872h = 1;
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
            VoiceRoomFragment.T1(VoiceRoomFragment.this);
            VoiceRoomFragment voiceRoomFragment = VoiceRoomFragment.this;
            voiceRoomFragment.c2(voiceRoomFragment.f22870f);
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            VoiceRoomFragment.this.hideSoftKeyboard();
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            VoiceRoomFragment.this.hideSoftKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.c<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            VoiceRoomFragment.this.srlRefresh.w();
            VoiceRoomFragment.this.srlRefresh.f(false);
            VoiceRoomFragment.this.emptyView.setVisibility(0);
            VoiceRoomFragment.this.f22867c.clear();
            VoiceRoomFragment.this.f22865a.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements GCRequestJava.d<VoiceRoomMyRoomListModel> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<VoiceRoomMyRoomListModel> response) {
            VoiceRoomFragment.this.f22871g = 0L;
            VoiceRoomFragment.this.srlRefresh.w();
            VoiceRoomFragment.this.srlRefresh.f(false);
            VoiceRoomFragment.this.f22867c.clear();
            VoiceRoomFragment.this.f22867c.add(VoiceRoomFragment.this.f22869e);
            List<VoiceRoomInfoModel> list = response.getData().getList();
            if (list != null && list.size() > 0) {
                for (VoiceRoomInfoModel voiceRoomInfoModel : list) {
                    UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
                    ugcSearchComprehensiveBean.setType(RecommendedAdapter.f22517h);
                    ugcSearchComprehensiveBean.voiceRoomInfoModel = voiceRoomInfoModel;
                    VoiceRoomFragment.this.f22867c.add(ugcSearchComprehensiveBean);
                }
            } else {
                VoiceRoomFragment.this.emptyView.setVisibility(0);
            }
            VoiceRoomFragment.this.f22865a.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements GCRequestJava.c<Object> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            VoiceRoomFragment.this.refreshLayout.u(false);
            if (VoiceRoomFragment.this.f22868d.size() == 0) {
                VoiceRoomFragment.this.rcvRecommended.setVisibility(8);
                VoiceRoomFragment.this.MusicLayout.setVisibility(0);
                VoiceRoomFragment.this.emptyView.setVisibility(8);
            } else if (VoiceRoomFragment.this.f22872h == 1) {
                VoiceRoomFragment.this.emptyView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements GCRequestJava.d<VoiceRoomMyRoomListModel> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f22879a;

        g(String str) {
            this.f22879a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<VoiceRoomMyRoomListModel> response) {
            if (TextUtils.isEmpty(VoiceRoomFragment.this.f22870f) || TextUtils.isEmpty(this.f22879a) || VoiceRoomFragment.this.f22870f.equals(this.f22879a)) {
                VoiceRoomFragment.this.rcvRecommended.setVisibility(8);
                VoiceRoomFragment.this.MusicLayout.setVisibility(0);
                if (VoiceRoomFragment.this.f22872h == 1) {
                    VoiceRoomFragment.this.f22868d.clear();
                }
                List<VoiceRoomInfoModel> list = response.getData().getList();
                if (list != null && list.size() > 0) {
                    for (VoiceRoomInfoModel voiceRoomInfoModel : list) {
                        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
                        ugcSearchComprehensiveBean.setType(RecommendedAdapter.f22517h);
                        ugcSearchComprehensiveBean.voiceRoomInfoModel = voiceRoomInfoModel;
                        VoiceRoomFragment.this.f22868d.add(ugcSearchComprehensiveBean);
                    }
                    if (list.size() < 20) {
                        VoiceRoomFragment.this.refreshLayout.v();
                    } else {
                        VoiceRoomFragment.this.refreshLayout.u(true);
                    }
                } else {
                    VoiceRoomFragment.this.refreshLayout.v();
                }
                if (VoiceRoomFragment.this.f22868d.size() > 0) {
                    VoiceRoomFragment.this.emptyView.setVisibility(8);
                } else {
                    VoiceRoomFragment.this.emptyView.setVisibility(0);
                }
                VoiceRoomFragment.this.f22866b.notifyDataSetChanged();
            }
        }
    }

    static /* synthetic */ int T1(VoiceRoomFragment voiceRoomFragment) {
        int i9 = voiceRoomFragment.f22872h;
        voiceRoomFragment.f22872h = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2(String str) {
        new GCRequestJava("api/token/live/voice/room/searchRoomByNames").putBody("title", str).putBody("page", Integer.valueOf(this.f22872h)).putBody("size", 20).j(new g(str)).d(new f()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity())) {
            hideSoftKeyboard();
            h2(getActivity(), this.f22868d.get(i9), this.f22868d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e2(View view, String str, int i9) {
        if (FileUtils.isNetworkConnected(getActivity())) {
            h2(getActivity(), this.f22867c.get(i9), this.f22867c);
        }
    }

    public static VoiceRoomFragment f2(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(f22864i, str);
        VoiceRoomFragment voiceRoomFragment = new VoiceRoomFragment();
        voiceRoomFragment.setArguments(bundle);
        return voiceRoomFragment;
    }

    private void g2(String str) {
        if (!TextUtils.isEmpty(this.f22870f)) {
            this.refreshLayout.R(false);
            if (this.f22870f.equals(str)) {
                this.f22868d.clear();
                this.f22866b.notifyDataSetChanged();
            }
        }
        this.f22870f = str;
        if (TextUtils.isEmpty(str)) {
            this.rcvRecommended.setVisibility(0);
            this.MusicLayout.setVisibility(8);
            this.emptyView.setVisibility(8);
            loadData(1);
            return;
        }
        this.f22872h = 1;
        c2(str);
    }

    public static void h2(Context context, UgcSearchComprehensiveBean ugcSearchComprehensiveBean, List<UgcSearchComprehensiveBean> list) {
        if (list == null || list.size() < 1 || ugcSearchComprehensiveBean.voiceRoomInfoModel == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (UgcSearchComprehensiveBean ugcSearchComprehensiveBean2 : list) {
            if (ugcSearchComprehensiveBean2.getType() == RecommendedAdapter.f22517h) {
                arrayList.add(ugcSearchComprehensiveBean2.voiceRoomInfoModel);
            }
        }
        if (arrayList.size() < 1) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList.size()) {
                break;
            }
            if (list.get(i10).voiceRoomInfoModel != null && list.get(i10).voiceRoomInfoModel.getRoomId().equals(ugcSearchComprehensiveBean.voiceRoomInfoModel.getRoomId())) {
                i9 = i10;
                break;
            }
            i10++;
        }
        VoiceRoomMiniHelper.gotoVoiceRoom(context, i9, arrayList);
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
        this.refreshLayout.f(false);
        this.refreshLayout.L(true);
        this.f22867c = new ArrayList();
        this.f22868d = new ArrayList();
        UgcSearchComprehensiveBean ugcSearchComprehensiveBean = new UgcSearchComprehensiveBean();
        this.f22869e = ugcSearchComprehensiveBean;
        ugcSearchComprehensiveBean.setType(RecommendedAdapter.f22516g);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.rcvRecommended.setLayoutManager(linearLayoutManager);
        RecommendedAdapter recommendedAdapter = new RecommendedAdapter(getActivity(), this.f22867c);
        this.f22865a = recommendedAdapter;
        this.rcvRecommended.setAdapter(recommendedAdapter);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getActivity());
        linearLayoutManager2.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager2);
        SmartRefreshLayout.l lVar = (SmartRefreshLayout.l) this.recyclerView.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) lVar).topMargin = DensityUtil.dp2px(8.0f);
        this.recyclerView.setLayoutParams(lVar);
        RecommendedAdapter recommendedAdapter2 = new RecommendedAdapter(getActivity(), this.f22868d);
        this.f22866b = recommendedAdapter2;
        this.recyclerView.setAdapter(recommendedAdapter2);
        this.f22866b.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.a0
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                VoiceRoomFragment.this.d2(view2, str, i9);
            }
        });
        this.f22865a.setOnItemClickListener(new z9.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.b0
            @Override // z9.a
            public final void b(View view2, String str, int i9) {
                VoiceRoomFragment.this.e2(view2, str, i9);
            }
        });
        this.refreshLayout.S(new a());
        this.rcvRecommended.addOnScrollListener(new b());
        this.recyclerView.addOnScrollListener(new c());
        if (getArguments() != null && getArguments().getString(f22864i) != null && !"".equals(getArguments().getString(f22864i))) {
            String string = getArguments().getString(f22864i);
            this.f22870f = string;
            g2(string);
            return;
        }
        this.recyclerView.setPadding(0, DensityUtil.dp2px(10.0f), 0, 0);
        this.recyclerView.setBackgroundColor(getResources().getColor(R.color.white));
        this.srlRefresh.q();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (this.f22871g != 100 && getUserVisibleHint() && !isHidden() && isVisible()) {
            new GCRequestJava("api/token/live/voice/room/searchHotRoom").j(new e()).d(new d()).method(GCRequest.Method.POST).bindToLifecycle(getLifecycle()).request();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        super.onDestroy();
    }

    @Subscribe
    public void onMessageEvent(UgcSearchEventBean ugcSearchEventBean) {
        if (ugcSearchEventBean.getType() == 2) {
            g2(ugcSearchEventBean.getText());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (TextUtils.isEmpty(this.f22870f)) {
            loadData(1);
        }
    }
}
