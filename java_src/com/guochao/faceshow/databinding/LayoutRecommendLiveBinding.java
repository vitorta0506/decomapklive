package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutRecommendLiveBinding implements ViewBinding {
    @NonNull
    public final ImageView iconMulti;
    @NonNull
    public final RatioHeightImageView image;
    @NonNull
    public final ImageView imgGif;
    @NonNull
    private final View rootView;
    @NonNull
    public final TextView tvOnlineCount;

    private LayoutRecommendLiveBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull RatioHeightImageView ratioHeightImageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = view;
        this.iconMulti = imageView;
        this.image = ratioHeightImageView;
        this.imgGif = imageView2;
        this.tvOnlineCount = textView;
    }

    @NonNull
    public static LayoutRecommendLiveBinding bind(@NonNull View view) {
        int i9 = R.id.icon_multi;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_multi);
        if (imageView != null) {
            i9 = R.id.image;
            RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.image);
            if (ratioHeightImageView != null) {
                i9 = R.id.img_gif;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.img_gif);
                if (imageView2 != null) {
                    i9 = R.id.tvOnlineCount;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvOnlineCount);
                    if (textView != null) {
                        return new LayoutRecommendLiveBinding(view, imageView, ratioHeightImageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutRecommendLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_recommend_live, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
