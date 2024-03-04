package com.guochao.faceshow.aaspring.modulars.live.floatwindow;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class LiveFloatWindowMultiMaskHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveFloatWindowMultiMaskHolder f19149b;

    @UiThread
    public LiveFloatWindowMultiMaskHolder_ViewBinding(LiveFloatWindowMultiMaskHolder liveFloatWindowMultiMaskHolder, View view) {
        this.f19149b = liveFloatWindowMultiMaskHolder;
        liveFloatWindowMultiMaskHolder.mImageViewCover = (ImageView) c.d(view, R.id.cover, "field 'mImageViewCover'", ImageView.class);
        liveFloatWindowMultiMaskHolder.mImageViewAvatar = (ImageView) c.d(view, R.id.avatar, "field 'mImageViewAvatar'", ImageView.class);
        liveFloatWindowMultiMaskHolder.mSVGAImageView = (SVGAImageView) c.d(view, R.id.sVGAImageView, "field 'mSVGAImageView'", SVGAImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveFloatWindowMultiMaskHolder liveFloatWindowMultiMaskHolder = this.f19149b;
        if (liveFloatWindowMultiMaskHolder != null) {
            this.f19149b = null;
            liveFloatWindowMultiMaskHolder.mImageViewCover = null;
            liveFloatWindowMultiMaskHolder.mImageViewAvatar = null;
            liveFloatWindowMultiMaskHolder.mSVGAImageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
