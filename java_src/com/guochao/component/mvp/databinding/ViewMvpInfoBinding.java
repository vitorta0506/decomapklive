package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class ViewMvpInfoBinding implements ViewBinding {
    @NonNull
    public final FrameLayout mvpProgressLay;
    @NonNull
    public final TextView nextMVPTV;
    @NonNull
    public final TextView nextMVPTipsTV;
    @NonNull
    public final TextView rechargeMoneyTV;
    @NonNull
    public final TextView rechargeTV;
    @NonNull
    private final LinearLayout rootView;

    private ViewMvpInfoBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.mvpProgressLay = frameLayout;
        this.nextMVPTV = textView;
        this.nextMVPTipsTV = textView2;
        this.rechargeMoneyTV = textView3;
        this.rechargeTV = textView4;
    }

    @NonNull
    public static ViewMvpInfoBinding bind(@NonNull View view) {
        int i9 = R$id.mvp_progress_lay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
        if (frameLayout != null) {
            i9 = R$id.nextMVPTV;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.nextMVPTipsTV;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView2 != null) {
                    i9 = R$id.rechargeMoneyTV;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView3 != null) {
                        i9 = R$id.rechargeTV;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView4 != null) {
                            return new ViewMvpInfoBinding((LinearLayout) view, frameLayout, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ViewMvpInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ViewMvpInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.view_mvp_info, viewGroup, false);
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
