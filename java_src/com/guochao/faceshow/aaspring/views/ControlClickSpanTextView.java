package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.text.Spannable;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes3.dex */
public class ControlClickSpanTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private long f23527a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23528b;

    public ControlClickSpanTextView(Context context) {
        super(context);
        this.f23528b = false;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CharSequence text = getText();
        if (text == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (!this.f23528b && (text instanceof Spannable)) {
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) ((Spannable) text).getSpans(0, text.length(), ClickableSpan.class);
            if (clickableSpanArr != null && clickableSpanArr.length != 0) {
                if (motionEvent.getAction() == 0) {
                    this.f23527a = System.currentTimeMillis();
                } else if (motionEvent.getAction() == 1 && System.currentTimeMillis() - this.f23527a > 500) {
                    return true;
                }
            } else {
                return super.onTouchEvent(motionEvent);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setLinkIsResponseLongClick(boolean z10) {
        this.f23528b = z10;
    }

    public ControlClickSpanTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23528b = false;
    }

    public ControlClickSpanTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23528b = false;
    }
}
