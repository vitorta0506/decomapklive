package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.login.fragment.VerificationCodeHelper;
/* loaded from: classes3.dex */
public class u extends CountDownTimer {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f24470a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f24471b;

    /* renamed from: c  reason: collision with root package name */
    private View f24472c;

    /* renamed from: d  reason: collision with root package name */
    private Context f24473d;

    /* renamed from: e  reason: collision with root package name */
    private int f24474e;

    public u(Context context, ImageView imageView, TextView textView, View view, long j10, long j11, int i9) {
        super(j10, j11);
        this.f24473d = context;
        this.f24474e = i9;
        this.f24470a = imageView;
        this.f24471b = textView;
        this.f24472c = view;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        int i9 = this.f24474e;
        if (i9 == 0) {
            VerificationCodeHelper.Companion.getInstance().setEmailTime(60000L);
        } else if (i9 == 1) {
            VerificationCodeHelper.Companion.getInstance().setReplaceEmailTime(60000L);
        } else if (i9 == 2) {
            VerificationCodeHelper.Companion.getInstance().setRegisterAccount(60000L);
        } else if (i9 == 3) {
            VerificationCodeHelper.Companion.getInstance().setRetrievePassWord(60000L);
        } else {
            VerificationCodeHelper.Companion.getInstance().setChangeLoginPWD(60000L);
        }
        this.f24472c.setEnabled(true);
        ImageView imageView = this.f24470a;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        TextView textView = this.f24471b;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j10) {
        this.f24472c.setEnabled(false);
        this.f24471b.setTextColor(ContextCompat.getColor(this.f24473d, R.color.white));
        ImageView imageView = this.f24470a;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        if (this.f24470a != null) {
            this.f24471b.setVisibility(0);
        }
        int i9 = this.f24474e;
        if (i9 == 0) {
            VerificationCodeHelper.Companion.getInstance().setEmailTime(j10);
        } else if (i9 == 1) {
            VerificationCodeHelper.Companion.getInstance().setReplaceEmailTime(j10);
        } else if (i9 == 2) {
            VerificationCodeHelper.Companion.getInstance().setRegisterAccount(j10);
        } else if (i9 == 3) {
            VerificationCodeHelper.Companion.getInstance().setRetrievePassWord(j10);
        } else {
            VerificationCodeHelper.Companion.getInstance().setChangeLoginPWD(j10);
        }
        TextView textView = this.f24471b;
        if (textView != null) {
            textView.setTextColor(ContextCompat.getColor(this.f24473d, R.color.white));
            this.f24471b.setText(String.format("%ds", Long.valueOf(j10 / 1000)));
        }
    }
}
