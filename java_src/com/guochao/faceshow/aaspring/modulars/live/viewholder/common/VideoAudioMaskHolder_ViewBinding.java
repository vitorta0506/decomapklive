package com.guochao.faceshow.aaspring.modulars.live.viewholder.common;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class VideoAudioMaskHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VideoAudioMaskHolder f19931b;

    @UiThread
    public VideoAudioMaskHolder_ViewBinding(VideoAudioMaskHolder videoAudioMaskHolder, View view) {
        this.f19931b = videoAudioMaskHolder;
        videoAudioMaskHolder.mImageViewBigAvatar = (ImageView) c.d(view, R.id.big_avatar_mask, "field 'mImageViewBigAvatar'", ImageView.class);
        videoAudioMaskHolder.mAvatarViewArea = c.c(view, R.id.avatar_area, "field 'mAvatarViewArea'");
        videoAudioMaskHolder.mImageViewVoiceIcon = (ImageView) c.d(view, R.id.icon_voice, "field 'mImageViewVoiceIcon'", ImageView.class);
        videoAudioMaskHolder.avatarView = (NormalCircleImageView) c.d(view, R.id.avatar_view, "field 'avatarView'", NormalCircleImageView.class);
        videoAudioMaskHolder.mImageViewAudioIndicator = (SVGAImageView) c.d(view, R.id.audio_indicator, "field 'mImageViewAudioIndicator'", SVGAImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VideoAudioMaskHolder videoAudioMaskHolder = this.f19931b;
        if (videoAudioMaskHolder != null) {
            this.f19931b = null;
            videoAudioMaskHolder.mImageViewBigAvatar = null;
            videoAudioMaskHolder.mAvatarViewArea = null;
            videoAudioMaskHolder.mImageViewVoiceIcon = null;
            videoAudioMaskHolder.avatarView = null;
            videoAudioMaskHolder.mImageViewAudioIndicator = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
