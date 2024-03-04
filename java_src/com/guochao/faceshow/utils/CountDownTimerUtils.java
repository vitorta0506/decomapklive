package com.guochao.faceshow.utils;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
/* loaded from: classes4.dex */
public class CountDownTimerUtils extends CountDownTimer {
    private Context mContext;
    private TextView mTextView;

    public CountDownTimerUtils(Context context, TextView textView, long j10, long j11) {
        super(j10, j11);
        this.mTextView = textView;
        this.mContext = context;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        TextView textView = this.mTextView;
        if (textView != null) {
            textView.setText(this.mContext.getResources().getString(R.string.send));
            this.mTextView.setClickable(true);
            this.mTextView.setBackgroundResource(R.drawable.btn_login_blue_light);
        }
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j10) {
        TextView textView = this.mTextView;
        if (textView != null) {
            textView.setClickable(false);
            TextView textView2 = this.mTextView;
            textView2.setText((j10 / 1000) + NotifyType.SOUND);
            this.mTextView.setBackgroundResource(R.drawable.shape_grey_corners);
            SpannableString spannableString = new SpannableString(this.mTextView.getText().toString());
            spannableString.setSpan(new ForegroundColorSpan(-7829368), 0, this.mTextView.getText().toString().length(), 17);
            this.mTextView.setText(spannableString);
        }
    }
}
