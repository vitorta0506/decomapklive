package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemDanmuBinding implements ViewBinding {
    @NonNull
    public final ImageView avatar;
    @NonNull
    public final TextView content;
    @NonNull
    public final ImageView like;
    @NonNull
    public final LinearLayout likeArea;
    @NonNull
    public final TextView likeCount;
    @NonNull
    private final FrameLayout rootView;

    private ItemDanmuBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.avatar = imageView;
        this.content = textView;
        this.like = imageView2;
        this.likeArea = linearLayout;
        this.likeCount = textView2;
    }

    @NonNull
    public static ItemDanmuBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (imageView != null) {
            i9 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView != null) {
                i9 = R.id.like;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.like);
                if (imageView2 != null) {
                    i9 = R.id.like_area;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.like_area);
                    if (linearLayout != null) {
                        i9 = R.id.like_count;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.like_count);
                        if (textView2 != null) {
                            return new ItemDanmuBinding((FrameLayout) view, imageView, textView, imageView2, linearLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemDanmuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemDanmuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_danmu, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
