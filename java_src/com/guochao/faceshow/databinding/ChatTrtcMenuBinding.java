package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ChatTrtcMenuBinding implements ViewBinding {
    @NonNull
    public final TextView audioPrice;
    @NonNull
    public final LinearLayout llClose;
    @NonNull
    public final LinearLayout llVideo;
    @NonNull
    public final LinearLayout llVoice;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvClose;
    @NonNull
    public final TextView tvVideo;
    @NonNull
    public final TextView tvVoice;
    @NonNull
    public final TextView videoPrice;
    @NonNull
    public final View viewLine;

    private ChatTrtcMenuBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull View view) {
        this.rootView = linearLayout;
        this.audioPrice = textView;
        this.llClose = linearLayout2;
        this.llVideo = linearLayout3;
        this.llVoice = linearLayout4;
        this.tvClose = textView2;
        this.tvVideo = textView3;
        this.tvVoice = textView4;
        this.videoPrice = textView5;
        this.viewLine = view;
    }

    @NonNull
    public static ChatTrtcMenuBinding bind(@NonNull View view) {
        int i9 = R.id.audio_price;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.audio_price);
        if (textView != null) {
            i9 = R.id.ll_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_close);
            if (linearLayout != null) {
                i9 = R.id.ll_video;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_video);
                if (linearLayout2 != null) {
                    i9 = R.id.ll_voice;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_voice);
                    if (linearLayout3 != null) {
                        i9 = R.id.tv_close;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_close);
                        if (textView2 != null) {
                            i9 = R.id.tv_video;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_video);
                            if (textView3 != null) {
                                i9 = R.id.tv_voice;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_voice);
                                if (textView4 != null) {
                                    i9 = R.id.video_price;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.video_price);
                                    if (textView5 != null) {
                                        i9 = R.id.view_line;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_line);
                                        if (findChildViewById != null) {
                                            return new ChatTrtcMenuBinding((LinearLayout) view, textView, linearLayout, linearLayout2, linearLayout3, textView2, textView3, textView4, textView5, findChildViewById);
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
    public static ChatTrtcMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ChatTrtcMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.chat_trtc_menu, viewGroup, false);
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
