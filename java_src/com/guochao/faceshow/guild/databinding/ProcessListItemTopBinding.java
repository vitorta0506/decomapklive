package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
/* loaded from: classes4.dex */
public final class ProcessListItemTopBinding implements ViewBinding {
    @NonNull
    public final TextView date;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView stateTv;
    @NonNull
    public final AppCompatImageView textView28;
    @NonNull
    public final View textView31;
    @NonNull
    public final TextView textView32;

    private ProcessListItemTopBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull AppCompatImageView appCompatImageView, @NonNull View view, @NonNull TextView textView3) {
        this.rootView = constraintLayout;
        this.date = textView;
        this.stateTv = textView2;
        this.textView28 = appCompatImageView;
        this.textView31 = view;
        this.textView32 = textView3;
    }

    @NonNull
    public static ProcessListItemTopBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.date;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.state_tv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView2 != null) {
                i9 = R$id.textView28;
                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i9);
                if (appCompatImageView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.textView31))) != null) {
                    i9 = R$id.textView32;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView3 != null) {
                        return new ProcessListItemTopBinding((ConstraintLayout) view, textView, textView2, appCompatImageView, findChildViewById, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ProcessListItemTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ProcessListItemTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.process_list_item_top, viewGroup, false);
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
