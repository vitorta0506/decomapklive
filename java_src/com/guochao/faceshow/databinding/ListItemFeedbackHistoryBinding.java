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
/* loaded from: classes2.dex */
public final class ListItemFeedbackHistoryBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final TextView date;
    @NonNull
    public final ImageView newReply;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView state;

    private ListItemFeedbackHistoryBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.content = textView;
        this.date = textView2;
        this.newReply = imageView;
        this.state = textView3;
    }

    @NonNull
    public static ListItemFeedbackHistoryBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.date;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.date);
            if (textView2 != null) {
                i9 = R.id.new_reply;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.new_reply);
                if (imageView != null) {
                    i9 = R.id.state;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.state);
                    if (textView3 != null) {
                        return new ListItemFeedbackHistoryBinding((LinearLayout) view, textView, textView2, imageView, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemFeedbackHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemFeedbackHistoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_feedback_history, viewGroup, false);
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
