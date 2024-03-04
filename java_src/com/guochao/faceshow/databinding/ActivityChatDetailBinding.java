package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ActivityChatDetailBinding implements ViewBinding {
    @NonNull
    public final TextView addBlack;
    @NonNull
    public final TextView cancelSubscribe;
    @NonNull
    public final TextView focusDivider;
    @NonNull
    public final TextView groupName;
    @NonNull
    public final ImageView imDisturbToggle;
    @NonNull
    public final ImageView imStickyToggle;
    @NonNull
    public final ImageView imTranslateState;
    @NonNull
    public final ImageView imTrtcState;
    @NonNull
    public final LinearLayout llTranslate;
    @NonNull
    public final LinearLayout llTrtc;
    @NonNull
    public final TextView notFocusDivider;
    @NonNull
    public final TextView report;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView searchChatRecord;
    @NonNull
    public final LinearLayout sendChatRecord;
    @NonNull
    public final RelativeLayout setGroup;
    @NonNull
    public final TextView setGroupTitle;
    @NonNull
    public final TextView tvTrtc;
    @NonNull
    public final NormalCircleImageView userAvatar;
    @NonNull
    public final NormalCircleImageView userFlag;
    @NonNull
    public final RelativeLayout userLay;
    @NonNull
    public final TextView userName;

    private ActivityChatDetailBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull LinearLayout linearLayout4, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull NormalCircleImageView normalCircleImageView, @NonNull NormalCircleImageView normalCircleImageView2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView10) {
        this.rootView = linearLayout;
        this.addBlack = textView;
        this.cancelSubscribe = textView2;
        this.focusDivider = textView3;
        this.groupName = textView4;
        this.imDisturbToggle = imageView;
        this.imStickyToggle = imageView2;
        this.imTranslateState = imageView3;
        this.imTrtcState = imageView4;
        this.llTranslate = linearLayout2;
        this.llTrtc = linearLayout3;
        this.notFocusDivider = textView5;
        this.report = textView6;
        this.searchChatRecord = textView7;
        this.sendChatRecord = linearLayout4;
        this.setGroup = relativeLayout;
        this.setGroupTitle = textView8;
        this.tvTrtc = textView9;
        this.userAvatar = normalCircleImageView;
        this.userFlag = normalCircleImageView2;
        this.userLay = relativeLayout2;
        this.userName = textView10;
    }

    @NonNull
    public static ActivityChatDetailBinding bind(@NonNull View view) {
        int i9 = R.id.add_black;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.add_black);
        if (textView != null) {
            i9 = R.id.cancel_subscribe;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.cancel_subscribe);
            if (textView2 != null) {
                i9 = R.id.focus_divider;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.focus_divider);
                if (textView3 != null) {
                    i9 = R.id.group_name;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.group_name);
                    if (textView4 != null) {
                        i9 = R.id.im_disturb_toggle;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.im_disturb_toggle);
                        if (imageView != null) {
                            i9 = R.id.im_sticky_toggle;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.im_sticky_toggle);
                            if (imageView2 != null) {
                                i9 = R.id.im_translate_state;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.im_translate_state);
                                if (imageView3 != null) {
                                    i9 = R.id.im_trtc_state;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.im_trtc_state);
                                    if (imageView4 != null) {
                                        i9 = R.id.ll_translate;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_translate);
                                        if (linearLayout != null) {
                                            i9 = R.id.ll_trtc;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_trtc);
                                            if (linearLayout2 != null) {
                                                i9 = R.id.not_focus_divider;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.not_focus_divider);
                                                if (textView5 != null) {
                                                    i9 = R.id.report;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.report);
                                                    if (textView6 != null) {
                                                        i9 = R.id.search_chat_record;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.search_chat_record);
                                                        if (textView7 != null) {
                                                            i9 = R.id.send_chat_record;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.send_chat_record);
                                                            if (linearLayout3 != null) {
                                                                i9 = R.id.set_group;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.set_group);
                                                                if (relativeLayout != null) {
                                                                    i9 = R.id.set_group_title;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.set_group_title);
                                                                    if (textView8 != null) {
                                                                        i9 = R.id.tv_trtc;
                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_trtc);
                                                                        if (textView9 != null) {
                                                                            i9 = R.id.user_avatar;
                                                                            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                                                                            if (normalCircleImageView != null) {
                                                                                i9 = R.id.user_flag;
                                                                                NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_flag);
                                                                                if (normalCircleImageView2 != null) {
                                                                                    i9 = R.id.user_lay;
                                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.user_lay);
                                                                                    if (relativeLayout2 != null) {
                                                                                        i9 = R.id.user_name;
                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                                                        if (textView10 != null) {
                                                                                            return new ActivityChatDetailBinding((LinearLayout) view, textView, textView2, textView3, textView4, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, textView5, textView6, textView7, linearLayout3, relativeLayout, textView8, textView9, normalCircleImageView, normalCircleImageView2, relativeLayout2, textView10);
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
    public static ActivityChatDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChatDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_chat_detail, viewGroup, false);
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
