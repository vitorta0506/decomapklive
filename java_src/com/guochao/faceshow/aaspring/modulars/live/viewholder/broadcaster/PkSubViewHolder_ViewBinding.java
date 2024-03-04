package com.guochao.faceshow.aaspring.modulars.live.viewholder.broadcaster;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PkSubViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PkSubViewHolder f19915b;

    @UiThread
    public PkSubViewHolder_ViewBinding(PkSubViewHolder pkSubViewHolder, View view) {
        this.f19915b = pkSubViewHolder;
        pkSubViewHolder.mTXCloudVideoView = (FrameLayout) c.d(view, R.id.preview, "field 'mTXCloudVideoView'", FrameLayout.class);
        pkSubViewHolder.mImageView = (ImageView) c.d(view, R.id.avatar_mask, "field 'mImageView'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PkSubViewHolder pkSubViewHolder = this.f19915b;
        if (pkSubViewHolder != null) {
            this.f19915b = null;
            pkSubViewHolder.mTXCloudVideoView = null;
            pkSubViewHolder.mImageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
