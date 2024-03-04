package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutFansDevoteBinding implements ViewBinding {
    @NonNull
    public final LinearLayout fansDevoteLay;
    @NonNull
    public final NormalCircleImageView firstItem;
    @NonNull
    public final FrameLayout firstLay;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final NormalCircleImageView secondItem;
    @NonNull
    public final FrameLayout secondLay;
    @NonNull
    public final NormalCircleImageView thirdItem;
    @NonNull
    public final FrameLayout thirdLay;

    private LayoutFansDevoteBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NormalCircleImageView normalCircleImageView, @NonNull FrameLayout frameLayout, @NonNull NormalCircleImageView normalCircleImageView2, @NonNull FrameLayout frameLayout2, @NonNull NormalCircleImageView normalCircleImageView3, @NonNull FrameLayout frameLayout3) {
        this.rootView = linearLayout;
        this.fansDevoteLay = linearLayout2;
        this.firstItem = normalCircleImageView;
        this.firstLay = frameLayout;
        this.secondItem = normalCircleImageView2;
        this.secondLay = frameLayout2;
        this.thirdItem = normalCircleImageView3;
        this.thirdLay = frameLayout3;
    }

    @NonNull
    public static LayoutFansDevoteBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.first_item;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.first_item);
        if (normalCircleImageView != null) {
            i9 = R.id.first_lay;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.first_lay);
            if (frameLayout != null) {
                i9 = R.id.second_item;
                NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.second_item);
                if (normalCircleImageView2 != null) {
                    i9 = R.id.second_lay;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.second_lay);
                    if (frameLayout2 != null) {
                        i9 = R.id.third_item;
                        NormalCircleImageView normalCircleImageView3 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.third_item);
                        if (normalCircleImageView3 != null) {
                            i9 = R.id.third_lay;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.third_lay);
                            if (frameLayout3 != null) {
                                return new LayoutFansDevoteBinding(linearLayout, linearLayout, normalCircleImageView, frameLayout, normalCircleImageView2, frameLayout2, normalCircleImageView3, frameLayout3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFansDevoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFansDevoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_fans_devote, viewGroup, false);
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
