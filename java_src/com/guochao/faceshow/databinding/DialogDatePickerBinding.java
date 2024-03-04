package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DatePickerView;
/* loaded from: classes2.dex */
public final class DialogDatePickerBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final TextView commonDialogCancel;
    @NonNull
    public final View commonDialogHorizonLine;
    @NonNull
    public final TextView commonDialogSubmit;
    @NonNull
    public final DatePickerView datePicker;
    @NonNull
    private final FrameLayout rootView;

    private DialogDatePickerBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TextView textView, @NonNull View view2, @NonNull TextView textView2, @NonNull DatePickerView datePickerView) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.commonDialogCancel = textView;
        this.commonDialogHorizonLine = view2;
        this.commonDialogSubmit = textView2;
        this.datePicker = datePickerView;
    }

    @NonNull
    public static DialogDatePickerBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.common_dialog_cancel;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_cancel);
            if (textView != null) {
                i9 = R.id.common_dialog_horizon_line;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.common_dialog_horizon_line);
                if (findChildViewById2 != null) {
                    i9 = R.id.common_dialog_submit;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_submit);
                    if (textView2 != null) {
                        i9 = R.id.date_picker;
                        DatePickerView datePickerView = (DatePickerView) ViewBindings.findChildViewById(view, R.id.date_picker);
                        if (datePickerView != null) {
                            return new DialogDatePickerBinding((FrameLayout) view, findChildViewById, textView, findChildViewById2, textView2, datePickerView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogDatePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogDatePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_date_picker, viewGroup, false);
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
