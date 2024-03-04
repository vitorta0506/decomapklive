package com.guochao.faceshow.fragment;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
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
import java.util.HashMap;
import kc.f;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class MyVideoFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f25237a;

    /* renamed from: b  reason: collision with root package name */
    private ZZ_RecycleAdapter<VideoItem> f25238b;

    /* renamed from: c  reason: collision with root package name */
    private TwinklingRefreshLayout f25239c;

    /* renamed from: e  reason: collision with root package name */
    private int f25241e;

    /* renamed from: d  reason: collision with root package name */
    private int f25240d = 1;

    /* renamed from: f  reason: collision with root package name */
    private int f25242f = -1;

    /* loaded from: classes3.dex */
    class a extends ZZ_RecycleAdapter<VideoItem> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.fragment.MyVideoFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0248a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f25244a;

            View$OnClickListenerC0248a(int i9) {
                this.f25244a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyVideoFragment.this.f25242f = this.f25244a;
                Tool.mDataList = a.this.mDataList;
                Intent intent = new Intent(MyVideoFragment.this.getActivity(), VideoPlayListActivity.class);
                PersonVideoActivity.VideoUrlConfig videoUrlConfig = new PersonVideoActivity.VideoUrlConfig();
                HashMap<String, String> hashMap = new HashMap<>();
                hashMap.put(Contants.USER_ID, SpUtils.getStr(MyVideoFragment.this.getActivity(), Contants.USER_ID));
                hashMap.put("page", MyVideoFragment.this.f25240d + "");
                hashMap.put("is_private", "0");
                hashMap.put("limit", "24");
                videoUrlConfig.e(Contants.getMyVideoNew);
                videoUrlConfig.c(MyVideoFragment.this.f25240d);
                videoUrlConfig.d(hashMap);
                intent.putExtra("config", videoUrlConfig);
                intent.putExtra("type", 1);
                intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, 0);
                intent.putExtra("position", MyVideoFragment.this.f25242f);
                intent.putExtra("currPage", MyVideoFragment.this.f25240d);
                MyVideoFragment.this.startActivityForResult(intent, 100);
            }
        }

        a(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, VideoItem videoItem) {
            hc.a.r(viewHolder.c(R.id.lift_iv), videoItem.getVideoImg(), R.mipmap.default_goods, 8);
            viewHolder.getView(R.id.item).setOnClickListener(new View$OnClickListenerC0248a(viewHolder.getPosition()));
        }
    }

    /* loaded from: classes3.dex */
    class b extends f {
        b() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            MyVideoFragment.this.f25240d = 1;
            MyVideoFragment.this.a2();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (MyVideoFragment.this.f25240d < MyVideoFragment.this.f25241e) {
                MyVideoFragment.T1(MyVideoFragment.this);
                MyVideoFragment.this.a2();
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
            MyVideoFragment.this.f25239c.D();
            MyVideoFragment.this.f25239c.C();
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
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements GCRequestJava.d<PageBean> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<PageBean> response) {
            PageBean data = response.getData();
            if (data == null) {
                return;
            }
            MyVideoFragment.this.f25241e = data.count;
            AppContentFilter.INSTANCE.filterVideoList(data.list);
            if (MyVideoFragment.this.f25240d == 1) {
                if (data.list.size() == 0) {
                    MyVideoFragment.this.f25237a.setLayoutManager(new LinearLayoutManager(MyVideoFragment.this.getActivity()));
                } else {
                    MyVideoFragment.this.f25237a.setLayoutManager(new GridLayoutManager(MyVideoFragment.this.getActivity(), 2));
                }
                MyVideoFragment.this.f25238b.resetData(data.list);
                return;
            }
            MyVideoFragment.this.f25238b.addData(data.list);
        }
    }

    static /* synthetic */ int T1(MyVideoFragment myVideoFragment) {
        int i9 = myVideoFragment.f25240d;
        myVideoFragment.f25240d = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2() {
        GCRequestJava putBody = new GCRequestJava(Contants.getMyVideoNew).putBody(Contants.USER_ID, getCurrentUser().getUserId());
        putBody.putBody("page", this.f25240d + "").putBody("is_private", "0").putBody("limit", "24").j(new e()).d(new d()).complete(new c()).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_my_video;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f25237a = (RecyclerView) view.findViewById(R.id.gift_grid);
        this.f25239c = (TwinklingRefreshLayout) view.findViewById(R.id.refreshLayout);
        this.f25237a.setLayoutManager(new GridLayoutManager(getActivity(), 2));
        a aVar = new a(view.getContext(), R.layout.item_private_video);
        this.f25238b = aVar;
        this.f25237a.setAdapter(aVar);
        a2();
        this.f25239c.setHeaderView(new ProgressLayout(getActivity()));
        this.f25239c.setFloatRefresh(true);
        this.f25239c.setEnableOverScroll(false);
        this.f25239c.setHeaderHeight(120.0f);
        this.f25239c.setMaxHeadHeight(200.0f);
        this.f25239c.setOnRefreshListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 100 && i10 == -1) {
            this.f25240d = 1;
            a2();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(String str) {
        if (str.equals("delete_video")) {
            this.f25238b.mDataList.remove(this.f25242f);
            if (this.f25238b.mDataList.size() == 0) {
                this.f25237a.setLayoutManager(new LinearLayoutManager(getActivity()));
            } else {
                this.f25237a.setLayoutManager(new GridLayoutManager(getActivity(), 2));
            }
            this.f25238b.reset();
        } else if (str.equals("private_public")) {
            this.f25238b.mDataList.remove(this.f25242f);
            if (this.f25238b.mDataList.size() == 0) {
                this.f25237a.setLayoutManager(new LinearLayoutManager(getActivity()));
            } else {
                this.f25237a.setLayoutManager(new GridLayoutManager(getActivity(), 2));
            }
            this.f25238b.reset();
        }
    }
}
