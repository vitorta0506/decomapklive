package com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity;

import android.content.Context;
import android.content.Intent;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.UserNotifyBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.CommentViewHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DynamicDetailActivity;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.activity.VideoPlayActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TCConstants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class CommentListActivity extends BaseIMListActivity<UserNotifyBean.ListBean, CommentViewHolder> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17085a;

        a(UserNotifyBean.ListBean listBean) {
            this.f17085a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num.intValue() == 1) {
                Intent intent = new Intent(CommentListActivity.this, DynamicDetailActivity.class);
                intent.putExtra("type", "9");
                intent.putExtra("circle_id", this.f17085a.getInfoId());
                intent.putExtra("comment_id", this.f17085a.getRefId());
                intent.putExtra("height", this.f17085a.getHeight());
                intent.putExtra("width", this.f17085a.getWidth());
                MemoryCache.getInstance().put(this.f17085a.getFriendRingCommentNewVo());
                CommentListActivity.this.startActivity(intent);
                return;
            }
            CommentListActivity commentListActivity = CommentListActivity.this;
            ToastUtils.showToast(commentListActivity, commentListActivity.getString(R.string.content_has_been_deleted));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17087a;

        b(UserNotifyBean.ListBean listBean) {
            this.f17087a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num.intValue() == 1) {
                Intent intent = new Intent(CommentListActivity.this, DynamicDetailActivity.class);
                intent.putExtra("type", ThirdPushHelper.TYPE_XIAOMI_CHINA);
                intent.putExtra("circle_id", this.f17087a.getInfoId());
                intent.putExtra("comment_id", this.f17087a.getRefId());
                intent.putExtra("height", this.f17087a.getHeight());
                intent.putExtra("width", this.f17087a.getWidth());
                MemoryCache.getInstance().put(this.f17087a.getFriendRingCommentNewVo());
                CommentListActivity.this.startActivity(intent);
                return;
            }
            CommentListActivity commentListActivity = CommentListActivity.this;
            ToastUtils.showToast(commentListActivity, commentListActivity.getString(R.string.content_has_been_deleted));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17089a;

        c(UserNotifyBean.ListBean listBean) {
            this.f17089a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num.intValue() == 1) {
                Intent intent = new Intent(CommentListActivity.this, DynamicDetailActivity.class);
                intent.putExtra("type", ThirdPushHelper.TYPE_XIAOMI_CHINA);
                intent.putExtra("circle_id", this.f17089a.getInfoId());
                intent.putExtra("comment_id", "");
                intent.putExtra("height", this.f17089a.getHeight());
                intent.putExtra("width", this.f17089a.getWidth());
                intent.putExtra("with_comment", true);
                MemoryCache.getInstance().put(this.f17089a.getFriendRingCommentNewVo());
                CommentListActivity.this.startActivity(intent);
                return;
            }
            CommentListActivity commentListActivity = CommentListActivity.this;
            ToastUtils.showToast(commentListActivity, commentListActivity.getString(R.string.content_has_been_deleted));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.c<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements GCRequestJava.d<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17092a;

        e(UserNotifyBean.ListBean listBean) {
            this.f17092a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Integer> response) {
            Integer data = response.getData();
            int intValue = data == null ? 0 : data.intValue();
            if (intValue == 0) {
                CommentListActivity commentListActivity = CommentListActivity.this;
                ToastUtils.showToast(commentListActivity, commentListActivity.getString(R.string.content_has_been_deleted));
            } else if (intValue == 1) {
                CommentListActivity.this.k0(this.f17092a);
            } else if (intValue == 2) {
                CommentListActivity commentListActivity2 = CommentListActivity.this;
                ToastUtils.showToast(commentListActivity2, commentListActivity2.getString(R.string.content_has_been_deleted));
            } else {
                CommentListActivity commentListActivity3 = CommentListActivity.this;
                ToastUtils.showToast(commentListActivity3, commentListActivity3.getString(R.string.content_has_been_deleted));
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends com.guochao.faceshow.aaspring.base.http.callback.c<UserNotifyBean> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UserNotifyBean userNotifyBean, @NonNull FaceCastBaseResponse<UserNotifyBean> faceCastBaseResponse) {
            boolean z10 = true;
            if (userNotifyBean != null && userNotifyBean.getList() != null) {
                List<UserNotifyBean.ListBean> list = userNotifyBean.getList();
                if (list == null) {
                    list = new ArrayList<>();
                }
                if (CommentListActivity.this.getCurrentPage() == 1) {
                    CommentListActivity.this.setDatas(list);
                } else {
                    CommentListActivity.this.addDatas(list);
                }
            }
            CommentListActivity.this.notifyDataLoaded((userNotifyBean == null || userNotifyBean.getList() == null || userNotifyBean.getList().size() <= 0) ? false : false);
            CommentListActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserNotifyBean> aVar) {
            CommentListActivity.this.notifyDataLoaded(false);
            CommentListActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(UserNotifyBean.ListBean listBean) {
        int typeId = listBean.getTypeId();
        if (typeId != 6) {
            if (typeId == 7) {
                if (this.f17055a) {
                    if (!UserStateHolder.isLiving() && !UserStateHolder.isLivingInMic()) {
                        showToast(R.string.cannot_play_video_when_living);
                        return;
                    } else {
                        showToast(R.string.livenotwatchvideo);
                        return;
                    }
                }
                Intent intent = new Intent(this, VideoPlayActivity.class);
                intent.putExtra("type", 2);
                intent.putExtra(TCConstants.PLAYER_VIDEO_ID, listBean.getInfoId());
                intent.putExtra("videoUrl", listBean.getUrl());
                intent.putExtra("imgUrl", listBean.getVideoImg());
                intent.putExtra("from", 11);
                intent.putExtra("commentId", listBean.getRefId());
                intent.putExtra("height", listBean.getHeight());
                intent.putExtra("width", listBean.getWidth());
                intent.putExtra(AccessToken.USER_ID_KEY, listBean.getUserId());
                MemoryCache.getInstance().put(listBean.getVideoCommentParent());
                intent.putExtra("with_comment", true);
                startActivity(intent);
                return;
            } else if (typeId != 32 && typeId != 34) {
                return;
            }
        }
        if (this.f17055a) {
            if (!UserStateHolder.isLiving() && !UserStateHolder.isLivingInMic()) {
                showToast(R.string.cannot_play_video_when_living);
                return;
            } else {
                showToast(R.string.livenotwatchvideo);
                return;
            }
        }
        Intent intent2 = new Intent(this, VideoPlayActivity.class);
        intent2.putExtra("type", 2);
        intent2.putExtra(TCConstants.PLAYER_VIDEO_ID, listBean.getInfoId());
        intent2.putExtra("videoUrl", listBean.getUrl());
        intent2.putExtra("imgUrl", listBean.getVideoImg());
        intent2.putExtra("from", 11);
        intent2.putExtra("height", listBean.getHeight());
        intent2.putExtra("commentId", listBean.getRefId());
        intent2.putExtra("width", listBean.getWidth());
        intent2.putExtra(AccessToken.USER_ID_KEY, listBean.getUserId());
        MemoryCache.getInstance().put(listBean.getVideoCommentParent());
        intent2.putExtra("with_comment", true);
        startActivity(intent2);
    }

    public static void n0(Context context, boolean z10) {
        Intent intent = new Intent(context, CommentListActivity.class);
        intent.putExtra(TypedValues.Custom.S_FLOAT, z10);
        context.startActivity(intent);
    }

    public static void start(Context context) {
        n0(context, false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: i0 */
    public void convertItem(CommentViewHolder commentViewHolder, int i9, UserNotifyBean.ListBean listBean) {
        commentViewHolder.c(listBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.push_notification_setting_comments);
        getRecyclerView().setBackgroundResource(R.color.white);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: l0 */
    public CommentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new CommentViewHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/user/message/findComments_push_summary/V2").v(Contants.USER_ID, getCurrentUser().getUserId()).v("page", Integer.valueOf(i9)).v("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).M(new f());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: m0 */
    public void onItemClick(CommentViewHolder commentViewHolder, int i9, UserNotifyBean.ListBean listBean) {
        if (DisableDoubleClickUtils.canClick(commentViewHolder.itemView)) {
            int typeId = listBean.getTypeId();
            if (typeId == 9) {
                post("tokens/friend/checkFriendRingIsExist").D("friendId", listBean.getInfoId()).M(new a(listBean));
            } else if (typeId == 10) {
                post("tokens/friend/checkFriendRingIsExist").D("friendId", listBean.getInfoId()).M(new b(listBean));
            } else if (typeId != 33 && typeId != 35) {
                new GCRequestJava("api/token/social/video/checkVideoIsExist").putBody("videoId", listBean.getInfoId()).j(new e(listBean)).d(new d()).request();
            } else {
                post("tokens/friend/checkFriendRingIsExist").D("friendId", listBean.getInfoId()).M(new c(listBean));
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
