package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class LayoutChatLiveShareSelfBinding implements ViewBinding {
    @NonNull
    public final TextView address;
    @NonNull
    public final LinearLayout addressArea;
    @NonNull
    public final ImageView cover;
    @NonNull
    public final HeadPortraitView head;
    @NonNull
    public final ImageView iconAddr;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final CardView rootView;

    private LayoutChatLiveShareSelfBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.rootView = cardView;
        this.address = textView;
        this.addressArea = linearLayout;
        this.cover = imageView;
        this.head = headPortraitView;
        this.iconAddr = imageView2;
        this.nickname = textView2;
    }

    @NonNull
    public static LayoutChatLiveShareSelfBinding bind(@NonNull View view) {
        int i9 = R.id.address;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.address);
        if (textView != null) {
            i9 = R.id.address_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.address_area);
            if (linearLayout != null) {
                i9 = R.id.cover;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cover);
                if (imageView != null) {
                    i9 = R.id.head;
                    HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head);
                    if (headPortraitView != null) {
                        i9 = R.id.icon_addr;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_addr);
                        if (imageView2 != null) {
                            i9 = R.id.nickname;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                            if (textView2 != null) {
                                return new LayoutChatLiveShareSelfBinding((CardView) view, textView, linearLayout, imageView, headPortraitView, imageView2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutChatLiveShareSelfBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutChatLiveShareSelfBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_chat_live_share_self, viewGroup, false);
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
