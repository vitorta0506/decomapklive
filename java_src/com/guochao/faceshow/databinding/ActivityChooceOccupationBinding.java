package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityChooceOccupationBinding implements ViewBinding {
    @NonNull
    public final TextView chooseOccupation;
    @NonNull
    public final EditText company;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    public final EditText occupation;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;

    private ActivityChooceOccupationBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull EditText editText2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.chooseOccupation = textView;
        this.company = editText;
        this.mainLayout = linearLayout2;
        this.occupation = editText2;
        this.save = textView2;
    }

    @NonNull
    public static ActivityChooceOccupationBinding bind(@NonNull View view) {
        int i9 = R.id.choose_occupation;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.choose_occupation);
        if (textView != null) {
            i9 = R.id.company;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.company);
            if (editText != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.occupation;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.occupation);
                if (editText2 != null) {
                    i9 = R.id.save;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.save);
                    if (textView2 != null) {
                        return new ActivityChooceOccupationBinding(linearLayout, textView, editText, linearLayout, editText2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityChooceOccupationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChooceOccupationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_chooce_occupation, viewGroup, false);
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
