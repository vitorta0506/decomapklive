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
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.CollectionViewHolder;
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
public class CollectionListActivity extends BaseIMListActivity<UserNotifyBean.ListBean, CollectionViewHolder> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements GCRequestJava.c<Object> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements GCRequestJava.d<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17075a;

        b(UserNotifyBean.ListBean listBean) {
            this.f17075a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Integer> response) {
            Integer data = response.getData();
            int intValue = data == null ? 0 : data.intValue();
            if (intValue == 0) {
                CollectionListActivity collectionListActivity = CollectionListActivity.this;
                ToastUtils.showToast(collectionListActivity, collectionListActivity.getString(R.string.content_has_been_deleted));
            } else if (intValue == 1) {
                CollectionListActivity.this.k0(this.f17075a);
            } else if (intValue == 2) {
                CollectionListActivity collectionListActivity2 = CollectionListActivity.this;
                ToastUtils.showToast(collectionListActivity2, collectionListActivity2.getString(R.string.content_has_been_deleted));
            } else {
                CollectionListActivity collectionListActivity3 = CollectionListActivity.this;
                ToastUtils.showToast(collectionListActivity3, collectionListActivity3.getString(R.string.content_has_been_deleted));
            }
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
        final /* synthetic */ UserNotifyBean.ListBean f17078a;

        d(UserNotifyBean.ListBean listBean) {
            this.f17078a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Integer> response) {
            Integer data = response.getData();
            int intValue = data == null ? 0 : data.intValue();
            if (intValue == 0) {
                CollectionListActivity collectionListActivity = CollectionListActivity.this;
                ToastUtils.showToast(collectionListActivity, collectionListActivity.getString(R.string.content_has_been_deleted));
            } else if (intValue == 1) {
                CollectionListActivity.this.k0(this.f17078a);
            } else if (intValue == 2) {
                CollectionListActivity collectionListActivity2 = CollectionListActivity.this;
                ToastUtils.showToast(collectionListActivity2, collectionListActivity2.getString(R.string.content_has_been_deleted));
            } else {
                CollectionListActivity collectionListActivity3 = CollectionListActivity.this;
                ToastUtils.showToast(collectionListActivity3, collectionListActivity3.getString(R.string.content_has_been_deleted));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17080a;

        e(UserNotifyBean.ListBean listBean) {
            this.f17080a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num.intValue() == 1) {
                Intent intent = new Intent(CollectionListActivity.this, DynamicDetailActivity.class);
                intent.putExtra("type", ThirdPushHelper.TYPE_XIAOMI_CHINA);
                intent.putExtra("circle_id", this.f17080a.getInfoId());
                MemoryCache.getInstance().put(this.f17080a.getFriendRingCommentNewVo());
                CollectionListActivity.this.startActivity(intent);
                return;
            }
            CollectionListActivity collectionListActivity = CollectionListActivity.this;
            ToastUtils.showToast(collectionListActivity, collectionListActivity.getString(R.string.content_has_been_deleted));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserNotifyBean.ListBean f17082a;

        f(UserNotifyBean.ListBean listBean) {
            this.f17082a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num.intValue() == 1) {
                Intent intent = new Intent(CollectionListActivity.this, DynamicDetailActivity.class);
                intent.putExtra("type", ThirdPushHelper.TYPE_XIAOMI_CHINA);
                intent.putExtra("circle_id", this.f17082a.getRefId());
                intent.putExtra("comment_id", this.f17082a.getInfoId());
                intent.putExtra("height", this.f17082a.getHeight());
                intent.putExtra("width", this.f17082a.getWidth());
                MemoryCache.getInstance().put(this.f17082a.getFriendRingCommentNewVo());
                CollectionListActivity.this.startActivity(intent);
                return;
            }
            CollectionListActivity collectionListActivity = CollectionListActivity.this;
            ToastUtils.showToast(collectionListActivity, collectionListActivity.getString(R.string.content_has_been_deleted));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Integer> aVar) {
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
                if (CollectionListActivity.this.getCurrentPage() == 1) {
                    CollectionListActivity.this.setDatas(list);
                } else {
                    CollectionListActivity.this.addDatas(list);
                }
            }
            CollectionListActivity.this.notifyDataLoaded((userNotifyBean == null || userNotifyBean.getList() == null || userNotifyBean.getList().size() <= 0) ? false : false);
            CollectionListActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserNotifyBean> aVar) {
            CollectionListActivity.this.notifyDataLoaded(false);
            CollectionListActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(UserNotifyBean.ListBean listBean) {
        int typeId = listBean.getTypeId();
        if (typeId == 1) {
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
            intent.putExtra("height", listBean.getHeight());
            intent.putExtra("width", listBean.getWidth());
            intent.putExtra(AccessToken.USER_ID_KEY, listBean.getUserId());
            intent.putExtra("with_comment", false);
            startActivity(intent);
        } else if (typeId == 25 || typeId == 38) {
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
            intent2.putExtra("commentId", listBean.getInfoId());
            intent2.putExtra("comment", listBean.getContent());
            intent2.putExtra("height", listBean.getHeight());
            intent2.putExtra("width", listBean.getWidth());
            intent2.putExtra("from", 11);
            intent2.putExtra(AccessToken.USER_ID_KEY, listBean.getUserId());
            intent2.putExtra("with_comment", true);
            startActivity(intent2);
            MemoryCache.getInstance().put(listBean.getVideoCommentParent());
        }
    }

    public static void n0(Context context, boolean z10) {
        Intent intent = new Intent(context, CollectionListActivity.class);
        intent.putExtra(TypedValues.Custom.S_FLOAT, z10);
        context.startActivity(intent);
    }

    public static void start(Context context) {
        n0(context, false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: i0 */
    public void convertItem(CollectionViewHolder collectionViewHolder, int i9, UserNotifyBean.ListBean listBean) {
        collectionViewHolder.c(listBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.push_Likes);
        getRecyclerView().setBackgroundResource(R.color.white);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: l0 */
    public CollectionViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new CollectionViewHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/user/message/findLiked_push_summary/V2").v(Contants.USER_ID, getCurrentUser().getUserId()).v("page", Integer.valueOf(i9)).v("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).M(new g());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: m0 */
    public void onItemClick(CollectionViewHolder collectionViewHolder, int i9, UserNotifyBean.ListBean listBean) {
        if (DisableDoubleClickUtils.canClick(collectionViewHolder.itemView)) {
            int typeId = listBean.getTypeId();
            if (typeId == 1) {
                new GCRequestJava("api/token/social/video/checkVideoIsExist").putBody("videoId", listBean.getInfoId()).j(new b(listBean)).d(new a()).request();
            } else if (typeId != 8) {
                if (typeId != 25) {
                    if (typeId != 28) {
                        if (typeId != 38) {
                            if (typeId != 39) {
                                return;
                            }
                        }
                    }
                    post("tokens/friend/checkFriendRingIsExist").D("friendId", listBean.getRefId()).M(new f(listBean));
                    return;
                }
                new GCRequestJava("api/token/social/video/checkVideoIsExist").putBody("videoId", listBean.getRefId()).j(new d(listBean)).d(new c()).request();
            } else {
                post("tokens/friend/checkFriendRingIsExist").D("friendId", listBean.getInfoId()).M(new e(listBean));
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
