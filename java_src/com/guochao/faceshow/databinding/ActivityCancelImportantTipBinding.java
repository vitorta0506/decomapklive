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
public final class ActivityCancelImportantTipBinding implements ViewBinding {
    @NonNull
    public final TextView importantTip1;
    @NonNull
    public final TextView importantTip2;
    @NonNull
    public final TextView nextStep;
    @NonNull
    private final LinearLayout rootView;

    private ActivityCancelImportantTipBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.importantTip1 = textView;
        this.importantTip2 = textView2;
        this.nextStep = textView3;
    }

    @NonNull
    public static ActivityCancelImportantTipBinding bind(@NonNull View view) {
        int i9 = R.id.important_tip1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.important_tip1);
        if (textView != null) {
            i9 = R.id.important_tip2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.important_tip2);
            if (textView2 != null) {
                i9 = R.id.next_step;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.next_step);
                if (textView3 != null) {
                    return new ActivityCancelImportantTipBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityCancelImportantTipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityCancelImportantTipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_cancel_important_tip, viewGroup, false);
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
