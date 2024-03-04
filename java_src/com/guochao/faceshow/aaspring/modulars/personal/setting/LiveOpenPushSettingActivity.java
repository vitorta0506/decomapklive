package com.guochao.faceshow.aaspring.modulars.personal.setting;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.FollowBean;
import com.guochao.faceshow.bean.FollowBeanLsit;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LiveOpenPushSettingActivity extends BaseRecyclerViewActivity<FollowBean, BaseViewHolder> {

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21635a;

        a(int i9) {
            this.f21635a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            if (LiveOpenPushSettingActivity.this.getList() == null || LiveOpenPushSettingActivity.this.getList().size() == 0) {
                LiveOpenPushSettingActivity.this.showEmptyView();
            }
            if (this.f21635a != 1) {
                LiveOpenPushSettingActivity.this.setFooterView(8);
            }
            LiveOpenPushSettingActivity.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            FollowBeanLsit followBeanLsit = (FollowBeanLsit) GsonGetter.getGson().fromJson(str, (Class<Object>) FollowBeanLsit.class);
            if (followBeanLsit == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (followBeanLsit.code != 1) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else {
                FollowBeanLsit.Result result = followBeanLsit.result;
                if (result == null) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                if (result.list == null) {
                    result.list = new ArrayList();
                }
                if (this.f21635a == 1) {
                    if (followBeanLsit.result.list.size() >= 20) {
                        LiveOpenPushSettingActivity.this.setFooterView(0);
                    } else {
                        LiveOpenPushSettingActivity.this.setFooterView(8);
                    }
                    LiveOpenPushSettingActivity.this.setDatas(followBeanLsit.result.list);
                } else {
                    LiveOpenPushSettingActivity.this.addDatas(followBeanLsit.result.list);
                }
                if (LiveOpenPushSettingActivity.this.getList() == null || LiveOpenPushSettingActivity.this.getList().size() == 0) {
                    LiveOpenPushSettingActivity.this.showEmptyView();
                }
                LiveOpenPushSettingActivity.this.notifyDataLoaded(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FollowBean f21637a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f21638b;

        b(FollowBean followBean, int i9) {
            this.f21637a = followBean;
            this.f21638b = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiveOpenPushSettingActivity.this.i0(this.f21637a.getStartLivePush() == 1 ? "user/attention/closeLivePush" : "user/attention/openLivePush", this.f21637a, this.f21638b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FollowBean f21640a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f21641b;

        c(FollowBean followBean, int i9) {
            this.f21640a = followBean;
            this.f21641b = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            LiveOpenPushSettingActivity.this.getRecyclerView().getAdapter().notifyItemChanged(this.f21641b);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            FollowBean followBean = this.f21640a;
            followBean.setStartLivePush(followBean.getStartLivePush() == 1 ? 0 : 1);
            LiveOpenPushSettingActivity.this.getRecyclerView().getAdapter().notifyItemChanged(this.f21641b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FollowBean f21643a;

        d(FollowBean followBean) {
            this.f21643a = followBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserHomePageAct.start((Activity) LiveOpenPushSettingActivity.this.getActivity(), this.f21643a.getCurrentUserId(), 1);
        }
    }

    @NotNull
    private View.OnClickListener g0(FollowBean followBean) {
        return new d(followBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(String str, FollowBean followBean, int i9) {
        post(str).D("accountId", followBean.getCurrentUserId()).M(new c(followBean, i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: d0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, FollowBean followBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_switch);
        new UserCenterSexLevel((ViewGroup) baseViewHolder.getView(R.id.user_center_age_level), false, true, false).d(followBean);
        ((HeadPortraitView) baseViewHolder.getView(R.id.head_view)).d(followBean);
        ((TextView) baseViewHolder.getView(R.id.tv_user_name)).setText(followBean.getUserName());
        if (followBean.getStartLivePush() == 1) {
            imageView.setSelected(true);
        } else {
            imageView.setSelected(false);
        }
        imageView.setOnClickListener(new b(followBean, i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: e0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, FollowBean followBean) {
        baseViewHolder.getView(R.id.head_view).setOnClickListener(g0(followBean));
        baseViewHolder.getView(R.id.tv_user_name).setOnClickListener(g0(followBean));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_live_open_push_setting;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(getString(R.string.live_open_push_setting));
        getEmptyView().findViewById(R.id.empty_text).setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        if (i9 != 1 && getList().size() >= 20) {
            setFooterView(0);
        }
        post(Contants.listAttention + "?userId=" + getCurrentUser().getUserId() + "&currPage=" + i9 + "&types=0&pageSize=20&systoken=" + SpUtils.getStr(getActivity(), Contants.USER_TOKEN)).B("currPage", i9).D("types", "0").D("pageSize", ThirdPushHelper.TYPE_HUAWEI).M(new a(i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.item_live_open_push_setting, viewGroup, false));
    }
}
