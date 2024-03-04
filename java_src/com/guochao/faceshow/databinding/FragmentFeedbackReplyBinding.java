package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentFeedbackReplyBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    public final LinearLayout recyclerViewArea;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView submit;

    private FragmentFeedbackReplyBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.recyclerViewArea = linearLayout;
        this.submit = textView;
    }

    @NonNull
    public static FragmentFeedbackReplyBinding bind(@NonNull View view) {
        int i9 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i9 = R.id.recycler_view_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.recycler_view_area);
            if (linearLayout != null) {
                i9 = R.id.submit;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.submit);
                if (textView != null) {
                    return new FragmentFeedbackReplyBinding((FrameLayout) view, imageView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentFeedbackReplyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFeedbackReplyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_feedback_reply, viewGroup, false);
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
