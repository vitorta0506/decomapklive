package com.guochao.faceshow.aaspring.modulars.main.viewholder;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ShortVideoViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ShortVideoViewHolder f20887b;

    @UiThread
    public ShortVideoViewHolder_ViewBinding(ShortVideoViewHolder shortVideoViewHolder, View view) {
        this.f20887b = shortVideoViewHolder;
        shortVideoViewHolder.mCoverImage = (ImageView) butterknife.internal.c.d(view, R.id.video_cover, "field 'mCoverImage'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ShortVideoViewHolder shortVideoViewHolder = this.f20887b;
        if (shortVideoViewHolder != null) {
            this.f20887b = null;
            shortVideoViewHolder.mCoverImage = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
