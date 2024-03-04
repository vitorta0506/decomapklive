package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentConfirmBinding implements ViewBinding {
    @NonNull
    public final TextView confirmEtContent;
    @NonNull
    public final TextView confirmTvCancel;
    @NonNull
    public final TextView confirmTvDone;
    @NonNull
    public final TextView confirmTvTitle;
    @NonNull
    private final LinearLayout rootView;

    private FragmentConfirmBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.confirmEtContent = textView;
        this.confirmTvCancel = textView2;
        this.confirmTvDone = textView3;
        this.confirmTvTitle = textView4;
    }

    @NonNull
    public static FragmentConfirmBinding bind(@NonNull View view) {
        int i9 = R.id.confirm_et_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.confirm_et_content);
        if (textView != null) {
            i9 = R.id.confirm_tv_cancel;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.confirm_tv_cancel);
            if (textView2 != null) {
                i9 = R.id.confirm_tv_done;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.confirm_tv_done);
                if (textView3 != null) {
                    i9 = R.id.confirm_tv_title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.confirm_tv_title);
                    if (textView4 != null) {
                        return new FragmentConfirmBinding((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentConfirmBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentConfirmBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_confirm, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
