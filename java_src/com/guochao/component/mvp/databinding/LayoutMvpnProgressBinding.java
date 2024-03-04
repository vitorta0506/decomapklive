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
public final class LayoutMvpnProgressBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bigWhitePointLay;
    @NonNull
    public final FrameLayout contentLayout;
    @NonNull
    public final TextView mvpTV1;
    @NonNull
    public final TextView mvpTV2;
    @NonNull
    public final TextView mvpTV3;
    @NonNull
    public final LinearLayout mvpTextLay;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final View selectProgress;

    private LayoutMvpnProgressBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull View view) {
        this.rootView = frameLayout;
        this.bigWhitePointLay = linearLayout;
        this.contentLayout = frameLayout2;
        this.mvpTV1 = textView;
        this.mvpTV2 = textView2;
        this.mvpTV3 = textView3;
        this.mvpTextLay = linearLayout2;
        this.selectProgress = view;
    }

    @NonNull
    public static LayoutMvpnProgressBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.big_white_point_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
        if (linearLayout != null) {
            i9 = R$id.content_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
            if (frameLayout != null) {
                i9 = R$id.mvpTV1;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    i9 = R$id.mvpTV2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        i9 = R$id.mvpTV3;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView3 != null) {
                            i9 = R$id.mvp_text_lay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                            if (linearLayout2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.select_progress))) != null) {
                                return new LayoutMvpnProgressBinding((FrameLayout) view, linearLayout, frameLayout, textView, textView2, textView3, linearLayout2, findChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutMvpnProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutMvpnProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_mvpn_progress, viewGroup, false);
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
