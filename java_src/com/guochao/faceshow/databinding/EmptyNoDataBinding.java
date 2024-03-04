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
public final class EmptyNoDataBinding implements ViewBinding {
    @NonNull
    public final TextView btnAction;
    @NonNull
    public final FrameLayout emptyFL;
    @NonNull
    public final ImageView ivEmpty;
    @NonNull
    public final ImageView ivShoppingCart;
    @NonNull
    public final LinearLayout myEmptyPage;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvAlert;
    @NonNull
    public final View viewTop;

    private EmptyNoDataBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull View view) {
        this.rootView = linearLayout;
        this.btnAction = textView;
        this.emptyFL = frameLayout;
        this.ivEmpty = imageView;
        this.ivShoppingCart = imageView2;
        this.myEmptyPage = linearLayout2;
        this.tvAlert = textView2;
        this.viewTop = view;
    }

    @NonNull
    public static EmptyNoDataBinding bind(@NonNull View view) {
        int i9 = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i9 = R.id.emptyFL;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.emptyFL);
            if (frameLayout != null) {
                i9 = R.id.iv_empty;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_empty);
                if (imageView != null) {
                    i9 = R.id.iv_shopping_cart;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shopping_cart);
                    if (imageView2 != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i9 = R.id.tv_alert;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_alert);
                        if (textView2 != null) {
                            i9 = R.id.view_top;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_top);
                            if (findChildViewById != null) {
                                return new EmptyNoDataBinding(linearLayout, textView, frameLayout, imageView, imageView2, linearLayout, textView2, findChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static EmptyNoDataBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static EmptyNoDataBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.empty_no_data, viewGroup, false);
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
