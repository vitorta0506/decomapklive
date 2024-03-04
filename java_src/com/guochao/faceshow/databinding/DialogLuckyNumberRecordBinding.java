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
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
/* loaded from: classes2.dex */
public final class DialogLuckyNumberRecordBinding implements ViewBinding {
    @NonNull
    public final LinearLayout emptyLayout;
    @NonNull
    public final TextView joinFee;
    @NonNull
    public final LinearLayout layoutTabs;
    @NonNull
    public final ImageView leftBack;
    @NonNull
    public final TextView reward;
    @NonNull
    private final RatioFrameLayout rootView;

    private DialogLuckyNumberRecordBinding(@NonNull RatioFrameLayout ratioFrameLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = ratioFrameLayout;
        this.emptyLayout = linearLayout;
        this.joinFee = textView;
        this.layoutTabs = linearLayout2;
        this.leftBack = imageView;
        this.reward = textView2;
    }

    @NonNull
    public static DialogLuckyNumberRecordBinding bind(@NonNull View view) {
        int i9 = R.id.empty_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.empty_layout);
        if (linearLayout != null) {
            i9 = R.id.join_fee;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.join_fee);
            if (textView != null) {
                i9 = R.id.layout_tabs;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_tabs);
                if (linearLayout2 != null) {
                    i9 = R.id.left_back;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.left_back);
                    if (imageView != null) {
                        i9 = R.id.reward;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.reward);
                        if (textView2 != null) {
                            return new DialogLuckyNumberRecordBinding((RatioFrameLayout) view, linearLayout, textView, linearLayout2, imageView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogLuckyNumberRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogLuckyNumberRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_lucky_number_record, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RatioFrameLayout getRoot() {
        return this.rootView;
    }
}
