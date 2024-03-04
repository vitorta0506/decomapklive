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
import com.guochao.component.liveroomcommon.view.LiveRoomRootView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AddZanHeartView;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.component.live.view.InterceptTouchFrameLayout;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class FragmentLiveRoomBinding implements ViewBinding {
    @NonNull
    public final FrameLayout accVideoView;
    @NonNull
    public final FrameLayout bigGiftBoxArea;
    @NonNull
    public final ViewStub callingInfo;
    @NonNull
    public final FrameLayout chatFragment;
    @NonNull
    public final LinearLayout closeLL;
    @NonNull
    public final ImageView closeLive;
    @NonNull
    public final ViewStub dishWheelLayout;
    @NonNull
    public final View dividerView;
    @NonNull
    public final TextView facecastId;
    @NonNull
    public final FrameLayout floatRecyclerViewContainer;
    @NonNull
    public final ViewStub focusBottomBarArea;
    @NonNull
    public final FrameLayout giftAnimContainer;
    @NonNull
    public final FrameLayout giftArea;
    @NonNull
    public final TextView linkmicUserName;
    @NonNull
    public final FrameLayout littlePusherArea;
    @NonNull
    public final FrameLayout littlePusherInfoArea;
    @NonNull
    public final FrameLayout littlePusherInfoAreaClickArea;
    @NonNull
    public final ImageView liveBg;
    @NonNull
    public final FrameLayout liveEndInfoArea;
    @NonNull
    public final InterceptTouchFrameLayout liveFloatChat;
    @NonNull
    public final FrameLayout liveGameArea;
    @NonNull
    public final LiveRoomRootView liveItemContent;
    @NonNull
    public final LinearLayout liveJoinMiddleTipsLy;
    @NonNull
    public final AddZanHeartView liveZanLy;
    @NonNull
    public final SVGAImageView loading;
    @NonNull
    public final MultiLivePlayView maskVideoView;
    @NonNull
    public final FrameLayout pkInfoArea;
    @NonNull
    public final FrameLayout pushCloudView;
    @NonNull
    private final LiveRoomRootView rootView;
    @NonNull
    public final LiveScrollToClearScreenView scrollLayout;
    @NonNull
    public final ImageView shareRoom;
    @NonNull
    public final TextView userGuideGift;
    @NonNull
    public final ViewStub userGuideStub;
    @NonNull
    public final ViewStub userGuideSwipeToDismissStub;
    @NonNull
    public final MultiLivePlayView videoRecyclerView;
    @NonNull
    public final FrameLayout voiceRoomSeatArea;
    @NonNull
    public final FrameLayout webLiveGameArea;

    private FragmentLiveRoomBinding(@NonNull LiveRoomRootView liveRoomRootView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ViewStub viewStub, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ViewStub viewStub2, @NonNull View view, @NonNull TextView textView, @NonNull FrameLayout frameLayout4, @NonNull ViewStub viewStub3, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull TextView textView2, @NonNull FrameLayout frameLayout7, @NonNull FrameLayout frameLayout8, @NonNull FrameLayout frameLayout9, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout10, @NonNull InterceptTouchFrameLayout interceptTouchFrameLayout, @NonNull FrameLayout frameLayout11, @NonNull LiveRoomRootView liveRoomRootView2, @NonNull LinearLayout linearLayout2, @NonNull AddZanHeartView addZanHeartView, @NonNull SVGAImageView sVGAImageView, @NonNull MultiLivePlayView multiLivePlayView, @NonNull FrameLayout frameLayout12, @NonNull FrameLayout frameLayout13, @NonNull LiveScrollToClearScreenView liveScrollToClearScreenView, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull ViewStub viewStub4, @NonNull ViewStub viewStub5, @NonNull MultiLivePlayView multiLivePlayView2, @NonNull FrameLayout frameLayout14, @NonNull FrameLayout frameLayout15) {
        this.rootView = liveRoomRootView;
        this.accVideoView = frameLayout;
        this.bigGiftBoxArea = frameLayout2;
        this.callingInfo = viewStub;
        this.chatFragment = frameLayout3;
        this.closeLL = linearLayout;
        this.closeLive = imageView;
        this.dishWheelLayout = viewStub2;
        this.dividerView = view;
        this.facecastId = textView;
        this.floatRecyclerViewContainer = frameLayout4;
        this.focusBottomBarArea = viewStub3;
        this.giftAnimContainer = frameLayout5;
        this.giftArea = frameLayout6;
        this.linkmicUserName = textView2;
        this.littlePusherArea = frameLayout7;
        this.littlePusherInfoArea = frameLayout8;
        this.littlePusherInfoAreaClickArea = frameLayout9;
        this.liveBg = imageView2;
        this.liveEndInfoArea = frameLayout10;
        this.liveFloatChat = interceptTouchFrameLayout;
        this.liveGameArea = frameLayout11;
        this.liveItemContent = liveRoomRootView2;
        this.liveJoinMiddleTipsLy = linearLayout2;
        this.liveZanLy = addZanHeartView;
        this.loading = sVGAImageView;
        this.maskVideoView = multiLivePlayView;
        this.pkInfoArea = frameLayout12;
        this.pushCloudView = frameLayout13;
        this.scrollLayout = liveScrollToClearScreenView;
        this.shareRoom = imageView3;
        this.userGuideGift = textView3;
        this.userGuideStub = viewStub4;
        this.userGuideSwipeToDismissStub = viewStub5;
        this.videoRecyclerView = multiLivePlayView2;
        this.voiceRoomSeatArea = frameLayout14;
        this.webLiveGameArea = frameLayout15;
    }

    @NonNull
    public static FragmentLiveRoomBinding bind(@NonNull View view) {
        int i9 = R.id.acc_video_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.acc_video_view);
        if (frameLayout != null) {
            i9 = R.id.big_gift_box_area;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.big_gift_box_area);
            if (frameLayout2 != null) {
                i9 = R.id.calling_info;
                ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.calling_info);
                if (viewStub != null) {
                    i9 = R.id.chat_fragment;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.chat_fragment);
                    if (frameLayout3 != null) {
                        i9 = R.id.closeLL;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.closeLL);
                        if (linearLayout != null) {
                            i9 = R.id.close_live;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close_live);
                            if (imageView != null) {
                                i9 = R.id.dish_wheel_layout;
                                ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, R.id.dish_wheel_layout);
                                if (viewStub2 != null) {
                                    i9 = R.id.dividerView;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.dividerView);
                                    if (findChildViewById != null) {
                                        i9 = R.id.facecast_id;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.facecast_id);
                                        if (textView != null) {
                                            i9 = R.id.float_recycler_view_container;
                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_recycler_view_container);
                                            if (frameLayout4 != null) {
                                                i9 = R.id.focus_bottom_bar_area;
                                                ViewStub viewStub3 = (ViewStub) ViewBindings.findChildViewById(view, R.id.focus_bottom_bar_area);
                                                if (viewStub3 != null) {
                                                    i9 = R.id.gift_anim_container;
                                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.gift_anim_container);
                                                    if (frameLayout5 != null) {
                                                        i9 = R.id.gift_area;
                                                        FrameLayout frameLayout6 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.gift_area);
                                                        if (frameLayout6 != null) {
                                                            i9 = R.id.linkmic_user_name;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.linkmic_user_name);
                                                            if (textView2 != null) {
                                                                i9 = R.id.little_pusher_area;
                                                                FrameLayout frameLayout7 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.little_pusher_area);
                                                                if (frameLayout7 != null) {
                                                                    i9 = R.id.little_pusher_info_area;
                                                                    FrameLayout frameLayout8 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.little_pusher_info_area);
                                                                    if (frameLayout8 != null) {
                                                                        i9 = R.id.little_pusher_info_area_click_area;
                                                                        FrameLayout frameLayout9 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.little_pusher_info_area_click_area);
                                                                        if (frameLayout9 != null) {
                                                                            i9 = R.id.live_bg;
                                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_bg);
                                                                            if (imageView2 != null) {
                                                                                i9 = R.id.live_end_info_area;
                                                                                FrameLayout frameLayout10 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_end_info_area);
                                                                                if (frameLayout10 != null) {
                                                                                    i9 = R.id.live_float_chat;
                                                                                    InterceptTouchFrameLayout interceptTouchFrameLayout = (InterceptTouchFrameLayout) ViewBindings.findChildViewById(view, R.id.live_float_chat);
                                                                                    if (interceptTouchFrameLayout != null) {
                                                                                        i9 = R.id.live_game_area;
                                                                                        FrameLayout frameLayout11 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_game_area);
                                                                                        if (frameLayout11 != null) {
                                                                                            LiveRoomRootView liveRoomRootView = (LiveRoomRootView) view;
                                                                                            i9 = R.id.live_join_middle_tips_ly;
                                                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_join_middle_tips_ly);
                                                                                            if (linearLayout2 != null) {
                                                                                                i9 = R.id.live_zan_ly;
                                                                                                AddZanHeartView addZanHeartView = (AddZanHeartView) ViewBindings.findChildViewById(view, R.id.live_zan_ly);
                                                                                                if (addZanHeartView != null) {
                                                                                                    i9 = R.id.loading;
                                                                                                    SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.loading);
                                                                                                    if (sVGAImageView != null) {
                                                                                                        i9 = R.id.mask_video_view;
                                                                                                        MultiLivePlayView multiLivePlayView = (MultiLivePlayView) ViewBindings.findChildViewById(view, R.id.mask_video_view);
                                                                                                        if (multiLivePlayView != null) {
                                                                                                            i9 = R.id.pk_info_area;
                                                                                                            FrameLayout frameLayout12 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.pk_info_area);
                                                                                                            if (frameLayout12 != null) {
                                                                                                                i9 = R.id.push_cloud_view;
                                                                                                                FrameLayout frameLayout13 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.push_cloud_view);
                                                                                                                if (frameLayout13 != null) {
                                                                                                                    i9 = R.id.scroll_layout;
                                                                                                                    LiveScrollToClearScreenView liveScrollToClearScreenView = (LiveScrollToClearScreenView) ViewBindings.findChildViewById(view, R.id.scroll_layout);
                                                                                                                    if (liveScrollToClearScreenView != null) {
                                                                                                                        i9 = R.id.share_room;
                                                                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.share_room);
                                                                                                                        if (imageView3 != null) {
                                                                                                                            i9 = R.id.user_guide_gift;
                                                                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_guide_gift);
                                                                                                                            if (textView3 != null) {
                                                                                                                                i9 = R.id.user_guide_stub;
                                                                                                                                ViewStub viewStub4 = (ViewStub) ViewBindings.findChildViewById(view, R.id.user_guide_stub);
                                                                                                                                if (viewStub4 != null) {
                                                                                                                                    i9 = R.id.user_guide_swipe_to_dismiss_stub;
                                                                                                                                    ViewStub viewStub5 = (ViewStub) ViewBindings.findChildViewById(view, R.id.user_guide_swipe_to_dismiss_stub);
                                                                                                                                    if (viewStub5 != null) {
                                                                                                                                        i9 = R.id.video_recycler_view;
                                                                                                                                        MultiLivePlayView multiLivePlayView2 = (MultiLivePlayView) ViewBindings.findChildViewById(view, R.id.video_recycler_view);
                                                                                                                                        if (multiLivePlayView2 != null) {
                                                                                                                                            i9 = R.id.voice_room_seat_area;
                                                                                                                                            FrameLayout frameLayout14 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.voice_room_seat_area);
                                                                                                                                            if (frameLayout14 != null) {
                                                                                                                                                i9 = R.id.web_live_game_area;
                                                                                                                                                FrameLayout frameLayout15 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.web_live_game_area);
                                                                                                                                                if (frameLayout15 != null) {
                                                                                                                                                    return new FragmentLiveRoomBinding(liveRoomRootView, frameLayout, frameLayout2, viewStub, frameLayout3, linearLayout, imageView, viewStub2, findChildViewById, textView, frameLayout4, viewStub3, frameLayout5, frameLayout6, textView2, frameLayout7, frameLayout8, frameLayout9, imageView2, frameLayout10, interceptTouchFrameLayout, frameLayout11, liveRoomRootView, linearLayout2, addZanHeartView, sVGAImageView, multiLivePlayView, frameLayout12, frameLayout13, liveScrollToClearScreenView, imageView3, textView3, viewStub4, viewStub5, multiLivePlayView2, frameLayout14, frameLayout15);
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
    public static FragmentLiveRoomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveRoomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LiveRoomRootView getRoot() {
        return this.rootView;
    }
}
