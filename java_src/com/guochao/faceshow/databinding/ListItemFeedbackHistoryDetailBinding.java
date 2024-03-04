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
import com.google.android.material.button.MaterialButton;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemFeedbackHistoryDetailBinding implements ViewBinding {
    @NonNull
    public final MaterialButton comment;
    @NonNull
    public final TextView content;
    @NonNull
    public final TextView date;
    @NonNull
    public final LinearLayout divider1;
    @NonNull
    public final LinearLayout divider2;
    @NonNull
    public final ImageView icon1;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final TextView replyAuthorName;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView time;

    private ListItemFeedbackHistoryDetailBinding(@NonNull LinearLayout linearLayout, @NonNull MaterialButton materialButton, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.comment = materialButton;
        this.content = textView;
        this.date = textView2;
        this.divider1 = linearLayout2;
        this.divider2 = linearLayout3;
        this.icon1 = imageView;
        this.recyclerView = recyclerView;
        this.replyAuthorName = textView3;
        this.time = textView4;
    }

    @NonNull
    public static ListItemFeedbackHistoryDetailBinding bind(@NonNull View view) {
        int i9 = R.id.comment;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.comment);
        if (materialButton != null) {
            i9 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView != null) {
                i9 = R.id.date;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.date);
                if (textView2 != null) {
                    i9 = R.id.divider1;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.divider1);
                    if (linearLayout != null) {
                        i9 = R.id.divider2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.divider2);
                        if (linearLayout2 != null) {
                            i9 = R.id.icon1;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon1);
                            if (imageView != null) {
                                i9 = R.id.recycler_view;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                if (recyclerView != null) {
                                    i9 = R.id.reply_author_name;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.reply_author_name);
                                    if (textView3 != null) {
                                        i9 = R.id.time;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                                        if (textView4 != null) {
                                            return new ListItemFeedbackHistoryDetailBinding((LinearLayout) view, materialButton, textView, textView2, linearLayout, linearLayout2, imageView, recyclerView, textView3, textView4);
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
    public static ListItemFeedbackHistoryDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemFeedbackHistoryDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_feedback_history_detail, viewGroup, false);
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
