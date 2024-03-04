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
public final class AdsDialogBinding implements ViewBinding {
    @NonNull
    public final TextView dimandsTxt;
    @NonNull
    public final TextView gotIt;
    @NonNull
    private final LinearLayout rootView;

    private AdsDialogBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.dimandsTxt = textView;
        this.gotIt = textView2;
    }

    @NonNull
    public static AdsDialogBinding bind(@NonNull View view) {
        int i9 = R.id.dimands_txt;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dimands_txt);
        if (textView != null) {
            i9 = R.id.got_it;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.got_it);
            if (textView2 != null) {
                return new AdsDialogBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static AdsDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AdsDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.ads_dialog, viewGroup, false);
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
