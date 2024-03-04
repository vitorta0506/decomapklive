package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
/* loaded from: classes2.dex */
public final class PictureEditViewItemBinding implements ViewBinding {
    @NonNull
    public final ImageView deleteIV;
    @NonNull
    public final ImageView editViewItemImage;
    @NonNull
    public final TextView editViewItemSolidCoverText;
    @NonNull
    public final CardView foreground;
    @NonNull
    public final FrameLayout illegal;
    @NonNull
    private final RatioFrameLayout rootView;

    private PictureEditViewItemBinding(@NonNull RatioFrameLayout ratioFrameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull CardView cardView, @NonNull FrameLayout frameLayout) {
        this.rootView = ratioFrameLayout;
        this.deleteIV = imageView;
        this.editViewItemImage = imageView2;
        this.editViewItemSolidCoverText = textView;
        this.foreground = cardView;
        this.illegal = frameLayout;
    }

    @NonNull
    public static PictureEditViewItemBinding bind(@NonNull View view) {
        int i9 = R.id.deleteIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.deleteIV);
        if (imageView != null) {
            i9 = R.id.edit_view_item_image;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_view_item_image);
            if (imageView2 != null) {
                i9 = R.id.edit_view_item_solid_cover_text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.edit_view_item_solid_cover_text);
                if (textView != null) {
                    i9 = R.id.foreground;
                    CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.foreground);
                    if (cardView != null) {
                        i9 = R.id.illegal;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.illegal);
                        if (frameLayout != null) {
                            return new PictureEditViewItemBinding((RatioFrameLayout) view, imageView, imageView2, textView, cardView, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PictureEditViewItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PictureEditViewItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.picture_edit_view_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RatioFrameLayout getRoot() {
        return this.rootView;
    }
}
