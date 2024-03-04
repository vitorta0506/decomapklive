package com.guochao.faceshow.aaspring.modulars.rank.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class RankListFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RankListFragment f21706b;

    @UiThread
    public RankListFragment_ViewBinding(RankListFragment rankListFragment, View view) {
        this.f21706b = rankListFragment;
        rankListFragment.mRealEmptyView = c.c(view, R.id.empty_view, "field 'mRealEmptyView'");
        rankListFragment.mEmptyView = (LinearLayout) c.d(view, R.id.empty_view1, "field 'mEmptyView'", LinearLayout.class);
        rankListFragment.mBottomTips = (TextView) c.d(view, R.id.bottom_tips, "field 'mBottomTips'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RankListFragment rankListFragment = this.f21706b;
        if (rankListFragment != null) {
            this.f21706b = null;
            rankListFragment.mRealEmptyView = null;
            rankListFragment.mEmptyView = null;
            rankListFragment.mBottomTips = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
