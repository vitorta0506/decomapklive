package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ListItemMessageTextOtherBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView flag;
    @NonNull
    public final NewCircleImageView imAvatar;
    @NonNull
    public final FrameLayout messageContent;
    @NonNull
    public final LinearLayout paddingLL;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView sendError;
    @NonNull
    public final FrameLayout sendStatus;
    @NonNull
    public final ProgressBar sending;
    @NonNull
    public final TextView time;

    private ListItemMessageTextOtherBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull NewCircleImageView newCircleImageView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull ProgressBar progressBar, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.flag = normalCircleImageView;
        this.imAvatar = newCircleImageView;
        this.messageContent = frameLayout;
        this.paddingLL = linearLayout2;
        this.sendError = imageView;
        this.sendStatus = frameLayout2;
        this.sending = progressBar;
        this.time = textView;
    }

    @NonNull
    public static ListItemMessageTextOtherBinding bind(@NonNull View view) {
        int i9 = R.id.flag_;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.flag_);
        if (normalCircleImageView != null) {
            i9 = R.id.im_avatar;
            NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.im_avatar);
            if (newCircleImageView != null) {
                i9 = R.id.message_content;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.message_content);
                if (frameLayout != null) {
                    i9 = R.id.paddingLL;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.paddingLL);
                    if (linearLayout != null) {
                        i9 = R.id.sendError;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.sendError);
                        if (imageView != null) {
                            i9 = R.id.sendStatus;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.sendStatus);
                            if (frameLayout2 != null) {
                                i9 = R.id.sending;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.sending);
                                if (progressBar != null) {
                                    i9 = R.id.time;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                                    if (textView != null) {
                                        return new ListItemMessageTextOtherBinding((LinearLayout) view, normalCircleImageView, newCircleImageView, frameLayout, linearLayout, imageView, frameLayout2, progressBar, textView);
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
    public static ListItemMessageTextOtherBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemMessageTextOtherBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_message_text_other, viewGroup, false);
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
