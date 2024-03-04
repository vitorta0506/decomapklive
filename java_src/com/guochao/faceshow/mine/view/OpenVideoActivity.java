package com.guochao.faceshow.mine.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.activity.PersonVideoActivity;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.bean.PageBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Tool;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration;
import java.util.HashMap;
import kc.f;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
@Deprecated
/* loaded from: classes4.dex */
public class OpenVideoActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private ZZ_RecycleAdapter<VideoItem> f25647a;

    /* renamed from: c  reason: collision with root package name */
    private int f25649c;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    TwinklingRefreshLayout refreshLayout;

    /* renamed from: b  reason: collision with root package name */
    private int f25648b = 1;

    /* renamed from: d  reason: collision with root package name */
    public String f25650d = "1";

    /* renamed from: e  reason: collision with root package name */
    private String f25651e = "";

    /* loaded from: classes4.dex */
    class a extends ZZ_RecycleAdapter<VideoItem> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.mine.view.OpenVideoActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class View$OnClickListenerC0253a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f25653a;

            View$OnClickListenerC0253a(int i9) {
                this.f25653a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActivityOptionsCompat makeScaleUpAnimation = ActivityOptionsCompat.makeScaleUpAnimation(view, view.getWidth() / 2, view.getHeight() / 2, 0, 0);
                Tool.mDataList = OpenVideoActivity.this.f25647a.mDataList;
                Intent intent = new Intent(OpenVideoActivity.this, PersonVideoActivity.class);
                PersonVideoActivity.VideoUrlConfig videoUrlConfig = new PersonVideoActivity.VideoUrlConfig();
                HashMap<String, String> hashMap = new HashMap<>();
                hashMap.put(Contants.USER_ID, OpenVideoActivity.this.f25651e);
                hashMap.put("page", OpenVideoActivity.this.f25648b + "");
                hashMap.put("is_private", "1");
                hashMap.put("limit", "24");
                videoUrlConfig.e(Contants.getMyVideoNew);
                videoUrlConfig.c(OpenVideoActivity.this.f25648b);
                videoUrlConfig.d(hashMap);
                intent.putExtra("config", videoUrlConfig);
                intent.putExtra("position", this.f25653a);
                intent.putExtra("currPage", OpenVideoActivity.this.f25648b);
                intent.putExtra("totalPage", OpenVideoActivity.this.f25649c);
                intent.putExtra(Contants.USER_ID, OpenVideoActivity.this.f25651e);
                intent.putExtra("from", 12);
                OpenVideoActivity.this.startActivity(intent, makeScaleUpAnimation.toBundle());
            }
        }

        a(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, VideoItem videoItem) {
            hc.a.l(videoItem.getVideoImg(), viewHolder.c(R.id.lift_iv), R.mipmap.default_goods, OpenVideoActivity.this);
            viewHolder.f(R.id.count_tv, Formatter.getFormat(videoItem.getVideoCollectionNum()));
            viewHolder.getView(R.id.item).setOnClickListener(new View$OnClickListenerC0253a(viewHolder.getPosition()));
        }
    }

    /* loaded from: classes4.dex */
    class b extends f {
        b() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            OpenVideoActivity.this.f25648b = 1;
            OpenVideoActivity.this.n0();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (OpenVideoActivity.this.f25648b < OpenVideoActivity.this.f25649c) {
                OpenVideoActivity.i0(OpenVideoActivity.this);
                OpenVideoActivity.this.n0();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Function1<GCRequest, Unit> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            OpenVideoActivity.this.refreshLayout.D();
            OpenVideoActivity.this.refreshLayout.C();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements GCRequestJava.c<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements GCRequestJava.d<PageBean> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<PageBean> response) {
            PageBean data = response.getData();
            if (data == null) {
                return;
            }
            OpenVideoActivity.this.f25649c = data.count;
            if (OpenVideoActivity.this.f25648b == 1) {
                if (data.list.size() == 0) {
                    OpenVideoActivity openVideoActivity = OpenVideoActivity.this;
                    openVideoActivity.mRecyclerView.setLayoutManager(new LinearLayoutManager(openVideoActivity));
                } else {
                    OpenVideoActivity openVideoActivity2 = OpenVideoActivity.this;
                    openVideoActivity2.mRecyclerView.setLayoutManager(new GridLayoutManager(openVideoActivity2, 4));
                }
                OpenVideoActivity.this.f25647a.resetData(data.list);
                return;
            }
            OpenVideoActivity.this.f25647a.addData(data.list);
            OpenVideoActivity.this.f25647a.notifyDataSetChanged();
            OpenVideoActivity.this.refreshLayout.C();
        }
    }

    static /* synthetic */ int i0(OpenVideoActivity openVideoActivity) {
        int i9 = openVideoActivity.f25648b;
        openVideoActivity.f25648b = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        new GCRequestJava(Contants.getMyVideoNew).putBody(Contants.USER_ID, this.f25651e).putBody("page", String.valueOf(this.f25648b)).putBody("is_private", "1").putBody("limit", "24").j(new e()).d(new d()).complete(new c()).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_open_video;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f25651e = getIntent().getStringExtra(Contants.USER_ID);
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, 4));
        this.mRecyclerView.addItemDecoration(new DefaultItemDecoration(ContextCompat.getColor(this, R.color.light_new_gray), 10, 10, new int[0]));
        a aVar = new a(this, R.layout.item_praise);
        this.f25647a = aVar;
        this.mRecyclerView.setAdapter(aVar);
        n0();
        this.refreshLayout.setHeaderView(new ProgressLayout(this));
        this.refreshLayout.setFloatRefresh(true);
        this.refreshLayout.setEnableOverScroll(false);
        this.refreshLayout.setHeaderHeight(120.0f);
        this.refreshLayout.setMaxHeadHeight(200.0f);
        this.refreshLayout.setOnRefreshListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.video);
    }
}
