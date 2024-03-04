package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogHelloStarGiftBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvDayUnlock;
    @NonNull
    public final TextView tvHelpTip;
    @NonNull
    public final TextView tvIKnow;
    @NonNull
    public final TextView tvTitle;

    private DialogHelloStarGiftBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.tvDayUnlock = textView;
        this.tvHelpTip = textView2;
        this.tvIKnow = textView3;
        this.tvTitle = textView4;
    }

    @NonNull
    public static DialogHelloStarGiftBinding bind(@NonNull View view) {
        int i9 = R.id.tv_day_unlock;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_day_unlock);
        if (textView != null) {
            i9 = R.id.tv_help_tip;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_help_tip);
            if (textView2 != null) {
                i9 = R.id.tv_i_know;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_i_know);
                if (textView3 != null) {
                    i9 = R.id.tv_title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView4 != null) {
                        return new DialogHelloStarGiftBinding((FrameLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogHelloStarGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogHelloStarGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_hello_star_gift, viewGroup, false);
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
