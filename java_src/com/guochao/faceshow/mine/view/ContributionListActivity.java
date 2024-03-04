package com.guochao.faceshow.mine.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.mine.model.ContributionBean;
import com.guochao.faceshow.mine.model.ContributionListBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import kc.f;
/* loaded from: classes4.dex */
public class ContributionListActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private ZZ_RecycleAdapter<ContributionBean> f25562a;

    /* renamed from: c  reason: collision with root package name */
    private int f25564c;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    TwinklingRefreshLayout refreshLayout;
    @BindView
    TextView title;

    /* renamed from: b  reason: collision with root package name */
    private int f25563b = 1;

    /* renamed from: d  reason: collision with root package name */
    private String f25565d = "";

    /* loaded from: classes4.dex */
    class a extends ZZ_RecycleAdapter<ContributionBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.mine.view.ContributionListActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class View$OnClickListenerC0252a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ContributionBean f25567a;

            View$OnClickListenerC0252a(ContributionBean contributionBean) {
                this.f25567a = contributionBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(ContributionListActivity.this, UserHomePageAct.class);
                intent.putExtra(Contants.USER_ID, this.f25567a.getUser_id() + "");
                ContributionListActivity.this.startActivity(intent);
            }
        }

        a(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, ContributionBean contributionBean) {
            HeadPortraitView headPortraitView = (HeadPortraitView) viewHolder.getView(R.id.civHeader);
            VipIndicatorView vipIndicatorView = (VipIndicatorView) viewHolder.getView(R.id.vip_indicator);
            TextView textView = (TextView) viewHolder.getView(R.id.tvNickName);
            TextView textView2 = (TextView) viewHolder.getView(R.id.tvNo);
            TextView textView3 = (TextView) viewHolder.getView(R.id.tvPriceCount);
            textView2.setText("");
            if (viewHolder.getLayoutPosition() == 0) {
                textView2.setBackgroundResource(R.mipmap.icon_fan_ranking1);
            } else if (viewHolder.getLayoutPosition() == 1) {
                textView2.setBackgroundResource(R.mipmap.icon_fan_ranking2);
            } else if (viewHolder.getLayoutPosition() == 2) {
                textView2.setBackgroundResource(R.mipmap.icon_fan_ranking3);
            } else {
                textView2.setBackgroundResource(R.color.transparent);
                textView2.setText((viewHolder.getLayoutPosition() + 1) + "");
            }
            UserBean userBean = new UserBean();
            userBean.userId = contributionBean.getUser_id();
            userBean.img = contributionBean.getImg();
            userBean.countryFlag = contributionBean.getCountryFlag();
            userBean.setUserVipMsg(contributionBean.getUserVipMsg());
            headPortraitView.d(userBean);
            if (contributionBean.getUserVipMsg() != null && contributionBean.getUserVipMsg().getIsVip() > 0) {
                vipIndicatorView.setVisibility(0);
                textView.setMaxWidth(DensityUtil.dp2px(80.0f));
                vipIndicatorView.setVipLevel(contributionBean.getUserVipMsg().getIsVip());
            } else {
                vipIndicatorView.setVisibility(8);
            }
            textView.setText(contributionBean.getNick_name());
            textView3.setText(contributionBean.getTotalPrice() + "");
            headPortraitView.setOnClickListener(new View$OnClickListenerC0252a(contributionBean));
        }
    }

    /* loaded from: classes4.dex */
    class b extends f {
        b() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            ContributionListActivity.this.f25563b = 1;
            ContributionListActivity.this.m0();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (ContributionListActivity.this.f25563b <= ContributionListActivity.this.f25564c) {
                ContributionListActivity.e0(ContributionListActivity.this);
                ContributionListActivity.this.m0();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<ContributionListBean.Page> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            ContributionListActivity.this.refreshLayout.D();
            ContributionListActivity.this.refreshLayout.C();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<ContributionListBean.Page> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(ContributionListBean.Page page, @NonNull FaceCastBaseResponse<ContributionListBean.Page> faceCastBaseResponse) {
            if (page != null) {
                ContributionListActivity.this.f25564c = page.totalPage;
                if (ContributionListActivity.this.f25563b == 1) {
                    ContributionListActivity.this.f25562a.resetData(page.list);
                } else {
                    ContributionListActivity.this.f25562a.addData(page.list);
                }
            }
        }
    }

    static /* synthetic */ int e0(ContributionListActivity contributionListActivity) {
        int i9 = contributionListActivity.f25563b;
        contributionListActivity.f25563b = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        post("tokens/gift/giftRankingList").B("page", this.f25563b).B("limit", 15).D(Contants.USER_ID, this.f25565d).M(new c());
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, ContributionListActivity.class);
        intent.putExtra(Contants.USER_ID, str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_user_center_contribution;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setLightStatusBar(false);
        this.f25565d = getIntent().getStringExtra(Contants.USER_ID);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        a aVar = new a(this, R.layout.item_contribution_list);
        this.f25562a = aVar;
        this.mRecyclerView.setAdapter(aVar);
        m0();
        this.refreshLayout.setHeaderView(new ProgressLayout(this));
        this.refreshLayout.setFloatRefresh(true);
        this.refreshLayout.setEnableOverScroll(true);
        this.refreshLayout.setHeaderHeight(120.0f);
        this.refreshLayout.setMaxHeadHeight(200.0f);
        this.refreshLayout.setAutoLoadMore(true);
        this.refreshLayout.setOnRefreshListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.Top_Fans);
    }
}
