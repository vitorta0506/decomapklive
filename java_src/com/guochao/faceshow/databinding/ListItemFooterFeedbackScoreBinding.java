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
import com.guochao.faceshow.aaspring.views.RatingBar;
/* loaded from: classes2.dex */
public final class ListItemFooterFeedbackScoreBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final RatingBar ratingBar;
    @NonNull
    private final LinearLayout rootView;

    private ListItemFooterFeedbackScoreBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull RatingBar ratingBar) {
        this.rootView = linearLayout;
        this.content = textView;
        this.ratingBar = ratingBar;
    }

    @NonNull
    public static ListItemFooterFeedbackScoreBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.rating_bar;
            RatingBar ratingBar = (RatingBar) ViewBindings.findChildViewById(view, R.id.rating_bar);
            if (ratingBar != null) {
                return new ListItemFooterFeedbackScoreBinding((LinearLayout) view, textView, ratingBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemFooterFeedbackScoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemFooterFeedbackScoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_footer_feedback_score, viewGroup, false);
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
