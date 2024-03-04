package com.guochao.faceshow.component.f2fmatch.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$layout;
/* loaded from: classes2.dex */
public final class FragmentF2fGuideBinding implements ViewBinding {
    @NonNull
    public final FrameLayout layout;
    @NonNull

    /* renamed from: ok  reason: collision with root package name */
    public final MaterialButton f25103ok;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tips1;

    private FragmentF2fGuideBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull MaterialButton materialButton, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.layout = frameLayout2;
        this.f25103ok = materialButton;
        this.tips1 = textView;
    }

    @NonNull
    public static FragmentF2fGuideBinding bind(@NonNull View view) {
        int i9 = R$id.layout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
        if (frameLayout != null) {
            i9 = R$id.f25097ok;
            MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i9);
            if (materialButton != null) {
                i9 = R$id.tips1;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    return new FragmentF2fGuideBinding((FrameLayout) view, frameLayout, materialButton, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentF2fGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_f2f_guide, viewGroup, false);
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
