package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentFirstChargeResultBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    public final FrameLayout container;
    @NonNull
    public final FrameLayout goToRecharge;
    @NonNull
    public final TextView info;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvInfo;

    private FragmentFirstChargeResultBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.container = frameLayout2;
        this.goToRecharge = frameLayout3;
        this.info = textView;
        this.recyclerView = recyclerView;
        this.tvInfo = textView2;
    }

    @NonNull
    public static FragmentFirstChargeResultBinding bind(@NonNull View view) {
        int i9 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i9 = R.id.container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
            if (frameLayout != null) {
                i9 = R.id.go_to_recharge;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.go_to_recharge);
                if (frameLayout2 != null) {
                    i9 = R.id.info;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
                    if (textView != null) {
                        i9 = R.id.recycler_view;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                        if (recyclerView != null) {
                            i9 = R.id.tv_info;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_info);
                            if (textView2 != null) {
                                return new FragmentFirstChargeResultBinding((FrameLayout) view, imageView, frameLayout, frameLayout2, textView, recyclerView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentFirstChargeResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFirstChargeResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_first_charge_result, viewGroup, false);
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
