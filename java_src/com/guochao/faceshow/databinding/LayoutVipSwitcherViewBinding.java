package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutVipSwitcherViewBinding implements ViewBinding {
    @NonNull
    public final ImageView indicator;
    @NonNull
    public final ImageView redPoint;
    @NonNull
    private final View rootView;
    @NonNull
    public final LinearLayout text1;
    @NonNull
    public final FrameLayout text2;
    @NonNull
    public final TextView textSVIP;
    @NonNull
    public final TextView textVIP;

    private LayoutVipSwitcherViewBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = view;
        this.indicator = imageView;
        this.redPoint = imageView2;
        this.text1 = linearLayout;
        this.text2 = frameLayout;
        this.textSVIP = textView;
        this.textVIP = textView2;
    }

    @NonNull
    public static LayoutVipSwitcherViewBinding bind(@NonNull View view) {
        int i9 = R.id.indicator;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.indicator);
        if (imageView != null) {
            i9 = R.id.red_point;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.red_point);
            if (imageView2 != null) {
                i9 = R.id.text1;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.text1);
                if (linearLayout != null) {
                    i9 = R.id.text2;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.text2);
                    if (frameLayout != null) {
                        i9 = R.id.textSVIP;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textSVIP);
                        if (textView != null) {
                            i9 = R.id.textVIP;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textVIP);
                            if (textView2 != null) {
                                return new LayoutVipSwitcherViewBinding(view, imageView, imageView2, linearLayout, frameLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutVipSwitcherViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_vip_switcher_view, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
