package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.gift.view.GiftComboView;
import com.guochao.faceshow.gift.view.NumCheckSendView;
/* loaded from: classes2.dex */
public final class DialogGiftBinding implements ViewBinding {
    @NonNull
    public final ImageView backpackLeftBack;
    @NonNull
    public final FrameLayout backpackTitle;
    @NonNull
    public final TextView balance;
    @NonNull
    public final TextView btnCheck;
    @NonNull
    public final LinearLayout btnSelectLy;
    @NonNull
    public final TextView btnSend;
    @NonNull
    public final TextView btnSend1;
    @NonNull
    public final NumCheckSendView btnTopUp;
    @NonNull
    public final LinearLayout charge;
    @NonNull
    public final GiftComboView comboContainer;
    @NonNull
    public final TextView emptyBackpack;
    @NonNull
    public final View emptyClick;
    @NonNull
    public final LinearLayout firstArea;
    @NonNull
    public final FrameLayout firstRechargeActivity;
    @NonNull
    public final TextView firstRechargeBottomText;
    @NonNull
    public final LinearLayout firstRechargeHeader;
    @NonNull
    public final TextView firstRechargeText;
    @NonNull
    public final TextView giftTips1;
    @NonNull
    public final ViewStub handyGift;
    @NonNull
    public final TextView ivGetFirstRecharge;
    @NonNull
    public final View ivWeight;
    @NonNull
    public final ImageView luckyGiftAnim;
    @NonNull
    public final LinearLayoutCompat luckyGiftHeader;
    @NonNull
    public final ImageView myCollection;
    @NonNull
    public final ImageView rankList;
    @NonNull
    public final LinearLayout realContent;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final ImageView showOrientationAngle;
    @NonNull
    public final LinearLayout tabLayout;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final ImageView tvBalance;
    @NonNull
    public final RtlViewPager viewPager;

    private DialogGiftBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull NumCheckSendView numCheckSendView, @NonNull LinearLayout linearLayout2, @NonNull GiftComboView giftComboView, @NonNull TextView textView5, @NonNull View view, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout2, @NonNull TextView textView6, @NonNull LinearLayout linearLayout4, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull ViewStub viewStub, @NonNull TextView textView9, @NonNull View view2, @NonNull ImageView imageView2, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout5, @NonNull ImageView imageView5, @NonNull LinearLayout linearLayout6, @NonNull TabLayout tabLayout, @NonNull ImageView imageView6, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = relativeLayout;
        this.backpackLeftBack = imageView;
        this.backpackTitle = frameLayout;
        this.balance = textView;
        this.btnCheck = textView2;
        this.btnSelectLy = linearLayout;
        this.btnSend = textView3;
        this.btnSend1 = textView4;
        this.btnTopUp = numCheckSendView;
        this.charge = linearLayout2;
        this.comboContainer = giftComboView;
        this.emptyBackpack = textView5;
        this.emptyClick = view;
        this.firstArea = linearLayout3;
        this.firstRechargeActivity = frameLayout2;
        this.firstRechargeBottomText = textView6;
        this.firstRechargeHeader = linearLayout4;
        this.firstRechargeText = textView7;
        this.giftTips1 = textView8;
        this.handyGift = viewStub;
        this.ivGetFirstRecharge = textView9;
        this.ivWeight = view2;
        this.luckyGiftAnim = imageView2;
        this.luckyGiftHeader = linearLayoutCompat;
        this.myCollection = imageView3;
        this.rankList = imageView4;
        this.realContent = linearLayout5;
        this.showOrientationAngle = imageView5;
        this.tabLayout = linearLayout6;
        this.tabs = tabLayout;
        this.tvBalance = imageView6;
        this.viewPager = rtlViewPager;
    }

    @NonNull
    public static DialogGiftBinding bind(@NonNull View view) {
        int i9 = R.id.backpack_left_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backpack_left_back);
        if (imageView != null) {
            i9 = R.id.backpack_title;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.backpack_title);
            if (frameLayout != null) {
                i9 = R.id.balance;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.balance);
                if (textView != null) {
                    i9 = R.id.btn_check;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check);
                    if (textView2 != null) {
                        i9 = R.id.btn_select_ly;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_select_ly);
                        if (linearLayout != null) {
                            i9 = R.id.btn_send;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_send);
                            if (textView3 != null) {
                                i9 = R.id.btn_send1;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_send1);
                                if (textView4 != null) {
                                    i9 = R.id.btnTopUp;
                                    NumCheckSendView numCheckSendView = (NumCheckSendView) ViewBindings.findChildViewById(view, R.id.btnTopUp);
                                    if (numCheckSendView != null) {
                                        i9 = R.id.charge;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.charge);
                                        if (linearLayout2 != null) {
                                            i9 = R.id.combo_container;
                                            GiftComboView giftComboView = (GiftComboView) ViewBindings.findChildViewById(view, R.id.combo_container);
                                            if (giftComboView != null) {
                                                i9 = R.id.empty_backpack;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.empty_backpack);
                                                if (textView5 != null) {
                                                    i9 = R.id.empty_click;
                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_click);
                                                    if (findChildViewById != null) {
                                                        i9 = R.id.first_area;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_area);
                                                        if (linearLayout3 != null) {
                                                            i9 = R.id.first_recharge_activity;
                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.first_recharge_activity);
                                                            if (frameLayout2 != null) {
                                                                i9 = R.id.first_recharge_bottom_text;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.first_recharge_bottom_text);
                                                                if (textView6 != null) {
                                                                    i9 = R.id.first_recharge_header;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_recharge_header);
                                                                    if (linearLayout4 != null) {
                                                                        i9 = R.id.first_recharge_text;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.first_recharge_text);
                                                                        if (textView7 != null) {
                                                                            i9 = R.id.gift_tips_1;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_tips_1);
                                                                            if (textView8 != null) {
                                                                                i9 = R.id.handy_gift;
                                                                                ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.handy_gift);
                                                                                if (viewStub != null) {
                                                                                    i9 = R.id.iv_get_first_recharge;
                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.iv_get_first_recharge);
                                                                                    if (textView9 != null) {
                                                                                        i9 = R.id.iv_weight;
                                                                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.iv_weight);
                                                                                        if (findChildViewById2 != null) {
                                                                                            i9 = R.id.lucky_gift_anim;
                                                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.lucky_gift_anim);
                                                                                            if (imageView2 != null) {
                                                                                                i9 = R.id.lucky_gift_header;
                                                                                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.lucky_gift_header);
                                                                                                if (linearLayoutCompat != null) {
                                                                                                    i9 = R.id.my_collection;
                                                                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.my_collection);
                                                                                                    if (imageView3 != null) {
                                                                                                        i9 = R.id.rank_list;
                                                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.rank_list);
                                                                                                        if (imageView4 != null) {
                                                                                                            i9 = R.id.real_content;
                                                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.real_content);
                                                                                                            if (linearLayout5 != null) {
                                                                                                                i9 = R.id.show_orientation_angle;
                                                                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.show_orientation_angle);
                                                                                                                if (imageView5 != null) {
                                                                                                                    i9 = R.id.tab_layout;
                                                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tab_layout);
                                                                                                                    if (linearLayout6 != null) {
                                                                                                                        i9 = R.id.tabs;
                                                                                                                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                                                                                                                        if (tabLayout != null) {
                                                                                                                            i9 = R.id.tvBalance;
                                                                                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.tvBalance);
                                                                                                                            if (imageView6 != null) {
                                                                                                                                i9 = R.id.view_pager;
                                                                                                                                RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                                                                                                                if (rtlViewPager != null) {
                                                                                                                                    return new DialogGiftBinding((RelativeLayout) view, imageView, frameLayout, textView, textView2, linearLayout, textView3, textView4, numCheckSendView, linearLayout2, giftComboView, textView5, findChildViewById, linearLayout3, frameLayout2, textView6, linearLayout4, textView7, textView8, viewStub, textView9, findChildViewById2, imageView2, linearLayoutCompat, imageView3, imageView4, linearLayout5, imageView5, linearLayout6, tabLayout, imageView6, rtlViewPager);
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
    public static DialogGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_gift, viewGroup, false);
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
