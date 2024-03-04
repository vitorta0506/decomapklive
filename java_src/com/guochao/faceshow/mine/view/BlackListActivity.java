package com.guochao.faceshow.mine.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.mine.model.PeopleBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.AAComAdapter;
import com.guochao.faceshow.utils.AAViewHolder;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.h;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class BlackListActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    List<PeopleBean> f25534a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    AAComAdapter<PeopleBean> f25535b;
    @BindView
    ListView lvPeople;
    @BindView
    SwipeRefreshLayout refreshLayout;

    /* loaded from: classes4.dex */
    class a extends AAComAdapter<PeopleBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.mine.view.BlackListActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class View$OnClickListenerC0251a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PeopleBean f25537a;

            View$OnClickListenerC0251a(PeopleBean peopleBean) {
                this.f25537a = peopleBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BlackListActivity.this.i0(this.f25537a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PeopleBean f25539a;

            b(PeopleBean peopleBean) {
                this.f25539a = peopleBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserHomePageAct.start(BlackListActivity.this, String.valueOf(this.f25539a.account));
            }
        }

        a(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.utils.AAComAdapter
        /* renamed from: a */
        public void convert(AAViewHolder aAViewHolder, PeopleBean peopleBean) {
            aAViewHolder.setText(R.id.tvNickName, peopleBean.nick_name);
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) aAViewHolder.getImage(R.id.civHeader);
            normalCircleImageView.setBorderColor(Color.parseColor("#d5b67f"));
            normalCircleImageView.setBorderWidth(5);
            hc.a.l(peopleBean.img, normalCircleImageView, R.mipmap.default_head, BlackListActivity.this);
            aAViewHolder.getView(R.id.btnRemove).setOnClickListener(new View$OnClickListenerC0251a(peopleBean));
            aAViewHolder.getView(R.id.civHeader).setOnClickListener(new b(peopleBean));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<List<PeopleBean>> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<PeopleBean>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<PeopleBean> list, @NonNull FaceCastBaseResponse<List<PeopleBean>> faceCastBaseResponse) {
            BlackListActivity blackListActivity = BlackListActivity.this;
            blackListActivity.f25534a = list;
            if (list != null) {
                blackListActivity.f25535b.resetData(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements SwipeRefreshLayout.OnRefreshListener {
        c() {
        }

        @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
        public void onRefresh() {
            BlackListActivity.this.e0();
            BlackListActivity.this.refreshLayout.setRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PeopleBean f25543a;

        d(PeopleBean peopleBean) {
            this.f25543a = peopleBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            h.a(BlackListActivity.this.getActivity(), aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            BlackListActivity.this.f25534a.remove(this.f25543a);
            BlackListActivity blackListActivity = BlackListActivity.this;
            blackListActivity.f25535b.resetData(blackListActivity.f25534a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        post(Contants.USER_BLACK_LIST).M(new b());
    }

    private void g0() {
        this.refreshLayout.setOnRefreshListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(PeopleBean peopleBean) {
        PostRequest post = post(Contants.deletebacklist);
        post.D(Contants.USER_ID, peopleBean.user_id + "").D("account", peopleBean.account + "").M(new d(peopleBean));
    }

    private void initData() {
        e0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_privacy_black_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        a aVar = new a(this, R.layout.black_list_item);
        this.f25535b = aVar;
        this.lvPeople.setAdapter((ListAdapter) aVar);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.blacklist);
        initData();
        g0();
    }
}
