package com.guochao.faceshow.activity;

import android.os.Bundle;
import android.os.Looper;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.adapters.GiftRecycleAdapter;
import com.guochao.faceshow.bean.MyPrizeBean;
import com.guochao.faceshow.bean.MyPrizeBeanResult;
import com.guochao.faceshow.utils.Contants;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration;
import java.util.ArrayList;
import java.util.List;
import kc.f;
/* loaded from: classes3.dex */
public class MyGiftListActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f24699a;

    /* renamed from: b  reason: collision with root package name */
    private TwinklingRefreshLayout f24700b;

    /* renamed from: c  reason: collision with root package name */
    private GiftRecycleAdapter f24701c;

    /* renamed from: e  reason: collision with root package name */
    private List<MyPrizeBean> f24703e;

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout f24705g;

    /* renamed from: d  reason: collision with root package name */
    private int f24702d = 1;

    /* renamed from: f  reason: collision with root package name */
    private int f24704f = 1;

    /* loaded from: classes3.dex */
    class a extends f {
        a() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            MyGiftListActivity.this.f24702d = 1;
            MyGiftListActivity.this.o0();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (MyGiftListActivity.this.f24702d < MyGiftListActivity.this.f24704f) {
                MyGiftListActivity.e0(MyGiftListActivity.this);
                MyGiftListActivity.this.o0();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<MyPrizeBeanResult> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyPrizeBeanResult myPrizeBeanResult, @NonNull FaceCastBaseResponse<MyPrizeBeanResult> faceCastBaseResponse) {
            MyGiftListActivity.this.f24704f = myPrizeBeanResult.totalPage;
            if (MyGiftListActivity.this.f24702d == 1) {
                MyGiftListActivity.this.f24701c.resetData(myPrizeBeanResult.list);
            } else {
                MyGiftListActivity.this.f24701c.addData(myPrizeBeanResult.list);
            }
            if (MyGiftListActivity.this.p0()) {
                if (MyGiftListActivity.this.f24701c.getItemCount() > 0) {
                    MyGiftListActivity.this.f24700b.setVisibility(0);
                    MyGiftListActivity.this.f24705g.setVisibility(8);
                    return;
                }
                MyGiftListActivity.this.f24700b.setVisibility(8);
                MyGiftListActivity.this.f24705g.setVisibility(0);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyPrizeBeanResult> aVar) {
            MyGiftListActivity.this.f24700b.D();
            MyGiftListActivity.this.f24700b.C();
        }
    }

    static /* synthetic */ int e0(MyGiftListActivity myGiftListActivity) {
        int i9 = myGiftListActivity.f24702d;
        myGiftListActivity.f24702d = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        PostRequest post = post(Contants.MY_PRIZE_LIST);
        post.D("page", this.f24702d + "").D("limit", ThirdPushHelper.TYPE_HUAWEI).M(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_my_friends;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f24703e = new ArrayList();
        this.f24699a = (RecyclerView) findViewById(R.id.mRecyclerView);
        this.f24700b = (TwinklingRefreshLayout) findViewById(R.id.refreshLayout);
        this.f24705g = (RelativeLayout) findViewById(R.id.empty_ll);
        this.f24699a.setLayoutManager(new LinearLayoutManager(this));
        this.f24699a.addItemDecoration(new DefaultItemDecoration(ContextCompat.getColor(this, R.color.light_new_gray), 10, 10, new int[0]));
        GiftRecycleAdapter giftRecycleAdapter = new GiftRecycleAdapter(this, R.layout.item_prize_list, this.f24703e, null, null);
        this.f24701c = giftRecycleAdapter;
        this.f24699a.setAdapter(giftRecycleAdapter);
        o0();
        this.f24700b.setHeaderView(new ProgressLayout(this));
        this.f24700b.setFloatRefresh(true);
        this.f24700b.setEnableOverScroll(false);
        this.f24700b.setHeaderHeight(120.0f);
        this.f24700b.setMaxHeadHeight(200.0f);
        this.f24700b.setOnRefreshListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.my_prize));
    }

    public boolean p0() {
        return Looper.getMainLooper() == Looper.myLooper();
    }
}
