package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.SystemUtil;
/* loaded from: classes3.dex */
public class VipLicenseView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f24117a;

    /* renamed from: b  reason: collision with root package name */
    private int f24118b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ClickableSpan {
        a() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            UrlUtils.goTermOfUse(VipLicenseView.this.getContext());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            textPaint.setColor(VipLicenseView.this.f24118b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ClickableSpan {
        b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            UrlUtils.goPrivacy(VipLicenseView.this.getContext());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            textPaint.setColor(VipLicenseView.this.f24118b);
        }
    }

    public VipLicenseView(Context context) {
        super(context);
        this.f24117a = Color.parseColor("#9497A2");
        this.f24118b = Color.parseColor("#666666");
        b(null);
    }

    private void b(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.VipLicenseView);
            this.f24117a = obtainStyledAttributes.getColor(0, this.f24117a);
            obtainStyledAttributes.recycle();
        }
        setOrientation(1);
        setGravity(1);
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setTextSize(2, 12.0f);
        textView.setTextColor(this.f24117a);
        textView.setText(R.string.vip_mall_buy_vip_tips_2_new);
        addView(textView, new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = new TextView(getContext());
        textView2.setGravity(17);
        textView2.setTextSize(2, 12.0f);
        textView2.setLineSpacing(DensityUtil.dp2px(7.0f), 1.0f);
        textView2.setTextColor(this.f24117a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = DensityUtil.dp2px(8.0f);
        String string = getResources().getString(R.string.vip_mall_buy_vip_tips_android_new);
        String string2 = getResources().getString(R.string.term_of_use_new);
        String string3 = getResources().getString(R.string.privacy_policy_new);
        String format = String.format(string, string2, string3);
        int indexOf = format.toLowerCase().indexOf(string2.toLowerCase());
        SpannableString spannableString = new SpannableString(format);
        boolean equals = "vivo NEX A".equals(SystemUtil.getSystemModel());
        if (indexOf > 0) {
            spannableString.setSpan(new a(), indexOf, string2.length() + indexOf, 33);
            if (equals) {
                spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.login.utils.o(), indexOf, string2.length() + indexOf, 33);
            }
        }
        int indexOf2 = format.toLowerCase().indexOf(string3.toLowerCase());
        if (indexOf2 > 0) {
            spannableString.setSpan(new b(), indexOf2, string3.length() + indexOf2, 33);
            if (equals) {
                spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.login.utils.o(), indexOf2, string3.length() + indexOf2, 33);
            }
        }
        textView2.setText(spannableString);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        addView(textView2, layoutParams);
        setPaddingRelative(DensityUtil.dp2px(16.0f), getPaddingTop(), DensityUtil.dp2px(16.0f), getPaddingBottom());
    }

    public VipLicenseView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24117a = Color.parseColor("#9497A2");
        this.f24118b = Color.parseColor("#666666");
        b(attributeSet);
    }

    public VipLicenseView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24117a = Color.parseColor("#9497A2");
        this.f24118b = Color.parseColor("#666666");
        b(attributeSet);
    }
}
