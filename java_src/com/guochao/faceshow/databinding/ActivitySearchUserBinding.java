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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivitySearchUserBinding implements ViewBinding {
    @NonNull
    public final RecyclerView baseContent;
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

    private ActivitySearchUserBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.baseContent = recyclerView;
        this.cancel = textView;
        this.deleteEdit = imageView;
        this.searchContent = editText;
        this.searchTitleLay = linearLayout2;
    }

    @NonNull
    public static ActivitySearchUserBinding bind(@NonNull View view) {
        int i9 = R.id.base_content;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.base_content);
        if (recyclerView != null) {
            i9 = R.id.cancel;
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
                            return new ActivitySearchUserBinding((LinearLayout) view, recyclerView, textView, imageView, editText, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySearchUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySearchUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_search_user, viewGroup, false);
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
