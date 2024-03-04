package com.guochao.faceshow.aaspring.modulars.ugc.viewholder;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder_ViewBinding;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes3.dex */
public class VideoDynamicViewHolder_ViewBinding extends BaseDynamicViewHolder_ViewBinding {

    /* renamed from: m  reason: collision with root package name */
    private VideoDynamicViewHolder f23060m;

    /* renamed from: n  reason: collision with root package name */
    private View f23061n;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoDynamicViewHolder f23062a;

        a(VideoDynamicViewHolder videoDynamicViewHolder) {
            this.f23062a = videoDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23062a.onVideoClick(view);
        }
    }

    @UiThread
    public VideoDynamicViewHolder_ViewBinding(VideoDynamicViewHolder videoDynamicViewHolder, View view) {
        super(videoDynamicViewHolder, view);
        this.f23060m = videoDynamicViewHolder;
        videoDynamicViewHolder.mTXCloudVideoView = (TXCloudVideoView) c.d(view, R.id.video_view, "field 'mTXCloudVideoView'", TXCloudVideoView.class);
        videoDynamicViewHolder.mImageView = (ImageView) c.d(view, R.id.place_holder, "field 'mImageView'", ImageView.class);
        videoDynamicViewHolder.mImageViewPlayIcon = (ImageView) c.d(view, R.id.icon_play, "field 'mImageViewPlayIcon'", ImageView.class);
        View c10 = c.c(view, R.id.video_content, "field 'mVideoContentView' and method 'onVideoClick'");
        videoDynamicViewHolder.mVideoContentView = c10;
        this.f23061n = c10;
        c10.setOnClickListener(new a(videoDynamicViewHolder));
        videoDynamicViewHolder.bgFL = c.c(view, R.id.bgFL, "field 'bgFL'");
        videoDynamicViewHolder.bgIV = (ImageView) c.d(view, R.id.bgIV, "field 'bgIV'", ImageView.class);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VideoDynamicViewHolder videoDynamicViewHolder = this.f23060m;
        if (videoDynamicViewHolder != null) {
            this.f23060m = null;
            videoDynamicViewHolder.mTXCloudVideoView = null;
            videoDynamicViewHolder.mImageView = null;
            videoDynamicViewHolder.mImageViewPlayIcon = null;
            videoDynamicViewHolder.mVideoContentView = null;
            videoDynamicViewHolder.bgFL = null;
            videoDynamicViewHolder.bgIV = null;
            this.f23061n.setOnClickListener(null);
            this.f23061n = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
