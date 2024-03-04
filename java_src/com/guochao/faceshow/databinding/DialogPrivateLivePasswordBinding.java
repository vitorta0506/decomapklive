package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogPrivateLivePasswordBinding implements ViewBinding {
    @NonNull
    public final TextView commonDialogCancel;
    @NonNull
    public final View commonDialogHorizonLine;
    @NonNull
    public final LinearLayout commonDialogRoot;
    @NonNull
    public final TextView commonDialogTitle;
    @NonNull
    public final TextView content;
    @NonNull
    public final TextView etPwd1;
    @NonNull
    public final TextView etPwd2;
    @NonNull
    public final TextView etPwd3;
    @NonNull
    public final TextView etPwd4;
    @NonNull
    public final TextView etPwd5;
    @NonNull
    public final TextView etPwd6;
    @NonNull
    public final EditText etPwdReal;
    @NonNull
    public final FrameLayout fragmentPassword;
    @NonNull
    public final LinearLayout password;
    @NonNull
    private final CardView rootView;

    private DialogPrivateLivePasswordBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull EditText editText, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = cardView;
        this.commonDialogCancel = textView;
        this.commonDialogHorizonLine = view;
        this.commonDialogRoot = linearLayout;
        this.commonDialogTitle = textView2;
        this.content = textView3;
        this.etPwd1 = textView4;
        this.etPwd2 = textView5;
        this.etPwd3 = textView6;
        this.etPwd4 = textView7;
        this.etPwd5 = textView8;
        this.etPwd6 = textView9;
        this.etPwdReal = editText;
        this.fragmentPassword = frameLayout;
        this.password = linearLayout2;
    }

    @NonNull
    public static DialogPrivateLivePasswordBinding bind(@NonNull View view) {
        int i9 = R.id.common_dialog_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_cancel);
        if (textView != null) {
            i9 = R.id.common_dialog_horizon_line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.common_dialog_horizon_line);
            if (findChildViewById != null) {
                i9 = R.id.common_dialog_root;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.common_dialog_root);
                if (linearLayout != null) {
                    i9 = R.id.common_dialog_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_title);
                    if (textView2 != null) {
                        i9 = R.id.content;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                        if (textView3 != null) {
                            i9 = R.id.etPwd1;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd1);
                            if (textView4 != null) {
                                i9 = R.id.etPwd2;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd2);
                                if (textView5 != null) {
                                    i9 = R.id.etPwd3;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd3);
                                    if (textView6 != null) {
                                        i9 = R.id.etPwd4;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd4);
                                        if (textView7 != null) {
                                            i9 = R.id.etPwd5;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd5);
                                            if (textView8 != null) {
                                                i9 = R.id.etPwd6;
                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd6);
                                                if (textView9 != null) {
                                                    i9 = R.id.etPwdReal;
                                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etPwdReal);
                                                    if (editText != null) {
                                                        i9 = R.id.fragment_password;
                                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_password);
                                                        if (frameLayout != null) {
                                                            i9 = R.id.password;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.password);
                                                            if (linearLayout2 != null) {
                                                                return new DialogPrivateLivePasswordBinding((CardView) view, textView, findChildViewById, linearLayout, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, editText, frameLayout, linearLayout2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogPrivateLivePasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogPrivateLivePasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_private_live_password, viewGroup, false);
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
