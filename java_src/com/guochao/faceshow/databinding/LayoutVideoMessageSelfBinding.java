package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutVideoMessageSelfBinding implements ViewBinding {
    @NonNull
    public final TextView duration;
    @NonNull
    public final ImageView ivThumb;
    @NonNull
    public final ImageView play;
    @NonNull
    public final TextView progress;
    @NonNull
    public final ImageView progressIv;
    @NonNull
    private final CardView rootView;
    @NonNull
    public final CardView videoContent;

    private LayoutVideoMessageSelfBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull CardView cardView2) {
        this.rootView = cardView;
        this.duration = textView;
        this.ivThumb = imageView;
        this.play = imageView2;
        this.progress = textView2;
        this.progressIv = imageView3;
        this.videoContent = cardView2;
    }

    @NonNull
    public static LayoutVideoMessageSelfBinding bind(@NonNull View view) {
        int i9 = R.id.duration;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.duration);
        if (textView != null) {
            i9 = R.id.iv_thumb;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_thumb);
            if (imageView != null) {
                i9 = R.id.play;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
                if (imageView2 != null) {
                    i9 = R.id.progress;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.progress);
                    if (textView2 != null) {
                        i9 = R.id.progress_iv;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.progress_iv);
                        if (imageView3 != null) {
                            CardView cardView = (CardView) view;
                            return new LayoutVideoMessageSelfBinding(cardView, textView, imageView, imageView2, textView2, imageView3, cardView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutVideoMessageSelfBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutVideoMessageSelfBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_video_message_self, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
