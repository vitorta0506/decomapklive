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
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ActivityCompletePersonalInfoBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final TextView boyFram;
    @NonNull
    public final EditText editText;
    @NonNull
    public final TextView girlFram;
    @NonNull
    public final EditText inviteCode;
    @NonNull
    public final TextView next;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView selectBirthday;

    private ActivityCompletePersonalInfoBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView, @NonNull EditText editText, @NonNull TextView textView2, @NonNull EditText editText2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.avatar = normalCircleImageView;
        this.boyFram = textView;
        this.editText = editText;
        this.girlFram = textView2;
        this.inviteCode = editText2;
        this.next = textView3;
        this.selectBirthday = textView4;
    }

    @NonNull
    public static ActivityCompletePersonalInfoBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.boy_fram;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.boy_fram);
            if (textView != null) {
                i9 = R.id.edit_text;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.edit_text);
                if (editText != null) {
                    i9 = R.id.girl_fram;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.girl_fram);
                    if (textView2 != null) {
                        i9 = R.id.invite_code;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.invite_code);
                        if (editText2 != null) {
                            i9 = R.id.next;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.next);
                            if (textView3 != null) {
                                i9 = R.id.select_birthday;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.select_birthday);
                                if (textView4 != null) {
                                    return new ActivityCompletePersonalInfoBinding((LinearLayout) view, normalCircleImageView, textView, editText, textView2, editText2, textView3, textView4);
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
    public static ActivityCompletePersonalInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityCompletePersonalInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_complete_personal_info, viewGroup, false);
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
