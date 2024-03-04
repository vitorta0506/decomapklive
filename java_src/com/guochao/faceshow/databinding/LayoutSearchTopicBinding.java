package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutSearchTopicBinding implements ViewBinding {
    @NonNull
    public final View divider;
    @NonNull
    public final TextView joinNum;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView topicName;

    private LayoutSearchTopicBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.divider = view;
        this.joinNum = textView;
        this.topicName = textView2;
    }

    @NonNull
    public static LayoutSearchTopicBinding bind(@NonNull View view) {
        int i9 = R.id.divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (findChildViewById != null) {
            i9 = R.id.join_num;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.join_num);
            if (textView != null) {
                i9 = R.id.topic_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_name);
                if (textView2 != null) {
                    return new LayoutSearchTopicBinding((FrameLayout) view, findChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutSearchTopicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSearchTopicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_search_topic, viewGroup, false);
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
