package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityFeedbackSuccessBinding implements ViewBinding {
    @NonNull
    public final TextView done;
    @NonNull
    public final TextView history;
    @NonNull
    private final LinearLayout rootView;

    private ActivityFeedbackSuccessBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.done = textView;
        this.history = textView2;
    }

    @NonNull
    public static ActivityFeedbackSuccessBinding bind(@NonNull View view) {
        int i9 = R.id.done;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.done);
        if (textView != null) {
            i9 = R.id.history;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.history);
            if (textView2 != null) {
                return new ActivityFeedbackSuccessBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityFeedbackSuccessBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFeedbackSuccessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_feedback_success, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
