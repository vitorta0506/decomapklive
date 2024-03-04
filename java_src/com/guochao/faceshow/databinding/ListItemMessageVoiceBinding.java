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
/* loaded from: classes2.dex */
public final class ListItemMessageVoiceBinding implements ViewBinding {
    @NonNull
    public final TextView duration;
    @NonNull
    public final ImageView messageAnim;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout voiceContent;

    private ListItemMessageVoiceBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.duration = textView;
        this.messageAnim = imageView;
        this.voiceContent = linearLayout;
    }

    @NonNull
    public static ListItemMessageVoiceBinding bind(@NonNull View view) {
        int i9 = R.id.duration;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.duration);
        if (textView != null) {
            i9 = R.id.message_anim;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.message_anim);
            if (imageView != null) {
                i9 = R.id.voice_content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.voice_content);
                if (linearLayout != null) {
                    return new ListItemMessageVoiceBinding((FrameLayout) view, textView, imageView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemMessageVoiceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemMessageVoiceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_message_voice, viewGroup, false);
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
