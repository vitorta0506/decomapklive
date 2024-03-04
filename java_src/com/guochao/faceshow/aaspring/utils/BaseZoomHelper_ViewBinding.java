package com.guochao.faceshow.aaspring.utils;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
/* loaded from: classes3.dex */
public class BaseZoomHelper_ViewBinding implements Unbinder {
    private BaseZoomHelper target;
    private View view7f0a09f6;

    @UiThread
    public BaseZoomHelper_ViewBinding(final BaseZoomHelper baseZoomHelper, View view) {
        this.target = baseZoomHelper;
        baseZoomHelper.mViewPager = (ViewPager) butterknife.internal.c.b(view, R.id.pager, "field 'mViewPager'", ViewPager.class);
        View findViewById = view.findViewById(R.id.save_img);
        baseZoomHelper.mViewSave = findViewById;
        if (findViewById != null) {
            this.view7f0a09f6 = findViewById;
            findViewById.setOnClickListener(new butterknife.internal.b() { // from class: com.guochao.faceshow.aaspring.utils.BaseZoomHelper_ViewBinding.1
                @Override // butterknife.internal.b
                public void doClick(View view2) {
                    baseZoomHelper.save(view2);
                }
            });
        }
        baseZoomHelper.mFullScreenScrollToExitView = (FullScreenScrollToExitViewV2) butterknife.internal.c.d(view, R.id.content, "field 'mFullScreenScrollToExitView'", FullScreenScrollToExitViewV2.class);
        baseZoomHelper.mTextView = (TextView) butterknife.internal.c.d(view, R.id.indicator, "field 'mTextView'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseZoomHelper baseZoomHelper = this.target;
        if (baseZoomHelper != null) {
            this.target = null;
            baseZoomHelper.mViewPager = null;
            baseZoomHelper.mViewSave = null;
            baseZoomHelper.mFullScreenScrollToExitView = null;
            baseZoomHelper.mTextView = null;
            View view = this.view7f0a09f6;
            if (view != null) {
                view.setOnClickListener(null);
                this.view7f0a09f6 = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
