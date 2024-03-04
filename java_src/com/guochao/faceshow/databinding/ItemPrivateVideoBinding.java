package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemPrivateVideoBinding implements ViewBinding {
    @NonNull
    public final TextView countTv;
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final ImageView liftIv;
    @NonNull
    private final LinearLayout rootView;

    private ItemPrivateVideoBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.countTv = textView;
        this.item = linearLayout2;
        this.liftIv = imageView;
    }

    @NonNull
    public static ItemPrivateVideoBinding bind(@NonNull View view) {
        int i9 = R.id.count_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lift_iv);
            if (imageView != null) {
                return new ItemPrivateVideoBinding(linearLayout, textView, linearLayout, imageView);
            }
            i9 = R.id.lift_iv;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPrivateVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPrivateVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_private_video, viewGroup, false);
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
