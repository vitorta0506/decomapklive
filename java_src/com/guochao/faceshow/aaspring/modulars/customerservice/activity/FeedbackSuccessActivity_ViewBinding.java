package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class FeedbackSuccessActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FeedbackSuccessActivity f17423c;

    /* renamed from: d  reason: collision with root package name */
    private View f17424d;

    /* renamed from: e  reason: collision with root package name */
    private View f17425e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackSuccessActivity f17426a;

        a(FeedbackSuccessActivity feedbackSuccessActivity) {
            this.f17426a = feedbackSuccessActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17426a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackSuccessActivity f17428a;

        b(FeedbackSuccessActivity feedbackSuccessActivity) {
            this.f17428a = feedbackSuccessActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17428a.click(view);
        }
    }

    @UiThread
    public FeedbackSuccessActivity_ViewBinding(FeedbackSuccessActivity feedbackSuccessActivity, View view) {
        super(feedbackSuccessActivity, view);
        this.f17423c = feedbackSuccessActivity;
        View c10 = c.c(view, R.id.history, "method 'click'");
        this.f17424d = c10;
        c10.setOnClickListener(new a(feedbackSuccessActivity));
        View c11 = c.c(view, R.id.done, "method 'click'");
        this.f17425e = c11;
        c11.setOnClickListener(new b(feedbackSuccessActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f17423c != null) {
            this.f17423c = null;
            this.f17424d.setOnClickListener(null);
            this.f17424d = null;
            this.f17425e.setOnClickListener(null);
            this.f17425e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
