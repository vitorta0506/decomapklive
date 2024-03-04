package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding;
/* loaded from: classes3.dex */
public class LittlePlayerFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private LittlePlayerFragment f18449d;

    @UiThread
    public LittlePlayerFragment_ViewBinding(LittlePlayerFragment littlePlayerFragment, View view) {
        super(littlePlayerFragment, view);
        this.f18449d = littlePlayerFragment;
        littlePlayerFragment.mTXCloudVideoView = (FrameLayout) butterknife.internal.c.d(view, R.id.txCloudVideoView, "field 'mTXCloudVideoView'", FrameLayout.class);
        littlePlayerFragment.mTextViewCountDown = (TextView) butterknife.internal.c.d(view, R.id.count_down_tips, "field 'mTextViewCountDown'", TextView.class);
        littlePlayerFragment.mImageViewAvatar = (ImageView) butterknife.internal.c.d(view, R.id.avatar, "field 'mImageViewAvatar'", ImageView.class);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LittlePlayerFragment littlePlayerFragment = this.f18449d;
        if (littlePlayerFragment != null) {
            this.f18449d = null;
            littlePlayerFragment.mTXCloudVideoView = null;
            littlePlayerFragment.mTextViewCountDown = null;
            littlePlayerFragment.mImageViewAvatar = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
