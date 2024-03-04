package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivitySearchHistoryBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final ImageView deleteEdit;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final EditText searchContent;
    @NonNull
    public final LinearLayout searchTitleLay;

    private ActivitySearchHistoryBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.deleteEdit = imageView;
        this.searchContent = editText;
        this.searchTitleLay = linearLayout2;
    }

    @NonNull
    public static ActivitySearchHistoryBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i9 = R.id.delete_edit;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_edit);
            if (imageView != null) {
                i9 = R.id.search_content;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.search_content);
                if (editText != null) {
                    i9 = R.id.search_title_lay;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.search_title_lay);
                    if (linearLayout != null) {
                        return new ActivitySearchHistoryBinding((LinearLayout) view, textView, imageView, editText, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySearchHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySearchHistoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_search_history, viewGroup, false);
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
