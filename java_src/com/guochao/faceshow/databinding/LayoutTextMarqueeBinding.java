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
public final class LayoutTextMarqueeBinding implements ViewBinding {
    @NonNull
    public final FrameLayout marqueeView;
    @NonNull
    public final RecyclerView rcvTextList;
    @NonNull
    private final FrameLayout rootView;

    private LayoutTextMarqueeBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.marqueeView = frameLayout2;
        this.rcvTextList = recyclerView;
    }

    @NonNull
    public static LayoutTextMarqueeBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_text_list);
        if (recyclerView != null) {
            return new LayoutTextMarqueeBinding(frameLayout, frameLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rcv_text_list)));
    }

    @NonNull
    public static LayoutTextMarqueeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutTextMarqueeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_text_marquee, viewGroup, false);
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
