package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.views.ShapedImageView;
/* loaded from: classes2.dex */
public final class AssistantChatItemTopicMultiMessageBinding implements ViewBinding {
    @NonNull
    public final NewCircleImageView assistantTopicLeftAvatar;
    @NonNull
    public final ShapedImageView assistantTopicLeftImgBg;
    @NonNull
    public final ShapedImageView assistantTopicLeftImgIcon;
    @NonNull
    public final TextView assistantTopicLeftJoinIcon;
    @NonNull
    public final TextView assistantTopicLeftName;
    @NonNull
    public final ImageView assistantTopicLeftNameIcon;
    @NonNull
    public final TextView assistantTopicLeftText;
    @NonNull
    public final RelativeLayout assistantTopicLeftTextContent;
    @NonNull
    public final TextView assistantTopicPicShowTime;
    @NonNull
    private final RelativeLayout rootView;

    private AssistantChatItemTopicMultiMessageBinding(@NonNull RelativeLayout relativeLayout, @NonNull NewCircleImageView newCircleImageView, @NonNull ShapedImageView shapedImageView, @NonNull ShapedImageView shapedImageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView4) {
        this.rootView = relativeLayout;
        this.assistantTopicLeftAvatar = newCircleImageView;
        this.assistantTopicLeftImgBg = shapedImageView;
        this.assistantTopicLeftImgIcon = shapedImageView2;
        this.assistantTopicLeftJoinIcon = textView;
        this.assistantTopicLeftName = textView2;
        this.assistantTopicLeftNameIcon = imageView;
        this.assistantTopicLeftText = textView3;
        this.assistantTopicLeftTextContent = relativeLayout2;
        this.assistantTopicPicShowTime = textView4;
    }

    @NonNull
    public static AssistantChatItemTopicMultiMessageBinding bind(@NonNull View view) {
        int i9 = R.id.assistant_topic_leftAvatar;
        NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.assistant_topic_leftAvatar);
        if (newCircleImageView != null) {
            i9 = R.id.assistant_topic_left_img_bg;
            ShapedImageView shapedImageView = (ShapedImageView) ViewBindings.findChildViewById(view, R.id.assistant_topic_left_img_bg);
            if (shapedImageView != null) {
                i9 = R.id.assistant_topic_left_img_icon;
                ShapedImageView shapedImageView2 = (ShapedImageView) ViewBindings.findChildViewById(view, R.id.assistant_topic_left_img_icon);
                if (shapedImageView2 != null) {
                    i9 = R.id.assistant_topic_left_join_icon;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_topic_left_join_icon);
                    if (textView != null) {
                        i9 = R.id.assistant_topic_left_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_topic_left_name);
                        if (textView2 != null) {
                            i9 = R.id.assistant_topic_left_name_icon;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.assistant_topic_left_name_icon);
                            if (imageView != null) {
                                i9 = R.id.assistant_topic_left_text;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_topic_left_text);
                                if (textView3 != null) {
                                    i9 = R.id.assistant_topic_left_text_content;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.assistant_topic_left_text_content);
                                    if (relativeLayout != null) {
                                        i9 = R.id.assistant_topic_pic_show_time;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_topic_pic_show_time);
                                        if (textView4 != null) {
                                            return new AssistantChatItemTopicMultiMessageBinding((RelativeLayout) view, newCircleImageView, shapedImageView, shapedImageView2, textView, textView2, imageView, textView3, relativeLayout, textView4);
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
    public static AssistantChatItemTopicMultiMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AssistantChatItemTopicMultiMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.assistant_chat_item_topic_multi_message, viewGroup, false);
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
