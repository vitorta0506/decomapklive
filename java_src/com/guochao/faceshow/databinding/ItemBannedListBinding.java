package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemBannedListBinding implements ViewBinding {
    @NonNull
    public final TextView btnUnBanned;
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final ImageView ivImg;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvName;
    @NonNull
    public final TextView tvTips;

    private ItemBannedListBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.btnUnBanned = textView;
        this.item = linearLayout;
        this.ivImg = imageView;
        this.tvName = textView2;
        this.tvTips = textView3;
    }

    @NonNull
    public static ItemBannedListBinding bind(@NonNull View view) {
        int i9 = R.id.btnUnBanned;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnUnBanned);
        if (textView != null) {
            i9 = R.id.item;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.item);
            if (linearLayout != null) {
                i9 = R.id.ivImg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivImg);
                if (imageView != null) {
                    i9 = R.id.tvName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvName);
                    if (textView2 != null) {
                        i9 = R.id.tvTips;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTips);
                        if (textView3 != null) {
                            return new ItemBannedListBinding((RelativeLayout) view, textView, linearLayout, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemBannedListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemBannedListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_banned_list, viewGroup, false);
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
