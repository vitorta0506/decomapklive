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
import com.guochao.faceshow.aaspring.views.loopView.LoopView;
/* loaded from: classes2.dex */
public final class DialogSelectRecordTypeBinding implements ViewBinding {
    @NonNull
    public final TextView commonDialogCancel;
    @NonNull
    public final TextView commonDialogSubmit;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LoopView wvRecordType;

    private DialogSelectRecordTypeBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LoopView loopView) {
        this.rootView = linearLayout;
        this.commonDialogCancel = textView;
        this.commonDialogSubmit = textView2;
        this.wvRecordType = loopView;
    }

    @NonNull
    public static DialogSelectRecordTypeBinding bind(@NonNull View view) {
        int i9 = R.id.common_dialog_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_cancel);
        if (textView != null) {
            i9 = R.id.common_dialog_submit;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_submit);
            if (textView2 != null) {
                i9 = R.id.wv_record_type;
                LoopView loopView = (LoopView) ViewBindings.findChildViewById(view, R.id.wv_record_type);
                if (loopView != null) {
                    return new DialogSelectRecordTypeBinding((LinearLayout) view, textView, textView2, loopView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogSelectRecordTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogSelectRecordTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_select_record_type, viewGroup, false);
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
