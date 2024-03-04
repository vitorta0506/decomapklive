package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutFeedbackAddLogsBinding implements ViewBinding {
    @NonNull
    public final CheckBox logCheck;
    @NonNull
    private final LinearLayout rootView;

    private LayoutFeedbackAddLogsBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox) {
        this.rootView = linearLayout;
        this.logCheck = checkBox;
    }

    @NonNull
    public static LayoutFeedbackAddLogsBinding bind(@NonNull View view) {
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.log_check);
        if (checkBox != null) {
            return new LayoutFeedbackAddLogsBinding((LinearLayout) view, checkBox);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.log_check)));
    }

    @NonNull
    public static LayoutFeedbackAddLogsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFeedbackAddLogsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_feedback_add_logs, viewGroup, false);
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
