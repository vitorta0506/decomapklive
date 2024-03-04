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
import com.guochao.faceshow.aaspring.views.ControlClickSpanTextView;
/* loaded from: classes2.dex */
public final class ListItemTrtcTextMessageBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout background;
    @NonNull
    public final TextView content;
    @NonNull
    public final FrameLayout flTranslate;
    @NonNull
    public final ImageView loadingAnim;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView showTranslate;
    @NonNull
    public final ControlClickSpanTextView tvTranslation;

    private ListItemTrtcTextMessageBinding(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull ControlClickSpanTextView controlClickSpanTextView) {
        this.rootView = linearLayout;
        this.background = relativeLayout;
        this.content = textView;
        this.flTranslate = frameLayout;
        this.loadingAnim = imageView;
        this.showTranslate = textView2;
        this.tvTranslation = controlClickSpanTextView;
    }

    @NonNull
    public static ListItemTrtcTextMessageBinding bind(@NonNull View view) {
        int i9 = R.id.background;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.background);
        if (relativeLayout != null) {
            i9 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView != null) {
                i9 = R.id.fl_translate;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_translate);
                if (frameLayout != null) {
                    i9 = R.id.loading_anim;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.loading_anim);
                    if (imageView != null) {
                        i9 = R.id.show_translate;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.show_translate);
                        if (textView2 != null) {
                            i9 = R.id.tv_translation;
                            ControlClickSpanTextView controlClickSpanTextView = (ControlClickSpanTextView) ViewBindings.findChildViewById(view, R.id.tv_translation);
                            if (controlClickSpanTextView != null) {
                                return new ListItemTrtcTextMessageBinding((LinearLayout) view, relativeLayout, textView, frameLayout, imageView, textView2, controlClickSpanTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemTrtcTextMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemTrtcTextMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_trtc_text_message, viewGroup, false);
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
