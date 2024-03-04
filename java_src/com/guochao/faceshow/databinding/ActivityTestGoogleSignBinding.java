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
public final class ActivityTestGoogleSignBinding implements ViewBinding {
    @NonNull
    public final TextView delete;
    @NonNull
    public final TextView insert;
    @NonNull
    public final TextView log;
    @NonNull
    public final TextView query;
    @NonNull
    private final LinearLayout rootView;

    private ActivityTestGoogleSignBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.delete = textView;
        this.insert = textView2;
        this.log = textView3;
        this.query = textView4;
    }

    @NonNull
    public static ActivityTestGoogleSignBinding bind(@NonNull View view) {
        int i9 = R.id.delete;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.delete);
        if (textView != null) {
            i9 = R.id.insert;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.insert);
            if (textView2 != null) {
                i9 = R.id.log;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.log);
                if (textView3 != null) {
                    i9 = R.id.query;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.query);
                    if (textView4 != null) {
                        return new ActivityTestGoogleSignBinding((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityTestGoogleSignBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityTestGoogleSignBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_test_google_sign, viewGroup, false);
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
