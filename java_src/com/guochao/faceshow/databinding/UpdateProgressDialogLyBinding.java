package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class UpdateProgressDialogLyBinding implements ViewBinding {
    @NonNull
    private final CardView rootView;
    @NonNull
    public final TextView updateCancel;
    @NonNull
    public final TextView updateConfirm;
    @NonNull
    public final ProgressBar updateProgressBar;
    @NonNull
    public final LinearLayout updateProgressBarLy;
    @NonNull
    public final TextView updateProgressPercentText;
    @NonNull
    public final ImageView updateShowImgBg;
    @NonNull
    public final TextView updateTips;
    @NonNull
    public final ScrollView updateTipsScroller;
    @NonNull
    public final TextView updateTitle;
    @NonNull
    public final TextView updateTopText;

    private UpdateProgressDialogLyBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull TextView textView4, @NonNull ScrollView scrollView, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = cardView;
        this.updateCancel = textView;
        this.updateConfirm = textView2;
        this.updateProgressBar = progressBar;
        this.updateProgressBarLy = linearLayout;
        this.updateProgressPercentText = textView3;
        this.updateShowImgBg = imageView;
        this.updateTips = textView4;
        this.updateTipsScroller = scrollView;
        this.updateTitle = textView5;
        this.updateTopText = textView6;
    }

    @NonNull
    public static UpdateProgressDialogLyBinding bind(@NonNull View view) {
        int i9 = R.id.update_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.update_cancel);
        if (textView != null) {
            i9 = R.id.update_confirm;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.update_confirm);
            if (textView2 != null) {
                i9 = R.id.update_progress_bar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.update_progress_bar);
                if (progressBar != null) {
                    i9 = R.id.update_progress_bar_ly;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.update_progress_bar_ly);
                    if (linearLayout != null) {
                        i9 = R.id.update_progress_percent_text;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.update_progress_percent_text);
                        if (textView3 != null) {
                            i9 = R.id.update_show_img_bg;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.update_show_img_bg);
                            if (imageView != null) {
                                i9 = R.id.update_tips;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.update_tips);
                                if (textView4 != null) {
                                    i9 = R.id.update_tips_scroller;
                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.update_tips_scroller);
                                    if (scrollView != null) {
                                        i9 = R.id.update_title;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.update_title);
                                        if (textView5 != null) {
                                            i9 = R.id.update_top_text;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.update_top_text);
                                            if (textView6 != null) {
                                                return new UpdateProgressDialogLyBinding((CardView) view, textView, textView2, progressBar, linearLayout, textView3, imageView, textView4, scrollView, textView5, textView6);
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
    public static UpdateProgressDialogLyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UpdateProgressDialogLyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.update_progress_dialog_ly, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
