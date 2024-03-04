package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.InnerRecyclerView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentVoiceRoomLiveTopUserInfoBinding implements ViewBinding {
    @NonNull
    public final ImageView closeRoom;
    @NonNull
    public final View dividerView;
    @NonNull
    public final ImageView focusBtn;
    @NonNull
    public final SvgaImageViewV2 focusSVGA;
    @NonNull
    public final TextView inRoomMemberCount;
    @NonNull
    public final TextView masterName;
    @NonNull
    public final LinearLayout members;
    @NonNull
    public final TextView roomId;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView shareRoom;
    @NonNull
    public final LinearLayout topInfo;
    @NonNull
    public final LinearLayout topInfoClick;
    @NonNull
    public final LinearLayout userInfoLay;
    @NonNull
    public final InnerRecyclerView userInfoRecyclerView;
    @NonNull
    public final ImageView voiceRoomHostHead;

    private FragmentVoiceRoomLiveTopUserInfoBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull ImageView imageView2, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull InnerRecyclerView innerRecyclerView, @NonNull ImageView imageView4) {
        this.rootView = linearLayout;
        this.closeRoom = imageView;
        this.dividerView = view;
        this.focusBtn = imageView2;
        this.focusSVGA = svgaImageViewV2;
        this.inRoomMemberCount = textView;
        this.masterName = textView2;
        this.members = linearLayout2;
        this.roomId = textView3;
        this.shareRoom = imageView3;
        this.topInfo = linearLayout3;
        this.topInfoClick = linearLayout4;
        this.userInfoLay = linearLayout5;
        this.userInfoRecyclerView = innerRecyclerView;
        this.voiceRoomHostHead = imageView4;
    }

    @NonNull
    public static FragmentVoiceRoomLiveTopUserInfoBinding bind(@NonNull View view) {
        int i9 = R.id.close_room;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close_room);
        if (imageView != null) {
            i9 = R.id.dividerView;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.dividerView);
            if (findChildViewById != null) {
                i9 = R.id.focus_btn;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.focus_btn);
                if (imageView2 != null) {
                    i9 = R.id.focusSVGA;
                    SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.focusSVGA);
                    if (svgaImageViewV2 != null) {
                        i9 = R.id.in_room_member_count;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.in_room_member_count);
                        if (textView != null) {
                            i9 = R.id.master_name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.master_name);
                            if (textView2 != null) {
                                i9 = R.id.members;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.members);
                                if (linearLayout != null) {
                                    i9 = R.id.room_id;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.room_id);
                                    if (textView3 != null) {
                                        i9 = R.id.share_room;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.share_room);
                                        if (imageView3 != null) {
                                            i9 = R.id.top_info;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top_info);
                                            if (linearLayout2 != null) {
                                                i9 = R.id.top_info_click;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top_info_click);
                                                if (linearLayout3 != null) {
                                                    i9 = R.id.user_info_lay;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_lay);
                                                    if (linearLayout4 != null) {
                                                        i9 = R.id.user_info_recycler_view;
                                                        InnerRecyclerView innerRecyclerView = (InnerRecyclerView) ViewBindings.findChildViewById(view, R.id.user_info_recycler_view);
                                                        if (innerRecyclerView != null) {
                                                            i9 = R.id.voice_room_host_head;
                                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.voice_room_host_head);
                                                            if (imageView4 != null) {
                                                                return new FragmentVoiceRoomLiveTopUserInfoBinding((LinearLayout) view, imageView, findChildViewById, imageView2, svgaImageViewV2, textView, textView2, linearLayout, textView3, imageView3, linearLayout2, linearLayout3, linearLayout4, innerRecyclerView, imageView4);
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
    public static FragmentVoiceRoomLiveTopUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomLiveTopUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_voice_room_live_top_user_info, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
