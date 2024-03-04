package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutBroadcasterThankSendHelloGiftBinding implements ViewBinding {
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    public final ImageView iconLeft;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView text;

    private LayoutBroadcasterThankSendHelloGiftBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.contentArea = linearLayout;
        this.iconLeft = imageView;
        this.text = textView;
    }

    @NonNull
    public static LayoutBroadcasterThankSendHelloGiftBinding bind(@NonNull View view) {
        int i9 = R.id.content_area;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
        if (linearLayout != null) {
            i9 = R.id.icon_left;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_left);
            if (imageView != null) {
                i9 = R.id.text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text);
                if (textView != null) {
                    return new LayoutBroadcasterThankSendHelloGiftBinding((FrameLayout) view, linearLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBroadcasterThankSendHelloGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBroadcasterThankSendHelloGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_broadcaster_thank_send_hello_gift, viewGroup, false);
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
