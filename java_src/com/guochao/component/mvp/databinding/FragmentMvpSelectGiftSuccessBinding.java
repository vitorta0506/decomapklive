package com.guochao.component.mvp.databinding;

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
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class FragmentMvpSelectGiftSuccessBinding implements ViewBinding {
    @NonNull
    public final ImageView closeIV;
    @NonNull
    public final FrameLayout fragmentDataContainer;
    @NonNull
    public final TextView okTV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tipsTV;
    @NonNull
    public final TextView titleTV;
    @NonNull
    public final TextView useTV;

    private FragmentMvpSelectGiftSuccessBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.closeIV = imageView;
        this.fragmentDataContainer = frameLayout;
        this.okTV = textView;
        this.tipsTV = textView2;
        this.titleTV = textView3;
        this.useTV = textView4;
    }

    @NonNull
    public static FragmentMvpSelectGiftSuccessBinding bind(@NonNull View view) {
        int i9 = R$id.closeIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.fragment_data_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
            if (frameLayout != null) {
                i9 = R$id.okTV;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    i9 = R$id.tipsTV;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        i9 = R$id.titleTV;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView3 != null) {
                            i9 = R$id.useTV;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView4 != null) {
                                return new FragmentMvpSelectGiftSuccessBinding((LinearLayout) view, imageView, frameLayout, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentMvpSelectGiftSuccessBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentMvpSelectGiftSuccessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_mvp_select_gift_success, viewGroup, false);
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
