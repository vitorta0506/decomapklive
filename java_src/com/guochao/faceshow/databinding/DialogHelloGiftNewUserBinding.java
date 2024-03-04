package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogHelloGiftNewUserBinding implements ViewBinding {
    @NonNull
    public final FragmentContainerView contentLayout;
    @NonNull
    private final FrameLayout rootView;

    private DialogHelloGiftNewUserBinding(@NonNull FrameLayout frameLayout, @NonNull FragmentContainerView fragmentContainerView) {
        this.rootView = frameLayout;
        this.contentLayout = fragmentContainerView;
    }

    @NonNull
    public static DialogHelloGiftNewUserBinding bind(@NonNull View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.content_layout);
        if (fragmentContainerView != null) {
            return new DialogHelloGiftNewUserBinding((FrameLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.content_layout)));
    }

    @NonNull
    public static DialogHelloGiftNewUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogHelloGiftNewUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_hello_gift_new_user, viewGroup, false);
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
