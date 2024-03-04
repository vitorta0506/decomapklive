package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
import com.guochao.faceshow.aaspring.views.StatusBarPlaceHolderView;
/* loaded from: classes3.dex */
public final class ViewTitleBinding implements ViewBinding {
    @NonNull
    public final LinearLayout allLL;
    @NonNull
    public final ImageView backIV;
    @NonNull
    public final ImageView moreIV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final StatusBarPlaceHolderView statusBarHolder;
    @NonNull
    public final TextView titleTV;

    private ViewTitleBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull StatusBarPlaceHolderView statusBarPlaceHolderView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.allLL = linearLayout2;
        this.backIV = imageView;
        this.moreIV = imageView2;
        this.statusBarHolder = statusBarPlaceHolderView;
        this.titleTV = textView;
    }

    @NonNull
    public static ViewTitleBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R$id.backIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.moreIV;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView2 != null) {
                i9 = R$id.status_bar_holder;
                StatusBarPlaceHolderView statusBarPlaceHolderView = (StatusBarPlaceHolderView) ViewBindings.findChildViewById(view, i9);
                if (statusBarPlaceHolderView != null) {
                    i9 = R$id.titleTV;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView != null) {
                        return new ViewTitleBinding(linearLayout, linearLayout, imageView, imageView2, statusBarPlaceHolderView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ViewTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ViewTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.view_title, viewGroup, false);
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
