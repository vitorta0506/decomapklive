package com.guochao.faceshow.aaspring.modulars.onevone.pendant.face;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FacePendantCategoryFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FacePendantCategoryFragment f21021b;

    @UiThread
    public FacePendantCategoryFragment_ViewBinding(FacePendantCategoryFragment facePendantCategoryFragment, View view) {
        this.f21021b = facePendantCategoryFragment;
        facePendantCategoryFragment.content = (RecyclerView) c.d(view, R.id.content, "field 'content'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FacePendantCategoryFragment facePendantCategoryFragment = this.f21021b;
        if (facePendantCategoryFragment != null) {
            this.f21021b = null;
            facePendantCategoryFragment.content = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
