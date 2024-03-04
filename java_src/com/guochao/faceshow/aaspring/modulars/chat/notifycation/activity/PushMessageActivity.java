package com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.PushMessageBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.PushMessageHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.signin.activity.UserSigninCenterActivity;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class PushMessageActivity extends BaseIMListActivity<PushMessageBean.ListBean, PushMessageHolder> {

    /* loaded from: classes3.dex */
    class a extends c<PushMessageBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(PushMessageBean pushMessageBean, @NonNull FaceCastBaseResponse<PushMessageBean> faceCastBaseResponse) {
            if (pushMessageBean.getList() == null) {
                pushMessageBean.setList(new ArrayList());
            }
            PushMessageActivity.this.addDatas(pushMessageBean.getList());
            PushMessageActivity.this.notifyDataLoaded(pushMessageBean.getList().size() > 0);
            PushMessageActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<PushMessageBean> aVar) {
            PushMessageActivity.this.notifyDataLoaded(false);
            PushMessageActivity.this.showEmptyView();
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, PushMessageActivity.class));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(PushMessageHolder pushMessageHolder, int i9, PushMessageBean.ListBean listBean) {
        pushMessageHolder.c(listBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: i0 */
    public PushMessageHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new PushMessageHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.System_Reminder);
        View view = this.recyclerContentArea;
        if (view != null) {
            view.setBackgroundColor(ContextCompat.getColor(this, R.color.bg_gray));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: k0 */
    public void onItemClick(PushMessageHolder pushMessageHolder, int i9, PushMessageBean.ListBean listBean) {
        if (listBean.getTypeId() == 3001) {
            UserSigninCenterActivity.start(getActivity());
        } else if (listBean.getTypeId() == 3002) {
            UserSigninCenterActivity.start(getActivity(), "activity_task");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post(Contants.PushMessageListmsg).v(Contants.USER_ID, getCurrentUser().getUserId()).v("page", String.valueOf(i9)).v("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).M(new a());
    }
}
