package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
/* loaded from: classes2.dex */
public final class ListLiveItemMultiLiveBinding implements ViewBinding {
    @NonNull
    public final TextView address;
    @NonNull
    public final AvatarGroupView avatarGroupView;
    @NonNull
    public final ImageView iconAddr;
    @NonNull
    public final ImageView iconMulti;
    @NonNull
    public final ImageView imgGif;
    @NonNull
    public final CardView item;
    @NonNull
    public final RatioHeightImageView ivCover;
    @NonNull
    public final LinearLayout llAddress;
    @NonNull
    public final ImageView lock;
    @NonNull
    private final CardView rootView;
    @NonNull
    public final TextView tvInfo;
    @NonNull
    public final TextView tvOnlineCount;

    private ListLiveItemMultiLiveBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull AvatarGroupView avatarGroupView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull CardView cardView2, @NonNull RatioHeightImageView ratioHeightImageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = cardView;
        this.address = textView;
        this.avatarGroupView = avatarGroupView;
        this.iconAddr = imageView;
        this.iconMulti = imageView2;
        this.imgGif = imageView3;
        this.item = cardView2;
        this.ivCover = ratioHeightImageView;
        this.llAddress = linearLayout;
        this.lock = imageView4;
        this.tvInfo = textView2;
        this.tvOnlineCount = textView3;
    }

    @NonNull
    public static ListLiveItemMultiLiveBinding bind(@NonNull View view) {
        int i9 = R.id.address;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.address);
        if (textView != null) {
            i9 = R.id.avatar_group_view;
            AvatarGroupView avatarGroupView = (AvatarGroupView) ViewBindings.findChildViewById(view, R.id.avatar_group_view);
            if (avatarGroupView != null) {
                i9 = R.id.icon_addr;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_addr);
                if (imageView != null) {
                    i9 = R.id.icon_multi;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_multi);
                    if (imageView2 != null) {
                        i9 = R.id.img_gif;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.img_gif);
                        if (imageView3 != null) {
                            CardView cardView = (CardView) view;
                            i9 = R.id.ivCover;
                            RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.ivCover);
                            if (ratioHeightImageView != null) {
                                i9 = R.id.ll_address;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_address);
                                if (linearLayout != null) {
                                    i9 = R.id.lock;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.lock);
                                    if (imageView4 != null) {
                                        i9 = R.id.tvInfo;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvInfo);
                                        if (textView2 != null) {
                                            i9 = R.id.tvOnlineCount;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvOnlineCount);
                                            if (textView3 != null) {
                                                return new ListLiveItemMultiLiveBinding(cardView, textView, avatarGroupView, imageView, imageView2, imageView3, cardView, ratioHeightImageView, linearLayout, imageView4, textView2, textView3);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListLiveItemMultiLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListLiveItemMultiLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_live_item_multi_live, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
