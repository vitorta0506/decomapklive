package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
/* loaded from: classes2.dex */
public final class DialogLiveActivityBinding implements ViewBinding {
    @NonNull
    public final ImageView btnClose;
    @NonNull
    public final FrameLayout cardView;
    @NonNull
    public final PageIndicatorView pageIndicatorView;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private DialogLiveActivityBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull PageIndicatorView pageIndicatorView, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.btnClose = imageView;
        this.cardView = frameLayout;
        this.pageIndicatorView = pageIndicatorView;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static DialogLiveActivityBinding bind(@NonNull View view) {
        int i9 = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i9 = R.id.card_view;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.card_view);
            if (frameLayout != null) {
                i9 = R.id.pageIndicatorView;
                PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, R.id.pageIndicatorView);
                if (pageIndicatorView != null) {
                    i9 = R.id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                    if (recyclerView != null) {
                        return new DialogLiveActivityBinding((LinearLayout) view, imageView, frameLayout, pageIndicatorView, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogLiveActivityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLiveActivityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_live_activity, viewGroup, false);
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
