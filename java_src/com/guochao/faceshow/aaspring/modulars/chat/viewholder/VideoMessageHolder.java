package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import butterknife.BindView;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.models.VideoMessage;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.tencent.imsdk.v2.V2TIMDownloadCallback;
import com.tencent.imsdk.v2.V2TIMElem;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class VideoMessageHolder extends BaseMessageViewHolder implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    boolean f17341a;

    /* renamed from: b  reason: collision with root package name */
    d.b<Integer> f17342b;
    @BindView
    TextView mDurationText;
    @BindView
    ImageView mImageViewPlay;
    @BindView
    public ImageView mImageViewThumb;
    @BindView
    TextView mProgress;
    @BindView
    ImageView mProgressIv;

    /* loaded from: classes3.dex */
    class a implements V2TIMDownloadCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f17343a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17344b;

        a(ImageView imageView, String str) {
            this.f17343a = imageView;
            this.f17344b = str;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMDownloadCallback
        public void onProgress(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            hc.a.j(this.f17343a, this.f17344b);
        }
    }

    /* loaded from: classes3.dex */
    class b implements d.b<Integer> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable Integer num) {
            VideoMessageHolder videoMessageHolder = VideoMessageHolder.this;
            if (videoMessageHolder.f17341a || videoMessageHolder.mProgressIv == null || num == null) {
                return;
            }
            if (num.intValue() <= 0) {
                VideoMessageHolder.this.mProgress.setVisibility(8);
                VideoMessageHolder.this.mProgressIv.setVisibility(8);
                return;
            }
            VideoMessageHolder.this.mProgress.setVisibility(8);
            VideoMessageHolder.this.mProgressIv.setVisibility(0);
            ((ClipDrawable) VideoMessageHolder.this.mProgressIv.getDrawable()).setLevel(num.intValue() * 100);
            if (num.intValue() >= 100) {
                VideoMessageHolder.this.mProgress.setVisibility(8);
                VideoMessageHolder.this.mProgressIv.setVisibility(8);
                com.guochao.faceshow.aaspring.manager.im.b.l0().J(VideoMessageHolder.this.mMessage.getMessage().getMsgID());
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoMessageHolder videoMessageHolder = VideoMessageHolder.this;
            Context context = videoMessageHolder.mContext;
            if (context instanceof BaseMessageViewHolder.f) {
                int adapterPosition = videoMessageHolder.getAdapterPosition();
                VideoMessageHolder videoMessageHolder2 = VideoMessageHolder.this;
                ((BaseMessageViewHolder.f) context).onMediaMessageClick(videoMessageHolder, adapterPosition, videoMessageHolder2.mMessage, videoMessageHolder2.mImageViewThumb);
            }
        }
    }

    public VideoMessageHolder(Context context, View view) {
        super(context, view);
        this.f17341a = false;
        this.f17342b = new b();
        if (context instanceof LifecycleOwner) {
            ((LifecycleOwner) context).getLifecycle().addObserver(this);
        }
    }

    private String c(long j10) {
        if (j10 < 60) {
            return "0:" + d(j10);
        }
        return (j10 / 60) + CertificateUtil.DELIMITER + d(j10 % 60);
    }

    private String d(long j10) {
        if (j10 >= 10) {
            return String.valueOf(j10);
        }
        return "0" + j10;
    }

    private void e(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, VideoMessage videoMessage) {
        this.mImageViewPlay.setVisibility(0);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    void destroy() {
        this.f17341a = true;
        Context context = this.mContext;
        if (context instanceof LifecycleOwner) {
            ((LifecycleOwner) context).getLifecycle().removeObserver(this);
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = this.mMessage;
        if (aVar == null || aVar.getMessage() == null) {
            return;
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().J(this.mMessage.getMessage().getMsgID());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        ImageView imageView = this.mImageViewThumb;
        VideoMessage videoMessage = (VideoMessage) aVar2;
        clearMessageContentBackground();
        if (videoMessage.getVideo() == null) {
            return;
        }
        makeViewSize(getView(R.id.video_content), videoMessage.getVideo().getSnapshotWidth(), videoMessage.getVideo().getSnapshotHeight());
        this.mDurationText.setText(c(videoMessage.getFirstElem().getDuration()));
        String thumbnailPath = videoMessage.getThumbnailPath();
        if (TextUtils.isEmpty(thumbnailPath)) {
            String localThumbnailPath = videoMessage.getLocalThumbnailPath();
            File file = new File(localThumbnailPath);
            if (file.exists() && file.length() >= videoMessage.getVideo().getSnapshotSize()) {
                hc.a.j(imageView, localThumbnailPath);
            } else {
                videoMessage.getVideo().downloadSnapshot(localThumbnailPath, new a(imageView, localThumbnailPath));
            }
        } else {
            hc.a.j(imageView, thumbnailPath);
        }
        if (!isSelf()) {
            e(aVar2, videoMessage);
        } else if (this.mMessage.getStatus() == 1) {
            com.guochao.faceshow.aaspring.manager.im.b.l0().A(this.mMessage.getMessage().getMsgID(), this.f17342b);
        } else {
            e(aVar2, videoMessage);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.mContext.getString(R.string.delete)));
        if (isSelf() && aVar.getStatus() == 2 && !isErrorMsg()) {
            arrayList.add(new PopupMenuItem(2, this.mContext.getString(R.string.chat_pullback)));
        }
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
        super.onItemClick(popupMenuItem, view);
        int id2 = popupMenuItem.getId();
        if (id2 == 1) {
            deleteCurrentMessage();
        } else if (id2 != 2) {
        } else {
            revokeCurrentMessage();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (view.getContext() instanceof FakeLiveChatActivity) {
            if (!UserStateHolder.isLivingInMic() && !UserStateHolder.isLiving()) {
                ToastUtils.showToast((int) R.string.cannot_play_video_when_living);
                return;
            } else {
                ToastUtils.showToast((int) R.string.livenotwatchvideo);
                return;
            }
        }
        try {
            view.post(new c());
        } catch (Exception unused) {
        }
    }
}
