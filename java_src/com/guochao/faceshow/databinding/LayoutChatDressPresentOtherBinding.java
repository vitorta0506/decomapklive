package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutChatDressPresentOtherBinding implements ViewBinding {
    @NonNull
    public final ImageView icon;
    @NonNull
    public final TextView info;
    @NonNull
    private final CardView rootView;
    @NonNull
    public final TextView title;

    private LayoutChatDressPresentOtherBinding(@NonNull CardView cardView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = cardView;
        this.icon = imageView;
        this.info = textView;
        this.title = textView2;
    }

    @NonNull
    public static LayoutChatDressPresentOtherBinding bind(@NonNull View view) {
        int i9 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i9 = R.id.info;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
            if (textView != null) {
                i9 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView2 != null) {
                    return new LayoutChatDressPresentOtherBinding((CardView) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutChatDressPresentOtherBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutChatDressPresentOtherBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_chat_dress_present_other, viewGroup, false);
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
