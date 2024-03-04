package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.AttributeSet;
import android.widget.TextView;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
/* loaded from: classes3.dex */
public class ExpandTextView extends FaceCastTextViewBridge {

    /* renamed from: a  reason: collision with root package name */
    private int f23636a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23637b;

    /* renamed from: c  reason: collision with root package name */
    a f23638c;

    /* renamed from: d  reason: collision with root package name */
    CharSequence f23639d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23640e;

    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public ExpandTextView(Context context) {
        super(context);
        this.f23636a = 2;
        this.f23640e = false;
    }

    private CharSequence a(Layout layout, CharSequence charSequence) {
        if (charSequence == null) {
            return "";
        }
        int lineEnd = layout.getLineEnd(this.f23636a - 1);
        if (charSequence.length() > lineEnd) {
            try {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                int i9 = 0;
                while (true) {
                    int i10 = lineEnd - i9;
                    if (TextViewUtils.calTextWidth(this, charSequence.subSequence(i10, lineEnd).toString()) >= TextViewUtils.calTextWidth(this, "...")) {
                        spannableStringBuilder.append(charSequence.subSequence(0, i10)).append((CharSequence) "...");
                        return spannableStringBuilder;
                    }
                    i9++;
                }
            } catch (Exception unused) {
            }
        }
        return charSequence;
    }

    public a getOnShowExpand() {
        return this.f23638c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i9, int i10) {
        Layout layout;
        int lineCount;
        super.onMeasure(i9, i10);
        if (this.f23640e || (layout = getLayout()) == null || (lineCount = layout.getLineCount()) <= this.f23636a || this.f23637b) {
            return;
        }
        this.f23637b = true;
        CharSequence a10 = a(layout, getText());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(a10);
        super.setText(spannableStringBuilder);
        a aVar = this.f23638c;
        if (aVar != null) {
            aVar.a();
        }
        setMeasuredDimension(getMeasuredWidth(), (getMeasuredHeight() / lineCount) * this.f23636a);
    }

    public void setExpandText(CharSequence charSequence) {
        this.f23637b = true;
        this.f23639d = charSequence;
        super.setText(charSequence, TextView.BufferType.NORMAL);
        requestLayout();
    }

    public void setForceExpand(boolean z10) {
        this.f23640e = z10;
    }

    public void setOnShowExpand(a aVar) {
        this.f23638c = aVar;
    }

    public void setPackedText(CharSequence charSequence) {
        this.f23637b = false;
        this.f23639d = charSequence;
        super.setText(charSequence, TextView.BufferType.NORMAL);
        requestLayout();
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f23637b = false;
        this.f23639d = charSequence;
        super.setText(charSequence, bufferType);
    }

    public ExpandTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23636a = 2;
        this.f23640e = false;
    }

    public ExpandTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23636a = 2;
        this.f23640e = false;
    }
}
