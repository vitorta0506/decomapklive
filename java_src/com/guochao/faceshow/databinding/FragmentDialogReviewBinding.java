package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentDialogReviewBinding implements ViewBinding {
    @NonNull
    public final FrameLayout container;
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final TextView feedback;
    @NonNull
    public final TextView go;
    @NonNull
    private final FrameLayout rootView;

    private FragmentDialogReviewBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.container = frameLayout2;
        this.content = frameLayout3;
        this.feedback = textView;
        this.go = textView2;
    }

    @NonNull
    public static FragmentDialogReviewBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.content;
        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.content);
        if (frameLayout2 != null) {
            i9 = R.id.feedback;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.feedback);
            if (textView != null) {
                i9 = R.id.go;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.go);
                if (textView2 != null) {
                    return new FragmentDialogReviewBinding(frameLayout, frameLayout, frameLayout2, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentDialogReviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentDialogReviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_dialog_review, viewGroup, false);
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
