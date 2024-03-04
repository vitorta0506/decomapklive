package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.views.ObservableScrollView;
/* loaded from: classes2.dex */
public final class FragmentUserBinding implements ViewBinding {
    @NonNull
    public final View bindEmailWarn;
    @NonNull
    public final LinearLayout contentLay;
    @NonNull
    public final TextView dressUpMarket;
    @NonNull
    public final LinearLayout dressUpMarketLay;
    @NonNull
    public final LinearLayout earnDiamondLay;
    @NonNull
    public final LinearLayout feedback;
    @NonNull
    public final LinearLayout levelLay;
    @NonNull
    public final TextView levelTv;
    @NonNull
    public final LinearLayout mvpLL;
    @NonNull
    public final LinearLayout myDressUp;
    @NonNull
    public final TextView myDressUpBold;
    @NonNull
    public final TextView myDynamic;
    @NonNull
    public final TextView myMvp;
    @NonNull
    public final LinearLayout myWalletLay;
    @NonNull
    public final LinearLayout ratingUsLay;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ObservableScrollView scrollView;
    @NonNull
    public final LinearLayout signArea;
    @NonNull
    public final FrameLayout titleLay;
    @NonNull
    public final LinearLayout toBeVip;
    @NonNull
    public final TextView topFanBold;
    @NonNull
    public final LinearLayout topFansLay;
    @NonNull
    public final TextView tvSignArea;
    @NonNull
    public final TextView tvTitle;
    @NonNull
    public final TextView tvToBeVip;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final LinearLayout userDynamicLay;
    @NonNull
    public final TextView userFans;
    @NonNull
    public final LinearLayout userFansLay;
    @NonNull
    public final TextView userFollow;
    @NonNull
    public final LinearLayout userFollowLay;
    @NonNull
    public final TextView userId;
    @NonNull
    public final TextView userId2;
    @NonNull
    public final LinearLayout userIdLay;
    @NonNull
    public final LinearLayout userLay;
    @NonNull
    public final TextView userLike;
    @NonNull
    public final LinearLayout userLikeLay;
    @NonNull
    public final LinearLayout userLiveLay;
    @NonNull
    public final TextView userName;
    @NonNull
    public final LinearLayout userNameLay;
    @NonNull
    public final LinearLayout userOnevoneLay;
    @NonNull
    public final ImageView userQcode;
    @NonNull
    public final ImageView userSetting;
    @NonNull
    public final LinearLayout userVideoLay;
    @NonNull
    public final GridLayout vipLay;
    @NonNull
    public final LinearLayout vipLookLay;
    @NonNull
    public final TextView vipLookNum;
    @NonNull
    public final TextView wallet;

    private FragmentUserBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView2, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull ObservableScrollView observableScrollView, @NonNull LinearLayout linearLayout10, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout11, @NonNull TextView textView6, @NonNull LinearLayout linearLayout12, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout13, @NonNull TextView textView10, @NonNull LinearLayout linearLayout14, @NonNull TextView textView11, @NonNull LinearLayout linearLayout15, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull LinearLayout linearLayout16, @NonNull LinearLayout linearLayout17, @NonNull TextView textView14, @NonNull LinearLayout linearLayout18, @NonNull LinearLayout linearLayout19, @NonNull TextView textView15, @NonNull LinearLayout linearLayout20, @NonNull LinearLayout linearLayout21, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout22, @NonNull GridLayout gridLayout, @NonNull LinearLayout linearLayout23, @NonNull TextView textView16, @NonNull TextView textView17) {
        this.rootView = frameLayout;
        this.bindEmailWarn = view;
        this.contentLay = linearLayout;
        this.dressUpMarket = textView;
        this.dressUpMarketLay = linearLayout2;
        this.earnDiamondLay = linearLayout3;
        this.feedback = linearLayout4;
        this.levelLay = linearLayout5;
        this.levelTv = textView2;
        this.mvpLL = linearLayout6;
        this.myDressUp = linearLayout7;
        this.myDressUpBold = textView3;
        this.myDynamic = textView4;
        this.myMvp = textView5;
        this.myWalletLay = linearLayout8;
        this.ratingUsLay = linearLayout9;
        this.scrollView = observableScrollView;
        this.signArea = linearLayout10;
        this.titleLay = frameLayout2;
        this.toBeVip = linearLayout11;
        this.topFanBold = textView6;
        this.topFansLay = linearLayout12;
        this.tvSignArea = textView7;
        this.tvTitle = textView8;
        this.tvToBeVip = textView9;
        this.userAvatar = headPortraitView;
        this.userDynamicLay = linearLayout13;
        this.userFans = textView10;
        this.userFansLay = linearLayout14;
        this.userFollow = textView11;
        this.userFollowLay = linearLayout15;
        this.userId = textView12;
        this.userId2 = textView13;
        this.userIdLay = linearLayout16;
        this.userLay = linearLayout17;
        this.userLike = textView14;
        this.userLikeLay = linearLayout18;
        this.userLiveLay = linearLayout19;
        this.userName = textView15;
        this.userNameLay = linearLayout20;
        this.userOnevoneLay = linearLayout21;
        this.userQcode = imageView;
        this.userSetting = imageView2;
        this.userVideoLay = linearLayout22;
        this.vipLay = gridLayout;
        this.vipLookLay = linearLayout23;
        this.vipLookNum = textView16;
        this.wallet = textView17;
    }

    @NonNull
    public static FragmentUserBinding bind(@NonNull View view) {
        int i9 = R.id.bind_email_warn;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bind_email_warn);
        if (findChildViewById != null) {
            i9 = R.id.content_lay;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_lay);
            if (linearLayout != null) {
                i9 = R.id.dress_up_market;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dress_up_market);
                if (textView != null) {
                    i9 = R.id.dress_up_market_lay;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.dress_up_market_lay);
                    if (linearLayout2 != null) {
                        i9 = R.id.earn_diamond_lay;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.earn_diamond_lay);
                        if (linearLayout3 != null) {
                            i9 = R.id.feedback;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.feedback);
                            if (linearLayout4 != null) {
                                i9 = R.id.level_lay;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.level_lay);
                                if (linearLayout5 != null) {
                                    i9 = R.id.level_tv;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.level_tv);
                                    if (textView2 != null) {
                                        i9 = R.id.mvpLL;
                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.mvpLL);
                                        if (linearLayout6 != null) {
                                            i9 = R.id.my_dress_up;
                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.my_dress_up);
                                            if (linearLayout7 != null) {
                                                i9 = R.id.my_dress_up_bold;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.my_dress_up_bold);
                                                if (textView3 != null) {
                                                    i9 = R.id.my_dynamic;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.my_dynamic);
                                                    if (textView4 != null) {
                                                        i9 = R.id.my_mvp;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.my_mvp);
                                                        if (textView5 != null) {
                                                            i9 = R.id.my_wallet_lay;
                                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.my_wallet_lay);
                                                            if (linearLayout8 != null) {
                                                                i9 = R.id.rating_us_lay;
                                                                LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rating_us_lay);
                                                                if (linearLayout9 != null) {
                                                                    i9 = R.id.scroll_view;
                                                                    ObservableScrollView observableScrollView = (ObservableScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                                                                    if (observableScrollView != null) {
                                                                        i9 = R.id.sign_area;
                                                                        LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sign_area);
                                                                        if (linearLayout10 != null) {
                                                                            i9 = R.id.title_lay;
                                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.title_lay);
                                                                            if (frameLayout != null) {
                                                                                i9 = R.id.to_be_vip;
                                                                                LinearLayout linearLayout11 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.to_be_vip);
                                                                                if (linearLayout11 != null) {
                                                                                    i9 = R.id.top_fan_bold;
                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.top_fan_bold);
                                                                                    if (textView6 != null) {
                                                                                        i9 = R.id.top_fans_lay;
                                                                                        LinearLayout linearLayout12 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top_fans_lay);
                                                                                        if (linearLayout12 != null) {
                                                                                            i9 = R.id.tv_sign_area;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sign_area);
                                                                                            if (textView7 != null) {
                                                                                                i9 = R.id.tv_title;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                                                if (textView8 != null) {
                                                                                                    i9 = R.id.tv_to_be_vip;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_to_be_vip);
                                                                                                    if (textView9 != null) {
                                                                                                        i9 = R.id.user_avatar;
                                                                                                        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                                                                                                        if (headPortraitView != null) {
                                                                                                            i9 = R.id.user_dynamic_lay;
                                                                                                            LinearLayout linearLayout13 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_dynamic_lay);
                                                                                                            if (linearLayout13 != null) {
                                                                                                                i9 = R.id.user_fans;
                                                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.user_fans);
                                                                                                                if (textView10 != null) {
                                                                                                                    i9 = R.id.user_fans_lay;
                                                                                                                    LinearLayout linearLayout14 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_fans_lay);
                                                                                                                    if (linearLayout14 != null) {
                                                                                                                        i9 = R.id.user_follow;
                                                                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.user_follow);
                                                                                                                        if (textView11 != null) {
                                                                                                                            i9 = R.id.user_follow_lay;
                                                                                                                            LinearLayout linearLayout15 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_follow_lay);
                                                                                                                            if (linearLayout15 != null) {
                                                                                                                                i9 = R.id.user_id;
                                                                                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.user_id);
                                                                                                                                if (textView12 != null) {
                                                                                                                                    i9 = R.id.user_id2;
                                                                                                                                    TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.user_id2);
                                                                                                                                    if (textView13 != null) {
                                                                                                                                        i9 = R.id.user_id_lay;
                                                                                                                                        LinearLayout linearLayout16 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_id_lay);
                                                                                                                                        if (linearLayout16 != null) {
                                                                                                                                            i9 = R.id.user_lay;
                                                                                                                                            LinearLayout linearLayout17 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_lay);
                                                                                                                                            if (linearLayout17 != null) {
                                                                                                                                                i9 = R.id.user_like;
                                                                                                                                                TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.user_like);
                                                                                                                                                if (textView14 != null) {
                                                                                                                                                    i9 = R.id.user_like_lay;
                                                                                                                                                    LinearLayout linearLayout18 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_like_lay);
                                                                                                                                                    if (linearLayout18 != null) {
                                                                                                                                                        i9 = R.id.user_live_lay;
                                                                                                                                                        LinearLayout linearLayout19 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_live_lay);
                                                                                                                                                        if (linearLayout19 != null) {
                                                                                                                                                            i9 = R.id.user_name;
                                                                                                                                                            TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                                                                                                                            if (textView15 != null) {
                                                                                                                                                                i9 = R.id.user_name_lay;
                                                                                                                                                                LinearLayout linearLayout20 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_name_lay);
                                                                                                                                                                if (linearLayout20 != null) {
                                                                                                                                                                    i9 = R.id.user_onevone_lay;
                                                                                                                                                                    LinearLayout linearLayout21 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_onevone_lay);
                                                                                                                                                                    if (linearLayout21 != null) {
                                                                                                                                                                        i9 = R.id.user_qcode;
                                                                                                                                                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.user_qcode);
                                                                                                                                                                        if (imageView != null) {
                                                                                                                                                                            i9 = R.id.user_setting;
                                                                                                                                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.user_setting);
                                                                                                                                                                            if (imageView2 != null) {
                                                                                                                                                                                i9 = R.id.user_video_lay;
                                                                                                                                                                                LinearLayout linearLayout22 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_video_lay);
                                                                                                                                                                                if (linearLayout22 != null) {
                                                                                                                                                                                    i9 = R.id.vip_lay;
                                                                                                                                                                                    GridLayout gridLayout = (GridLayout) ViewBindings.findChildViewById(view, R.id.vip_lay);
                                                                                                                                                                                    if (gridLayout != null) {
                                                                                                                                                                                        i9 = R.id.vip_look_lay;
                                                                                                                                                                                        LinearLayout linearLayout23 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.vip_look_lay);
                                                                                                                                                                                        if (linearLayout23 != null) {
                                                                                                                                                                                            i9 = R.id.vip_look_num;
                                                                                                                                                                                            TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.vip_look_num);
                                                                                                                                                                                            if (textView16 != null) {
                                                                                                                                                                                                i9 = R.id.wallet;
                                                                                                                                                                                                TextView textView17 = (TextView) ViewBindings.findChildViewById(view, R.id.wallet);
                                                                                                                                                                                                if (textView17 != null) {
                                                                                                                                                                                                    return new FragmentUserBinding((FrameLayout) view, findChildViewById, linearLayout, textView, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textView2, linearLayout6, linearLayout7, textView3, textView4, textView5, linearLayout8, linearLayout9, observableScrollView, linearLayout10, frameLayout, linearLayout11, textView6, linearLayout12, textView7, textView8, textView9, headPortraitView, linearLayout13, textView10, linearLayout14, textView11, linearLayout15, textView12, textView13, linearLayout16, linearLayout17, textView14, linearLayout18, linearLayout19, textView15, linearLayout20, linearLayout21, imageView, imageView2, linearLayout22, gridLayout, linearLayout23, textView16, textView17);
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
    public static FragmentUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_user, viewGroup, false);
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
