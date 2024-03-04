package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemFeedbackHistoryToBeHandledBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final TextView date;
    @NonNull
    public final LinearLayout divider2;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView time;

    private ListItemFeedbackHistoryToBeHandledBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.content = textView;
        this.date = textView2;
        this.divider2 = linearLayout2;
        this.time = textView3;
    }

    @NonNull
    public static ListItemFeedbackHistoryToBeHandledBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.date;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.date);
            if (textView2 != null) {
                i9 = R.id.divider2;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.divider2);
                if (linearLayout != null) {
                    i9 = R.id.time;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                    if (textView3 != null) {
                        return new ListItemFeedbackHistoryToBeHandledBinding((LinearLayout) view, textView, textView2, linearLayout, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemFeedbackHistoryToBeHandledBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemFeedbackHistoryToBeHandledBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_feedback_history_to_be_handled, viewGroup, false);
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
