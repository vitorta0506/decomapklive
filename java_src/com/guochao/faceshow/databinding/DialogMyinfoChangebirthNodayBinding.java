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
import com.guochao.faceshow.views.wheelview.WheelView;
/* loaded from: classes2.dex */
public final class DialogMyinfoChangebirthNodayBinding implements ViewBinding {
    @NonNull
    public final TextView btnMyinfoCancel;
    @NonNull
    public final TextView btnMyinfoSure;
    @NonNull
    public final LinearLayout lyMyinfoChangeaddress;
    @NonNull
    public final LinearLayout lyMyinfoChangeaddressChild;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final WheelView wvBirthMonth;
    @NonNull
    public final WheelView wvBirthYear;

    private DialogMyinfoChangebirthNodayBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull WheelView wheelView, @NonNull WheelView wheelView2) {
        this.rootView = linearLayout;
        this.btnMyinfoCancel = textView;
        this.btnMyinfoSure = textView2;
        this.lyMyinfoChangeaddress = linearLayout2;
        this.lyMyinfoChangeaddressChild = linearLayout3;
        this.wvBirthMonth = wheelView;
        this.wvBirthYear = wheelView2;
    }

    @NonNull
    public static DialogMyinfoChangebirthNodayBinding bind(@NonNull View view) {
        int i9 = R.id.btn_myinfo_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_myinfo_cancel);
        if (textView != null) {
            i9 = R.id.btn_myinfo_sure;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_myinfo_sure);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.ly_myinfo_changeaddress_child;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ly_myinfo_changeaddress_child);
                if (linearLayout2 != null) {
                    i9 = R.id.wv_birth_month;
                    WheelView wheelView = (WheelView) ViewBindings.findChildViewById(view, R.id.wv_birth_month);
                    if (wheelView != null) {
                        i9 = R.id.wv_birth_year;
                        WheelView wheelView2 = (WheelView) ViewBindings.findChildViewById(view, R.id.wv_birth_year);
                        if (wheelView2 != null) {
                            return new DialogMyinfoChangebirthNodayBinding(linearLayout, textView, textView2, linearLayout, linearLayout2, wheelView, wheelView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogMyinfoChangebirthNodayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogMyinfoChangebirthNodayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_myinfo_changebirth_noday, viewGroup, false);
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
