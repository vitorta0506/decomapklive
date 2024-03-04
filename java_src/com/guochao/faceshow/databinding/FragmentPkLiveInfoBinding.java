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
import com.guochao.faceshow.aaspring.svga.SVGAImageExtend;
import com.guochao.faceshow.aaspring.views.AvatarView;
import com.guochao.faceshow.aaspring.views.PKProgressView;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class FragmentPkLiveInfoBinding implements ViewBinding {
    @NonNull
    public final SvgaImageViewV2 addSVGA;
    @NonNull
    public final NormalCircleImageView countryFlag;
    @NonNull
    public final ImageView iconVs;
    @NonNull
    public final RatioFrameLayout infoContent;
    @NonNull
    public final ImageView ivAdd;
    @NonNull
    public final AvatarView left1;
    @NonNull
    public final AvatarView left2;
    @NonNull
    public final AvatarView left3;
    @NonNull
    public final SVGAImageView leftAnim;
    @NonNull
    public final TextView leftAnimEnd;
    @NonNull
    public final FrameLayout leftArea;
    @NonNull
    public final TextView leftCoin;
    @NonNull
    public final LinearLayout leftRichBox;
    @NonNull
    public final LinearLayout llCountryFlag;
    @NonNull
    public final TextView pkBroadcastName;
    @NonNull
    public final TextView pkCountDownTime;
    @NonNull
    public final PKProgressView pkProgress;
    @NonNull
    public final TextView punishTimeTip;
    @NonNull
    public final AvatarView right1;
    @NonNull
    public final AvatarView right2;
    @NonNull
    public final AvatarView right3;
    @NonNull
    public final SVGAImageView rightAnim;
    @NonNull
    public final TextView rightAnimEnd;
    @NonNull
    public final FrameLayout rightArea;
    @NonNull
    public final TextView rightCoin;
    @NonNull
    public final LinearLayout rightRichBox;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageExtend vsAnim;

    private FragmentPkLiveInfoBinding(@NonNull FrameLayout frameLayout, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView, @NonNull RatioFrameLayout ratioFrameLayout, @NonNull ImageView imageView2, @NonNull AvatarView avatarView, @NonNull AvatarView avatarView2, @NonNull AvatarView avatarView3, @NonNull SVGAImageView sVGAImageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull PKProgressView pKProgressView, @NonNull TextView textView5, @NonNull AvatarView avatarView4, @NonNull AvatarView avatarView5, @NonNull AvatarView avatarView6, @NonNull SVGAImageView sVGAImageView2, @NonNull TextView textView6, @NonNull FrameLayout frameLayout3, @NonNull TextView textView7, @NonNull LinearLayout linearLayout3, @NonNull SVGAImageExtend sVGAImageExtend) {
        this.rootView = frameLayout;
        this.addSVGA = svgaImageViewV2;
        this.countryFlag = normalCircleImageView;
        this.iconVs = imageView;
        this.infoContent = ratioFrameLayout;
        this.ivAdd = imageView2;
        this.left1 = avatarView;
        this.left2 = avatarView2;
        this.left3 = avatarView3;
        this.leftAnim = sVGAImageView;
        this.leftAnimEnd = textView;
        this.leftArea = frameLayout2;
        this.leftCoin = textView2;
        this.leftRichBox = linearLayout;
        this.llCountryFlag = linearLayout2;
        this.pkBroadcastName = textView3;
        this.pkCountDownTime = textView4;
        this.pkProgress = pKProgressView;
        this.punishTimeTip = textView5;
        this.right1 = avatarView4;
        this.right2 = avatarView5;
        this.right3 = avatarView6;
        this.rightAnim = sVGAImageView2;
        this.rightAnimEnd = textView6;
        this.rightArea = frameLayout3;
        this.rightCoin = textView7;
        this.rightRichBox = linearLayout3;
        this.vsAnim = sVGAImageExtend;
    }

    @NonNull
    public static FragmentPkLiveInfoBinding bind(@NonNull View view) {
        int i9 = R.id.addSVGA;
        SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.addSVGA);
        if (svgaImageViewV2 != null) {
            i9 = R.id.country_flag;
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.country_flag);
            if (normalCircleImageView != null) {
                i9 = R.id.icon_vs;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_vs);
                if (imageView != null) {
                    i9 = R.id.info_content;
                    RatioFrameLayout ratioFrameLayout = (RatioFrameLayout) ViewBindings.findChildViewById(view, R.id.info_content);
                    if (ratioFrameLayout != null) {
                        i9 = R.id.iv_add;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_add);
                        if (imageView2 != null) {
                            i9 = R.id.left_1;
                            AvatarView avatarView = (AvatarView) ViewBindings.findChildViewById(view, R.id.left_1);
                            if (avatarView != null) {
                                i9 = R.id.left_2;
                                AvatarView avatarView2 = (AvatarView) ViewBindings.findChildViewById(view, R.id.left_2);
                                if (avatarView2 != null) {
                                    i9 = R.id.left_3;
                                    AvatarView avatarView3 = (AvatarView) ViewBindings.findChildViewById(view, R.id.left_3);
                                    if (avatarView3 != null) {
                                        i9 = R.id.left_anim;
                                        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.left_anim);
                                        if (sVGAImageView != null) {
                                            i9 = R.id.left_anim_end;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.left_anim_end);
                                            if (textView != null) {
                                                i9 = R.id.left_area;
                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.left_area);
                                                if (frameLayout != null) {
                                                    i9 = R.id.left_coin;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.left_coin);
                                                    if (textView2 != null) {
                                                        i9 = R.id.left_rich_box;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.left_rich_box);
                                                        if (linearLayout != null) {
                                                            i9 = R.id.ll_country_flag;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_country_flag);
                                                            if (linearLayout2 != null) {
                                                                i9 = R.id.pk_broadcast_name;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.pk_broadcast_name);
                                                                if (textView3 != null) {
                                                                    i9 = R.id.pk_count_down_time;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.pk_count_down_time);
                                                                    if (textView4 != null) {
                                                                        i9 = R.id.pk_progress;
                                                                        PKProgressView pKProgressView = (PKProgressView) ViewBindings.findChildViewById(view, R.id.pk_progress);
                                                                        if (pKProgressView != null) {
                                                                            i9 = R.id.punish_time_tip;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.punish_time_tip);
                                                                            if (textView5 != null) {
                                                                                i9 = R.id.right_1;
                                                                                AvatarView avatarView4 = (AvatarView) ViewBindings.findChildViewById(view, R.id.right_1);
                                                                                if (avatarView4 != null) {
                                                                                    i9 = R.id.right_2;
                                                                                    AvatarView avatarView5 = (AvatarView) ViewBindings.findChildViewById(view, R.id.right_2);
                                                                                    if (avatarView5 != null) {
                                                                                        i9 = R.id.right_3;
                                                                                        AvatarView avatarView6 = (AvatarView) ViewBindings.findChildViewById(view, R.id.right_3);
                                                                                        if (avatarView6 != null) {
                                                                                            i9 = R.id.right_anim;
                                                                                            SVGAImageView sVGAImageView2 = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.right_anim);
                                                                                            if (sVGAImageView2 != null) {
                                                                                                i9 = R.id.right_anim_end;
                                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.right_anim_end);
                                                                                                if (textView6 != null) {
                                                                                                    i9 = R.id.right_area;
                                                                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.right_area);
                                                                                                    if (frameLayout2 != null) {
                                                                                                        i9 = R.id.right_coin;
                                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.right_coin);
                                                                                                        if (textView7 != null) {
                                                                                                            i9 = R.id.right_rich_box;
                                                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.right_rich_box);
                                                                                                            if (linearLayout3 != null) {
                                                                                                                i9 = R.id.vs_anim;
                                                                                                                SVGAImageExtend sVGAImageExtend = (SVGAImageExtend) ViewBindings.findChildViewById(view, R.id.vs_anim);
                                                                                                                if (sVGAImageExtend != null) {
                                                                                                                    return new FragmentPkLiveInfoBinding((FrameLayout) view, svgaImageViewV2, normalCircleImageView, imageView, ratioFrameLayout, imageView2, avatarView, avatarView2, avatarView3, sVGAImageView, textView, frameLayout, textView2, linearLayout, linearLayout2, textView3, textView4, pKProgressView, textView5, avatarView4, avatarView5, avatarView6, sVGAImageView2, textView6, frameLayout2, textView7, linearLayout3, sVGAImageExtend);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentPkLiveInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPkLiveInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pk_live_info, viewGroup, false);
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
