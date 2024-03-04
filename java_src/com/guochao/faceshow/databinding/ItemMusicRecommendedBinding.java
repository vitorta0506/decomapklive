package com.guochao.faceshow.databinding;

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
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemMusicRecommendedBinding implements ViewBinding {
    @NonNull
    public final ImageView ivImage;
    @NonNull
    public final View lineView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvHeadName;

    private ItemMusicRecommendedBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.ivImage = imageView;
        this.lineView = view;
        this.tvHeadName = textView;
    }

    @NonNull
    public static ItemMusicRecommendedBinding bind(@NonNull View view) {
        int i9 = R.id.iv_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
        if (imageView != null) {
            i9 = R.id.lineView;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineView);
            if (findChildViewById != null) {
                i9 = R.id.tv_head_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_head_name);
                if (textView != null) {
                    return new ItemMusicRecommendedBinding((LinearLayout) view, imageView, findChildViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemMusicRecommendedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemMusicRecommendedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_music_recommended, viewGroup, false);
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
