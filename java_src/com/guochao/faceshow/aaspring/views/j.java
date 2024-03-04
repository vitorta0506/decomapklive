package com.guochao.faceshow.aaspring.views;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import com.guochao.faceshow.web.WebViewActivity;
/* loaded from: classes3.dex */
public class j extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    String f24377a;

    /* renamed from: b  reason: collision with root package name */
    private int f24378b;

    public j(String str, int i9) {
        this.f24377a = str;
        this.f24378b = i9;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        WebViewActivity.createBuilder().m(this.f24377a).c(true).a(view.getContext());
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NonNull TextPaint textPaint) {
        textPaint.setColor(this.f24378b);
        textPaint.setUnderlineText(true);
    }
}
