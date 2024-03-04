package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.gift.view.NumberIconTextView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LiveGiftShowLuckyGiftBinding implements ViewBinding {
    @NonNull
    public final ImageView avatar;
    @NonNull
    public final ImageView background;
    @NonNull
    public final ImageView liveGiftTipsGiftImg;
    @NonNull
    public final TextView liveGiftTipsGiftName;
    @NonNull
    public final NormalCircleImageView liveGiftTipsHeadimage;
    @NonNull
    public final LinearLayout liveGiftTipsNameLy;
    @NonNull
    public final TextView liveGiftTipsNickName;
    @NonNull
    public final NumberIconTextView rewardTimes;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final ImageView winType;

    private LiveGiftShowLuckyGiftBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull NumberIconTextView numberIconTextView, @NonNull ImageView imageView4) {
        this.rootView = constraintLayout;
        this.avatar = imageView;
        this.background = imageView2;
        this.liveGiftTipsGiftImg = imageView3;
        this.liveGiftTipsGiftName = textView;
        this.liveGiftTipsHeadimage = normalCircleImageView;
        this.liveGiftTipsNameLy = linearLayout;
        this.liveGiftTipsNickName = textView2;
        this.rewardTimes = numberIconTextView;
        this.winType = imageView4;
    }

    @NonNull
    public static LiveGiftShowLuckyGiftBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (imageView != null) {
            i9 = R.id.background;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.background);
            if (imageView2 != null) {
                i9 = R.id.live_gift_tips_gift_img;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_gift_tips_gift_img);
                if (imageView3 != null) {
                    i9 = R.id.live_gift_tips_gift_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.live_gift_tips_gift_name);
                    if (textView != null) {
                        i9 = R.id.live_gift_tips_headimage;
                        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.live_gift_tips_headimage);
                        if (normalCircleImageView != null) {
                            i9 = R.id.live_gift_tips_name_ly;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_gift_tips_name_ly);
                            if (linearLayout != null) {
                                i9 = R.id.live_gift_tips_nick_name;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.live_gift_tips_nick_name);
                                if (textView2 != null) {
                                    i9 = R.id.reward_times;
                                    NumberIconTextView numberIconTextView = (NumberIconTextView) ViewBindings.findChildViewById(view, R.id.reward_times);
                                    if (numberIconTextView != null) {
                                        i9 = R.id.win_type;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.win_type);
                                        if (imageView4 != null) {
                                            return new LiveGiftShowLuckyGiftBinding((ConstraintLayout) view, imageView, imageView2, imageView3, textView, normalCircleImageView, linearLayout, textView2, numberIconTextView, imageView4);
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
    public static LiveGiftShowLuckyGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveGiftShowLuckyGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_gift_show_lucky_gift, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
