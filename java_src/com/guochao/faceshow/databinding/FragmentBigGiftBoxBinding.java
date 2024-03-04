package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.InnerRecyclerView;
/* loaded from: classes2.dex */
public final class FragmentBigGiftBoxBinding implements ViewBinding {
    @NonNull
    public final ImageView backButton;
    @NonNull
    public final ImageView close;
    @NonNull
    public final ImageView closeDialog;
    @NonNull
    public final TextView countDownTips;
    @NonNull
    public final LinearLayout countDownView;
    @NonNull
    public final TextView diamondCount;
    @NonNull
    public final TextView emptyUsers;
    @NonNull
    public final TextView failTips;
    @NonNull
    public final ImageView giftBoxIcon;
    @NonNull
    public final LinearLayout giftResultView;
    @NonNull
    public final ImageView ivBoxOpen;
    @NonNull
    public final FrameLayout mainContent;
    @NonNull
    public final TextView openGift;
    @NonNull
    public final InnerRecyclerView recyclerViewUserList;
    @NonNull
    public final FrameLayout resultView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView showGiftUserList;
    @NonNull
    public final ImageView successIcon;
    @NonNull
    public final LinearLayout successView;
    @NonNull
    public final TextView tips;

    private FragmentBigGiftBoxBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView5, @NonNull FrameLayout frameLayout2, @NonNull TextView textView5, @NonNull InnerRecyclerView innerRecyclerView, @NonNull FrameLayout frameLayout3, @NonNull TextView textView6, @NonNull ImageView imageView6, @NonNull LinearLayout linearLayout3, @NonNull TextView textView7) {
        this.rootView = frameLayout;
        this.backButton = imageView;
        this.close = imageView2;
        this.closeDialog = imageView3;
        this.countDownTips = textView;
        this.countDownView = linearLayout;
        this.diamondCount = textView2;
        this.emptyUsers = textView3;
        this.failTips = textView4;
        this.giftBoxIcon = imageView4;
        this.giftResultView = linearLayout2;
        this.ivBoxOpen = imageView5;
        this.mainContent = frameLayout2;
        this.openGift = textView5;
        this.recyclerViewUserList = innerRecyclerView;
        this.resultView = frameLayout3;
        this.showGiftUserList = textView6;
        this.successIcon = imageView6;
        this.successView = linearLayout3;
        this.tips = textView7;
    }

    @NonNull
    public static FragmentBigGiftBoxBinding bind(@NonNull View view) {
        int i9 = R.id.back_button;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_button);
        if (imageView != null) {
            i9 = R.id.close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView2 != null) {
                i9 = R.id.close_dialog;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.close_dialog);
                if (imageView3 != null) {
                    i9 = R.id.count_down_tips;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_down_tips);
                    if (textView != null) {
                        i9 = R.id.count_down_view;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.count_down_view);
                        if (linearLayout != null) {
                            i9 = R.id.diamond_count;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_count);
                            if (textView2 != null) {
                                i9 = R.id.empty_users;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.empty_users);
                                if (textView3 != null) {
                                    i9 = R.id.fail_tips;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.fail_tips);
                                    if (textView4 != null) {
                                        i9 = R.id.gift_box_icon;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_box_icon);
                                        if (imageView4 != null) {
                                            i9 = R.id.gift_result_view;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gift_result_view);
                                            if (linearLayout2 != null) {
                                                i9 = R.id.iv_box_open;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_box_open);
                                                if (imageView5 != null) {
                                                    FrameLayout frameLayout = (FrameLayout) view;
                                                    i9 = R.id.open_gift;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.open_gift);
                                                    if (textView5 != null) {
                                                        i9 = R.id.recycler_view_user_list;
                                                        InnerRecyclerView innerRecyclerView = (InnerRecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view_user_list);
                                                        if (innerRecyclerView != null) {
                                                            i9 = R.id.result_view;
                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.result_view);
                                                            if (frameLayout2 != null) {
                                                                i9 = R.id.show_gift_user_list;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.show_gift_user_list);
                                                                if (textView6 != null) {
                                                                    i9 = R.id.success_icon;
                                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.success_icon);
                                                                    if (imageView6 != null) {
                                                                        i9 = R.id.success_view;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.success_view);
                                                                        if (linearLayout3 != null) {
                                                                            i9 = R.id.tips;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tips);
                                                                            if (textView7 != null) {
                                                                                return new FragmentBigGiftBoxBinding(frameLayout, imageView, imageView2, imageView3, textView, linearLayout, textView2, textView3, textView4, imageView4, linearLayout2, imageView5, frameLayout, textView5, innerRecyclerView, frameLayout2, textView6, imageView6, linearLayout3, textView7);
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
    public static FragmentBigGiftBoxBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentBigGiftBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_big_gift_box, viewGroup, false);
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
