package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogCommomBinding implements ViewBinding {
    @NonNull
    public final TextView commonDialogCancel;
    @NonNull
    public final TextView commonDialogContent;
    @NonNull
    public final View commonDialogHorizonLine;
    @NonNull
    public final RelativeLayout commonDialogRoot;
    @NonNull
    public final TextView commonDialogSubmit;
    @NonNull
    public final TextView commonDialogTitle;
    @NonNull
    public final View commonDialogVerticalLine;
    @NonNull
    private final CardView rootView;

    private DialogCommomBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull View view2) {
        this.rootView = cardView;
        this.commonDialogCancel = textView;
        this.commonDialogContent = textView2;
        this.commonDialogHorizonLine = view;
        this.commonDialogRoot = relativeLayout;
        this.commonDialogSubmit = textView3;
        this.commonDialogTitle = textView4;
        this.commonDialogVerticalLine = view2;
    }

    @NonNull
    public static DialogCommomBinding bind(@NonNull View view) {
        int i9 = R.id.common_dialog_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_cancel);
        if (textView != null) {
            i9 = R.id.common_dialog_content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_content);
            if (textView2 != null) {
                i9 = R.id.common_dialog_horizon_line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.common_dialog_horizon_line);
                if (findChildViewById != null) {
                    i9 = R.id.common_dialog_root;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.common_dialog_root);
                    if (relativeLayout != null) {
                        i9 = R.id.common_dialog_submit;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_submit);
                        if (textView3 != null) {
                            i9 = R.id.common_dialog_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_title);
                            if (textView4 != null) {
                                i9 = R.id.common_dialog_vertical_line;
                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.common_dialog_vertical_line);
                                if (findChildViewById2 != null) {
                                    return new DialogCommomBinding((CardView) view, textView, textView2, findChildViewById, relativeLayout, textView3, textView4, findChildViewById2);
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
    public static DialogCommomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogCommomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_commom, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
