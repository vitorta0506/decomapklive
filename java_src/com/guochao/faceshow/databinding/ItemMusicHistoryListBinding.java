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
public final class ItemMusicHistoryListBinding implements ViewBinding {
    @NonNull
    public final ImageView ivImage;
    @NonNull
    public final ImageView ivItemRight;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvItemName;
    @NonNull
    public final View viewLine;

    private ItemMusicHistoryListBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull View view) {
        this.rootView = linearLayout;
        this.ivImage = imageView;
        this.ivItemRight = imageView2;
        this.tvItemName = textView;
        this.viewLine = view;
    }

    @NonNull
    public static ItemMusicHistoryListBinding bind(@NonNull View view) {
        int i9 = R.id.iv_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
        if (imageView != null) {
            i9 = R.id.iv_item_right;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_item_right);
            if (imageView2 != null) {
                i9 = R.id.tv_item__name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_item__name);
                if (textView != null) {
                    i9 = R.id.view_line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_line);
                    if (findChildViewById != null) {
                        return new ItemMusicHistoryListBinding((LinearLayout) view, imageView, imageView2, textView, findChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemMusicHistoryListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemMusicHistoryListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_music_history_list, viewGroup, false);
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
