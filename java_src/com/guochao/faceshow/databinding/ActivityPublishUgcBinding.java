package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AtTopicUgcEditText;
import com.guochao.faceshow.views.ObservableScrollView;
/* loaded from: classes2.dex */
public final class ActivityPublishUgcBinding implements ViewBinding {
    @NonNull
    public final LinearLayout addLocationLay;
    @NonNull
    public final LinearLayout addTopicLay;
    @NonNull
    public final AtTopicUgcEditText etUgcPublish;
    @NonNull
    public final LinearLayout firstTip;
    @NonNull
    public final ImageView forbidCommentBtn;
    @NonNull
    public final LinearLayout limitLookAt;
    @NonNull
    public final View middleLine;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ObservableScrollView scrollView;
    @NonNull
    public final View topicLine;
    @NonNull
    public final TextView tvViewRange;
    @NonNull
    public final TextView tvVisibleKey;
    @NonNull
    public final TextView tvWithLocation;
    @NonNull
    public final ImageView viewRangeBtn;

    private ActivityPublishUgcBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull AtTopicUgcEditText atTopicUgcEditText, @NonNull LinearLayout linearLayout4, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout5, @NonNull View view, @NonNull ObservableScrollView observableScrollView, @NonNull View view2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.addLocationLay = linearLayout2;
        this.addTopicLay = linearLayout3;
        this.etUgcPublish = atTopicUgcEditText;
        this.firstTip = linearLayout4;
        this.forbidCommentBtn = imageView;
        this.limitLookAt = linearLayout5;
        this.middleLine = view;
        this.scrollView = observableScrollView;
        this.topicLine = view2;
        this.tvViewRange = textView;
        this.tvVisibleKey = textView2;
        this.tvWithLocation = textView3;
        this.viewRangeBtn = imageView2;
    }

    @NonNull
    public static ActivityPublishUgcBinding bind(@NonNull View view) {
        int i9 = R.id.add_location_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.add_location_lay);
        if (linearLayout != null) {
            i9 = R.id.add_topic_lay;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.add_topic_lay);
            if (linearLayout2 != null) {
                i9 = R.id.et_ugc_publish;
                AtTopicUgcEditText atTopicUgcEditText = (AtTopicUgcEditText) ViewBindings.findChildViewById(view, R.id.et_ugc_publish);
                if (atTopicUgcEditText != null) {
                    i9 = R.id.first_tip;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_tip);
                    if (linearLayout3 != null) {
                        i9 = R.id.forbid_comment_btn;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.forbid_comment_btn);
                        if (imageView != null) {
                            i9 = R.id.limit_look_at;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.limit_look_at);
                            if (linearLayout4 != null) {
                                i9 = R.id.middle_line;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.middle_line);
                                if (findChildViewById != null) {
                                    i9 = R.id.scroll_view;
                                    ObservableScrollView observableScrollView = (ObservableScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                                    if (observableScrollView != null) {
                                        i9 = R.id.topic_line;
                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.topic_line);
                                        if (findChildViewById2 != null) {
                                            i9 = R.id.tv_view_range;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_view_range);
                                            if (textView != null) {
                                                i9 = R.id.tv_visible_key;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_visible_key);
                                                if (textView2 != null) {
                                                    i9 = R.id.tv_with_location;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_with_location);
                                                    if (textView3 != null) {
                                                        i9 = R.id.view_range_btn;
                                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.view_range_btn);
                                                        if (imageView2 != null) {
                                                            return new ActivityPublishUgcBinding((LinearLayout) view, linearLayout, linearLayout2, atTopicUgcEditText, linearLayout3, imageView, linearLayout4, findChildViewById, observableScrollView, findChildViewById2, textView, textView2, textView3, imageView2);
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
    public static ActivityPublishUgcBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPublishUgcBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_publish_ugc, viewGroup, false);
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
