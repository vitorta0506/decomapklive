package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogWebViewCommomBinding implements ViewBinding {
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final View webDialogBottomBg;
    @NonNull
    public final RelativeLayout webDialogBottomLy;
    @NonNull
    public final ImageView webDialogCancelBtn;
    @NonNull
    public final RelativeLayout webDialogContent;
    @NonNull
    public final RelativeLayout webDialogRoot;
    @NonNull
    public final ImageView webDialogShareIcon;
    @NonNull
    public final View webDialogTopBg;
    @NonNull
    public final FrameLayout webDialogWebViewWrapper;

    private DialogWebViewCommomBinding(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull ImageView imageView2, @NonNull View view2, @NonNull FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.webDialogBottomBg = view;
        this.webDialogBottomLy = relativeLayout2;
        this.webDialogCancelBtn = imageView;
        this.webDialogContent = relativeLayout3;
        this.webDialogRoot = relativeLayout4;
        this.webDialogShareIcon = imageView2;
        this.webDialogTopBg = view2;
        this.webDialogWebViewWrapper = frameLayout;
    }

    @NonNull
    public static DialogWebViewCommomBinding bind(@NonNull View view) {
        int i9 = R.id.web_dialog_bottom_bg;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.web_dialog_bottom_bg);
        if (findChildViewById != null) {
            i9 = R.id.web_dialog_bottom_ly;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.web_dialog_bottom_ly);
            if (relativeLayout != null) {
                i9 = R.id.web_dialog_cancel_btn;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.web_dialog_cancel_btn);
                if (imageView != null) {
                    i9 = R.id.web_dialog_content;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.web_dialog_content);
                    if (relativeLayout2 != null) {
                        RelativeLayout relativeLayout3 = (RelativeLayout) view;
                        i9 = R.id.web_dialog_share_icon;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.web_dialog_share_icon);
                        if (imageView2 != null) {
                            i9 = R.id.web_dialog_top_bg;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.web_dialog_top_bg);
                            if (findChildViewById2 != null) {
                                i9 = R.id.web_dialog_web_view_wrapper;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.web_dialog_web_view_wrapper);
                                if (frameLayout != null) {
                                    return new DialogWebViewCommomBinding(relativeLayout3, findChildViewById, relativeLayout, imageView, relativeLayout2, relativeLayout3, imageView2, findChildViewById2, frameLayout);
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
    public static DialogWebViewCommomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogWebViewCommomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_web_view_commom, viewGroup, false);
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
