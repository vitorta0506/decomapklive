package com.guochao.faceshow.aaspring.base.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class BaseCommentFragment_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BaseCommentFragment f16126c;

    /* renamed from: d  reason: collision with root package name */
    private View f16127d;

    /* renamed from: e  reason: collision with root package name */
    private View f16128e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseCommentFragment f16129a;

        a(BaseCommentFragment baseCommentFragment) {
            this.f16129a = baseCommentFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16129a.cancel(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseCommentFragment f16131a;

        b(BaseCommentFragment baseCommentFragment) {
            this.f16131a = baseCommentFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16131a.cancel(view);
        }
    }

    @UiThread
    public BaseCommentFragment_ViewBinding(BaseCommentFragment baseCommentFragment, View view) {
        super(baseCommentFragment, view);
        this.f16126c = baseCommentFragment;
        baseCommentFragment.mTextViewCount = (TextView) butterknife.internal.c.d(view, R.id.comment_count, "field 'mTextViewCount'", TextView.class);
        View findViewById = view.findViewById(R.id.cancel);
        if (findViewById != null) {
            this.f16127d = findViewById;
            findViewById.setOnClickListener(new a(baseCommentFragment));
        }
        View findViewById2 = view.findViewById(R.id.space);
        if (findViewById2 != null) {
            this.f16128e = findViewById2;
            findViewById2.setOnClickListener(new b(baseCommentFragment));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BaseCommentFragment baseCommentFragment = this.f16126c;
        if (baseCommentFragment != null) {
            this.f16126c = null;
            baseCommentFragment.mTextViewCount = null;
            View view = this.f16127d;
            if (view != null) {
                view.setOnClickListener(null);
                this.f16127d = null;
            }
            View view2 = this.f16128e;
            if (view2 != null) {
                view2.setOnClickListener(null);
                this.f16128e = null;
            }
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
