package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
/* loaded from: classes4.dex */
public final class CancelContractDialogBinding implements ViewBinding {
    @NonNull
    public final AppCompatTextView cancel;
    @NonNull
    public final AppCompatTextView confirm;
    @NonNull
    public final Guideline guideline5;
    @NonNull
    public final TextView guildId;
    @NonNull
    public final TextView guildName;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView textView26;
    @NonNull
    public final View view;

    private CancelContractDialogBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2, @NonNull Guideline guideline, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view) {
        this.rootView = constraintLayout;
        this.cancel = appCompatTextView;
        this.confirm = appCompatTextView2;
        this.guideline5 = guideline;
        this.guildId = textView;
        this.guildName = textView2;
        this.textView26 = textView3;
        this.view = view;
    }

    @NonNull
    public static CancelContractDialogBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i9);
        if (appCompatTextView != null) {
            i9 = R$id.confirm;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i9);
            if (appCompatTextView2 != null) {
                i9 = R$id.guideline5;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i9);
                if (guideline != null) {
                    i9 = R$id.guild_id;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView != null) {
                        i9 = R$id.guild_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView2 != null) {
                            i9 = R$id.textView26;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView3 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.view))) != null) {
                                return new CancelContractDialogBinding((ConstraintLayout) view, appCompatTextView, appCompatTextView2, guideline, textView, textView2, textView3, findChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static CancelContractDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static CancelContractDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.cancel_contract_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
