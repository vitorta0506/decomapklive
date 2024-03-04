package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatingBar;
/* loaded from: classes2.dex */
public final class DialogRatingBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final LinearLayout centerCard;
    @NonNull
    public final TextView content;
    @NonNull
    public final LinearLayout contentLay;
    @NonNull
    public final RatingBar ratingBar;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvCancel;
    @NonNull
    public final TextView tvConfirm;

    private DialogRatingBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull RatingBar ratingBar, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.centerCard = linearLayout;
        this.content = textView;
        this.contentLay = linearLayout2;
        this.ratingBar = ratingBar;
        this.tvCancel = textView2;
        this.tvConfirm = textView3;
    }

    @NonNull
    public static DialogRatingBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.center_card;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.center_card);
            if (linearLayout != null) {
                i9 = R.id.content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                if (textView != null) {
                    i9 = R.id.content_lay;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_lay);
                    if (linearLayout2 != null) {
                        i9 = R.id.rating_bar;
                        RatingBar ratingBar = (RatingBar) ViewBindings.findChildViewById(view, R.id.rating_bar);
                        if (ratingBar != null) {
                            i9 = R.id.tv_cancel;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cancel);
                            if (textView2 != null) {
                                i9 = R.id.tv_confirm;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_confirm);
                                if (textView3 != null) {
                                    return new DialogRatingBinding((FrameLayout) view, findChildViewById, linearLayout, textView, linearLayout2, ratingBar, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogRatingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogRatingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_rating, viewGroup, false);
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
