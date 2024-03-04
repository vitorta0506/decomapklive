package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.view.RoundImageView;
/* loaded from: classes4.dex */
public final class ProcessImageItemBinding implements ViewBinding {
    @NonNull
    public final RoundImageView cover;
    @NonNull
    private final ConstraintLayout rootView;

    private ProcessImageItemBinding(@NonNull ConstraintLayout constraintLayout, @NonNull RoundImageView roundImageView) {
        this.rootView = constraintLayout;
        this.cover = roundImageView;
    }

    @NonNull
    public static ProcessImageItemBinding bind(@NonNull View view) {
        int i9 = R$id.cover;
        RoundImageView roundImageView = (RoundImageView) ViewBindings.findChildViewById(view, i9);
        if (roundImageView != null) {
            return new ProcessImageItemBinding((ConstraintLayout) view, roundImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ProcessImageItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ProcessImageItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.process_image_item, viewGroup, false);
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
