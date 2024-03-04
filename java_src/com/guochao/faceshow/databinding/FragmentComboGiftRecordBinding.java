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
/* loaded from: classes2.dex */
public final class FragmentComboGiftRecordBinding implements ViewBinding {
    @NonNull
    public final ImageView back;
    @NonNull
    public final LinearLayout emptyLL;
    @NonNull
    public final RecyclerView recordRV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView title;

    private FragmentComboGiftRecordBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.back = imageView;
        this.emptyLL = linearLayout2;
        this.recordRV = recyclerView;
        this.title = textView;
    }

    @NonNull
    public static FragmentComboGiftRecordBinding bind(@NonNull View view) {
        int i9 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i9 = R.id.emptyLL;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.emptyLL);
            if (linearLayout != null) {
                i9 = R.id.recordRV;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recordRV);
                if (recyclerView != null) {
                    i9 = R.id.title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView != null) {
                        return new FragmentComboGiftRecordBinding((LinearLayout) view, imageView, linearLayout, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentComboGiftRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentComboGiftRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_combo_gift_record, viewGroup, false);
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
