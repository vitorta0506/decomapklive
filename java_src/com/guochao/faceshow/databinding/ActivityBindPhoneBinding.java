package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityBindPhoneBinding implements ViewBinding {
    @NonNull
    public final TextView btnBind;
    @NonNull
    public final TextView btnChange;
    @NonNull
    public final TextView btnNext;
    @NonNull
    public final TextView btnSendVerificationCode;
    @NonNull
    public final EditText etNewPhoneNumber;
    @NonNull
    public final RelativeLayout etNewPhoneNumberRl;
    @NonNull
    public final EditText etPhoneNumber;
    @NonNull
    public final RelativeLayout etPhoneNumberRl;
    @NonNull
    public final EditText etVerificationCode;
    @NonNull
    public final RelativeLayout flVerificationLayout;
    @NonNull
    public final ImageView nationalFlag;
    @NonNull
    public final ImageView nationalFlag1;
    @NonNull
    public final TextView nationalTxt;
    @NonNull
    public final TextView nationalTxt1;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvHasBindNumber;

    private ActivityBindPhoneBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull EditText editText, @NonNull RelativeLayout relativeLayout, @NonNull EditText editText2, @NonNull RelativeLayout relativeLayout2, @NonNull EditText editText3, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = linearLayout;
        this.btnBind = textView;
        this.btnChange = textView2;
        this.btnNext = textView3;
        this.btnSendVerificationCode = textView4;
        this.etNewPhoneNumber = editText;
        this.etNewPhoneNumberRl = relativeLayout;
        this.etPhoneNumber = editText2;
        this.etPhoneNumberRl = relativeLayout2;
        this.etVerificationCode = editText3;
        this.flVerificationLayout = relativeLayout3;
        this.nationalFlag = imageView;
        this.nationalFlag1 = imageView2;
        this.nationalTxt = textView5;
        this.nationalTxt1 = textView6;
        this.tvHasBindNumber = textView7;
    }

    @NonNull
    public static ActivityBindPhoneBinding bind(@NonNull View view) {
        int i9 = R.id.btnBind;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnBind);
        if (textView != null) {
            i9 = R.id.btnChange;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btnChange);
            if (textView2 != null) {
                i9 = R.id.btnNext;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.btnNext);
                if (textView3 != null) {
                    i9 = R.id.btnSendVerificationCode;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.btnSendVerificationCode);
                    if (textView4 != null) {
                        i9 = R.id.etNewPhoneNumber;
                        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etNewPhoneNumber);
                        if (editText != null) {
                            i9 = R.id.etNewPhoneNumber_rl;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.etNewPhoneNumber_rl);
                            if (relativeLayout != null) {
                                i9 = R.id.etPhoneNumber;
                                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.etPhoneNumber);
                                if (editText2 != null) {
                                    i9 = R.id.etPhoneNumber_rl;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.etPhoneNumber_rl);
                                    if (relativeLayout2 != null) {
                                        i9 = R.id.etVerificationCode;
                                        EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.etVerificationCode);
                                        if (editText3 != null) {
                                            i9 = R.id.flVerificationLayout;
                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.flVerificationLayout);
                                            if (relativeLayout3 != null) {
                                                i9 = R.id.national_flag;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.national_flag);
                                                if (imageView != null) {
                                                    i9 = R.id.national_flag1;
                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.national_flag1);
                                                    if (imageView2 != null) {
                                                        i9 = R.id.national_txt;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.national_txt);
                                                        if (textView5 != null) {
                                                            i9 = R.id.national_txt1;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.national_txt1);
                                                            if (textView6 != null) {
                                                                i9 = R.id.tvHasBindNumber;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tvHasBindNumber);
                                                                if (textView7 != null) {
                                                                    return new ActivityBindPhoneBinding((LinearLayout) view, textView, textView2, textView3, textView4, editText, relativeLayout, editText2, relativeLayout2, editText3, relativeLayout3, imageView, imageView2, textView5, textView6, textView7);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static ActivityBindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityBindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_bind_phone, viewGroup, false);
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
