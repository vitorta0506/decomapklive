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
public final class FragmentTimeBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView timeTvCancel;
    @NonNull
    public final TextView timeTvRepeat;
    @NonNull
    public final TextView timeTvReverse;
    @NonNull
    public final TextView timeTvSlogan;
    @NonNull
    public final TextView timeTvSpeed;

    private FragmentTimeBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.timeTvCancel = textView;
        this.timeTvRepeat = textView2;
        this.timeTvReverse = textView3;
        this.timeTvSlogan = textView4;
        this.timeTvSpeed = textView5;
    }

    @NonNull
    public static FragmentTimeBinding bind(@NonNull View view) {
        int i9 = R.id.time_tv_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.time_tv_cancel);
        if (textView != null) {
            i9 = R.id.time_tv_repeat;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time_tv_repeat);
            if (textView2 != null) {
                i9 = R.id.time_tv_reverse;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.time_tv_reverse);
                if (textView3 != null) {
                    i9 = R.id.time_tv_slogan;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.time_tv_slogan);
                    if (textView4 != null) {
                        i9 = R.id.time_tv_speed;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.time_tv_speed);
                        if (textView5 != null) {
                            return new FragmentTimeBinding((LinearLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentTimeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentTimeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_time, viewGroup, false);
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
