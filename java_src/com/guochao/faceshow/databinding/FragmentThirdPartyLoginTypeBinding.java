package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentThirdPartyLoginTypeBinding implements ViewBinding {
    @NonNull
    public final FrameLayout recyclerContentArea;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;

    private FragmentThirdPartyLoginTypeBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.recyclerContentArea = frameLayout2;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static FragmentThirdPartyLoginTypeBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (recyclerView != null) {
            return new FragmentThirdPartyLoginTypeBinding(frameLayout, frameLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recycler_view)));
    }

    @NonNull
    public static FragmentThirdPartyLoginTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentThirdPartyLoginTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_third_party_login_type, viewGroup, false);
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
