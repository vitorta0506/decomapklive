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
public final class LayoutBigGiftBinding implements ViewBinding {
    @NonNull
    public final FrameLayout bigGiftView;
    @NonNull
    public final View clickView;
    @NonNull
    public final RecyclerView rcvGift;
    @NonNull
    private final FrameLayout rootView;

    private LayoutBigGiftBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull View view, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.bigGiftView = frameLayout2;
        this.clickView = view;
        this.rcvGift = recyclerView;
    }

    @NonNull
    public static LayoutBigGiftBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.click_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.click_view);
        if (findChildViewById != null) {
            i9 = R.id.rcv_gift;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_gift);
            if (recyclerView != null) {
                return new LayoutBigGiftBinding(frameLayout, frameLayout, findChildViewById, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBigGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBigGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_big_gift, viewGroup, false);
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
