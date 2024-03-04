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
import com.guochao.faceshow.aaspring.views.AtTopicUgcEditText;
/* loaded from: classes2.dex */
public final class ActivityPushVideoBinding implements ViewBinding {
    @NonNull
    public final LinearLayout contentLayout;
    @NonNull
    public final ImageView coverimg;
    @NonNull
    public final TextView editPic;
    @NonNull
    public final AtTopicUgcEditText etDynamic;
    @NonNull
    public final ImageView friendsText;
    @NonNull
    public final View lineView;
    @NonNull
    public final RelativeLayout mainLayout;
    @NonNull
    public final TextView prVideo;
    @NonNull
    public final TextView releasedVideo;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final LinearLayout sync;
    @NonNull
    public final ImageView syncToDynamic;
    @NonNull
    public final LinearLayout topicNum;
    @NonNull
    public final ImageView topicText;
    @NonNull
    public final TextView topicText1;
    @NonNull
    public final TextView topicText2;
    @NonNull
    public final TextView topicText3;
    @NonNull
    public final TextView topicText4;
    @NonNull
    public final TextView topicText5;
    @NonNull
    public final TextView topicText6;

    private ActivityPushVideoBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull AtTopicUgcEditText atTopicUgcEditText, @NonNull ImageView imageView2, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView4, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.rootView = relativeLayout;
        this.contentLayout = linearLayout;
        this.coverimg = imageView;
        this.editPic = textView;
        this.etDynamic = atTopicUgcEditText;
        this.friendsText = imageView2;
        this.lineView = view;
        this.mainLayout = relativeLayout2;
        this.prVideo = textView2;
        this.releasedVideo = textView3;
        this.sync = linearLayout2;
        this.syncToDynamic = imageView3;
        this.topicNum = linearLayout3;
        this.topicText = imageView4;
        this.topicText1 = textView4;
        this.topicText2 = textView5;
        this.topicText3 = textView6;
        this.topicText4 = textView7;
        this.topicText5 = textView8;
        this.topicText6 = textView9;
    }

    @NonNull
    public static ActivityPushVideoBinding bind(@NonNull View view) {
        int i9 = R.id.content_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_layout);
        if (linearLayout != null) {
            i9 = R.id.coverimg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.coverimg);
            if (imageView != null) {
                i9 = R.id.edit_pic;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.edit_pic);
                if (textView != null) {
                    i9 = R.id.et_dynamic;
                    AtTopicUgcEditText atTopicUgcEditText = (AtTopicUgcEditText) ViewBindings.findChildViewById(view, R.id.et_dynamic);
                    if (atTopicUgcEditText != null) {
                        i9 = R.id.friends_text;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.friends_text);
                        if (imageView2 != null) {
                            i9 = R.id.lineView;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineView);
                            if (findChildViewById != null) {
                                RelativeLayout relativeLayout = (RelativeLayout) view;
                                i9 = R.id.pr_video;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.pr_video);
                                if (textView2 != null) {
                                    i9 = R.id.released_video;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.released_video);
                                    if (textView3 != null) {
                                        i9 = R.id.sync;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sync);
                                        if (linearLayout2 != null) {
                                            i9 = R.id.sync_to_dynamic;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.sync_to_dynamic);
                                            if (imageView3 != null) {
                                                i9 = R.id.topic_num;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.topic_num);
                                                if (linearLayout3 != null) {
                                                    i9 = R.id.topic_text;
                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.topic_text);
                                                    if (imageView4 != null) {
                                                        i9 = R.id.topic_text1;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_text1);
                                                        if (textView4 != null) {
                                                            i9 = R.id.topic_text2;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_text2);
                                                            if (textView5 != null) {
                                                                i9 = R.id.topic_text3;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_text3);
                                                                if (textView6 != null) {
                                                                    i9 = R.id.topic_text4;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_text4);
                                                                    if (textView7 != null) {
                                                                        i9 = R.id.topic_text5;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_text5);
                                                                        if (textView8 != null) {
                                                                            i9 = R.id.topic_text6;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_text6);
                                                                            if (textView9 != null) {
                                                                                return new ActivityPushVideoBinding(relativeLayout, linearLayout, imageView, textView, atTopicUgcEditText, imageView2, findChildViewById, relativeLayout, textView2, textView3, linearLayout2, imageView3, linearLayout3, imageView4, textView4, textView5, textView6, textView7, textView8, textView9);
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
    public static ActivityPushVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPushVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_push_video, viewGroup, false);
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
