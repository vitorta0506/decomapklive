package com.guochao.faceshow.aaspring.modulars.customerservice.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FeedbackReplyFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FeedbackReplyFragment f17460b;

    /* renamed from: c  reason: collision with root package name */
    private View f17461c;

    /* renamed from: d  reason: collision with root package name */
    private View f17462d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackReplyFragment f17463a;

        a(FeedbackReplyFragment feedbackReplyFragment) {
            this.f17463a = feedbackReplyFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17463a.submit(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackReplyFragment f17465a;

        b(FeedbackReplyFragment feedbackReplyFragment) {
            this.f17465a = feedbackReplyFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17465a.close(view);
        }
    }

    @UiThread
    public FeedbackReplyFragment_ViewBinding(FeedbackReplyFragment feedbackReplyFragment, View view) {
        this.f17460b = feedbackReplyFragment;
        View c10 = c.c(view, R.id.submit, "method 'submit'");
        this.f17461c = c10;
        c10.setOnClickListener(new a(feedbackReplyFragment));
        View c11 = c.c(view, R.id.close, "method 'close'");
        this.f17462d = c11;
        c11.setOnClickListener(new b(feedbackReplyFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f17460b != null) {
            this.f17460b = null;
            this.f17461c.setOnClickListener(null);
            this.f17461c = null;
            this.f17462d.setOnClickListener(null);
            this.f17462d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
