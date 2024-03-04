package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class SelectUploadVideoFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SelectUploadVideoFragment f20520b;

    @UiThread
    public SelectUploadVideoFragment_ViewBinding(SelectUploadVideoFragment selectUploadVideoFragment, View view) {
        this.f20520b = selectUploadVideoFragment;
        selectUploadVideoFragment.mRecyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SelectUploadVideoFragment selectUploadVideoFragment = this.f20520b;
        if (selectUploadVideoFragment != null) {
            this.f20520b = null;
            selectUploadVideoFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
