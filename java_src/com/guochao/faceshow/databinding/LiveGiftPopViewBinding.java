package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LiveGiftPopViewBinding implements ViewBinding {
    @NonNull
    public final ImageView emptyIcon;
    @NonNull
    public final TextView emptyText;
    @NonNull
    public final RecyclerView giftLockRecycleView;
    @NonNull
    public final LinearLayout giftPopEmptyLy;
    @NonNull
    private final FrameLayout rootView;

    private LiveGiftPopViewBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.emptyIcon = imageView;
        this.emptyText = textView;
        this.giftLockRecycleView = recyclerView;
        this.giftPopEmptyLy = linearLayout;
    }

    @NonNull
    public static LiveGiftPopViewBinding bind(@NonNull View view) {
        int i9 = R.id.empty_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.empty_icon);
        if (imageView != null) {
            i9 = R.id.empty_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.empty_text);
            if (textView != null) {
                i9 = R.id.gift_lock_recycle_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.gift_lock_recycle_view);
                if (recyclerView != null) {
                    i9 = R.id.gift_pop_empty_ly;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gift_pop_empty_ly);
                    if (linearLayout != null) {
                        return new LiveGiftPopViewBinding((FrameLayout) view, imageView, textView, recyclerView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveGiftPopViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveGiftPopViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_gift_pop_view, viewGroup, false);
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
