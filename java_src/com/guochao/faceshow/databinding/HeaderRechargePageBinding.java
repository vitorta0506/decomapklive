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
public final class HeaderRechargePageBinding implements ViewBinding {
    @NonNull
    public final FrameLayout container;
    @NonNull
    public final LinearLayout firstChargeContent;
    @NonNull
    public final RecyclerView recyclerHeader;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvCountDown;
    @NonNull
    public final TextView viewFirstCharge;
    @NonNull
    public final ImageView viewFirstChargeIv;

    private HeaderRechargePageBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.container = frameLayout2;
        this.firstChargeContent = linearLayout;
        this.recyclerHeader = recyclerView;
        this.tvCountDown = textView;
        this.viewFirstCharge = textView2;
        this.viewFirstChargeIv = imageView;
    }

    @NonNull
    public static HeaderRechargePageBinding bind(@NonNull View view) {
        int i9 = R.id.container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
        if (frameLayout != null) {
            i9 = R.id.first_charge_content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_charge_content);
            if (linearLayout != null) {
                i9 = R.id.recycler_header;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_header);
                if (recyclerView != null) {
                    i9 = R.id.tv_count_down;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count_down);
                    if (textView != null) {
                        i9 = R.id.view_first_charge;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.view_first_charge);
                        if (textView2 != null) {
                            i9 = R.id.view_first_charge_iv;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.view_first_charge_iv);
                            if (imageView != null) {
                                return new HeaderRechargePageBinding((FrameLayout) view, frameLayout, linearLayout, recyclerView, textView, textView2, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static HeaderRechargePageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static HeaderRechargePageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.header_recharge_page, viewGroup, false);
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
