package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityFeedbackHistoryDetailBinding implements ViewBinding {
    @NonNull
    public final TextView comment;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    public final MaterialButton reply;
    @NonNull
    private final View rootView;

    private ActivityFeedbackHistoryDetailBinding(@NonNull View view, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull MaterialButton materialButton) {
        this.rootView = view;
        this.comment = textView;
        this.recyclerView = recyclerView;
        this.refreshLayout = smartRefreshLayout;
        this.reply = materialButton;
    }

    @NonNull
    public static ActivityFeedbackHistoryDetailBinding bind(@NonNull View view) {
        int i9 = R.id.comment;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment);
        if (textView != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                i9 = R.id.refresh_layout;
                SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                if (smartRefreshLayout != null) {
                    i9 = R.id.reply;
                    MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.reply);
                    if (materialButton != null) {
                        return new ActivityFeedbackHistoryDetailBinding(view, textView, recyclerView, smartRefreshLayout, materialButton);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityFeedbackHistoryDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_feedback_history_detail, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
