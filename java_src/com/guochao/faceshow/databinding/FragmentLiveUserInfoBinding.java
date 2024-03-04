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
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.InnerRecyclerView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentLiveUserInfoBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView closeRoom;
    @NonNull
    public final View dividerView;
    @NonNull
    public final ImageView focusBtn;
    @NonNull
    public final SvgaImageViewV2 focusSVGA;
    @NonNull
    public final ImageView ivMotion;
    @NonNull
    public final LinearLayout liveFbAndLikeLy;
    @NonNull
    public final TextView liveFbCount;
    @NonNull
    public final TextView liveLikeCount;
    @NonNull
    public final LinearLayout llFb;
    @NonNull
    public final LinearLayout llLikeCount;
    @NonNull
    public final TextView masterName;
    @NonNull
    public final LinearLayout nameLy;
    @NonNull
    public final TextView onlineCountText;
    @NonNull
    public final LayoutRankListBinding rankMulti;
    @NonNull
    public final LayoutRankListBinding rankSingle;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView shareRoom;
    @NonNull
    public final LinearLayout titleHeadBg;
    @NonNull
    public final LinearLayout topInfo;
    @NonNull
    public final FrameLayout topInfoClick;
    @NonNull
    public final RelativeLayout userInfoLay;
    @NonNull
    public final InnerRecyclerView userInfoRecyclerView;

    private FragmentLiveUserInfoBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull View view, @NonNull ImageView imageView2, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull LinearLayout linearLayout5, @NonNull TextView textView4, @NonNull LayoutRankListBinding layoutRankListBinding, @NonNull LayoutRankListBinding layoutRankListBinding2, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull InnerRecyclerView innerRecyclerView) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.closeRoom = imageView;
        this.dividerView = view;
        this.focusBtn = imageView2;
        this.focusSVGA = svgaImageViewV2;
        this.ivMotion = imageView3;
        this.liveFbAndLikeLy = linearLayout2;
        this.liveFbCount = textView;
        this.liveLikeCount = textView2;
        this.llFb = linearLayout3;
        this.llLikeCount = linearLayout4;
        this.masterName = textView3;
        this.nameLy = linearLayout5;
        this.onlineCountText = textView4;
        this.rankMulti = layoutRankListBinding;
        this.rankSingle = layoutRankListBinding2;
        this.shareRoom = imageView4;
        this.titleHeadBg = linearLayout6;
        this.topInfo = linearLayout7;
        this.topInfoClick = frameLayout;
        this.userInfoLay = relativeLayout;
        this.userInfoRecyclerView = innerRecyclerView;
    }

    @NonNull
    public static FragmentLiveUserInfoBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.close_room;
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
                            i9 = R.id.iv_motion;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_motion);
                            if (imageView3 != null) {
                                i9 = R.id.live_fb_and_like_ly;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_fb_and_like_ly);
                                if (linearLayout != null) {
                                    i9 = R.id.live_fb_count;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.live_fb_count);
                                    if (textView != null) {
                                        i9 = R.id.live_like_count;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.live_like_count);
                                        if (textView2 != null) {
                                            i9 = R.id.ll_fb;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_fb);
                                            if (linearLayout2 != null) {
                                                i9 = R.id.ll_like_count;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_like_count);
                                                if (linearLayout3 != null) {
                                                    i9 = R.id.master_name;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.master_name);
                                                    if (textView3 != null) {
                                                        i9 = R.id.name_ly;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.name_ly);
                                                        if (linearLayout4 != null) {
                                                            i9 = R.id.online_count_text;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.online_count_text);
                                                            if (textView4 != null) {
                                                                i9 = R.id.rank_multi;
                                                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.rank_multi);
                                                                if (findChildViewById2 != null) {
                                                                    LayoutRankListBinding bind = LayoutRankListBinding.bind(findChildViewById2);
                                                                    i9 = R.id.rank_single;
                                                                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.rank_single);
                                                                    if (findChildViewById3 != null) {
                                                                        LayoutRankListBinding bind2 = LayoutRankListBinding.bind(findChildViewById3);
                                                                        i9 = R.id.share_room;
                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.share_room);
                                                                        if (imageView4 != null) {
                                                                            i9 = R.id.title_head_bg;
                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.title_head_bg);
                                                                            if (linearLayout5 != null) {
                                                                                i9 = R.id.top_info;
                                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top_info);
                                                                                if (linearLayout6 != null) {
                                                                                    i9 = R.id.top_info_click;
                                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.top_info_click);
                                                                                    if (frameLayout != null) {
                                                                                        i9 = R.id.user_info_lay;
                                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.user_info_lay);
                                                                                        if (relativeLayout != null) {
                                                                                            i9 = R.id.user_info_recycler_view;
                                                                                            InnerRecyclerView innerRecyclerView = (InnerRecyclerView) ViewBindings.findChildViewById(view, R.id.user_info_recycler_view);
                                                                                            if (innerRecyclerView != null) {
                                                                                                return new FragmentLiveUserInfoBinding((LinearLayout) view, headPortraitView, imageView, findChildViewById, imageView2, svgaImageViewV2, imageView3, linearLayout, textView, textView2, linearLayout2, linearLayout3, textView3, linearLayout4, textView4, bind, bind2, imageView4, linearLayout5, linearLayout6, frameLayout, relativeLayout, innerRecyclerView);
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
    public static FragmentLiveUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_user_info, viewGroup, false);
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
