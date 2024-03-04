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
public final class ItemLiveAllContributionBinding implements ViewBinding {
    @NonNull
    public final TextView countTv;
    @NonNull
    public final TextView countTvTop;
    @NonNull
    public final FrameLayout flLevel;
    @NonNull
    public final ImageView gender;
    @NonNull
    public final ImageView genderTop;
    @NonNull
    public final HeadPortraitView hpvHead;
    @NonNull
    public final ImageView icOrder;
    @NonNull
    public final ImageView icOrderTop;
    @NonNull
    public final HeadPortraitView imgTopicsOne;
    @NonNull
    public final FrameLayout item;
    @NonNull
    public final LevelView levelView;
    @NonNull
    public final LevelView levelViewTop;
    @NonNull
    public final LinearLayout llOneView;
    @NonNull
    public final LinearLayout llTemp1;
    @NonNull
    public final LinearLayout llTemp1Top;
    @NonNull
    public final LinearLayout llView;
    @NonNull
    public final TextView name;
    @NonNull
    public final TextView nameTop;
    @NonNull
    public final ImageView praiseNum;
    @NonNull
    public final ImageView praiseNumTop;
    @NonNull
    public final FrameLayout rlHeader;
    @NonNull
    public final FrameLayout rlHeaderTop;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView topImg;
    @NonNull
    public final ImageView topImgOne;
    @NonNull
    public final TextView tvLevelDes;
    @NonNull
    public final TextView tvSend;
    @NonNull
    public final TextView tvSendTop;

    private ItemLiveAllContributionBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull HeadPortraitView headPortraitView2, @NonNull FrameLayout frameLayout3, @NonNull LevelView levelView, @NonNull LevelView levelView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull FrameLayout frameLayout4, @NonNull FrameLayout frameLayout5, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = frameLayout;
        this.countTv = textView;
        this.countTvTop = textView2;
        this.flLevel = frameLayout2;
        this.gender = imageView;
        this.genderTop = imageView2;
        this.hpvHead = headPortraitView;
        this.icOrder = imageView3;
        this.icOrderTop = imageView4;
        this.imgTopicsOne = headPortraitView2;
        this.item = frameLayout3;
        this.levelView = levelView;
        this.levelViewTop = levelView2;
        this.llOneView = linearLayout;
        this.llTemp1 = linearLayout2;
        this.llTemp1Top = linearLayout3;
        this.llView = linearLayout4;
        this.name = textView3;
        this.nameTop = textView4;
        this.praiseNum = imageView5;
        this.praiseNumTop = imageView6;
        this.rlHeader = frameLayout4;
        this.rlHeaderTop = frameLayout5;
        this.topImg = imageView7;
        this.topImgOne = imageView8;
        this.tvLevelDes = textView5;
        this.tvSend = textView6;
        this.tvSendTop = textView7;
    }

    @NonNull
    public static ItemLiveAllContributionBinding bind(@NonNull View view) {
        int i9 = R.id.count_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv);
        if (textView != null) {
            i9 = R.id.count_tv_top;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv_top);
            if (textView2 != null) {
                i9 = R.id.fl_level;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_level);
                if (frameLayout != null) {
                    i9 = R.id.gender;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gender);
                    if (imageView != null) {
                        i9 = R.id.gender_top;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gender_top);
                        if (imageView2 != null) {
                            i9 = R.id.hpv_head;
                            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.hpv_head);
                            if (headPortraitView != null) {
                                i9 = R.id.ic_order;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_order);
                                if (imageView3 != null) {
                                    i9 = R.id.ic_order_top;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_order_top);
                                    if (imageView4 != null) {
                                        i9 = R.id.img_topics_one;
                                        HeadPortraitView headPortraitView2 = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.img_topics_one);
                                        if (headPortraitView2 != null) {
                                            FrameLayout frameLayout2 = (FrameLayout) view;
                                            i9 = R.id.level_view;
                                            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                                            if (levelView != null) {
                                                i9 = R.id.level_view_top;
                                                LevelView levelView2 = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view_top);
                                                if (levelView2 != null) {
                                                    i9 = R.id.ll_one_view;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_one_view);
                                                    if (linearLayout != null) {
                                                        i9 = R.id.ll_temp1;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_temp1);
                                                        if (linearLayout2 != null) {
                                                            i9 = R.id.ll_temp1_top;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_temp1_top);
                                                            if (linearLayout3 != null) {
                                                                i9 = R.id.ll_view;
                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_view);
                                                                if (linearLayout4 != null) {
                                                                    i9 = R.id.name;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                                                    if (textView3 != null) {
                                                                        i9 = R.id.name_top;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name_top);
                                                                        if (textView4 != null) {
                                                                            i9 = R.id.praise_num;
                                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.praise_num);
                                                                            if (imageView5 != null) {
                                                                                i9 = R.id.praise_num_top;
                                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.praise_num_top);
                                                                                if (imageView6 != null) {
                                                                                    i9 = R.id.rl_header;
                                                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_header);
                                                                                    if (frameLayout3 != null) {
                                                                                        i9 = R.id.rl_header_top;
                                                                                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_header_top);
                                                                                        if (frameLayout4 != null) {
                                                                                            i9 = R.id.top_img;
                                                                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.top_img);
                                                                                            if (imageView7 != null) {
                                                                                                i9 = R.id.top_img_one;
                                                                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.top_img_one);
                                                                                                if (imageView8 != null) {
                                                                                                    i9 = R.id.tv_level_des;
                                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_level_des);
                                                                                                    if (textView5 != null) {
                                                                                                        i9 = R.id.tv_send;
                                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send);
                                                                                                        if (textView6 != null) {
                                                                                                            i9 = R.id.tv_send_top;
                                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send_top);
                                                                                                            if (textView7 != null) {
                                                                                                                return new ItemLiveAllContributionBinding(frameLayout2, textView, textView2, frameLayout, imageView, imageView2, headPortraitView, imageView3, imageView4, headPortraitView2, frameLayout2, levelView, levelView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, textView4, imageView5, imageView6, frameLayout3, frameLayout4, imageView7, imageView8, textView5, textView6, textView7);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemLiveAllContributionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLiveAllContributionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_live_all_contribution, viewGroup, false);
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
