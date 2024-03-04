package com.chad.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.chad.library.R$id;
import com.chad.library.R$layout;
/* loaded from: classes.dex */
public final class BrvahQuickViewLoadMoreBinding implements ViewBinding {
    @NonNull
    public final FrameLayout loadMoreLoadCompleteView;
    @NonNull
    public final FrameLayout loadMoreLoadEndView;
    @NonNull
    public final FrameLayout loadMoreLoadFailView;
    @NonNull
    public final LinearLayout loadMoreLoadingView;
    @NonNull
    public final ProgressBar loadingProgress;
    @NonNull
    public final TextView loadingText;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvPrompt;

    private BrvahQuickViewLoadMoreBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.loadMoreLoadCompleteView = frameLayout2;
        this.loadMoreLoadEndView = frameLayout3;
        this.loadMoreLoadFailView = frameLayout4;
        this.loadMoreLoadingView = linearLayout;
        this.loadingProgress = progressBar;
        this.loadingText = textView;
        this.tvPrompt = textView2;
    }

    @NonNull
    public static BrvahQuickViewLoadMoreBinding bind(@NonNull View view) {
        int i9 = R$id.load_more_load_complete_view;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(i9);
        if (frameLayout != null) {
            i9 = R$id.load_more_load_end_view;
            FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i9);
            if (frameLayout2 != null) {
                i9 = R$id.load_more_load_fail_view;
                FrameLayout frameLayout3 = (FrameLayout) view.findViewById(i9);
                if (frameLayout3 != null) {
                    i9 = R$id.load_more_loading_view;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i9);
                    if (linearLayout != null) {
                        i9 = R$id.loading_progress;
                        ProgressBar progressBar = (ProgressBar) view.findViewById(i9);
                        if (progressBar != null) {
                            i9 = R$id.loading_text;
                            TextView textView = (TextView) view.findViewById(i9);
                            if (textView != null) {
                                i9 = R$id.tv_prompt;
                                TextView textView2 = (TextView) view.findViewById(i9);
                                if (textView2 != null) {
                                    return new BrvahQuickViewLoadMoreBinding((FrameLayout) view, frameLayout, frameLayout2, frameLayout3, linearLayout, progressBar, textView, textView2);
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
    public static BrvahQuickViewLoadMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static BrvahQuickViewLoadMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.brvah_quick_view_load_more, viewGroup, false);
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
