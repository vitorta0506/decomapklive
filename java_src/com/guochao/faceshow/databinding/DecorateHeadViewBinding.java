package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class DecorateHeadViewBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView masterHead;
    @NonNull
    public final NormalCircleImageView masterHeadDecorator;
    @NonNull
    private final View rootView;

    private DecorateHeadViewBinding(@NonNull View view, @NonNull NormalCircleImageView normalCircleImageView, @NonNull NormalCircleImageView normalCircleImageView2) {
        this.rootView = view;
        this.masterHead = normalCircleImageView;
        this.masterHeadDecorator = normalCircleImageView2;
    }

    @NonNull
    public static DecorateHeadViewBinding bind(@NonNull View view) {
        int i9 = R.id.master_head;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.master_head);
        if (normalCircleImageView != null) {
            i9 = R.id.master_head_decorator;
            NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.master_head_decorator);
            if (normalCircleImageView2 != null) {
                return new DecorateHeadViewBinding(view, normalCircleImageView, normalCircleImageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DecorateHeadViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.decorate_head_view, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
