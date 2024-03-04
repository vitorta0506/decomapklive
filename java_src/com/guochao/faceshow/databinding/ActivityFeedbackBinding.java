package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityFeedbackBinding implements ViewBinding {
    @NonNull
    public final EditText contactInfoEt;
    @NonNull
    public final TextView questionType;
    @NonNull
    public final LinearLayout recyclerViewArea;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView submit;

    private ActivityFeedbackBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.contactInfoEt = editText;
        this.questionType = textView;
        this.recyclerViewArea = linearLayout2;
        this.submit = textView2;
    }

    @NonNull
    public static ActivityFeedbackBinding bind(@NonNull View view) {
        int i9 = R.id.contact_info_et;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.contact_info_et);
        if (editText != null) {
            i9 = R.id.question_type;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.question_type);
            if (textView != null) {
                i9 = R.id.recycler_view_area;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.recycler_view_area);
                if (linearLayout != null) {
                    i9 = R.id.submit;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.submit);
                    if (textView2 != null) {
                        return new ActivityFeedbackBinding((LinearLayout) view, editText, textView, linearLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityFeedbackBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFeedbackBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_feedback, viewGroup, false);
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
