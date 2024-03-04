package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes4.dex */
public final class ActivityContractBinding implements ViewBinding {
    @NonNull
    public final TextView guildLive;
    @NonNull
    public final ImageView imageView;
    @NonNull
    public final View line1;
    @NonNull
    public final TextView personalLive;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView textView;
    @NonNull
    public final GcBaseTitleBarBinding titleBar;

    private ActivityContractBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding) {
        this.rootView = constraintLayout;
        this.guildLive = textView;
        this.imageView = imageView;
        this.line1 = view;
        this.personalLive = textView2;
        this.textView = textView3;
        this.titleBar = gcBaseTitleBarBinding;
    }

    @NonNull
    public static ActivityContractBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        int i9 = R$id.guild_live;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.line1))) != null) {
                i9 = R$id.personal_live;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView2 != null) {
                    i9 = R$id.textView;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView3 != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i9 = R$id.title_bar))) != null) {
                        return new ActivityContractBinding((ConstraintLayout) view, textView, imageView, findChildViewById, textView2, textView3, GcBaseTitleBarBinding.bind(findChildViewById2));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityContractBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityContractBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_contract, viewGroup, false);
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
