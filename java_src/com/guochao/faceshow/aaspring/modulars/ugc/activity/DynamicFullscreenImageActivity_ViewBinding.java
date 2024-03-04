package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
/* loaded from: classes3.dex */
public class DynamicFullscreenImageActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DynamicFullscreenImageActivity f22198c;

    @UiThread
    public DynamicFullscreenImageActivity_ViewBinding(DynamicFullscreenImageActivity dynamicFullscreenImageActivity, View view) {
        super(dynamicFullscreenImageActivity, view);
        this.f22198c = dynamicFullscreenImageActivity;
        dynamicFullscreenImageActivity.mViewPager = (ViewPager) butterknife.internal.c.d(view, R.id.pager, "field 'mViewPager'", ViewPager.class);
        dynamicFullscreenImageActivity.mFullScreenScrollToExitView = (FullScreenScrollToExitViewV2) butterknife.internal.c.d(view, R.id.content, "field 'mFullScreenScrollToExitView'", FullScreenScrollToExitViewV2.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        DynamicFullscreenImageActivity dynamicFullscreenImageActivity = this.f22198c;
        if (dynamicFullscreenImageActivity != null) {
            this.f22198c = null;
            dynamicFullscreenImageActivity.mViewPager = null;
            dynamicFullscreenImageActivity.mFullScreenScrollToExitView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
