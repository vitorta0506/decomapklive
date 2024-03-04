package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class AssistantChatLeftTextMessageBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView assistantAvatar;
    @NonNull
    public final LinearLayout assistantMessage;
    @NonNull
    public final ImageView assistantMessageBg;
    @NonNull
    public final LinearLayout assistantMessageBgLy;
    @NonNull
    public final ImageView assistantRightMessageRectangle;
    @NonNull
    public final ImageView assistantSendError;
    @NonNull
    public final ProgressBar assistantSending;
    @NonNull
    public final RelativeLayout messageLy;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final FrameLayout sendStatusLy;

    private AssistantChatLeftTextMessageBinding(@NonNull RelativeLayout relativeLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ProgressBar progressBar, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.assistantAvatar = normalCircleImageView;
        this.assistantMessage = linearLayout;
        this.assistantMessageBg = imageView;
        this.assistantMessageBgLy = linearLayout2;
        this.assistantRightMessageRectangle = imageView2;
        this.assistantSendError = imageView3;
        this.assistantSending = progressBar;
        this.messageLy = relativeLayout2;
        this.sendStatusLy = frameLayout;
    }

    @NonNull
    public static AssistantChatLeftTextMessageBinding bind(@NonNull View view) {
        int i9 = R.id.assistant_avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.assistant_avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.assistant_message;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.assistant_message);
            if (linearLayout != null) {
                i9 = R.id.assistant_message_bg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.assistant_message_bg);
                if (imageView != null) {
                    i9 = R.id.assistant_message_bg_ly;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.assistant_message_bg_ly);
                    if (linearLayout2 != null) {
                        i9 = R.id.assistant_right_message_rectangle;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.assistant_right_message_rectangle);
                        if (imageView2 != null) {
                            i9 = R.id.assistant_send_error;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.assistant_send_error);
                            if (imageView3 != null) {
                                i9 = R.id.assistant_sending;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.assistant_sending);
                                if (progressBar != null) {
                                    i9 = R.id.message_ly;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.message_ly);
                                    if (relativeLayout != null) {
                                        i9 = R.id.send_status_ly;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.send_status_ly);
                                        if (frameLayout != null) {
                                            return new AssistantChatLeftTextMessageBinding((RelativeLayout) view, normalCircleImageView, linearLayout, imageView, linearLayout2, imageView2, imageView3, progressBar, relativeLayout, frameLayout);
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
    public static AssistantChatLeftTextMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AssistantChatLeftTextMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.assistant_chat_left_text_message, viewGroup, false);
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
