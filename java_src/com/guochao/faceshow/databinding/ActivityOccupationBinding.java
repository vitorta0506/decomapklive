package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityOccupationBinding implements ViewBinding {
    @NonNull
    public final ListView accList;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    public final ListView ocType;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;

    private ActivityOccupationBinding(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull LinearLayout linearLayout2, @NonNull ListView listView2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.accList = listView;
        this.mainLayout = linearLayout2;
        this.ocType = listView2;
        this.save = textView;
    }

    @NonNull
    public static ActivityOccupationBinding bind(@NonNull View view) {
        int i9 = R.id.acc_list;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.acc_list);
        if (listView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.oc_type;
            ListView listView2 = (ListView) ViewBindings.findChildViewById(view, R.id.oc_type);
            if (listView2 != null) {
                i9 = R.id.save;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.save);
                if (textView != null) {
                    return new ActivityOccupationBinding(linearLayout, listView, linearLayout, listView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityOccupationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityOccupationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_occupation, viewGroup, false);
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
