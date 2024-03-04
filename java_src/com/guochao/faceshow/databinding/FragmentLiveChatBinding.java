package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NoBottomEdgeRecyclerView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentLiveChatBinding implements ViewBinding {
    @NonNull
    public final SvgaImageViewV2 callingBtn;
    @NonNull
    public final TextView helloUnreadNum;
    @NonNull
    public final ImageView iconMultiGame;
    @NonNull
    public final ImageView imDot;
    @NonNull
    public final LinearLayout liveBtns;
    @NonNull
    public final ImageView liveChatBtn;
    @NonNull
    public final SvgaImageViewV2 liveGiftBtn;
    @NonNull
    public final FrameLayout liveImBtn;
    @NonNull
    public final FrameLayout liveMoreBtn;
    @NonNull
    public final ImageView liveNormalBtn;
    @NonNull
    public final LayoutPkIconBinding pkLayoutLive;
    @NonNull
    public final NoBottomEdgeRecyclerView recyclerView;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final Space space;

    private FragmentLiveChatBinding(@NonNull RelativeLayout relativeLayout, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView3, @NonNull SvgaImageViewV2 svgaImageViewV22, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView4, @NonNull LayoutPkIconBinding layoutPkIconBinding, @NonNull NoBottomEdgeRecyclerView noBottomEdgeRecyclerView, @NonNull Space space) {
        this.rootView = relativeLayout;
        this.callingBtn = svgaImageViewV2;
        this.helloUnreadNum = textView;
        this.iconMultiGame = imageView;
        this.imDot = imageView2;
        this.liveBtns = linearLayout;
        this.liveChatBtn = imageView3;
        this.liveGiftBtn = svgaImageViewV22;
        this.liveImBtn = frameLayout;
        this.liveMoreBtn = frameLayout2;
        this.liveNormalBtn = imageView4;
        this.pkLayoutLive = layoutPkIconBinding;
        this.recyclerView = noBottomEdgeRecyclerView;
        this.space = space;
    }

    @NonNull
    public static FragmentLiveChatBinding bind(@NonNull View view) {
        int i9 = R.id.calling_btn;
        SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.calling_btn);
        if (svgaImageViewV2 != null) {
            i9 = R.id.hello_unread_num;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.hello_unread_num);
            if (textView != null) {
                i9 = R.id.icon_multi_game;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_multi_game);
                if (imageView != null) {
                    i9 = R.id.im_dot;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.im_dot);
                    if (imageView2 != null) {
                        i9 = R.id.live_btns;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.live_btns);
                        if (linearLayout != null) {
                            i9 = R.id.live_chat_btn;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_chat_btn);
                            if (imageView3 != null) {
                                i9 = R.id.live_gift_btn;
                                SvgaImageViewV2 svgaImageViewV22 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.live_gift_btn);
                                if (svgaImageViewV22 != null) {
                                    i9 = R.id.live_im_btn;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_im_btn);
                                    if (frameLayout != null) {
                                        i9 = R.id.live_more_btn;
                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.live_more_btn);
                                        if (frameLayout2 != null) {
                                            i9 = R.id.live_normal_btn;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.live_normal_btn);
                                            if (imageView4 != null) {
                                                i9 = R.id.pk_layout_live;
                                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.pk_layout_live);
                                                if (findChildViewById != null) {
                                                    LayoutPkIconBinding bind = LayoutPkIconBinding.bind(findChildViewById);
                                                    i9 = R.id.recycler_view;
                                                    NoBottomEdgeRecyclerView noBottomEdgeRecyclerView = (NoBottomEdgeRecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                                    if (noBottomEdgeRecyclerView != null) {
                                                        i9 = R.id.space;
                                                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.space);
                                                        if (space != null) {
                                                            return new FragmentLiveChatBinding((RelativeLayout) view, svgaImageViewV2, textView, imageView, imageView2, linearLayout, imageView3, svgaImageViewV22, frameLayout, frameLayout2, imageView4, bind, noBottomEdgeRecyclerView, space);
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
    public static FragmentLiveChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_chat, viewGroup, false);
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
