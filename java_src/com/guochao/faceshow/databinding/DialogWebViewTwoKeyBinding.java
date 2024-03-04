package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogWebViewTwoKeyBinding implements ViewBinding {
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final View webDialogBottomBg;
    @NonNull
    public final LinearLayout webDialogBtnLy;
    @NonNull
    public final TextView webDialogCancelBtn;
    @NonNull
    public final TextView webDialogConfirmBtn;
    @NonNull
    public final RelativeLayout webDialogContent;
    @NonNull
    public final RelativeLayout webDialogRoot;
    @NonNull
    public final View webDialogTopBg;
    @NonNull
    public final FrameLayout webDialogWebViewWrapper;

    private DialogWebViewTwoKeyBinding(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull View view2, @NonNull FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.webDialogBottomBg = view;
        this.webDialogBtnLy = linearLayout;
        this.webDialogCancelBtn = textView;
        this.webDialogConfirmBtn = textView2;
        this.webDialogContent = relativeLayout2;
        this.webDialogRoot = relativeLayout3;
        this.webDialogTopBg = view2;
        this.webDialogWebViewWrapper = frameLayout;
    }

    @NonNull
    public static DialogWebViewTwoKeyBinding bind(@NonNull View view) {
        int i9 = R.id.web_dialog_bottom_bg;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.web_dialog_bottom_bg);
        if (findChildViewById != null) {
            i9 = R.id.web_dialog_btn_ly;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.web_dialog_btn_ly);
            if (linearLayout != null) {
                i9 = R.id.web_dialog_cancel_btn;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.web_dialog_cancel_btn);
                if (textView != null) {
                    i9 = R.id.web_dialog_confirm_btn;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.web_dialog_confirm_btn);
                    if (textView2 != null) {
                        i9 = R.id.web_dialog_content;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.web_dialog_content);
                        if (relativeLayout != null) {
                            RelativeLayout relativeLayout2 = (RelativeLayout) view;
                            i9 = R.id.web_dialog_top_bg;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.web_dialog_top_bg);
                            if (findChildViewById2 != null) {
                                i9 = R.id.web_dialog_web_view_wrapper;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.web_dialog_web_view_wrapper);
                                if (frameLayout != null) {
                                    return new DialogWebViewTwoKeyBinding(relativeLayout2, findChildViewById, linearLayout, textView, textView2, relativeLayout, relativeLayout2, findChildViewById2, frameLayout);
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
    public static DialogWebViewTwoKeyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogWebViewTwoKeyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_web_view_two_key, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
