package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.SearchUserBean;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
/* loaded from: classes3.dex */
public class RelatedUserMoreActivity extends BaseRecyclerViewActivity<SearchUserNameOrIdBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private String f22367a;

    /* renamed from: b  reason: collision with root package name */
    private int f22368b;
    @BindView
    View include;
    @BindView
    View locationTipsView;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SearchUserNameOrIdBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<SearchUserNameOrIdBean>> aVar) {
            if (RelatedUserMoreActivity.this.getItemCount() == 0) {
                RelatedUserMoreActivity.this.showEmptyView();
            } else {
                RelatedUserMoreActivity.this.notifyDataLoaded(false);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<SearchUserNameOrIdBean> list, @NonNull FaceCastBaseResponse<List<SearchUserNameOrIdBean>> faceCastBaseResponse) {
            if (list.size() > 0) {
                RelatedUserMoreActivity.this.addDatas(list);
                RelatedUserMoreActivity.this.notifyDataLoaded(true);
            } else {
                RelatedUserMoreActivity.this.notifyDataLoaded(false);
            }
            if (RelatedUserMoreActivity.this.getItemCount() == 0) {
                RelatedUserMoreActivity.this.showEmptyView();
            }
        }
    }

    private void i0(final SearchUserNameOrIdBean searchUserNameOrIdBean) {
        ib.b.b(searchUserNameOrIdBean.getUserId(), FriendFromSource.UGC, getActivity(), new hb.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.l
            @Override // hb.b
            public /* synthetic */ void onFail(Object obj) {
                hb.a.a(this, obj);
            }

            @Override // hb.b
            public final void onResponse(Object obj) {
                RelatedUserMoreActivity.this.m0(searchUserNameOrIdBean, (String) obj);
            }
        });
    }

    private void k0(final SearchUserNameOrIdBean searchUserNameOrIdBean) {
        ib.b.a(searchUserNameOrIdBean.getUserId(), getActivity(), new hb.b() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.k
            @Override // hb.b
            public /* synthetic */ void onFail(Object obj) {
                hb.a.a(this, obj);
            }

            @Override // hb.b
            public final void onResponse(Object obj) {
                RelatedUserMoreActivity.this.n0(searchUserNameOrIdBean, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(SearchUserNameOrIdBean searchUserNameOrIdBean, View view) {
        if (!"1".equals(searchUserNameOrIdBean.getUserAttentStatus())) {
            k0(searchUserNameOrIdBean);
        } else {
            i0(searchUserNameOrIdBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(SearchUserNameOrIdBean searchUserNameOrIdBean, String str) {
        searchUserNameOrIdBean.setUserAttentStatus("0");
        notifyDataLoaded(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(SearchUserNameOrIdBean searchUserNameOrIdBean, String str) {
        searchUserNameOrIdBean.setUserAttentStatus("1");
        notifyDataLoaded(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, final SearchUserNameOrIdBean searchUserNameOrIdBean) {
        HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.getView(R.id.user_avatar);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_nick_name);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_focus);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_signature);
        VipIndicatorView vipIndicatorView = (VipIndicatorView) baseViewHolder.getView(R.id.vip_indicator);
        IM_User iM_User = new IM_User();
        iM_User.setImg(searchUserNameOrIdBean.getUserImg());
        iM_User.setAvatar(searchUserNameOrIdBean.getAvatar());
        if (!TextUtils.isEmpty(searchUserNameOrIdBean.getUserSex())) {
            iM_User.setSex(Integer.parseInt(searchUserNameOrIdBean.getUserSex()));
        }
        iM_User.setCountryLogo(searchUserNameOrIdBean.getUserCountryFlag());
        iM_User.setUserVipMsg(searchUserNameOrIdBean.getUserVipMsg());
        headPortraitView.f(iM_User, true);
        if (iM_User.getUserVipMsg() != null) {
            vipIndicatorView.setVipLevel(searchUserNameOrIdBean.getUserVipMsg().getIsVip());
        }
        textView.setText(FileUtils.findSearchNodiff(ContextCompat.getColor(this, R.color.color_ugc_app_primary), searchUserNameOrIdBean.getUserNickName(), this.f22367a));
        textView2.setText(searchUserNameOrIdBean.getUserSignature());
        if ("1".equals(searchUserNameOrIdBean.getUserAttentStatus())) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RelatedUserMoreActivity.this.l0(searchUserNameOrIdBean, view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_people_nearby;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.ugc_related_user_more);
        this.include.setVisibility(0);
        this.f22367a = getIntent().getStringExtra(BaseConfig.USER_SEARCH_NAME);
        this.locationTipsView.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(this.f22367a);
        searchUserBean.setCurrPage(i9);
        searchUserBean.setPageSize(15);
        post("tokens/search/findUserByNickNameOrId").u(searchUserBean).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: o0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, SearchUserNameOrIdBean searchUserNameOrIdBean) {
        if (this.mCurrentNetWork != 0) {
            this.f22368b = i9;
            Intent intent = new Intent(getActivity(), UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, searchUserNameOrIdBean.getUserId() + "");
            startActivityForResult(intent, 200);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 200 && i10 == -1 && intent != null) {
            int intExtra = intent.getIntExtra("data", 0);
            if (this.f22368b >= getList().size()) {
                return;
            }
            if (intExtra == 1) {
                getList().get(this.f22368b).setUserAttentStatus("0");
            } else {
                getList().get(this.f22368b).setUserAttentStatus("1");
            }
            getRecyclerView().getAdapter().notifyItemChanged(this.f22368b);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.item_related_user_more, viewGroup, false));
    }
}
