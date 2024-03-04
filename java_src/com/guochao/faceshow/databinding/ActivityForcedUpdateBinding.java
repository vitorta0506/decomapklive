package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DatePickerView;
/* loaded from: classes2.dex */
public final class ActivityForcedUpdateBinding implements ViewBinding {
    @NonNull
    public final FrameLayout boyFram;
    @NonNull
    public final DatePickerView datePicker;
    @NonNull
    public final TextView edit;
    @NonNull
    public final FrameLayout girlFram;
    @NonNull
    public final LinearLayout headerCut;
    @NonNull
    public final TextView next;
    @NonNull
    private final LinearLayout rootView;

    private ActivityForcedUpdateBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull DatePickerView datePickerView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.boyFram = frameLayout;
        this.datePicker = datePickerView;
        this.edit = textView;
        this.girlFram = frameLayout2;
        this.headerCut = linearLayout2;
        this.next = textView2;
    }

    @NonNull
    public static ActivityForcedUpdateBinding bind(@NonNull View view) {
        int i9 = R.id.boy_fram;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.boy_fram);
        if (frameLayout != null) {
            i9 = R.id.date_picker;
            DatePickerView datePickerView = (DatePickerView) ViewBindings.findChildViewById(view, R.id.date_picker);
            if (datePickerView != null) {
                i9 = R.id.edit;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.edit);
                if (textView != null) {
                    i9 = R.id.girl_fram;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.girl_fram);
                    if (frameLayout2 != null) {
                        i9 = R.id.header_cut;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.header_cut);
                        if (linearLayout != null) {
                            i9 = R.id.next;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.next);
                            if (textView2 != null) {
                                return new ActivityForcedUpdateBinding((LinearLayout) view, frameLayout, datePickerView, textView, frameLayout2, linearLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityForcedUpdateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityForcedUpdateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_forced_update, viewGroup, false);
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
