package com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.facebook.AccessToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.UserGiftNotifyBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.GiftNotifycationHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.VideoPlayActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TCConstants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class GiftNotificationActivity extends BaseIMListActivity<UserGiftNotifyBean.ListBean, GiftNotifycationHolder> {

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<UserGiftNotifyBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UserGiftNotifyBean userGiftNotifyBean, @NonNull FaceCastBaseResponse<UserGiftNotifyBean> faceCastBaseResponse) {
            if (userGiftNotifyBean == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            List<UserGiftNotifyBean.ListBean> list = userGiftNotifyBean.getList();
            if (list == null) {
                list = new ArrayList<>();
            }
            GiftNotificationActivity.this.addDatas(list);
            GiftNotificationActivity.this.notifyDataLoaded(list.size() > 0);
            GiftNotificationActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserGiftNotifyBean> aVar) {
            GiftNotificationActivity.this.notifyDataLoaded(false);
            GiftNotificationActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements GCRequestJava.c<Object> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements GCRequestJava.d<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserGiftNotifyBean.ListBean f17112a;

        c(UserGiftNotifyBean.ListBean listBean) {
            this.f17112a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Integer> response) {
            Integer data = response.getData();
            int intValue = data == null ? 0 : data.intValue();
            if (intValue == 0) {
                ToastUtils.showToast(GiftNotificationActivity.this, (int) R.string.content_has_been_deleted);
            } else if (intValue == 1) {
                GiftNotificationActivity.this.k0(this.f17112a);
            } else if (intValue == 2) {
                ToastUtils.showToast(GiftNotificationActivity.this, (int) R.string.content_has_been_deleted);
            } else {
                ToastUtils.showToast(GiftNotificationActivity.this, (int) R.string.content_has_been_deleted);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(UserGiftNotifyBean.ListBean listBean) {
        Intent intent = new Intent(this, VideoPlayActivity.class);
        intent.putExtra(TCConstants.PLAYER_VIDEO_ID, listBean.getVideoId());
        intent.putExtra("videoUrl", listBean.getVideoUrl());
        intent.putExtra("imgUrl", listBean.getVideoImg());
        intent.putExtra("height", listBean.getHeight());
        intent.putExtra("width", listBean.getWidth());
        intent.putExtra(AccessToken.USER_ID_KEY, listBean.getUserId());
        startActivity(intent);
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, GiftNotificationActivity.class));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: i0 */
    public void convertItem(GiftNotifycationHolder giftNotifycationHolder, int i9, UserGiftNotifyBean.ListBean listBean) {
        giftNotifycationHolder.c(listBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.Gift_Reminder);
        getRecyclerView().setBackgroundResource(R.color.white);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: l0 */
    public GiftNotifycationHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new GiftNotifycationHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/user/message/findSendGiftMessage").v(Contants.USER_ID, getCurrentUser().getUserId()).v("page", Integer.valueOf(i9)).v("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: m0 */
    public void onItemClick(GiftNotifycationHolder giftNotifycationHolder, int i9, UserGiftNotifyBean.ListBean listBean) {
        if (TextUtils.isEmpty(listBean.getVideoId())) {
            return;
        }
        new GCRequestJava("api/token/social/video/checkVideoIsExist").putBody("videoId", String.valueOf(listBean.getVideoId())).j(new c(listBean)).d(new b()).request();
    }
}
