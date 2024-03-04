package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutLoginAnimationviewBinding implements ViewBinding {
    @NonNull
    public final LoginAnimationView animationView;
    @NonNull
    private final View rootView;

    private LayoutLoginAnimationviewBinding(@NonNull View view, @NonNull LoginAnimationView loginAnimationView) {
        this.rootView = view;
        this.animationView = loginAnimationView;
    }

    @NonNull
    public static LayoutLoginAnimationviewBinding bind(@NonNull View view) {
        LoginAnimationView loginAnimationView = (LoginAnimationView) ViewBindings.findChildViewById(view, R.id.animationView);
        if (loginAnimationView != null) {
            return new LayoutLoginAnimationviewBinding(view, loginAnimationView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.animationView)));
    }

    @NonNull
    public static LayoutLoginAnimationviewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_login_animationview, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
