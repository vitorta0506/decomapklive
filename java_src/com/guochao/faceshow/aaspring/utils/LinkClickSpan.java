package com.guochao.faceshow.aaspring.utils;

import android.net.Uri;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import com.guochao.faceshow.web.WebViewActivity;
/* loaded from: classes3.dex */
public class LinkClickSpan extends ClickableSpan {
    private int mColor;
    private final boolean mInAppOpenUrl;
    String mText;

    public LinkClickSpan(String str, int i9) {
        this(str, i9, true);
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        if (this.mInAppOpenUrl) {
            WebViewActivity.createBuilder().m(this.mText).c(true).a(view.getContext());
        } else {
            PackageUtils.viewUri(view.getContext(), Uri.parse(StringUtils.convertKeywordLoadOrSearch(this.mText)));
        }
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NonNull TextPaint textPaint) {
        textPaint.setColor(this.mColor);
        textPaint.setUnderlineText(true);
    }

    public LinkClickSpan(String str, int i9, boolean z10) {
        this.mText = str;
        this.mColor = i9;
        this.mInAppOpenUrl = z10;
    }
}
