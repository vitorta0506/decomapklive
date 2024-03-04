package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class FragmentVoliceBigInfoCardBinding implements ViewBinding {
    @NonNull
    public final TextView countTV;
    @NonNull
    public final ImageView headerIV;
    @NonNull
    public final ImageView iconIV;
    @NonNull
    public final LinearLayout joinLL;
    @NonNull
    public final TextView joinTV;
    @NonNull
    public final RelativeLayout memberRL;
    @NonNull
    public final LinearLayout moneyLL;
    @NonNull
    public final TextView moneyTV;
    @NonNull
    public final RecyclerView recentRV;
    @NonNull
    public final ImageView reportIV;
    @NonNull
    public final TextView roomIdTV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView titleTV;

    private FragmentVoliceBigInfoCardBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull RecyclerView recyclerView, @NonNull ImageView imageView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.countTV = textView;
        this.headerIV = imageView;
        this.iconIV = imageView2;
        this.joinLL = linearLayout2;
        this.joinTV = textView2;
        this.memberRL = relativeLayout;
        this.moneyLL = linearLayout3;
        this.moneyTV = textView3;
        this.recentRV = recyclerView;
        this.reportIV = imageView3;
        this.roomIdTV = textView4;
        this.titleTV = textView5;
    }

    @NonNull
    public static FragmentVoliceBigInfoCardBinding bind(@NonNull View view) {
        int i9 = R$id.countTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.headerIV;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.iconIV;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView2 != null) {
                    i9 = R$id.joinLL;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                    if (linearLayout != null) {
                        i9 = R$id.joinTV;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView2 != null) {
                            i9 = R$id.memberRL;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i9);
                            if (relativeLayout != null) {
                                i9 = R$id.moneyLL;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                if (linearLayout2 != null) {
                                    i9 = R$id.moneyTV;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView3 != null) {
                                        i9 = R$id.recentRV;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                                        if (recyclerView != null) {
                                            i9 = R$id.reportIV;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                            if (imageView3 != null) {
                                                i9 = R$id.roomIdTV;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                if (textView4 != null) {
                                                    i9 = R$id.titleTV;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                    if (textView5 != null) {
                                                        return new FragmentVoliceBigInfoCardBinding((LinearLayout) view, textView, imageView, imageView2, linearLayout, textView2, relativeLayout, linearLayout2, textView3, recyclerView, imageView3, textView4, textView5);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoliceBigInfoCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoliceBigInfoCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_volice_big_info_card, viewGroup, false);
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
