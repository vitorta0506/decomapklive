package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class FeedbackActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FeedbackActivity f17368c;

    /* renamed from: d  reason: collision with root package name */
    private View f17369d;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackActivity f17370a;

        a(FeedbackActivity feedbackActivity) {
            this.f17370a = feedbackActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17370a.submit(view);
        }
    }

    @UiThread
    public FeedbackActivity_ViewBinding(FeedbackActivity feedbackActivity, View view) {
        super(feedbackActivity, view);
        this.f17368c = feedbackActivity;
        feedbackActivity.mEditTextEmail = (EditText) c.d(view, R.id.contact_info_et, "field 'mEditTextEmail'", EditText.class);
        feedbackActivity.mTextView = (TextView) c.d(view, R.id.question_type, "field 'mTextView'", TextView.class);
        View c10 = c.c(view, R.id.submit, "method 'submit'");
        this.f17369d = c10;
        c10.setOnClickListener(new a(feedbackActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FeedbackActivity feedbackActivity = this.f17368c;
        if (feedbackActivity != null) {
            this.f17368c = null;
            feedbackActivity.mEditTextEmail = null;
            feedbackActivity.mTextView = null;
            this.f17369d.setOnClickListener(null);
            this.f17369d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
