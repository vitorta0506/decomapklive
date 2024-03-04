package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivitySettingAreaLiveBinding implements ViewBinding {
    @NonNull
    public final ListView lvCountry;
    @NonNull
    private final LinearLayout rootView;

    private ActivitySettingAreaLiveBinding(@NonNull LinearLayout linearLayout, @NonNull ListView listView) {
        this.rootView = linearLayout;
        this.lvCountry = listView;
    }

    @NonNull
    public static ActivitySettingAreaLiveBinding bind(@NonNull View view) {
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.lvCountry);
        if (listView != null) {
            return new ActivitySettingAreaLiveBinding((LinearLayout) view, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lvCountry)));
    }

    @NonNull
    public static ActivitySettingAreaLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySettingAreaLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_setting_area_live, viewGroup, false);
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
