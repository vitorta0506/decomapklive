package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemPrizeListBinding implements ViewBinding {
    @NonNull
    public final TextView createTime;
    @NonNull
    public final ImageView imgTopics;
    @NonNull
    public final RelativeLayout item;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvName;
    @NonNull
    public final TextView usePrize;

    private ItemPrizeListBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.createTime = textView;
        this.imgTopics = imageView;
        this.item = relativeLayout2;
        this.tvName = textView2;
        this.usePrize = textView3;
    }

    @NonNull
    public static ItemPrizeListBinding bind(@NonNull View view) {
        int i9 = R.id.create_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.create_time);
        if (textView != null) {
            i9 = R.id.img_topics;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_topics);
            if (imageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i9 = R.id.tv_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                if (textView2 != null) {
                    i9 = R.id.use_prize;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.use_prize);
                    if (textView3 != null) {
                        return new ItemPrizeListBinding(relativeLayout, textView, imageView, relativeLayout, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPrizeListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPrizeListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_prize_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
