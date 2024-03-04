package com.guochao.faceshow.fragment;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.activity.PersonVideoActivity;
import com.guochao.faceshow.activity.VideoPlayListActivity;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.bean.PageBean;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Tool;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration;
import java.util.HashMap;
import kc.f;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class OpenVideoFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f25250a;

    /* renamed from: b  reason: collision with root package name */
    private ZZ_RecycleAdapter<VideoItem> f25251b;

    /* renamed from: c  reason: collision with root package name */
    private TwinklingRefreshLayout f25252c;

    /* renamed from: d  reason: collision with root package name */
    private int f25253d = 1;

    /* renamed from: e  reason: collision with root package name */
    private int f25254e;

    /* loaded from: classes3.dex */
    class a extends ZZ_RecycleAdapter<VideoItem> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.fragment.OpenVideoFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0249a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f25256a;

            View$OnClickListenerC0249a(int i9) {
                this.f25256a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Tool.mDataList = a.this.mDataList;
                Intent intent = new Intent(OpenVideoFragment.this.getActivity(), VideoPlayListActivity.class);
                PersonVideoActivity.VideoUrlConfig videoUrlConfig = new PersonVideoActivity.VideoUrlConfig();
                HashMap<String, String> hashMap = new HashMap<>();
                hashMap.put(Contants.USER_ID, SpUtils.getStr(OpenVideoFragment.this.getActivity(), Contants.USER_ID));
                hashMap.put(UserDataStore.COUNTRY, SpUtils.getStr(OpenVideoFragment.this.getActivity(), Contants.CURRENT_COUNTRY_CODING));
                hashMap.put("is_private", "1");
                hashMap.put("limit", "24");
                videoUrlConfig.c(OpenVideoFragment.this.f25253d);
                videoUrlConfig.e(Contants.getMyVideoNew);
                videoUrlConfig.d(hashMap);
                intent.putExtra("config", videoUrlConfig);
                intent.putExtra("type", 2);
                intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, 1);
                intent.putExtra("position", this.f25256a);
                OpenVideoFragment.this.startActivityForResult(intent, 100);
            }
        }

        a(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, VideoItem videoItem) {
            ImageView c10 = viewHolder.c(R.id.lift_iv);
            if (videoItem.getVideoImg().startsWith("http")) {
                hc.a.s(c10, videoItem.getVideoImg(), 8);
            } else {
                hc.a.s(c10, Contants.IMAGE_HOST + videoItem.getVideoImg(), 8);
            }
            viewHolder.f(R.id.count_tv, videoItem.getVideoCollectionNum() + "");
            viewHolder.getView(R.id.item).setOnClickListener(new View$OnClickListenerC0249a(viewHolder.getPosition()));
        }
    }

    /* loaded from: classes3.dex */
    class b extends f {
        b() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            OpenVideoFragment.this.f25253d = 1;
            OpenVideoFragment.this.Y1();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (OpenVideoFragment.this.f25253d < OpenVideoFragment.this.f25254e) {
                OpenVideoFragment.R1(OpenVideoFragment.this);
                OpenVideoFragment.this.Y1();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Function1<GCRequest, Unit> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            OpenVideoFragment.this.f25252c.D();
            OpenVideoFragment.this.f25252c.C();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.c<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            if (!OpenVideoFragment.this.isDetached() && OpenVideoFragment.this.isAdded() && OpenVideoFragment.this.getActivity() != null && OpenVideoFragment.this.f25253d == 1 && OpenVideoFragment.this.f25251b.getDataList().isEmpty()) {
                OpenVideoFragment.this.f25250a.addItemDecoration(new DefaultItemDecoration(ContextCompat.getColor(OpenVideoFragment.this.getActivity(), R.color.white), 10, 10, new int[0]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements GCRequestJava.d<PageBean> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<PageBean> response) {
            PageBean data;
            if (OpenVideoFragment.this.isDetached() || !OpenVideoFragment.this.isAdded() || OpenVideoFragment.this.getActivity() == null || (data = response.getData()) == null) {
                return;
            }
            OpenVideoFragment.this.f25254e = data.count;
            AppContentFilter.INSTANCE.filterVideoList(data.list);
            if (OpenVideoFragment.this.f25253d == 1) {
                if (data.list.size() == 0) {
                    OpenVideoFragment.this.f25250a.setLayoutManager(new LinearLayoutManager(OpenVideoFragment.this.getActivity()));
                } else {
                    OpenVideoFragment.this.f25250a.setLayoutManager(new GridLayoutManager(OpenVideoFragment.this.getActivity(), 2));
                }
                OpenVideoFragment.this.f25251b.resetData(data.list);
                if (data.list.isEmpty()) {
                    OpenVideoFragment.this.f25250a.addItemDecoration(new DefaultItemDecoration(ContextCompat.getColor(OpenVideoFragment.this.getActivity(), R.color.white), 10, 10, new int[0]));
                    return;
                }
                return;
            }
            OpenVideoFragment.this.f25251b.addData(data.list);
        }
    }

    static /* synthetic */ int R1(OpenVideoFragment openVideoFragment) {
        int i9 = openVideoFragment.f25253d;
        openVideoFragment.f25253d = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        GCRequestJava putBody = new GCRequestJava(Contants.getMyVideoNew).putBody(Contants.USER_ID, getCurrentUser().getUserId());
        putBody.putBody("page", this.f25253d + "").putBody("is_private", "1").putBody("limit", "24").j(new e()).d(new d()).complete(new c()).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_my_video;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f25250a = (RecyclerView) view.findViewById(R.id.gift_grid);
        this.f25252c = (TwinklingRefreshLayout) view.findViewById(R.id.refreshLayout);
        this.f25250a.setLayoutManager(new GridLayoutManager(getActivity(), 2));
        a aVar = new a(getActivity(), R.layout.item_praise);
        this.f25251b = aVar;
        this.f25250a.setAdapter(aVar);
        Y1();
        this.f25252c.setHeaderView(new ProgressLayout(getActivity()));
        this.f25252c.setFloatRefresh(true);
        this.f25252c.setEnableOverScroll(false);
        this.f25252c.setHeaderHeight(120.0f);
        this.f25252c.setMaxHeadHeight(200.0f);
        this.f25252c.setOnRefreshListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 100 && i10 == -1) {
            this.f25253d = 1;
            Y1();
        }
    }
}
