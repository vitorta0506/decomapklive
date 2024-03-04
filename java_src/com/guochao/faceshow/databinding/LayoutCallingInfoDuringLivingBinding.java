package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutCallingInfoDuringLivingBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final LinearLayout cancelBtn;
    @NonNull
    private final LinearLayout rootView;

    private LayoutCallingInfoDuringLivingBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.avatar = normalCircleImageView;
        this.cancelBtn = linearLayout2;
    }

    @NonNull
    public static LayoutCallingInfoDuringLivingBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.cancel_btn;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.cancel_btn);
            if (linearLayout != null) {
                return new LayoutCallingInfoDuringLivingBinding((LinearLayout) view, normalCircleImageView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutCallingInfoDuringLivingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutCallingInfoDuringLivingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_calling_info_during_living, viewGroup, false);
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
