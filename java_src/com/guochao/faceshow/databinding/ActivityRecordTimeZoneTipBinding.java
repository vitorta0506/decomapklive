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
public final class ActivityRecordTimeZoneTipBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView timeZoneFour1;
    @NonNull
    public final TextView timeZoneFour2;

    private ActivityRecordTimeZoneTipBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.timeZoneFour1 = textView;
        this.timeZoneFour2 = textView2;
    }

    @NonNull
    public static ActivityRecordTimeZoneTipBinding bind(@NonNull View view) {
        int i9 = R.id.time_zone_four1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.time_zone_four1);
        if (textView != null) {
            i9 = R.id.time_zone_four2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time_zone_four2);
            if (textView2 != null) {
                return new ActivityRecordTimeZoneTipBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityRecordTimeZoneTipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityRecordTimeZoneTipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_record_time_zone_tip, viewGroup, false);
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