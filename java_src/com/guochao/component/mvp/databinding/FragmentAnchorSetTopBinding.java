package com.guochao.component.mvp.databinding;

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
import com.github.gzuliyujiang.wheelpicker.widget.DateWheelLayout;
import com.github.gzuliyujiang.wheelpicker.widget.TimeWheelLayout;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class FragmentAnchorSetTopBinding implements ViewBinding {
    @NonNull
    public final ImageView avatarIV;
    @NonNull
    public final ImageView closeIV;
    @NonNull
    public final DateWheelLayout dateWheel;
    @NonNull
    public final EditText feeET;
    @NonNull
    public final TextView nameTV;
    @NonNull
    public final TextView okTV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView timeET;
    @NonNull
    public final LinearLayout timeLL;
    @NonNull
    public final LinearLayout timePickerLL;
    @NonNull
    public final TextView timeTV;
    @NonNull
    public final TimeWheelLayout timeWheel;

    private FragmentAnchorSetTopBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull DateWheelLayout dateWheelLayout, @NonNull EditText editText, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull TimeWheelLayout timeWheelLayout) {
        this.rootView = linearLayout;
        this.avatarIV = imageView;
        this.closeIV = imageView2;
        this.dateWheel = dateWheelLayout;
        this.feeET = editText;
        this.nameTV = textView;
        this.okTV = textView2;
        this.timeET = textView3;
        this.timeLL = linearLayout2;
        this.timePickerLL = linearLayout3;
        this.timeTV = textView4;
        this.timeWheel = timeWheelLayout;
    }

    @NonNull
    public static FragmentAnchorSetTopBinding bind(@NonNull View view) {
        int i9 = R$id.avatarIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.closeIV;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView2 != null) {
                i9 = R$id.dateWheel;
                DateWheelLayout dateWheelLayout = (DateWheelLayout) ViewBindings.findChildViewById(view, i9);
                if (dateWheelLayout != null) {
                    i9 = R$id.feeET;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
                    if (editText != null) {
                        i9 = R$id.nameTV;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView != null) {
                            i9 = R$id.okTV;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView2 != null) {
                                i9 = R$id.timeET;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                if (textView3 != null) {
                                    i9 = R$id.timeLL;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                    if (linearLayout != null) {
                                        i9 = R$id.timePickerLL;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                        if (linearLayout2 != null) {
                                            i9 = R$id.timeTV;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                            if (textView4 != null) {
                                                i9 = R$id.timeWheel;
                                                TimeWheelLayout timeWheelLayout = (TimeWheelLayout) ViewBindings.findChildViewById(view, i9);
                                                if (timeWheelLayout != null) {
                                                    return new FragmentAnchorSetTopBinding((LinearLayout) view, imageView, imageView2, dateWheelLayout, editText, textView, textView2, textView3, linearLayout, linearLayout2, textView4, timeWheelLayout);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentAnchorSetTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentAnchorSetTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_anchor_set_top, viewGroup, false);
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
