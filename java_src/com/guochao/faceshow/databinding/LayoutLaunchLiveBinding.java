package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutLaunchLiveBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bottomButtonArea;
    @NonNull
    public final CardView cardView;
    @NonNull
    public final ImageView faceBookShare;
    @NonNull
    public final FrameLayout launchLive;
    @NonNull
    public final ImageView launchLiveBeautyFilterBtn;
    @NonNull
    public final EditText launchLiveEditTitle;
    @NonNull
    public final TextView launchLiveNextBtn;
    @NonNull
    public final ImageView launchLivePic;
    @NonNull
    public final ImageView launchLivePicTips;
    @NonNull
    public final ImageView launchLiveSwitchCameraBtn;
    @NonNull
    public final ImageView liveDynamicToggle;
    @NonNull
    public final ImageView liveLaunchDice;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout shareArea;
    @NonNull
    public final View shareDivider;
    @NonNull
    public final FrameLayout spaceArea;
    @NonNull
    public final ImageView switchPrivateLive;
    @NonNull
    public final View syncDynamicDivider;
    @NonNull
    public final LinearLayout syncDynamicLay;
    @NonNull
    public final View touchView;
    @NonNull
    public final ImageView twitterShare;
    @NonNull
    public final ImageView voiceRoomBack;
    @NonNull
    public final ImageView weiboShare;
    @NonNull
    public final ImageView weichatShare;
    @NonNull
    public final ImageView weightIcon;

    private LayoutLaunchLiveBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull CardView cardView, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull EditText editText, @NonNull TextView textView, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView8, @NonNull View view2, @NonNull LinearLayout linearLayout3, @NonNull View view3, @NonNull ImageView imageView9, @NonNull ImageView imageView10, @NonNull ImageView imageView11, @NonNull ImageView imageView12, @NonNull ImageView imageView13) {
        this.rootView = frameLayout;
        this.bottomButtonArea = linearLayout;
        this.cardView = cardView;
        this.faceBookShare = imageView;
        this.launchLive = frameLayout2;
        this.launchLiveBeautyFilterBtn = imageView2;
        this.launchLiveEditTitle = editText;
        this.launchLiveNextBtn = textView;
        this.launchLivePic = imageView3;
        this.launchLivePicTips = imageView4;
        this.launchLiveSwitchCameraBtn = imageView5;
        this.liveDynamicToggle = imageView6;
        this.liveLaunchDice = imageView7;
        this.shareArea = linearLayout2;
        this.shareDivider = view;
        this.spaceArea = frameLayout3;
        this.switchPrivateLive = imageView8;
        this.syncDynamicDivider = view2;
        this.syncDynamicLay = linearLayout3;
        this.touchView = view3;
        this.twitterShare = imageView9;
        this.voiceRoomBack = imageView10;
        this.weiboShare = imageView11;
        this.weichatShare = imageView12;
        this.weightIcon = imageView13;
    }

    @NonNull
    public static LayoutLaunchLiveBinding bind(@NonNull View view) {
        int i9 = R.id.bottom_button_area;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_button_area);
        if (linearLayout != null) {
            i9 = R.id.card_view;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.card_view);
            if (cardView != null) {
                i9 = R.id.face_book_share;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.face_book_share);
                if (imageView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i9 = R.id.launch_live_beauty_filter_btn;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.launch_live_beauty_filter_btn);
                    if (imageView2 != null) {
                        i9 = R.id.launch_live_edit_title;
                        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.launch_live_edit_title);
                        if (editText != null) {
                            i9 = R.id.launch_live_next_btn;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.launch_live_next_btn);
                            if (textView != null) {
                                i9 = R.id.launch_live_pic;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.launch_live_pic);
                                if (imageView3 != null) {
                                    i9 = R.id.launch_live_pic_tips;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.launch_live_pic_tips);
                                    if (imageView4 != null) {
                                        i9 = R.id.launch_live_switch_camera_btn;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.launch_live_switch_camera_btn);
                                        if (imageView5 != null) {
                                            i9 = R.id.live_dynamic_toggle;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_dynamic_toggle);
                                            if (imageView6 != null) {
                                                i9 = R.id.live_launch_dice;
                                                ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_launch_dice);
                                                if (imageView7 != null) {
                                                    i9 = R.id.share_area;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.share_area);
                                                    if (linearLayout2 != null) {
                                                        i9 = R.id.share_divider;
                                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.share_divider);
                                                        if (findChildViewById != null) {
                                                            i9 = R.id.space_area;
                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.space_area);
                                                            if (frameLayout2 != null) {
                                                                i9 = R.id.switch_private_live;
                                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.switch_private_live);
                                                                if (imageView8 != null) {
                                                                    i9 = R.id.sync_dynamic_divider;
                                                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.sync_dynamic_divider);
                                                                    if (findChildViewById2 != null) {
                                                                        i9 = R.id.sync_dynamic_lay;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sync_dynamic_lay);
                                                                        if (linearLayout3 != null) {
                                                                            i9 = R.id.touch_view;
                                                                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.touch_view);
                                                                            if (findChildViewById3 != null) {
                                                                                i9 = R.id.twitter_share;
                                                                                ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.twitter_share);
                                                                                if (imageView9 != null) {
                                                                                    i9 = R.id.voice_room_back;
                                                                                    ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(view, R.id.voice_room_back);
                                                                                    if (imageView10 != null) {
                                                                                        i9 = R.id.weibo_share;
                                                                                        ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(view, R.id.weibo_share);
                                                                                        if (imageView11 != null) {
                                                                                            i9 = R.id.weichat_share;
                                                                                            ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(view, R.id.weichat_share);
                                                                                            if (imageView12 != null) {
                                                                                                i9 = R.id.weight_icon;
                                                                                                ImageView imageView13 = (ImageView) ViewBindings.findChildViewById(view, R.id.weight_icon);
                                                                                                if (imageView13 != null) {
                                                                                                    return new LayoutLaunchLiveBinding(frameLayout, linearLayout, cardView, imageView, frameLayout, imageView2, editText, textView, imageView3, imageView4, imageView5, imageView6, imageView7, linearLayout2, findChildViewById, frameLayout2, imageView8, findChildViewById2, linearLayout3, findChildViewById3, imageView9, imageView10, imageView11, imageView12, imageView13);
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
    public static LayoutLaunchLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLaunchLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_launch_live, viewGroup, false);
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
