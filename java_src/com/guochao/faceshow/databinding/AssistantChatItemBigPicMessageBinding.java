package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.ShapedImageView;
/* loaded from: classes2.dex */
public final class AssistantChatItemBigPicMessageBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView assistantPicLeftAvatar;
    @NonNull
    public final ShapedImageView assistantPicLeftImg;
    @NonNull
    public final RelativeLayout assistantPicLeftPanel;
    @NonNull
    public final TextView assistantPicShowTime;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView titleTV;

    private AssistantChatItemBigPicMessageBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ShapedImageView shapedImageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.assistantPicLeftAvatar = normalCircleImageView;
        this.assistantPicLeftImg = shapedImageView;
        this.assistantPicLeftPanel = relativeLayout;
        this.assistantPicShowTime = textView;
        this.titleTV = textView2;
    }

    @NonNull
    public static AssistantChatItemBigPicMessageBinding bind(@NonNull View view) {
        int i9 = R.id.assistant_pic_leftAvatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.assistant_pic_leftAvatar);
        if (normalCircleImageView != null) {
            i9 = R.id.assistant_pic_left_img;
            ShapedImageView shapedImageView = (ShapedImageView) ViewBindings.findChildViewById(view, R.id.assistant_pic_left_img);
            if (shapedImageView != null) {
                i9 = R.id.assistant_pic_leftPanel;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.assistant_pic_leftPanel);
                if (relativeLayout != null) {
                    i9 = R.id.assistant_pic_show_time;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_pic_show_time);
                    if (textView != null) {
                        i9 = R.id.titleTV;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.titleTV);
                        if (textView2 != null) {
                            return new AssistantChatItemBigPicMessageBinding((LinearLayout) view, normalCircleImageView, shapedImageView, relativeLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static AssistantChatItemBigPicMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AssistantChatItemBigPicMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.assistant_chat_item_big_pic_message, viewGroup, false);
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
