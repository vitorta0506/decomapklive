package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentFloatMarqueeBinding implements ViewBinding {
    @NonNull
    public final FragmentFloatMarqueeScrollBinding itemView;
    @NonNull
    private final FrameLayout rootView;

    private FragmentFloatMarqueeBinding(@NonNull FrameLayout frameLayout, @NonNull FragmentFloatMarqueeScrollBinding fragmentFloatMarqueeScrollBinding) {
        this.rootView = frameLayout;
        this.itemView = fragmentFloatMarqueeScrollBinding;
    }

    @NonNull
    public static FragmentFloatMarqueeBinding bind(@NonNull View view) {
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.item_view);
        if (findChildViewById != null) {
            return new FragmentFloatMarqueeBinding((FrameLayout) view, FragmentFloatMarqueeScrollBinding.bind(findChildViewById));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.item_view)));
    }

    @NonNull
    public static FragmentFloatMarqueeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFloatMarqueeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_float_marquee, viewGroup, false);
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
