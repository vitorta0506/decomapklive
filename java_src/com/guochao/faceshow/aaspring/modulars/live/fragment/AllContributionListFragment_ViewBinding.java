package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class AllContributionListFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private AllContributionListFragment f19159b;

    @UiThread
    public AllContributionListFragment_ViewBinding(AllContributionListFragment allContributionListFragment, View view) {
        this.f19159b = allContributionListFragment;
        allContributionListFragment.mImageView = (ImageView) butterknife.internal.c.d(view, R.id.empty, "field 'mImageView'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AllContributionListFragment allContributionListFragment = this.f19159b;
        if (allContributionListFragment != null) {
            this.f19159b = null;
            allContributionListFragment.mImageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
