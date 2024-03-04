package com.guochao.faceshow.aaspring.modulars.live.viewholder.subbroadcaster;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class SubBroadCasterVideoViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SubBroadCasterVideoViewHolder f19937b;

    @UiThread
    public SubBroadCasterVideoViewHolder_ViewBinding(SubBroadCasterVideoViewHolder subBroadCasterVideoViewHolder, View view) {
        this.f19937b = subBroadCasterVideoViewHolder;
        subBroadCasterVideoViewHolder.mImageView = (ImageView) c.d(view, R.id.avatar_mask, "field 'mImageView'", ImageView.class);
        subBroadCasterVideoViewHolder.mPlayerView = (ViewGroup) c.d(view, R.id.preview, "field 'mPlayerView'", ViewGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SubBroadCasterVideoViewHolder subBroadCasterVideoViewHolder = this.f19937b;
        if (subBroadCasterVideoViewHolder != null) {
            this.f19937b = null;
            subBroadCasterVideoViewHolder.mImageView = null;
            subBroadCasterVideoViewHolder.mPlayerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
