package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
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
public final class ActivityInputGuildIdBinding implements ViewBinding {
    @NonNull
    public final Button applySign;
    @NonNull
    public final EditText guildId;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView textView29;
    @NonNull
    public final TextView textView30;
    @NonNull
    public final GcBaseTitleBarBinding titleBar;
    @NonNull
    public final View view2;
    @NonNull
    public final View view3;

    private ActivityInputGuildIdBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull EditText editText, @NonNull TextView textView, @NonNull TextView textView2, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding, @NonNull View view, @NonNull View view2) {
        this.rootView = constraintLayout;
        this.applySign = button;
        this.guildId = editText;
        this.textView29 = textView;
        this.textView30 = textView2;
        this.titleBar = gcBaseTitleBarBinding;
        this.view2 = view;
        this.view3 = view2;
    }

    @NonNull
    public static ActivityInputGuildIdBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        int i9 = R$id.apply_sign;
        Button button = (Button) ViewBindings.findChildViewById(view, i9);
        if (button != null) {
            i9 = R$id.guild_id;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
            if (editText != null) {
                i9 = R$id.textView29;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    i9 = R$id.textView30;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.title_bar))) != null) {
                        GcBaseTitleBarBinding bind = GcBaseTitleBarBinding.bind(findChildViewById);
                        i9 = R$id.view2;
                        View findChildViewById3 = ViewBindings.findChildViewById(view, i9);
                        if (findChildViewById3 != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i9 = R$id.view3))) != null) {
                            return new ActivityInputGuildIdBinding((ConstraintLayout) view, button, editText, textView, textView2, bind, findChildViewById3, findChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityInputGuildIdBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityInputGuildIdBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_input_guild_id, viewGroup, false);
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
