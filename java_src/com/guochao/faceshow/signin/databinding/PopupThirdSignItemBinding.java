package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class PopupThirdSignItemBinding implements ViewBinding {
    @NonNull
    public final LinearLayout contentData;
    @NonNull
    private final FrameLayout rootView;

    private PopupThirdSignItemBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.contentData = linearLayout;
    }

    @NonNull
    public static PopupThirdSignItemBinding bind(@NonNull View view) {
        int i9 = R$id.content_data;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
        if (linearLayout != null) {
            return new PopupThirdSignItemBinding((FrameLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopupThirdSignItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupThirdSignItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.popup_third_sign_item, viewGroup, false);
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
