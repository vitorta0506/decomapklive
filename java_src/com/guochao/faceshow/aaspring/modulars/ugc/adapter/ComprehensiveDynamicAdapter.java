package com.guochao.faceshow.aaspring.modulars.ugc.adapter;

import aa.d;
import aa.e;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityOptionsCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DynamicVideoListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.ImageDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.VideoDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.DynamicImageZoomHelper;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Tool;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import y9.a;
/* loaded from: classes3.dex */
public class ComprehensiveDynamicAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements e {

    /* renamed from: a  reason: collision with root package name */
    private List<DynamicBean> f22500a;

    /* renamed from: b  reason: collision with root package name */
    private Context f22501b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f22502c;

    /* renamed from: d  reason: collision with root package name */
    DynamicImageZoomHelper f22503d;

    /* renamed from: e  reason: collision with root package name */
    RecyclerView.RecycledViewPool f22504e;

    public ComprehensiveDynamicAdapter(Context context, List<DynamicBean> list) {
        this.f22500a = list;
        this.f22501b = context;
        this.f22502c = LayoutInflater.from(context);
    }

    @Override // aa.e
    public RecyclerView.RecycledViewPool getImageRecyclerViewPool() {
        if (this.f22504e == null) {
            this.f22504e = new RecyclerView.RecycledViewPool();
        }
        return this.f22504e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f22500a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        return this.f22500a.get(i9).getItemViewType();
    }

    @Override // aa.e
    public void onAvatarClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        ((FragmentActivity) this.f22501b).startActivityForResult(new Intent(this.f22501b, UserHomePageAct.class).putExtra(Contants.USER_ID, dynamicBean.getUserId()), 300);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
        if (viewHolder instanceof BaseDynamicViewHolder) {
            ((BaseDynamicViewHolder) viewHolder).o(this.f22500a.get(i9));
        }
    }

    @Override // aa.e
    public void onBlackStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10) {
        Iterator<DynamicBean> it = this.f22500a.iterator();
        while (it.hasNext()) {
            if (it.next().getUserId().equals(dynamicBean.getUserId())) {
                it.remove();
            }
        }
        notifyDataSetChanged();
    }

    @Override // aa.e
    public void onCommentButtonClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseDynamicViewHolder a10 = a.a(this.f22501b, this.f22502c, viewGroup, i9);
        a10.setOnDynamicOperationListener(this);
        return a10;
    }

    @Override // aa.e
    public void onDeleteDynamic(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        this.f22500a.remove(dynamicBean);
        notifyDataSetChanged();
    }

    @Override // aa.e
    public void onFocusStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10) {
        for (int i9 = 0; i9 < this.f22500a.size(); i9++) {
            DynamicBean dynamicBean2 = this.f22500a.get(i9);
            if (dynamicBean2.getUserId().equalsIgnoreCase(dynamicBean.getUserId())) {
                dynamicBean2.setUserAttentStatus(dynamicBean.getUserAttentStatus());
            }
        }
        notifyDataSetChanged();
    }

    @Override // aa.e
    public void onImageClick(ImageDynamicViewHolder imageDynamicViewHolder, DynamicBean dynamicBean, int i9, RecyclerView recyclerView, View view) {
        if (this.f22503d == null) {
            this.f22503d = new DynamicImageZoomHelper((FragmentActivity) this.f22501b);
        }
        this.f22503d.startZoom(imageDynamicViewHolder, dynamicBean, i9, recyclerView, view);
    }

    @Override // aa.e
    public /* synthetic */ void onLikeClick(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, int i9) {
        d.a(this, baseDynamicViewHolder, dynamicBean, i9);
    }

    @Override // aa.e
    public void onResendClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
    }

    @Override // aa.e
    public void onVideoClick(VideoDynamicViewHolder videoDynamicViewHolder, DynamicBean dynamicBean) {
        ArrayList arrayList = new ArrayList(this.f22500a);
        ArrayList arrayList2 = new ArrayList();
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            DynamicBean dynamicBean2 = (DynamicBean) arrayList.get(i9);
            if (((DynamicBean) arrayList.get(i9)).getItemViewType() == 2) {
                VideoItem videoItem = new VideoItem();
                videoItem.setVideoId(dynamicBean2.getVideoId());
                videoItem.setUserImg(dynamicBean2.getAvatarUrl());
                videoItem.setUserNickName(dynamicBean2.getNickName());
                videoItem.setVideoUrl(dynamicBean2.getUrl());
                videoItem.setVideoImg(dynamicBean2.getImg());
                videoItem.setUserId(dynamicBean2.getUserId());
                videoItem.setLiveState(String.valueOf(dynamicBean2.getLiveState()));
                videoItem.setAvatar(dynamicBean2.getAvatar());
                videoItem.setHeight(String.valueOf(dynamicBean2.getHeight()));
                videoItem.setWidth(String.valueOf(dynamicBean2.getWidth()));
                videoItem.setVideoCollectionNum(dynamicBean2.getLikeNum());
                videoItem.setVideoCommentNum(dynamicBean2.getCommentNum());
                videoItem.setVideoIntroductionContent(dynamicBean2.getContent());
                arrayList2.add(videoItem);
            }
        }
        Tool.mDataList = arrayList2;
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList2.size()) {
                i10 = 0;
                break;
            } else if (TextUtils.equals(((VideoItem) arrayList2.get(i10)).getVideoId(), dynamicBean.getVideoId())) {
                break;
            } else {
                i10++;
            }
        }
        View view = videoDynamicViewHolder.getView(R.id.video_content);
        ActivityOptionsCompat makeScaleUpAnimation = ActivityOptionsCompat.makeScaleUpAnimation(view, view.getWidth() / 2, view.getHeight() / 2, 0, 0);
        Intent intent = new Intent(this.f22501b, DynamicVideoListActivity.class);
        intent.putExtra("type", 2);
        intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, 1);
        intent.putExtra("current", videoDynamicViewHolder.f23053r.getCurrentPlaybackTime());
        intent.putExtra("position", i10);
        ((FragmentActivity) this.f22501b).startActivityForResult(intent, 500, makeScaleUpAnimation.toBundle());
    }
}
