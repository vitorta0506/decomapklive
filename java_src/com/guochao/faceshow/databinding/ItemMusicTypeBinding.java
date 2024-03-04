package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemMusicTypeBinding implements ViewBinding {
    @NonNull
    public final TextView countTv;
    @NonNull
    public final ConstraintLayout item;
    @NonNull
    public final ImageView liftIv;
    @NonNull
    private final ConstraintLayout rootView;

    private ItemMusicTypeBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView) {
        this.rootView = constraintLayout;
        this.countTv = textView;
        this.item = constraintLayout2;
        this.liftIv = imageView;
    }

    @NonNull
    public static ItemMusicTypeBinding bind(@NonNull View view) {
        int i9 = R.id.count_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv);
        if (textView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lift_iv);
            if (imageView != null) {
                return new ItemMusicTypeBinding(constraintLayout, textView, constraintLayout, imageView);
            }
            i9 = R.id.lift_iv;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemMusicTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemMusicTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_music_type, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
