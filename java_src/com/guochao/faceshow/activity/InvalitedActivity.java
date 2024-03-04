package com.guochao.faceshow.activity;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.bean.InvalitedPersons;
import com.guochao.faceshow.bean.MyInvalitedPersons;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class InvalitedActivity extends BaseRecyclerViewActivity<InvalitedPersons, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private View f24537a;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<MyInvalitedPersons> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyInvalitedPersons myInvalitedPersons, @NonNull FaceCastBaseResponse<MyInvalitedPersons> faceCastBaseResponse) {
            if (myInvalitedPersons == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            InvalitedActivity.this.addDatas(myInvalitedPersons.list);
            InvalitedActivity.this.notifyDataLoaded(true);
            InvalitedActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyInvalitedPersons> aVar) {
            InvalitedActivity.this.notifyDataLoaded(true);
            InvalitedActivity.this.showEmptyView();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, InvalitedPersons invalitedPersons) {
        hc.a.h((NormalCircleImageView) baseViewHolder.getView(R.id.head_img), invalitedPersons.img, R.mipmap.default_head);
        baseViewHolder.setText(R.id.im_user, invalitedPersons.nickName);
        baseViewHolder.setText(R.id.invalite_time, TimeUtil.getStrToDateYmd(invalitedPersons.createTimeMsec));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: d0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, InvalitedPersons invalitedPersons) {
        UserHomePageAct.start(getActivity(), invalitedPersons.userId);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_invalited;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        ((TitleBackgroundView) findViewById(R.id.float_title_back)).setBottomEnable(false);
        this.f24537a = findViewById(R.id.empty_view);
        setTitle(R.string.invalite_person);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post(Contants.invitelist).D("page", String.valueOf(i9)).D("limit", ThirdPushHelper.TYPE_HUAWEI).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    public void showEmptyView() {
        if (getList().isEmpty()) {
            this.f24537a.setVisibility(0);
            hideFooterView();
            return;
        }
        this.f24537a.setVisibility(8);
        setFooterView(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull @NotNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_invalite_persons, viewGroup, false));
    }
}
