package com.guochao.faceshow.aaspring.modulars.customerservice.fragment;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatingBar;
/* loaded from: classes3.dex */
public class FeedbackScoreFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FeedbackScoreFragment f17472b;

    /* renamed from: c  reason: collision with root package name */
    private View f17473c;

    /* renamed from: d  reason: collision with root package name */
    private View f17474d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackScoreFragment f17475a;

        a(FeedbackScoreFragment feedbackScoreFragment) {
            this.f17475a = feedbackScoreFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17475a.submit(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackScoreFragment f17477a;

        b(FeedbackScoreFragment feedbackScoreFragment) {
            this.f17477a = feedbackScoreFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17477a.close(view);
        }
    }

    @UiThread
    public FeedbackScoreFragment_ViewBinding(FeedbackScoreFragment feedbackScoreFragment, View view) {
        this.f17472b = feedbackScoreFragment;
        feedbackScoreFragment.mRatingBar = (RatingBar) c.d(view, R.id.rating_bar, "field 'mRatingBar'", RatingBar.class);
        feedbackScoreFragment.mTextView = (TextView) c.d(view, R.id.rating_text, "field 'mTextView'", TextView.class);
        feedbackScoreFragment.mTextViewCount = (TextView) c.d(view, R.id.word_limit, "field 'mTextViewCount'", TextView.class);
        feedbackScoreFragment.mEditText = (EditText) c.d(view, R.id.content, "field 'mEditText'", EditText.class);
        View c10 = c.c(view, R.id.submit, "method 'submit'");
        this.f17473c = c10;
        c10.setOnClickListener(new a(feedbackScoreFragment));
        View c11 = c.c(view, R.id.close, "method 'close'");
        this.f17474d = c11;
        c11.setOnClickListener(new b(feedbackScoreFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FeedbackScoreFragment feedbackScoreFragment = this.f17472b;
        if (feedbackScoreFragment != null) {
            this.f17472b = null;
            feedbackScoreFragment.mRatingBar = null;
            feedbackScoreFragment.mTextView = null;
            feedbackScoreFragment.mTextViewCount = null;
            feedbackScoreFragment.mEditText = null;
            this.f17473c.setOnClickListener(null);
            this.f17473c = null;
            this.f17474d.setOnClickListener(null);
            this.f17474d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
