package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class LiveMoreDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveMoreDialogFragment f18761b;

    @UiThread
    public LiveMoreDialogFragment_ViewBinding(LiveMoreDialogFragment liveMoreDialogFragment, View view) {
        this.f18761b = liveMoreDialogFragment;
        liveMoreDialogFragment.mRecyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        liveMoreDialogFragment.modelTitle = (TextView) butterknife.internal.c.d(view, R.id.model_title, "field 'modelTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveMoreDialogFragment liveMoreDialogFragment = this.f18761b;
        if (liveMoreDialogFragment != null) {
            this.f18761b = null;
            liveMoreDialogFragment.mRecyclerView = null;
            liveMoreDialogFragment.modelTitle = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
