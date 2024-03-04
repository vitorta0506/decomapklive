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
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
/* loaded from: classes2.dex */
public final class ListItemDatingSquareBinding implements ViewBinding {
    @NonNull
    public final TextView address;
    @NonNull
    public final AgeAndSexView ageSexView;
    @NonNull
    public final FrameLayout flCall;
    @NonNull
    public final ImageView iconAddr;
    @NonNull
    public final CardView item;
    @NonNull
    public final ImageView ivCall;
    @NonNull
    public final RatioHeightImageView ivCover;
    @NonNull
    public final FrameLayout liveStatusViewArea;
    @NonNull
    public final ImageView onlineState;
    @NonNull
    public final TextView onlineText;
    @NonNull
    private final CardView rootView;
    @NonNull
    public final TextView userName;

    private ListItemDatingSquareBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull AgeAndSexView ageAndSexView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull CardView cardView2, @NonNull ImageView imageView2, @NonNull RatioHeightImageView ratioHeightImageView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = cardView;
        this.address = textView;
        this.ageSexView = ageAndSexView;
        this.flCall = frameLayout;
        this.iconAddr = imageView;
        this.item = cardView2;
        this.ivCall = imageView2;
        this.ivCover = ratioHeightImageView;
        this.liveStatusViewArea = frameLayout2;
        this.onlineState = imageView3;
        this.onlineText = textView2;
        this.userName = textView3;
    }

    @NonNull
    public static ListItemDatingSquareBinding bind(@NonNull View view) {
        int i9 = R.id.address;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.address);
        if (textView != null) {
            i9 = R.id.age_sex_view;
            AgeAndSexView ageAndSexView = (AgeAndSexView) ViewBindings.findChildViewById(view, R.id.age_sex_view);
            if (ageAndSexView != null) {
                i9 = R.id.fl_call;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_call);
                if (frameLayout != null) {
                    i9 = R.id.icon_addr;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_addr);
                    if (imageView != null) {
                        CardView cardView = (CardView) view;
                        i9 = R.id.iv_call;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_call);
                        if (imageView2 != null) {
                            i9 = R.id.iv_cover;
                            RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.iv_cover);
                            if (ratioHeightImageView != null) {
                                i9 = R.id.live_status_view_area;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_status_view_area);
                                if (frameLayout2 != null) {
                                    i9 = R.id.online_state;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.online_state);
                                    if (imageView3 != null) {
                                        i9 = R.id.online_text;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.online_text);
                                        if (textView2 != null) {
                                            i9 = R.id.user_name;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                            if (textView3 != null) {
                                                return new ListItemDatingSquareBinding(cardView, textView, ageAndSexView, frameLayout, imageView, cardView, imageView2, ratioHeightImageView, frameLayout2, imageView3, textView2, textView3);
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
    public static ListItemDatingSquareBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemDatingSquareBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_dating_square, viewGroup, false);
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
