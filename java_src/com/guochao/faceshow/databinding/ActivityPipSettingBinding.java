package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPipSettingBinding implements ViewBinding {
    @NonNull
    public final LinearLayout rlDistancePrivacyLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvDistancePrivacy;
    @NonNull
    public final CheckBox watcherCheck;

    private ActivityPipSettingBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull CheckBox checkBox) {
        this.rootView = linearLayout;
        this.rlDistancePrivacyLayout = linearLayout2;
        this.tvDistancePrivacy = textView;
        this.watcherCheck = checkBox;
    }

    @NonNull
    public static ActivityPipSettingBinding bind(@NonNull View view) {
        int i9 = R.id.rlDistancePrivacyLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlDistancePrivacyLayout);
        if (linearLayout != null) {
            i9 = R.id.tvDistancePrivacy;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvDistancePrivacy);
            if (textView != null) {
                i9 = R.id.watcher_check;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.watcher_check);
                if (checkBox != null) {
                    return new ActivityPipSettingBinding((LinearLayout) view, linearLayout, textView, checkBox);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPipSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPipSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_pip_setting, viewGroup, false);
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
