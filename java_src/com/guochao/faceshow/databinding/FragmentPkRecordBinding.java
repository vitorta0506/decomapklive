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
public final class FragmentPkRecordBinding implements ViewBinding {
    @NonNull
    public final LinearLayout llContent;
    @NonNull
    public final TextView pkSession;
    @NonNull
    public final TextView pkWin;
    @NonNull
    public final TextView pkWinRate;
    @NonNull
    private final LinearLayout rootView;

    private FragmentPkRecordBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.llContent = linearLayout2;
        this.pkSession = textView;
        this.pkWin = textView2;
        this.pkWinRate = textView3;
    }

    @NonNull
    public static FragmentPkRecordBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.pk_session;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.pk_session);
        if (textView != null) {
            i9 = R.id.pk_win;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.pk_win);
            if (textView2 != null) {
                i9 = R.id.pk_win_rate;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.pk_win_rate);
                if (textView3 != null) {
                    return new FragmentPkRecordBinding(linearLayout, linearLayout, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentPkRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPkRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pk_record, viewGroup, false);
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
