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
public final class ItemMusicRecommendedListBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout bgRL;
    @NonNull
    public final ImageView ivImage;
    @NonNull
    public final LinearLayout llRecommendedItem;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvItemName;
    @NonNull
    public final TextView tvItemRight;
    @NonNull
    public final View viewBg;
    @NonNull
    public final View viewLine;

    private ItemMusicRecommendedListBinding(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull View view2) {
        this.rootView = linearLayout;
        this.bgRL = relativeLayout;
        this.ivImage = imageView;
        this.llRecommendedItem = linearLayout2;
        this.tvItemName = textView;
        this.tvItemRight = textView2;
        this.viewBg = view;
        this.viewLine = view2;
    }

    @NonNull
    public static ItemMusicRecommendedListBinding bind(@NonNull View view) {
        int i9 = R.id.bgRL;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.bgRL);
        if (relativeLayout != null) {
            i9 = R.id.iv_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.tv_item__name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_item__name);
                if (textView != null) {
                    i9 = R.id.tv_item_right;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_item_right);
                    if (textView2 != null) {
                        i9 = R.id.view_bg;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_bg);
                        if (findChildViewById != null) {
                            i9 = R.id.view_line;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_line);
                            if (findChildViewById2 != null) {
                                return new ItemMusicRecommendedListBinding(linearLayout, relativeLayout, imageView, linearLayout, textView, textView2, findChildViewById, findChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemMusicRecommendedListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemMusicRecommendedListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_music_recommended_list, viewGroup, false);
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
