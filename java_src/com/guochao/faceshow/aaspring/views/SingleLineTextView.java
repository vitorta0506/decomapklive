package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
/* loaded from: classes3.dex */
public class SingleLineTextView extends FaceCastTextViewBridge {

    /* renamed from: a  reason: collision with root package name */
    private boolean f24029a;

    public SingleLineTextView(Context context) {
        super(context);
        this.f24029a = false;
    }

    public static CharSequence a(CharSequence charSequence) {
        int length = charSequence.length();
        int i9 = 0;
        while (i9 < length && (charSequence.charAt(i9) <= ' ' || charSequence.charAt(i9) == '\n')) {
            i9++;
        }
        while (i9 < length && (charSequence.charAt(length - 1) <= ' ' || charSequence.charAt(i9) == '\n')) {
            length--;
        }
        return (i9 > 0 || length < charSequence.length()) ? charSequence.subSequence(i9, length) : charSequence;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        if (View.MeasureSpec.getMode(i9) != 0) {
            int measuredWidth = getMeasuredWidth();
            Layout layout = getLayout();
            if (layout == null || layout.getWidth() < measuredWidth || layout.getLineCount() <= 1) {
                return;
            }
            int lineEnd = layout.getLineEnd(0);
            CharSequence text = getText();
            CharSequence subSequence = text.subSequence(0, lineEnd);
            CharSequence subSequence2 = text.subSequence(0, lineEnd);
            while (true) {
                if (TextViewUtils.calTextWidth(this, subSequence.toString().substring(0, lineEnd) + "...") <= getMeasuredWidth() || lineEnd - 1 <= 0) {
                    break;
                }
                subSequence2 = subSequence2.subSequence(0, lineEnd);
            }
            if (subSequence2 instanceof Spannable) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(a(subSequence2));
                spannableStringBuilder.append((CharSequence) "...");
                super.setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
            } else {
                super.setText(subSequence2.toString().trim() + "...", TextView.BufferType.NORMAL);
            }
            super.onMeasure(i9, i10);
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f24029a = false;
        super.setText(charSequence, bufferType);
    }

    public SingleLineTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24029a = false;
    }

    public SingleLineTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24029a = false;
    }
}
