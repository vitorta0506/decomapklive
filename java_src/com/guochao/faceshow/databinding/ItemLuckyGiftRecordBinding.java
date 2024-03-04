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
public final class ItemLuckyGiftRecordBinding implements ViewBinding {
    @NonNull
    public final TextView countTV;
    @NonNull
    public final TextView diamondNumTV;
    @NonNull
    public final ImageView goodIV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView timeTV;
    @NonNull
    public final ImageView winTypeIV;

    private ItemLuckyGiftRecordBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.countTV = textView;
        this.diamondNumTV = textView2;
        this.goodIV = imageView;
        this.timeTV = textView3;
        this.winTypeIV = imageView2;
    }

    @NonNull
    public static ItemLuckyGiftRecordBinding bind(@NonNull View view) {
        int i9 = R.id.countTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.countTV);
        if (textView != null) {
            i9 = R.id.diamondNumTV;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.diamondNumTV);
            if (textView2 != null) {
                i9 = R.id.goodIV;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.goodIV);
                if (imageView != null) {
                    i9 = R.id.timeTV;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.timeTV);
                    if (textView3 != null) {
                        i9 = R.id.winTypeIV;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.winTypeIV);
                        if (imageView2 != null) {
                            return new ItemLuckyGiftRecordBinding((LinearLayout) view, textView, textView2, imageView, textView3, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemLuckyGiftRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLuckyGiftRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_lucky_gift_record, viewGroup, false);
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
