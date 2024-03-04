package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogChatLimitBinding implements ViewBinding {
    @NonNull
    public final TextView chatLimitIgnore;
    @NonNull
    public final TextView chatLimitOpen;
    @NonNull
    public final TextView dialogTitle;
    @NonNull
    public final FragmentContainerView fragmentContainer;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tabLeft;
    @NonNull
    public final TextView tabRight;

    private DialogChatLimitBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FragmentContainerView fragmentContainerView, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = frameLayout;
        this.chatLimitIgnore = textView;
        this.chatLimitOpen = textView2;
        this.dialogTitle = textView3;
        this.fragmentContainer = fragmentContainerView;
        this.tabLeft = textView4;
        this.tabRight = textView5;
    }

    @NonNull
    public static DialogChatLimitBinding bind(@NonNull View view) {
        int i9 = R.id.chat_limit_ignore;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.chat_limit_ignore);
        if (textView != null) {
            i9 = R.id.chat_limit_open;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.chat_limit_open);
            if (textView2 != null) {
                i9 = R.id.dialog_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_title);
                if (textView3 != null) {
                    i9 = R.id.fragment_container;
                    FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.fragment_container);
                    if (fragmentContainerView != null) {
                        i9 = R.id.tab_left;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tab_left);
                        if (textView4 != null) {
                            i9 = R.id.tab_right;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tab_right);
                            if (textView5 != null) {
                                return new DialogChatLimitBinding((FrameLayout) view, textView, textView2, textView3, fragmentContainerView, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogChatLimitBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogChatLimitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_chat_limit, viewGroup, false);
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
