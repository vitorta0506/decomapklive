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
import com.guochao.faceshow.aaspring.views.RatingBar;
/* loaded from: classes2.dex */
public final class FragmentFeedbackScoreBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    public final RatingBar ratingBar;
    @NonNull
    public final TextView ratingText;
    @NonNull
    public final LinearLayout recyclerViewArea;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView submit;

    private FragmentFeedbackScoreBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull RatingBar ratingBar, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.ratingBar = ratingBar;
        this.ratingText = textView;
        this.recyclerViewArea = linearLayout;
        this.submit = textView2;
    }

    @NonNull
    public static FragmentFeedbackScoreBinding bind(@NonNull View view) {
        int i9 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i9 = R.id.rating_bar;
            RatingBar ratingBar = (RatingBar) ViewBindings.findChildViewById(view, R.id.rating_bar);
            if (ratingBar != null) {
                i9 = R.id.rating_text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.rating_text);
                if (textView != null) {
                    i9 = R.id.recycler_view_area;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.recycler_view_area);
                    if (linearLayout != null) {
                        i9 = R.id.submit;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.submit);
                        if (textView2 != null) {
                            return new FragmentFeedbackScoreBinding((FrameLayout) view, imageView, ratingBar, textView, linearLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentFeedbackScoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFeedbackScoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_feedback_score, viewGroup, false);
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
