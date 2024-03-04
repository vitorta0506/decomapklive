package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.ExpandTextView;
/* loaded from: classes2.dex */
public final class ListItemFeedbackHistoryHeaderBinding implements ViewBinding {
    @NonNull
    public final ExpandTextView content;
    @NonNull
    public final TextView date;
    @NonNull
    public final TextView expand;
    @NonNull
    public final LinearLayout expandArea;
    @NonNull
    public final ImageView expandIcon;
    @NonNull
    public final TextView questionTitle;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final LinearLayout recyclerViewArea;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView state;

    private ListItemFeedbackHistoryHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull ExpandTextView expandTextView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.content = expandTextView;
        this.date = textView;
        this.expand = textView2;
        this.expandArea = linearLayout2;
        this.expandIcon = imageView;
        this.questionTitle = textView3;
        this.recyclerView = recyclerView;
        this.recyclerViewArea = linearLayout3;
        this.state = textView4;
    }

    @NonNull
    public static ListItemFeedbackHistoryHeaderBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        ExpandTextView expandTextView = (ExpandTextView) ViewBindings.findChildViewById(view, R.id.content);
        if (expandTextView != null) {
            i9 = R.id.date;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date);
            if (textView != null) {
                i9 = R.id.expand;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.expand);
                if (textView2 != null) {
                    i9 = R.id.expand_area;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.expand_area);
                    if (linearLayout != null) {
                        i9 = R.id.expand_icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.expand_icon);
                        if (imageView != null) {
                            i9 = R.id.question_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.question_title);
                            if (textView3 != null) {
                                i9 = R.id.recycler_view;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                if (recyclerView != null) {
                                    i9 = R.id.recycler_view_area;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.recycler_view_area);
                                    if (linearLayout2 != null) {
                                        i9 = R.id.state;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.state);
                                        if (textView4 != null) {
                                            return new ListItemFeedbackHistoryHeaderBinding((LinearLayout) view, expandTextView, textView, textView2, linearLayout, imageView, textView3, recyclerView, linearLayout2, textView4);
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
    public static ListItemFeedbackHistoryHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemFeedbackHistoryHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_feedback_history_header, viewGroup, false);
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
