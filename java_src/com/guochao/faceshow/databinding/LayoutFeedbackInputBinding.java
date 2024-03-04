package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutFeedbackInputBinding implements ViewBinding {
    @NonNull
    public final EditText content;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView wordLimit;

    private LayoutFeedbackInputBinding(@NonNull FrameLayout frameLayout, @NonNull EditText editText, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.content = editText;
        this.wordLimit = textView;
    }

    @NonNull
    public static LayoutFeedbackInputBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.content);
        if (editText != null) {
            i9 = R.id.word_limit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.word_limit);
            if (textView != null) {
                return new LayoutFeedbackInputBinding((FrameLayout) view, editText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFeedbackInputBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFeedbackInputBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_feedback_input, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
