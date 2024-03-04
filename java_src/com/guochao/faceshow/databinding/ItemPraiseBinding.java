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
public final class ItemPraiseBinding implements ViewBinding {
    @NonNull
    public final TextView countTv;
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final ImageView liftIv;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView xin;

    private ItemPraiseBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.countTv = textView;
        this.item = linearLayout2;
        this.liftIv = imageView;
        this.xin = imageView2;
    }

    @NonNull
    public static ItemPraiseBinding bind(@NonNull View view) {
        int i9 = R.id.count_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.lift_iv;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lift_iv);
            if (imageView != null) {
                i9 = R.id.xin;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.xin);
                if (imageView2 != null) {
                    return new ItemPraiseBinding(linearLayout, textView, linearLayout, imageView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPraiseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPraiseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_praise, viewGroup, false);
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
