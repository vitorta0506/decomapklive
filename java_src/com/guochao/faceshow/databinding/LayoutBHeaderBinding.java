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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
/* loaded from: classes2.dex */
public final class LayoutBHeaderBinding implements ViewBinding {
    @NonNull
    public final TextView countTv;
    @NonNull
    public final TextView countTv1;
    @NonNull
    public final TextView countTv2;
    @NonNull
    public final ImageView gender;
    @NonNull
    public final ImageView gender1;
    @NonNull
    public final ImageView gender2;
    @NonNull
    public final HeadPortraitView imgTopicsOne;
    @NonNull
    public final HeadPortraitView imgTopicsOne1;
    @NonNull
    public final HeadPortraitView imgTopicsOne2;
    @NonNull
    public final LevelView levelView;
    @NonNull
    public final LevelView levelView1;
    @NonNull
    public final LevelView levelView2;
    @NonNull
    public final TextView nameTV;
    @NonNull
    public final TextView nameTV1;
    @NonNull
    public final TextView nameTV2;
    @NonNull
    public final FrameLayout no1RL;
    @NonNull
    public final FrameLayout no2RL;
    @NonNull
    public final FrameLayout no3RL;
    @NonNull
    public final ImageView praiseNum;
    @NonNull
    public final ImageView praiseNum1;
    @NonNull
    public final ImageView praiseNum2;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvSend;
    @NonNull
    public final TextView tvSend1;
    @NonNull
    public final TextView tvSend2;

    private LayoutBHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull HeadPortraitView headPortraitView, @NonNull HeadPortraitView headPortraitView2, @NonNull HeadPortraitView headPortraitView3, @NonNull LevelView levelView, @NonNull LevelView levelView2, @NonNull LevelView levelView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.rootView = linearLayout;
        this.countTv = textView;
        this.countTv1 = textView2;
        this.countTv2 = textView3;
        this.gender = imageView;
        this.gender1 = imageView2;
        this.gender2 = imageView3;
        this.imgTopicsOne = headPortraitView;
        this.imgTopicsOne1 = headPortraitView2;
        this.imgTopicsOne2 = headPortraitView3;
        this.levelView = levelView;
        this.levelView1 = levelView2;
        this.levelView2 = levelView3;
        this.nameTV = textView4;
        this.nameTV1 = textView5;
        this.nameTV2 = textView6;
        this.no1RL = frameLayout;
        this.no2RL = frameLayout2;
        this.no3RL = frameLayout3;
        this.praiseNum = imageView4;
        this.praiseNum1 = imageView5;
        this.praiseNum2 = imageView6;
        this.tvSend = textView7;
        this.tvSend1 = textView8;
        this.tvSend2 = textView9;
    }

    @NonNull
    public static LayoutBHeaderBinding bind(@NonNull View view) {
        int i9 = R.id.count_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv);
        if (textView != null) {
            i9 = R.id.count_tv1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv1);
            if (textView2 != null) {
                i9 = R.id.count_tv2;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv2);
                if (textView3 != null) {
                    i9 = R.id.gender;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gender);
                    if (imageView != null) {
                        i9 = R.id.gender1;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gender1);
                        if (imageView2 != null) {
                            i9 = R.id.gender2;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.gender2);
                            if (imageView3 != null) {
                                i9 = R.id.img_topics_one;
                                HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.img_topics_one);
                                if (headPortraitView != null) {
                                    i9 = R.id.img_topics_one1;
                                    HeadPortraitView headPortraitView2 = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.img_topics_one1);
                                    if (headPortraitView2 != null) {
                                        i9 = R.id.img_topics_one2;
                                        HeadPortraitView headPortraitView3 = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.img_topics_one2);
                                        if (headPortraitView3 != null) {
                                            i9 = R.id.level_view;
                                            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                                            if (levelView != null) {
                                                i9 = R.id.level_view1;
                                                LevelView levelView2 = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view1);
                                                if (levelView2 != null) {
                                                    i9 = R.id.level_view2;
                                                    LevelView levelView3 = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view2);
                                                    if (levelView3 != null) {
                                                        i9 = R.id.nameTV;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.nameTV);
                                                        if (textView4 != null) {
                                                            i9 = R.id.nameTV1;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.nameTV1);
                                                            if (textView5 != null) {
                                                                i9 = R.id.nameTV2;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.nameTV2);
                                                                if (textView6 != null) {
                                                                    i9 = R.id.no1RL;
                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.no1RL);
                                                                    if (frameLayout != null) {
                                                                        i9 = R.id.no2RL;
                                                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.no2RL);
                                                                        if (frameLayout2 != null) {
                                                                            i9 = R.id.no3RL;
                                                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.no3RL);
                                                                            if (frameLayout3 != null) {
                                                                                i9 = R.id.praise_num;
                                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.praise_num);
                                                                                if (imageView4 != null) {
                                                                                    i9 = R.id.praise_num1;
                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.praise_num1);
                                                                                    if (imageView5 != null) {
                                                                                        i9 = R.id.praise_num2;
                                                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.praise_num2);
                                                                                        if (imageView6 != null) {
                                                                                            i9 = R.id.tv_send;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send);
                                                                                            if (textView7 != null) {
                                                                                                i9 = R.id.tv_send1;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send1);
                                                                                                if (textView8 != null) {
                                                                                                    i9 = R.id.tv_send2;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send2);
                                                                                                    if (textView9 != null) {
                                                                                                        return new LayoutBHeaderBinding((LinearLayout) view, textView, textView2, textView3, imageView, imageView2, imageView3, headPortraitView, headPortraitView2, headPortraitView3, levelView, levelView2, levelView3, textView4, textView5, textView6, frameLayout, frameLayout2, frameLayout3, imageView4, imageView5, imageView6, textView7, textView8, textView9);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_b_header, viewGroup, false);
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
