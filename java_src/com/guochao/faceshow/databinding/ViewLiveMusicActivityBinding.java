package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ViewLiveMusicActivityBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bgFloatView;
    @NonNull
    public final FrameLayout expandLay;
    @NonNull
    public final RecyclerView indicatorLay;
    @NonNull
    public final ImageView ivExpand;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final CardView topImageLay;

    private ViewLiveMusicActivityBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull RecyclerView recyclerView, @NonNull ImageView imageView, @NonNull CardView cardView) {
        this.rootView = frameLayout;
        this.bgFloatView = linearLayout;
        this.expandLay = frameLayout2;
        this.indicatorLay = recyclerView;
        this.ivExpand = imageView;
        this.topImageLay = cardView;
    }

    @NonNull
    public static ViewLiveMusicActivityBinding bind(@NonNull View view) {
        int i9 = R.id.bg_float_view;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bg_float_view);
        if (linearLayout != null) {
            i9 = R.id.expand_lay;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.expand_lay);
            if (frameLayout != null) {
                i9 = R.id.indicator_lay;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.indicator_lay);
                if (recyclerView != null) {
                    i9 = R.id.iv_expand;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_expand);
                    if (imageView != null) {
                        i9 = R.id.top_image_lay;
                        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.top_image_lay);
                        if (cardView != null) {
                            return new ViewLiveMusicActivityBinding((FrameLayout) view, linearLayout, frameLayout, recyclerView, imageView, cardView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ViewLiveMusicActivityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ViewLiveMusicActivityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.view_live_music_activity, viewGroup, false);
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
