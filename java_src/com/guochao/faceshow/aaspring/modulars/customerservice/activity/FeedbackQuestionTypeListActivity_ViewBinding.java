package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FeedbackQuestionTypeListActivity_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FeedbackQuestionTypeListActivity f17422b;

    @UiThread
    public FeedbackQuestionTypeListActivity_ViewBinding(FeedbackQuestionTypeListActivity feedbackQuestionTypeListActivity, View view) {
        this.f17422b = feedbackQuestionTypeListActivity;
        feedbackQuestionTypeListActivity.ivClose = (ImageView) c.d(view, R.id.iv_close, "field 'ivClose'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FeedbackQuestionTypeListActivity feedbackQuestionTypeListActivity = this.f17422b;
        if (feedbackQuestionTypeListActivity != null) {
            this.f17422b = null;
            feedbackQuestionTypeListActivity.ivClose = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
