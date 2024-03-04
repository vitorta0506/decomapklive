package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
/* loaded from: classes2.dex */
public final class LayoutDynamicLiveBinding implements ViewBinding {
    @NonNull
    public final RatioHeightImageView cover;
    @NonNull
    public final CardView mainContent;
    @NonNull
    private final CardView rootView;
    @NonNull
    public final ImageView status;

    private LayoutDynamicLiveBinding(@NonNull CardView cardView, @NonNull RatioHeightImageView ratioHeightImageView, @NonNull CardView cardView2, @NonNull ImageView imageView) {
        this.rootView = cardView;
        this.cover = ratioHeightImageView;
        this.mainContent = cardView2;
        this.status = imageView;
    }

    @NonNull
    public static LayoutDynamicLiveBinding bind(@NonNull View view) {
        int i9 = R.id.cover;
        RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.cover);
        if (ratioHeightImageView != null) {
            CardView cardView = (CardView) view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.status);
            if (imageView != null) {
                return new LayoutDynamicLiveBinding(cardView, ratioHeightImageView, cardView, imageView);
            }
            i9 = R.id.status;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutDynamicLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutDynamicLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_dynamic_live, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
