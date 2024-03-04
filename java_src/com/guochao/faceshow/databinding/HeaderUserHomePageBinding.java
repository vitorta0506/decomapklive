package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.youth.banner.Banner;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class HeaderUserHomePageBinding implements ViewBinding {
    @NonNull
    public final RecyclerView avatarImgs;
    @NonNull
    public final NormalCircleImageView currentUserAvatar;
    @NonNull
    public final LinearLayout enterLiveVoiceRoom;
    @NonNull
    public final NormalCircleImageView firstVoiceAvatar;
    @NonNull
    public final TextView matchCount;
    @NonNull
    public final LinearLayout numberInfoLy;
    @NonNull
    public final Banner photoWalls;
    @NonNull
    private final View rootView;
    @NonNull
    public final NormalCircleImageView secondVoiceAvatar;
    @NonNull
    public final NormalCircleImageView thirdVoiceAvatar;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final TextView userDistance;
    @NonNull
    public final TextView userId;
    @NonNull
    public final TextView userId2;
    @NonNull
    public final LinearLayout userIdLay;
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
    public final TextView userInfoSend;
    @NonNull
    public final LinearLayout userInfoSendLy;
    @NonNull
    public final TextView userInfoSendValue;
    @NonNull
    public final TextView userLivelyTime;
    @NonNull
    public final LinearLayout userMatchLay;
    @NonNull
    public final TextView userName;
    @NonNull
    public final LinearLayout userNameLay;
    @NonNull
    public final LinearLayout voiceRoomLay;
    @NonNull
    public final TextView voiceRoomName;
    @NonNull
    public final SvgaImageViewV2 voiceSvga;
    @NonNull
    public final ImageView voiceUserSelf;

    private HeaderUserHomePageBinding(@NonNull View view, @NonNull RecyclerView recyclerView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView2, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull Banner banner, @NonNull NormalCircleImageView normalCircleImageView3, @NonNull NormalCircleImageView normalCircleImageView4, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull TextView textView5, @NonNull LinearLayout linearLayout4, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull LinearLayout linearLayout5, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull LinearLayout linearLayout6, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull LinearLayout linearLayout7, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull LinearLayout linearLayout8, @NonNull TextView textView14, @NonNull LinearLayout linearLayout9, @NonNull LinearLayout linearLayout10, @NonNull TextView textView15, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull ImageView imageView) {
        this.rootView = view;
        this.avatarImgs = recyclerView;
        this.currentUserAvatar = normalCircleImageView;
        this.enterLiveVoiceRoom = linearLayout;
        this.firstVoiceAvatar = normalCircleImageView2;
        this.matchCount = textView;
        this.numberInfoLy = linearLayout2;
        this.photoWalls = banner;
        this.secondVoiceAvatar = normalCircleImageView3;
        this.thirdVoiceAvatar = normalCircleImageView4;
        this.userAvatar = headPortraitView;
        this.userDistance = textView2;
        this.userId = textView3;
        this.userId2 = textView4;
        this.userIdLay = linearLayout3;
        this.userInfoFans = textView5;
        this.userInfoFansLy = linearLayout4;
        this.userInfoFansValue = textView6;
        this.userInfoFollow = textView7;
        this.userInfoFollowLy = linearLayout5;
        this.userInfoFollowValue = textView8;
        this.userInfoGift = textView9;
        this.userInfoGiftLy = linearLayout6;
        this.userInfoGiftValue = textView10;
        this.userInfoSend = textView11;
        this.userInfoSendLy = linearLayout7;
        this.userInfoSendValue = textView12;
        this.userLivelyTime = textView13;
        this.userMatchLay = linearLayout8;
        this.userName = textView14;
        this.userNameLay = linearLayout9;
        this.voiceRoomLay = linearLayout10;
        this.voiceRoomName = textView15;
        this.voiceSvga = svgaImageViewV2;
        this.voiceUserSelf = imageView;
    }

    @NonNull
    public static HeaderUserHomePageBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_imgs;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.avatar_imgs);
        if (recyclerView != null) {
            i9 = R.id.current_user_avatar;
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.current_user_avatar);
            if (normalCircleImageView != null) {
                i9 = R.id.enter_live_voice_room;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.enter_live_voice_room);
                if (linearLayout != null) {
                    i9 = R.id.first_voice_avatar;
                    NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.first_voice_avatar);
                    if (normalCircleImageView2 != null) {
                        i9 = R.id.match_count;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.match_count);
                        if (textView != null) {
                            i9 = R.id.number_info_ly;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.number_info_ly);
                            if (linearLayout2 != null) {
                                i9 = R.id.photo_walls;
                                Banner banner = (Banner) ViewBindings.findChildViewById(view, R.id.photo_walls);
                                if (banner != null) {
                                    i9 = R.id.second_voice_avatar;
                                    NormalCircleImageView normalCircleImageView3 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.second_voice_avatar);
                                    if (normalCircleImageView3 != null) {
                                        i9 = R.id.third_voice_avatar;
                                        NormalCircleImageView normalCircleImageView4 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.third_voice_avatar);
                                        if (normalCircleImageView4 != null) {
                                            i9 = R.id.user_avatar;
                                            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                                            if (headPortraitView != null) {
                                                i9 = R.id.user_distance;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_distance);
                                                if (textView2 != null) {
                                                    i9 = R.id.user_id;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_id);
                                                    if (textView3 != null) {
                                                        i9 = R.id.user_id2;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.user_id2);
                                                        if (textView4 != null) {
                                                            i9 = R.id.user_id_lay;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_id_lay);
                                                            if (linearLayout3 != null) {
                                                                i9 = R.id.user_info_fans;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_fans);
                                                                if (textView5 != null) {
                                                                    i9 = R.id.user_info_fans_ly;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_fans_ly);
                                                                    if (linearLayout4 != null) {
                                                                        i9 = R.id.user_info_fans_value;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_fans_value);
                                                                        if (textView6 != null) {
                                                                            i9 = R.id.user_info_follow;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_follow);
                                                                            if (textView7 != null) {
                                                                                i9 = R.id.user_info_follow_ly;
                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_follow_ly);
                                                                                if (linearLayout5 != null) {
                                                                                    i9 = R.id.user_info_follow_value;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_follow_value);
                                                                                    if (textView8 != null) {
                                                                                        i9 = R.id.user_info_gift;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_gift);
                                                                                        if (textView9 != null) {
                                                                                            i9 = R.id.user_info_gift_ly;
                                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_gift_ly);
                                                                                            if (linearLayout6 != null) {
                                                                                                i9 = R.id.user_info_gift_value;
                                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_gift_value);
                                                                                                if (textView10 != null) {
                                                                                                    i9 = R.id.user_info_send;
                                                                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_send);
                                                                                                    if (textView11 != null) {
                                                                                                        i9 = R.id.user_info_send_ly;
                                                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_send_ly);
                                                                                                        if (linearLayout7 != null) {
                                                                                                            i9 = R.id.user_info_send_value;
                                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.user_info_send_value);
                                                                                                            if (textView12 != null) {
                                                                                                                i9 = R.id.user_lively_time;
                                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.user_lively_time);
                                                                                                                if (textView13 != null) {
                                                                                                                    i9 = R.id.user_match_lay;
                                                                                                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_match_lay);
                                                                                                                    if (linearLayout8 != null) {
                                                                                                                        i9 = R.id.user_name;
                                                                                                                        TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                                                                                        if (textView14 != null) {
                                                                                                                            i9 = R.id.user_name_lay;
                                                                                                                            LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_name_lay);
                                                                                                                            if (linearLayout9 != null) {
                                                                                                                                i9 = R.id.voice_room_lay;
                                                                                                                                LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.voice_room_lay);
                                                                                                                                if (linearLayout10 != null) {
                                                                                                                                    i9 = R.id.voice_room_name;
                                                                                                                                    TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.voice_room_name);
                                                                                                                                    if (textView15 != null) {
                                                                                                                                        i9 = R.id.voice_svga;
                                                                                                                                        SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.voice_svga);
                                                                                                                                        if (svgaImageViewV2 != null) {
                                                                                                                                            i9 = R.id.voice_user_self;
                                                                                                                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.voice_user_self);
                                                                                                                                            if (imageView != null) {
                                                                                                                                                return new HeaderUserHomePageBinding(view, recyclerView, normalCircleImageView, linearLayout, normalCircleImageView2, textView, linearLayout2, banner, normalCircleImageView3, normalCircleImageView4, headPortraitView, textView2, textView3, textView4, linearLayout3, textView5, linearLayout4, textView6, textView7, linearLayout5, textView8, textView9, linearLayout6, textView10, textView11, linearLayout7, textView12, textView13, linearLayout8, textView14, linearLayout9, linearLayout10, textView15, svgaImageViewV2, imageView);
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
    public static HeaderUserHomePageBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.header_user_home_page, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
