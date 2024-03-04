package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class BottomInteractionDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BottomInteractionDialogFragment f19223b;

    @UiThread
    public BottomInteractionDialogFragment_ViewBinding(BottomInteractionDialogFragment bottomInteractionDialogFragment, View view) {
        this.f19223b = bottomInteractionDialogFragment;
        bottomInteractionDialogFragment.mRecyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        bottomInteractionDialogFragment.avatarBg = (HeadPortraitView) butterknife.internal.c.d(view, R.id.avatar_bg_bottom, "field 'avatarBg'", HeadPortraitView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BottomInteractionDialogFragment bottomInteractionDialogFragment = this.f19223b;
        if (bottomInteractionDialogFragment != null) {
            this.f19223b = null;
            bottomInteractionDialogFragment.mRecyclerView = null;
            bottomInteractionDialogFragment.avatarBg = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
