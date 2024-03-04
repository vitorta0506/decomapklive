package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class FeedbackImagePreviewActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FeedbackImagePreviewActivity f17420c;

    @UiThread
    public FeedbackImagePreviewActivity_ViewBinding(FeedbackImagePreviewActivity feedbackImagePreviewActivity, View view) {
        super(feedbackImagePreviewActivity, view);
        this.f17420c = feedbackImagePreviewActivity;
        feedbackImagePreviewActivity.mViewPager = (ViewPager) c.d(view, R.id.viewpager, "field 'mViewPager'", ViewPager.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FeedbackImagePreviewActivity feedbackImagePreviewActivity = this.f17420c;
        if (feedbackImagePreviewActivity != null) {
            this.f17420c = null;
            feedbackImagePreviewActivity.mViewPager = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
