package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.rd.PageIndicatorView;
import com.youth.banner.Banner;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class UserPageTopInfoViewBinding implements ViewBinding {
    @NonNull
    public final Banner banner;
    @NonNull
    public final ImageView defaultHead;
    @NonNull
    public final LevelView levelView;
    @NonNull
    public final ImageView mvpIV;
    @NonNull
    public final LinearLayout numberInfoLy;
    @NonNull
    public final TextView onlineInfo;
    @NonNull
    public final LinearLayout onlineInfoArea;
    @NonNull
    public final TextView onlineInfoExtra;
    @NonNull
    public final PageIndicatorView pageIndicatorView;
    @NonNull
    private final View rootView;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final TextView userInfoFans;
    @NonNull
    public final LinearLayout userInfoFansLy;
    @NonNull
    public final TextView userInfoFansValue;
    @NonNull
    public final TextView userInfoFollow;
    @NonNull
    public final LinearLayout userInfoFollowLy;
    @NonNull
    public final TextView userInfoFollowValue;
    @NonNull
    public final TextView userInfoGift;
    @NonNull
    public final LinearLayout userInfoGiftLy;
    @NonNull
    public final TextView userInfoGiftValue;
    @NonNull
    public final FrameLayout userInfoHeadImgLy;
    @NonNull
    public final RelativeLayout userInfoHeadLy;
    @NonNull
    public final TextView userInfoName;
    @NonNull
    public final LinearLayout userInfoNameLy;
    @NonNull
    public final FrameLayout userInfoScrollPagerLy;
    @NonNull
    public final TextView userInfoSend;
    @NonNull
    public final LinearLayout userInfoSendLy;
    @NonNull
    public final TextView userInfoSendValue;
    @NonNull
    public final TextView userInfoSignature;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private UserPageTopInfoViewBinding(@NonNull View view, @NonNull Banner banner, @NonNull ImageView imageView, @NonNull LevelView levelView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull PageIndicatorView pageIndicatorView, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout4, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull LinearLayout linearLayout5, @NonNull TextView textView8, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView9, @NonNull LinearLayout linearLayout6, @NonNull FrameLayout frameLayout2, @NonNull TextView textView10, @NonNull LinearLayout linearLayout7, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = view;
        this.banner = banner;
        this.defaultHead = imageView;
        this.levelView = levelView;
        this.mvpIV = imageView2;
        this.numberInfoLy = linearLayout;
        this.onlineInfo = textView;
        this.onlineInfoArea = linearLayout2;
        this.onlineInfoExtra = textView2;
        this.pageIndicatorView = pageIndicatorView;
        this.userAvatar = headPortraitView;
        this.userInfoFans = textView3;
        this.userInfoFansLy = linearLayout3;
        this.userInfoFansValue = textView4;
        this.userInfoFollow = textView5;
        this.userInfoFollowLy = linearLayout4;
        this.userInfoFollowValue = textView6;
        this.userInfoGift = textView7;
        this.userInfoGiftLy = linearLayout5;
        this.userInfoGiftValue = textView8;
        this.userInfoHeadImgLy = frameLayout;
        this.userInfoHeadLy = relativeLayout;
        this.userInfoName = textView9;
        this.userInfoNameLy = linearLayout6;
        this.userInfoScrollPagerLy = frameLayout2;
        this.userInfoSend = textView10;
        this.userInfoSendLy = linearLayout7;
        this.userInfoSendValue = textView11;
        this.userInfoSignature = textView12;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static UserPageTopInfoViewBinding bind(@NonNull View view) {
        int i9 = R.id.banner;
        Banner banner = (Banner) ViewBindings.findChildViewById(view, R.id.banner);
        if (banner != null) {
            i9 = R.id.default_head;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.default_head);
            if (imageView != null) {
                i9 = R.id.level_view;
                LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                if (levelView != null) {
                    i9 = R.id.mvpIV;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.mvpIV);
                    if (imageView2 != null) {
                        i9 = R.id.number_info_ly;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.number_info_ly);
                        if (linearLayout != null) {
                            i9 = R.id.online_info;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.online_info);
                            if (textView != null) {
                                i9 = R.id.online_info_area;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.online_info_area);
                                if (linearLayout2 != null) {
                                    i9 = R.id.online_info_extra;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.online_info_extra);
                                    if (textView2 != null) {
                                        i9 = R.id.pageIndicatorView;
                                        PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, R.id.pageIndicatorView);
                                        if (pageIndicatorView != null) {
                                            i9 = R.id.user_avatar;
                                            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                                            if (headPortraitView != null) {
                                                i9 = R.id.user_info_fans;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_fans);
                                                if (textView3 != null) {
                                                    i9 = R.id.user_info_fans_ly;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_fans_ly);
                                                    if (linearLayout3 != null) {
                                                        i9 = R.id.user_info_fans_value;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_fans_value);
                                                        if (textView4 != null) {
                                                            i9 = R.id.user_info_follow;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_follow);
                                                            if (textView5 != null) {
                                                                i9 = R.id.user_info_follow_ly;
                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_follow_ly);
                                                                if (linearLayout4 != null) {
                                                                    i9 = R.id.user_info_follow_value;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_follow_value);
                                                                    if (textView6 != null) {
                                                                        i9 = R.id.user_info_gift;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_gift);
                                                                        if (textView7 != null) {
                                                                            i9 = R.id.user_info_gift_ly;
                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_gift_ly);
                                                                            if (linearLayout5 != null) {
                                                                                i9 = R.id.user_info_gift_value;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_gift_value);
                                                                                if (textView8 != null) {
                                                                                    i9 = R.id.user_info_head_img_ly;
                                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.user_info_head_img_ly);
                                                                                    if (frameLayout != null) {
                                                                                        i9 = R.id.user_info_head_ly;
                                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.user_info_head_ly);
                                                                                        if (relativeLayout != null) {
                                                                                            i9 = R.id.user_info_name;
                                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_name);
                                                                                            if (textView9 != null) {
                                                                                                i9 = R.id.user_info_name_ly;
                                                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_name_ly);
                                                                                                if (linearLayout6 != null) {
                                                                                                    i9 = R.id.user_info_scroll_pager_ly;
                                                                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.user_info_scroll_pager_ly);
                                                                                                    if (frameLayout2 != null) {
                                                                                                        i9 = R.id.user_info_send;
                                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_send);
                                                                                                        if (textView10 != null) {
                                                                                                            i9 = R.id.user_info_send_ly;
                                                                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_send_ly);
                                                                                                            if (linearLayout7 != null) {
                                                                                                                i9 = R.id.user_info_send_value;
                                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_send_value);
                                                                                                                if (textView11 != null) {
                                                                                                                    i9 = R.id.user_info_signature;
                                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_signature);
                                                                                                                    if (textView12 != null) {
                                                                                                                        i9 = R.id.vip_indicator;
                                                                                                                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                                                                                                        if (vipIndicatorView != null) {
                                                                                                                            return new UserPageTopInfoViewBinding(view, banner, imageView, levelView, imageView2, linearLayout, textView, linearLayout2, textView2, pageIndicatorView, headPortraitView, textView3, linearLayout3, textView4, textView5, linearLayout4, textView6, textView7, linearLayout5, textView8, frameLayout, relativeLayout, textView9, linearLayout6, frameLayout2, textView10, linearLayout7, textView11, textView12, vipIndicatorView);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserPageTopInfoViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.user_page_top_info_view, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
