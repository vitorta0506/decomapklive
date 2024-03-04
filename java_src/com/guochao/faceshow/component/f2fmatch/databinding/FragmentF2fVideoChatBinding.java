package com.guochao.faceshow.component.f2fmatch.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$layout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentF2fVideoChatBinding implements ViewBinding {
    @NonNull
    public final TextView addr;
    @NonNull
    public final ImageView audioTranslate;
    @NonNull
    public final ImageView beauty;
    @NonNull
    public final ImageView btnSend;
    @NonNull
    public final ImageView chatTips;
    @NonNull
    public final ImageView exit;
    @NonNull
    public final LinearLayout extraInfoArea;
    @NonNull
    public final SvgaImageViewV2 gift;
    @NonNull
    public final TextView giftTips;
    @NonNull
    public final LinearLayout guassArea;
    @NonNull
    public final TextView guassTips;
    @NonNull
    public final ImageView inputMessage;
    @NonNull
    public final EditText liveBottomEditText;
    @NonNull
    public final LinearLayout liveBottomInputLy;
    @NonNull
    public final LinearLayout menus;
    @NonNull
    public final FrameLayout message;
    @NonNull
    public final FrameLayout messageLayout;
    @NonNull
    public final TextView remove;
    @NonNull
    public final ImageView report;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final Space spaceChat;

    private FragmentF2fVideoChatBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull LinearLayout linearLayout, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull ImageView imageView6, @NonNull EditText editText, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView4, @NonNull ImageView imageView7, @NonNull Space space) {
        this.rootView = frameLayout;
        this.addr = textView;
        this.audioTranslate = imageView;
        this.beauty = imageView2;
        this.btnSend = imageView3;
        this.chatTips = imageView4;
        this.exit = imageView5;
        this.extraInfoArea = linearLayout;
        this.gift = svgaImageViewV2;
        this.giftTips = textView2;
        this.guassArea = linearLayout2;
        this.guassTips = textView3;
        this.inputMessage = imageView6;
        this.liveBottomEditText = editText;
        this.liveBottomInputLy = linearLayout3;
        this.menus = linearLayout4;
        this.message = frameLayout2;
        this.messageLayout = frameLayout3;
        this.remove = textView4;
        this.report = imageView7;
        this.spaceChat = space;
    }

    @NonNull
    public static FragmentF2fVideoChatBinding bind(@NonNull View view) {
        int i9 = R$id.addr;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.audio_translate;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.beauty;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView2 != null) {
                    i9 = R$id.btn_send;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView3 != null) {
                        i9 = R$id.chat_tips;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i9);
                        if (imageView4 != null) {
                            i9 = R$id.exit;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i9);
                            if (imageView5 != null) {
                                i9 = R$id.extra_info_area;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                if (linearLayout != null) {
                                    i9 = R$id.gift;
                                    SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, i9);
                                    if (svgaImageViewV2 != null) {
                                        i9 = R$id.gift_tips;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                                        if (textView2 != null) {
                                            i9 = R$id.guass_area;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                            if (linearLayout2 != null) {
                                                i9 = R$id.guass_tips;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                if (textView3 != null) {
                                                    i9 = R$id.input_message;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                    if (imageView6 != null) {
                                                        i9 = R$id.live_bottom_edit_text;
                                                        EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
                                                        if (editText != null) {
                                                            i9 = R$id.live_bottom_input_ly;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                            if (linearLayout3 != null) {
                                                                i9 = R$id.menus;
                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                                if (linearLayout4 != null) {
                                                                    i9 = R$id.message;
                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                                                    if (frameLayout != null) {
                                                                        i9 = R$id.message_layout;
                                                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                                                                        if (frameLayout2 != null) {
                                                                            i9 = R$id.remove;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                            if (textView4 != null) {
                                                                                i9 = R$id.report;
                                                                                ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                                                if (imageView7 != null) {
                                                                                    i9 = R$id.space_chat;
                                                                                    Space space = (Space) ViewBindings.findChildViewById(view, i9);
                                                                                    if (space != null) {
                                                                                        return new FragmentF2fVideoChatBinding((FrameLayout) view, textView, imageView, imageView2, imageView3, imageView4, imageView5, linearLayout, svgaImageViewV2, textView2, linearLayout2, textView3, imageView6, editText, linearLayout3, linearLayout4, frameLayout, frameLayout2, textView4, imageView7, space);
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
    public static FragmentF2fVideoChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fVideoChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_f2f_video_chat, viewGroup, false);
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
