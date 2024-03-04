package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class SingleLiveBottomInteractionListDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SingleLiveBottomInteractionListDialogFragment f19338b;

    @UiThread
    public SingleLiveBottomInteractionListDialogFragment_ViewBinding(SingleLiveBottomInteractionListDialogFragment singleLiveBottomInteractionListDialogFragment, View view) {
        this.f19338b = singleLiveBottomInteractionListDialogFragment;
        singleLiveBottomInteractionListDialogFragment.mRecyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        singleLiveBottomInteractionListDialogFragment.avatarBg = (HeadPortraitView) butterknife.internal.c.d(view, R.id.avatar_bg_bottom, "field 'avatarBg'", HeadPortraitView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SingleLiveBottomInteractionListDialogFragment singleLiveBottomInteractionListDialogFragment = this.f19338b;
        if (singleLiveBottomInteractionListDialogFragment != null) {
            this.f19338b = null;
            singleLiveBottomInteractionListDialogFragment.mRecyclerView = null;
            singleLiveBottomInteractionListDialogFragment.avatarBg = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
