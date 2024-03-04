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
public final class ItemSearchUgcLocationBinding implements ViewBinding {
    @NonNull
    public final ImageView checkStatus;
    @NonNull
    public final LinearLayout contentLay;
    @NonNull
    public final ImageView ivUgcLocation;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView secondaryTitle;

    private ItemSearchUgcLocationBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.checkStatus = imageView;
        this.contentLay = linearLayout;
        this.ivUgcLocation = imageView2;
        this.primaryTitle = textView;
        this.secondaryTitle = textView2;
    }

    @NonNull
    public static ItemSearchUgcLocationBinding bind(@NonNull View view) {
        int i9 = R.id.check_status;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.check_status);
        if (imageView != null) {
            i9 = R.id.content_lay;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_lay);
            if (linearLayout != null) {
                i9 = R.id.iv_ugc_location;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ugc_location);
                if (imageView2 != null) {
                    i9 = R.id.primary_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.primary_title);
                    if (textView != null) {
                        i9 = R.id.secondary_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.secondary_title);
                        if (textView2 != null) {
                            return new ItemSearchUgcLocationBinding((RelativeLayout) view, imageView, linearLayout, imageView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemSearchUgcLocationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchUgcLocationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_search_ugc_location, viewGroup, false);
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
