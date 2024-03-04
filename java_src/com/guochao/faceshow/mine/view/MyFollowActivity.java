package com.guochao.faceshow.mine.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.SimpleItemAnimator;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.bean.FollowBean;
import com.guochao.faceshow.bean.FollowBeanLsit;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class MyFollowActivity extends BaseRecyclerViewActivity<FollowBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    protected String f25626a;
    @BindView
    View recyclerContentArea;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FollowBean f25627a;

        a(FollowBean followBean) {
            this.f25627a = followBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserHomePageAct.start(MyFollowActivity.this, String.valueOf(this.f25627a.getAccount()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FollowBean f25629a;

        b(FollowBean followBean) {
            this.f25629a = followBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FollowBean.LiveData liveData = this.f25629a.liveData;
            if (liveData == null || liveData.getIsLive() != 1) {
                return;
            }
            RoomItemData obtainData = this.f25629a.liveData.obtainData();
            FollowBean followBean = this.f25629a;
            followBean.setImg(followBean.getImg());
            LiveInfoUtils.jumpToBaseLiveRoomAct(obtainData, MyFollowActivity.this.getActivity());
        }
    }

    /* loaded from: classes4.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            MyFollowActivity.this.notifyDataLoaded(false);
            MyFollowActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            FollowBeanLsit followBeanLsit = (FollowBeanLsit) GsonGetter.getGson().fromJson(str, (Class<Object>) FollowBeanLsit.class);
            if (followBeanLsit == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            if (followBeanLsit.code != 1) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            FollowBeanLsit.Result result = followBeanLsit.result;
            if (result == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            if (result.list == null) {
                result.list = new ArrayList();
            }
            MyFollowActivity.this.addDatas(followBeanLsit.result.list);
            MyFollowActivity.this.notifyDataLoaded(followBeanLsit.result.list.size() >= 20);
            MyFollowActivity.this.showEmptyView();
        }
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, MyFollowActivity.class);
        intent.putExtra(Contants.USER_ID, str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, FollowBean followBean) {
        VipIndicatorView vipIndicatorView = (VipIndicatorView) baseViewHolder.getView(R.id.vip_indicator_view);
        ((HeadPortraitView) baseViewHolder.getView(R.id.avatar_view)).d(followBean);
        if (followBean.getUserVipMsg() != null) {
            vipIndicatorView.setVipLevel(followBean.getUserVipMsg().getIsVip());
        }
        new UserCenterSexLevel(baseViewHolder.getView(R.id.user_center_age_level)).d(followBean);
        baseViewHolder.setText(R.id.user_name, followBean.getNick_name());
        baseViewHolder.setText(R.id.user_sign, followBean.getSignature() != null ? followBean.getSignature() : getString(R.string.user_info_default_signature));
        baseViewHolder.getView(R.id.avatar_view).setOnClickListener(new a(followBean));
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R.id.living);
        if (getCurrentUser().getUserId().equals(this.f25626a)) {
            FollowBean.LiveData liveData = followBean.liveData;
            if (liveData != null && liveData.getIsLive() == 1) {
                linearLayout.setVisibility(0);
                ((AnimationDrawable) ((ImageView) baseViewHolder.getView(R.id.living_status)).getDrawable()).start();
            } else {
                linearLayout.setVisibility(4);
            }
        } else {
            linearLayout.setVisibility(8);
        }
        linearLayout.setOnClickListener(new b(followBean));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: d0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, FollowBean followBean) {
        UserHomePageAct.start(this, String.valueOf(followBean.getAccount()));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_base_recycler_view_with_gc_title;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        if (BaseConfig.isChinese()) {
            setTitle(getString(R.string.focused));
        } else {
            setTitle(getString(R.string.focus));
        }
        this.f25626a = getIntent().getStringExtra(Contants.USER_ID);
        getRecyclerView().setLayoutManager(new LinearLayoutManager(this));
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
        if (getRecyclerView().getItemAnimator() instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) getRecyclerView().getItemAnimator()).setSupportsChangeAnimations(false);
        }
        this.recyclerContentArea.setBackgroundColor(-1);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.f();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post(Contants.listAttention + "?userId=" + this.f25626a + "&currPage=" + i9 + "&types=0&pageSize=20&systoken=" + SpUtils.getStr(getActivity(), Contants.USER_TOKEN)).D(Contants.USER_ID, this.f25626a).D("currPage", i9 + "").D("types", "0").D("pageSize", ThirdPushHelper.TYPE_HUAWEI).M(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    public void showEmptyView() {
        super.showEmptyView();
        if (BaseConfig.isChinese()) {
            com.guochao.faceshow.aaspring.modulars.personal.b.a(getActivity(), (TextView) findViewById(R.id.empty_text));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(LayoutInflater.from(this).inflate(R.layout.item_follow, viewGroup, false));
    }
}
