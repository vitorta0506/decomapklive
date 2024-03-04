package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class a extends f {

    /* renamed from: a  reason: collision with root package name */
    String f18264a;

    /* renamed from: b  reason: collision with root package name */
    int f18265b;

    /* renamed from: c  reason: collision with root package name */
    Drawable f18266c;

    public a(String str, TextView textView) {
        super(ResourcesCompat.getDrawable(BaseApplication.getInstance().getResources(), R.mipmap.default_head, null));
        this.f18264a = str;
        bindTextView(textView);
        this.f18265b = DensityUtil.dp2px(18.0f);
        Drawable drawable = super.getDrawable();
        if (drawable != null) {
            int i9 = this.f18265b;
            drawable.setBounds(0, 0, i9, i9);
        }
        if (TextUtils.isEmpty(this.f18264a)) {
            return;
        }
        int i10 = this.f18265b;
        com.bumptech.glide.c.u(BaseApplication.getInstance()).r(str).q0(new jc.d(0.0f, 0)).a0(i10, i10).M0(new b(this));
    }

    public void a(Drawable drawable) {
        this.f18266c = drawable;
        int i9 = this.f18265b;
        drawable.setBounds(0, 0, i9, i9);
        TextView textView = this.mTextViewWeakReference.get();
        if (textView != null) {
            CharSequence text = textView.getText();
            if (text instanceof Spannable) {
                for (a aVar : (a[]) ((Spannable) text).getSpans(0, text.length(), a.class)) {
                    if (aVar == this) {
                        textView.invalidate();
                        return;
                    }
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.a, android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, Paint paint) {
        Drawable drawable = getDrawable();
        canvas.save();
        canvas.translate(f10, (((i13 - i11) - drawable.getBounds().bottom) / 2) + i11);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.ImageSpan, android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        Drawable drawable = this.f18266c;
        return drawable != null ? drawable : super.getDrawable();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.a, android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i9, int i10, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int i11 = fontMetricsInt2.bottom - fontMetricsInt2.top;
            int i12 = this.f18265b / 2;
            int i13 = i11 / 4;
            int i14 = i12 - i13;
            int i15 = -(i12 + i13);
            fontMetricsInt.ascent = i15;
            fontMetricsInt.top = i15;
            fontMetricsInt.bottom = i14;
            fontMetricsInt.descent = i14;
        }
        return this.f18265b;
    }
}
