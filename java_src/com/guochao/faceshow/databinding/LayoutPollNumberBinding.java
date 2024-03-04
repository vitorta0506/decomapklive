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
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
/* loaded from: classes2.dex */
public final class LayoutPollNumberBinding implements ViewBinding {
    @NonNull
    public final DisTouchRecyclerView firstItemView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final DisTouchRecyclerView secondItemView;
    @NonNull
    public final DisTouchRecyclerView thirdItemView;

    private LayoutPollNumberBinding(@NonNull FrameLayout frameLayout, @NonNull DisTouchRecyclerView disTouchRecyclerView, @NonNull DisTouchRecyclerView disTouchRecyclerView2, @NonNull DisTouchRecyclerView disTouchRecyclerView3) {
        this.rootView = frameLayout;
        this.firstItemView = disTouchRecyclerView;
        this.secondItemView = disTouchRecyclerView2;
        this.thirdItemView = disTouchRecyclerView3;
    }

    @NonNull
    public static LayoutPollNumberBinding bind(@NonNull View view) {
        int i9 = R.id.first_item_view;
        DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.first_item_view);
        if (disTouchRecyclerView != null) {
            i9 = R.id.second_item_view;
            DisTouchRecyclerView disTouchRecyclerView2 = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.second_item_view);
            if (disTouchRecyclerView2 != null) {
                i9 = R.id.third_item_view;
                DisTouchRecyclerView disTouchRecyclerView3 = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.third_item_view);
                if (disTouchRecyclerView3 != null) {
                    return new LayoutPollNumberBinding((FrameLayout) view, disTouchRecyclerView, disTouchRecyclerView2, disTouchRecyclerView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutPollNumberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPollNumberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_poll_number, viewGroup, false);
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
