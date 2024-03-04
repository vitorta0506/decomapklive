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
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.AtMeViewHolder;
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
public class AtMeListActivity extends BaseIMListActivity<UserNotifyBean.ListBean, AtMeViewHolder> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17060a;

        a(UserNotifyBean.ListBean listBean) {
            this.f17060a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num.intValue() == 1) {
                Intent intent = new Intent(AtMeListActivity.this, DynamicDetailActivity.class);
                intent.putExtra("type", ThirdPushHelper.TYPE_XIAOMI_CHINA);
                intent.putExtra("circle_id", this.f17060a.getRefId());
                intent.putExtra("comment_id", this.f17060a.getInfoId());
                MemoryCache.getInstance().put(this.f17060a.getFriendRingCommentNewVo());
                AtMeListActivity.this.startActivity(intent);
                return;
            }
            AtMeListActivity atMeListActivity = AtMeListActivity.this;
            ToastUtils.showToast(atMeListActivity, atMeListActivity.getString(R.string.content_has_been_deleted));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17062a;

        b(UserNotifyBean.ListBean listBean) {
            this.f17062a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num.intValue() == 1) {
                Intent intent = new Intent(AtMeListActivity.this, DynamicDetailActivity.class);
                intent.putExtra("type", ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
                intent.putExtra("circle_id", this.f17062a.getInfoId());
                MemoryCache.getInstance().put(this.f17062a.getFriendRingCommentNewVo());
                AtMeListActivity.this.startActivity(intent);
                return;
            }
            AtMeListActivity atMeListActivity = AtMeListActivity.this;
            ToastUtils.showToast(atMeListActivity, atMeListActivity.getString(R.string.content_has_been_deleted));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements GCRequestJava.c<Object> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.d<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17065a;

        d(UserNotifyBean.ListBean listBean) {
            this.f17065a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Integer> response) {
            Integer data = response.getData();
            int intValue = data == null ? 0 : data.intValue();
            if (intValue == 0) {
                AtMeListActivity atMeListActivity = AtMeListActivity.this;
                ToastUtils.showToast(atMeListActivity, atMeListActivity.getString(R.string.content_has_been_deleted));
            } else if (intValue == 1) {
                AtMeListActivity.this.k0(this.f17065a);
            } else if (intValue == 2) {
                AtMeListActivity atMeListActivity2 = AtMeListActivity.this;
                ToastUtils.showToast(atMeListActivity2, atMeListActivity2.getString(R.string.content_has_been_deleted));
            } else {
                AtMeListActivity atMeListActivity3 = AtMeListActivity.this;
                ToastUtils.showToast(atMeListActivity3, atMeListActivity3.getString(R.string.content_has_been_deleted));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements GCRequestJava.c<Object> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements GCRequestJava.d<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17068a;

        f(UserNotifyBean.ListBean listBean) {
            this.f17068a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Integer> response) {
            Integer data = response.getData();
            int intValue = data == null ? 0 : data.intValue();
            if (intValue == 0) {
                AtMeListActivity atMeListActivity = AtMeListActivity.this;
                ToastUtils.showToast(atMeListActivity, atMeListActivity.getString(R.string.content_has_been_deleted));
            } else if (intValue == 1) {
                AtMeListActivity.this.k0(this.f17068a);
            } else if (intValue == 2) {
                AtMeListActivity atMeListActivity2 = AtMeListActivity.this;
                ToastUtils.showToast(atMeListActivity2, atMeListActivity2.getString(R.string.content_has_been_deleted));
            } else {
                AtMeListActivity atMeListActivity3 = AtMeListActivity.this;
                ToastUtils.showToast(atMeListActivity3, atMeListActivity3.getString(R.string.content_has_been_deleted));
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends com.guochao.faceshow.aaspring.base.http.callback.c<UserNotifyBean> {
        g() {
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
                if (AtMeListActivity.this.getCurrentPage() == 1) {
                    AtMeListActivity.this.setDatas(list);
                } else {
                    AtMeListActivity.this.addDatas(list);
                }
            }
            AtMeListActivity.this.notifyDataLoaded((userNotifyBean == null || userNotifyBean.getList() == null || userNotifyBean.getList().size() <= 0) ? false : false);
            AtMeListActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserNotifyBean> aVar) {
            AtMeListActivity.this.notifyDataLoaded(false);
            AtMeListActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(UserNotifyBean.ListBean listBean) {
        int typeId = listBean.getTypeId();
        if (typeId == 5) {
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
            intent.putExtra(TCConstants.PLAYER_VIDEO_ID, listBean.getInfoId());
            intent.putExtra("videoUrl", listBean.getUrl());
            intent.putExtra("imgUrl", listBean.getVideoImg());
            intent.putExtra("height", listBean.getHeight());
            intent.putExtra("width", listBean.getWidth());
            intent.putExtra(AccessToken.USER_ID_KEY, listBean.getUserId());
            MemoryCache.getInstance().put(listBean.getVideoCommentParent());
            intent.putExtra("with_comment", false);
            startActivity(intent);
        } else if (typeId == 26 || typeId == 36) {
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
            intent2.putExtra(TCConstants.PLAYER_VIDEO_ID, listBean.getRefId());
            intent2.putExtra("videoUrl", listBean.getUrl());
            intent2.putExtra("imgUrl", listBean.getVideoImg());
            intent2.putExtra("comment_id", listBean.getInfoId());
            intent2.putExtra("comment", listBean.getContent());
            intent2.putExtra("height", listBean.getHeight());
            intent2.putExtra("width", listBean.getWidth());
            intent2.putExtra("from", 11);
            intent2.putExtra(AccessToken.USER_ID_KEY, listBean.getUserId());
            MemoryCache.getInstance().put(listBean.getVideoCommentParent());
            intent2.putExtra("with_comment", true);
            startActivity(intent2);
        }
    }

    public static void n0(Context context, boolean z10) {
        Intent intent = new Intent(context, AtMeListActivity.class);
        intent.putExtra(TypedValues.Custom.S_FLOAT, z10);
        context.startActivity(intent);
    }

    public static void start(Context context) {
        n0(context, false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: i0 */
    public void convertItem(AtMeViewHolder atMeViewHolder, int i9, UserNotifyBean.ListBean listBean) {
        atMeViewHolder.c(listBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.push_AtMe);
        getRecyclerView().setBackgroundResource(R.color.white);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: l0 */
    public AtMeViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new AtMeViewHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/user/message/findVideo_push_summary/V2").v(Contants.USER_ID, getCurrentUser().getUserId()).v("page", Integer.valueOf(i9)).v("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).M(new g());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: m0 */
    public void onItemClick(AtMeViewHolder atMeViewHolder, int i9, UserNotifyBean.ListBean listBean) {
        if (DisableDoubleClickUtils.canClick(atMeViewHolder.itemView)) {
            int typeId = listBean.getTypeId();
            if (typeId == 5) {
                new GCRequestJava("api/token/social/video/checkVideoIsExist").putBody("videoId", listBean.getInfoId()).j(new d(listBean)).d(new c()).request();
            } else if (typeId != 29) {
                if (typeId != 33) {
                    if (typeId != 26) {
                        if (typeId != 27) {
                            switch (typeId) {
                                case 35:
                                case 37:
                                    break;
                                case 36:
                                    break;
                                default:
                                    return;
                            }
                        }
                    }
                    new GCRequestJava("api/token/social/video/checkVideoIsExist").putBody("videoId", listBean.getRefId()).j(new f(listBean)).d(new e()).request();
                    return;
                }
                post("tokens/friend/checkFriendRingIsExist").D("friendId", listBean.getRefId()).M(new a(listBean));
            } else {
                post("tokens/friend/checkFriendRingIsExist").D("friendId", listBean.getInfoId()).M(new b(listBean));
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
