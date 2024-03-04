package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AddZanHeartView;
import com.guochao.faceshow.aaspring.views.LiveBroadCastScrollDownView;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.component.live.view.InterceptTouchFrameLayout;
/* loaded from: classes2.dex */
public final class FragmentMultiLiveBinding implements ViewBinding {
    @NonNull
    public final FrameLayout accView;
    @NonNull
    public final FrameLayout bigGiftBoxArea;
    @NonNull
    public final FrameLayout blindDatePusher;
    @NonNull
    public final FrameLayout chatFragment;
    @NonNull
    public final LinearLayout closeLL;
    @NonNull
    public final ImageView closeLive;
    @NonNull
    public final TextView countDownTips;
    @NonNull
    public final ViewStub dishWheelLayout;
    @NonNull
    public final View dividerView;
    @NonNull
    public final TextView facecastId;
    @NonNull
    public final FrameLayout floatRecyclerViewContainer;
    @NonNull
    public final FrameLayout giftAnimContainer;
    @NonNull
    public final FrameLayout giftArea;
    @NonNull
    public final FrameLayout littlePusherArea;
    @NonNull
    public final FrameLayout littlePusherInfoArea;
    @NonNull
    public final FrameLayout liveEndInfoArea;
    @NonNull
    public final InterceptTouchFrameLayout liveFloatChat;
    @NonNull
    public final FrameLayout liveGameArea;
    @NonNull
    public final FrameLayout liveInfoArea;
    @NonNull
    public final LinearLayout liveJoinMiddleTipsLy;
    @NonNull
    public final AddZanHeartView liveZanLy;
    @NonNull
    public final LiveBroadCastScrollDownView mainBg;
    @NonNull
    public final MultiLivePlayView maskVideoView;
    @NonNull
    public final FrameLayout pkInfoArea;
    @NonNull
    private final LiveBroadCastScrollDownView rootView;
    @NonNull
    public final LiveScrollToClearScreenView scrollLayout;
    @NonNull
    public final ImageView shareRoom;
    @NonNull
    public final ViewStub userGuideSwipeToDismissStub;
    @NonNull
    public final MultiLivePlayView videoRecyclerView;
    @NonNull
    public final FrameLayout webLiveGameArea;

    private FragmentMultiLiveBinding(@NonNull LiveBroadCastScrollDownView liveBroadCastScrollDownView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ViewStub viewStub, @NonNull View view, @NonNull TextView textView2, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull FrameLayout frameLayout7, @NonNull FrameLayout frameLayout8, @NonNull FrameLayout frameLayout9, @NonNull FrameLayout frameLayout10, @NonNull InterceptTouchFrameLayout interceptTouchFrameLayout, @NonNull FrameLayout frameLayout11, @NonNull FrameLayout frameLayout12, @NonNull LinearLayout linearLayout2, @NonNull AddZanHeartView addZanHeartView, @NonNull LiveBroadCastScrollDownView liveBroadCastScrollDownView2, @NonNull MultiLivePlayView multiLivePlayView, @NonNull FrameLayout frameLayout13, @NonNull LiveScrollToClearScreenView liveScrollToClearScreenView, @NonNull ImageView imageView2, @NonNull ViewStub viewStub2, @NonNull MultiLivePlayView multiLivePlayView2, @NonNull FrameLayout frameLayout14) {
        this.rootView = liveBroadCastScrollDownView;
        this.accView = frameLayout;
        this.bigGiftBoxArea = frameLayout2;
        this.blindDatePusher = frameLayout3;
        this.chatFragment = frameLayout4;
        this.closeLL = linearLayout;
        this.closeLive = imageView;
        this.countDownTips = textView;
        this.dishWheelLayout = viewStub;
        this.dividerView = view;
        this.facecastId = textView2;
        this.floatRecyclerViewContainer = frameLayout5;
        this.giftAnimContainer = frameLayout6;
        this.giftArea = frameLayout7;
        this.littlePusherArea = frameLayout8;
        this.littlePusherInfoArea = frameLayout9;
        this.liveEndInfoArea = frameLayout10;
        this.liveFloatChat = interceptTouchFrameLayout;
        this.liveGameArea = frameLayout11;
        this.liveInfoArea = frameLayout12;
        this.liveJoinMiddleTipsLy = linearLayout2;
        this.liveZanLy = addZanHeartView;
        this.mainBg = liveBroadCastScrollDownView2;
        this.maskVideoView = multiLivePlayView;
        this.pkInfoArea = frameLayout13;
        this.scrollLayout = liveScrollToClearScreenView;
        this.shareRoom = imageView2;
        this.userGuideSwipeToDismissStub = viewStub2;
        this.videoRecyclerView = multiLivePlayView2;
        this.webLiveGameArea = frameLayout14;
    }

    @NonNull
    public static FragmentMultiLiveBinding bind(@NonNull View view) {
        int i9 = R.id.acc_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.acc_view);
        if (frameLayout != null) {
            i9 = R.id.big_gift_box_area;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.big_gift_box_area);
            if (frameLayout2 != null) {
                i9 = R.id.blind_date_pusher;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.blind_date_pusher);
                if (frameLayout3 != null) {
                    i9 = R.id.chat_fragment;
                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.chat_fragment);
                    if (frameLayout4 != null) {
                        i9 = R.id.closeLL;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.closeLL);
                        if (linearLayout != null) {
                            i9 = R.id.close_live;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close_live);
                            if (imageView != null) {
                                i9 = R.id.count_down_tips;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_down_tips);
                                if (textView != null) {
                                    i9 = R.id.dish_wheel_layout;
                                    ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.dish_wheel_layout);
                                    if (viewStub != null) {
                                        i9 = R.id.dividerView;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.dividerView);
                                        if (findChildViewById != null) {
                                            i9 = R.id.facecast_id;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.facecast_id);
                                            if (textView2 != null) {
                                                i9 = R.id.float_recycler_view_container;
                                                FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_recycler_view_container);
                                                if (frameLayout5 != null) {
                                                    i9 = R.id.gift_anim_container;
                                                    FrameLayout frameLayout6 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.gift_anim_container);
                                                    if (frameLayout6 != null) {
                                                        i9 = R.id.gift_area;
                                                        FrameLayout frameLayout7 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.gift_area);
                                                        if (frameLayout7 != null) {
                                                            i9 = R.id.little_pusher_area;
                                                            FrameLayout frameLayout8 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.little_pusher_area);
                                                            if (frameLayout8 != null) {
                                                                i9 = R.id.little_pusher_info_area;
                                                                FrameLayout frameLayout9 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.little_pusher_info_area);
                                                                if (frameLayout9 != null) {
                                                                    i9 = R.id.live_end_info_area;
                                                                    FrameLayout frameLayout10 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_end_info_area);
                                                                    if (frameLayout10 != null) {
                                                                        i9 = R.id.live_float_chat;
                                                                        InterceptTouchFrameLayout interceptTouchFrameLayout = (InterceptTouchFrameLayout) ViewBindings.findChildViewById(view, R.id.live_float_chat);
                                                                        if (interceptTouchFrameLayout != null) {
                                                                            i9 = R.id.live_game_area;
                                                                            FrameLayout frameLayout11 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_game_area);
                                                                            if (frameLayout11 != null) {
                                                                                i9 = R.id.live_info_area;
                                                                                FrameLayout frameLayout12 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_info_area);
                                                                                if (frameLayout12 != null) {
                                                                                    i9 = R.id.live_join_middle_tips_ly;
                                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_join_middle_tips_ly);
                                                                                    if (linearLayout2 != null) {
                                                                                        i9 = R.id.live_zan_ly;
                                                                                        AddZanHeartView addZanHeartView = (AddZanHeartView) ViewBindings.findChildViewById(view, R.id.live_zan_ly);
                                                                                        if (addZanHeartView != null) {
                                                                                            LiveBroadCastScrollDownView liveBroadCastScrollDownView = (LiveBroadCastScrollDownView) view;
                                                                                            i9 = R.id.mask_video_view;
                                                                                            MultiLivePlayView multiLivePlayView = (MultiLivePlayView) ViewBindings.findChildViewById(view, R.id.mask_video_view);
                                                                                            if (multiLivePlayView != null) {
                                                                                                i9 = R.id.pk_info_area;
                                                                                                FrameLayout frameLayout13 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.pk_info_area);
                                                                                                if (frameLayout13 != null) {
                                                                                                    i9 = R.id.scroll_layout;
                                                                                                    LiveScrollToClearScreenView liveScrollToClearScreenView = (LiveScrollToClearScreenView) ViewBindings.findChildViewById(view, R.id.scroll_layout);
                                                                                                    if (liveScrollToClearScreenView != null) {
                                                                                                        i9 = R.id.share_room;
                                                                                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.share_room);
                                                                                                        if (imageView2 != null) {
                                                                                                            i9 = R.id.user_guide_swipe_to_dismiss_stub;
                                                                                                            ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, R.id.user_guide_swipe_to_dismiss_stub);
                                                                                                            if (viewStub2 != null) {
                                                                                                                i9 = R.id.video_recycler_view;
                                                                                                                MultiLivePlayView multiLivePlayView2 = (MultiLivePlayView) ViewBindings.findChildViewById(view, R.id.video_recycler_view);
                                                                                                                if (multiLivePlayView2 != null) {
                                                                                                                    i9 = R.id.web_live_game_area;
                                                                                                                    FrameLayout frameLayout14 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.web_live_game_area);
                                                                                                                    if (frameLayout14 != null) {
                                                                                                                        return new FragmentMultiLiveBinding(liveBroadCastScrollDownView, frameLayout, frameLayout2, frameLayout3, frameLayout4, linearLayout, imageView, textView, viewStub, findChildViewById, textView2, frameLayout5, frameLayout6, frameLayout7, frameLayout8, frameLayout9, frameLayout10, interceptTouchFrameLayout, frameLayout11, frameLayout12, linearLayout2, addZanHeartView, liveBroadCastScrollDownView, multiLivePlayView, frameLayout13, liveScrollToClearScreenView, imageView2, viewStub2, multiLivePlayView2, frameLayout14);
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
    public static FragmentMultiLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentMultiLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_multi_live, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LiveBroadCastScrollDownView getRoot() {
        return this.rootView;
    }
}
