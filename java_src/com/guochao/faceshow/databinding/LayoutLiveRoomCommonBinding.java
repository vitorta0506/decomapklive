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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView;
import com.guochao.faceshow.aaspring.views.InterceptTouchLinearLayout;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutLiveRoomCommonBinding implements ViewBinding {
    @NonNull
    public final LinearLayout adsAndActivity;
    @NonNull
    public final InterceptTouchLinearLayout adsAndGiftBox;
    @NonNull
    public final ImageView adsClose;
    @NonNull
    public final FrameLayout adsLay;
    @NonNull
    public final LinearLayout adsView;
    @NonNull
    public final ImageView btnInvite;
    @NonNull
    public final ImageView firstRechargeCloseVoice;
    @NonNull
    public final FrameLayout firstRechargeLayVoice;
    @NonNull
    public final ImageView firstRechargeVoice;
    @NonNull
    public final FrameLayout floatInfoRecyclerViewContainer;
    @NonNull
    public final LiveActivityView liveActivityView;
    @NonNull
    public final ViewStub musicActivityLive;
    @NonNull
    private final View rootView;
    @NonNull
    public final TextView tvRechargeDowntownTimeVoice;
    @NonNull
    public final FrameLayout userInfoFragment;
    @NonNull
    public final MultiLivePlayView videoInfoRecyclerView;

    private LayoutLiveRoomCommonBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull InterceptTouchLinearLayout interceptTouchLinearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView4, @NonNull FrameLayout frameLayout3, @NonNull LiveActivityView liveActivityView, @NonNull ViewStub viewStub, @NonNull TextView textView, @NonNull FrameLayout frameLayout4, @NonNull MultiLivePlayView multiLivePlayView) {
        this.rootView = view;
        this.adsAndActivity = linearLayout;
        this.adsAndGiftBox = interceptTouchLinearLayout;
        this.adsClose = imageView;
        this.adsLay = frameLayout;
        this.adsView = linearLayout2;
        this.btnInvite = imageView2;
        this.firstRechargeCloseVoice = imageView3;
        this.firstRechargeLayVoice = frameLayout2;
        this.firstRechargeVoice = imageView4;
        this.floatInfoRecyclerViewContainer = frameLayout3;
        this.liveActivityView = liveActivityView;
        this.musicActivityLive = viewStub;
        this.tvRechargeDowntownTimeVoice = textView;
        this.userInfoFragment = frameLayout4;
        this.videoInfoRecyclerView = multiLivePlayView;
    }

    @NonNull
    public static LayoutLiveRoomCommonBinding bind(@NonNull View view) {
        int i9 = R.id.ads_and_activity;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ads_and_activity);
        if (linearLayout != null) {
            i9 = R.id.ads_and_gift_box;
            InterceptTouchLinearLayout interceptTouchLinearLayout = (InterceptTouchLinearLayout) ViewBindings.findChildViewById(view, R.id.ads_and_gift_box);
            if (interceptTouchLinearLayout != null) {
                i9 = R.id.ads_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ads_close);
                if (imageView != null) {
                    i9 = R.id.ads_lay;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.ads_lay);
                    if (frameLayout != null) {
                        i9 = R.id.ads_view;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ads_view);
                        if (linearLayout2 != null) {
                            i9 = R.id.btn_invite;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_invite);
                            if (imageView2 != null) {
                                i9 = R.id.first_recharge_close_voice;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.first_recharge_close_voice);
                                if (imageView3 != null) {
                                    i9 = R.id.first_recharge_lay_voice;
                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.first_recharge_lay_voice);
                                    if (frameLayout2 != null) {
                                        i9 = R.id.first_recharge_voice;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.first_recharge_voice);
                                        if (imageView4 != null) {
                                            i9 = R.id.float_info_recycler_view_container;
                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_info_recycler_view_container);
                                            if (frameLayout3 != null) {
                                                i9 = R.id.live_activity_view;
                                                LiveActivityView liveActivityView = (LiveActivityView) ViewBindings.findChildViewById(view, R.id.live_activity_view);
                                                if (liveActivityView != null) {
                                                    i9 = R.id.music_activity_live;
                                                    ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.music_activity_live);
                                                    if (viewStub != null) {
                                                        i9 = R.id.tv_recharge_downtown_time_voice;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_recharge_downtown_time_voice);
                                                        if (textView != null) {
                                                            i9 = R.id.user_info_fragment;
                                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.user_info_fragment);
                                                            if (frameLayout4 != null) {
                                                                i9 = R.id.video_info_recycler_view;
                                                                MultiLivePlayView multiLivePlayView = (MultiLivePlayView) ViewBindings.findChildViewById(view, R.id.video_info_recycler_view);
                                                                if (multiLivePlayView != null) {
                                                                    return new LayoutLiveRoomCommonBinding(view, linearLayout, interceptTouchLinearLayout, imageView, frameLayout, linearLayout2, imageView2, imageView3, frameLayout2, imageView4, frameLayout3, liveActivityView, viewStub, textView, frameLayout4, multiLivePlayView);
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
    public static LayoutLiveRoomCommonBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_live_room_common, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
