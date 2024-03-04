package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.DynamicLikeUserBean;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.List;
/* loaded from: classes3.dex */
public class DynamicLikeUserListActivity extends BaseRecyclerViewActivity<DynamicLikeUserBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    DynamicBean f22199a;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<DynamicLikeUserBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<DynamicLikeUserBean>> aVar) {
            DynamicLikeUserListActivity.this.notifyDataLoaded(false);
            DynamicLikeUserListActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<DynamicLikeUserBean> list, @NonNull FaceCastBaseResponse<List<DynamicLikeUserBean>> faceCastBaseResponse) {
            if (list != null) {
                DynamicLikeUserListActivity.this.addDatas(list);
            }
            DynamicLikeUserListActivity.this.notifyDataLoaded(list != null && list.size() > 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f22201a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f22202b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ DynamicLikeUserBean f22203c;

        b(BaseViewHolder baseViewHolder, int i9, DynamicLikeUserBean dynamicLikeUserBean) {
            this.f22201a = baseViewHolder;
            this.f22202b = i9;
            this.f22203c = dynamicLikeUserBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DynamicLikeUserListActivity.this.e0(this.f22201a, this.f22202b, this.f22203c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements hb.b<String> {
        c() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onResponse(String str) {
        }

        @Override // hb.b
        public /* synthetic */ void onFail(String str) {
            hb.a.a(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(BaseViewHolder baseViewHolder, int i9, DynamicLikeUserBean dynamicLikeUserBean) {
        baseViewHolder.getView(R.id.focus).setVisibility(4);
        ib.b.b(dynamicLikeUserBean.getUserId(), FriendFromSource.UGC, this, new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: d0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, DynamicLikeUserBean dynamicLikeUserBean) {
        VipIndicatorView vipIndicatorView = (VipIndicatorView) baseViewHolder.getView(R.id.vip_indicator);
        ((HeadPortraitView) baseViewHolder.getView(R.id.avatar_view)).d(dynamicLikeUserBean);
        baseViewHolder.setText(R.id.user_name, dynamicLikeUserBean.getUserNickName());
        baseViewHolder.setText(R.id.signare, TextUtils.isEmpty(dynamicLikeUserBean.getUserSignature()) ? getString(R.string.user_info_default_signature) : dynamicLikeUserBean.getUserSignature());
        if (dynamicLikeUserBean.getUserVipMsg() != null) {
            vipIndicatorView.setVipLevel(dynamicLikeUserBean.getUserVipMsg().getIsVip());
        }
        if (dynamicLikeUserBean.getUserAttentStatus() == 4 || dynamicLikeUserBean.getUserAttentStatus() == 3 || dynamicLikeUserBean.getUserId().equals(getCurrentUser().getUserId())) {
            baseViewHolder.getView(R.id.focus).setVisibility(4);
            return;
        }
        baseViewHolder.getView(R.id.focus).setVisibility(0);
        baseViewHolder.getView(R.id.focus).setOnClickListener(new b(baseViewHolder, i9, dynamicLikeUserBean));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: g0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, DynamicLikeUserBean dynamicLikeUserBean) {
        UserHomePageAct.start((Activity) getActivity(), dynamicLikeUserBean.getUserId(), 10);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        DynamicBean dynamicBean = (DynamicBean) getIntent().getParcelableExtra("data");
        this.f22199a = dynamicBean;
        if (dynamicBean == null) {
            finish();
            return;
        }
        setTitle(getString(R.string.ugc_title_like_count, new Object[]{String.valueOf(dynamicBean.getLikeNum())}));
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.f();
        }
        super.initView();
        View emptyView = getEmptyView();
        if (emptyView != null) {
            emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
            emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
            emptyView.findViewById(R.id.empty_text).setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/friend/this_like_user_list").v("friendId", Integer.valueOf(this.f22199a.getFriendId())).v("page", Integer.valueOf(getCurrentPage())).v("limit", 10).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_dynamic_like_user, viewGroup, false));
    }
}
