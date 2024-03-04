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
public final class DialogWechatAlipayBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final LinearLayout rlGooglePlayPay;
    @NonNull
    private final LinearLayout rootView;

    private DialogWechatAlipayBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.content = textView;
        this.rlGooglePlayPay = linearLayout2;
    }

    @NonNull
    public static DialogWechatAlipayBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.rlGooglePlayPay;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlGooglePlayPay);
            if (linearLayout != null) {
                return new DialogWechatAlipayBinding((LinearLayout) view, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogWechatAlipayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogWechatAlipayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_wechat_alipay, viewGroup, false);
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
