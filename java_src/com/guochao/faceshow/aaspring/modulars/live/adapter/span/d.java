package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class d extends f {

    /* renamed from: a  reason: collision with root package name */
    String f18270a;

    /* renamed from: b  reason: collision with root package name */
    int f18271b;

    /* renamed from: c  reason: collision with root package name */
    int f18272c;

    /* renamed from: d  reason: collision with root package name */
    Drawable f18273d;

    /* loaded from: classes3.dex */
    public class a extends s0.c<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<d> f18274a;

        public a(d dVar) {
            this.f18274a = new WeakReference<>(dVar);
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            d dVar = this.f18274a.get();
            if (dVar == null) {
                return;
            }
            dVar.a(drawable);
        }
    }

    public d(String str, TextView textView) {
        super(ResourcesCompat.getDrawable(BaseApplication.getInstance().getResources(), R.mipmap.icon_mvp_level1, null));
        this.f18271b = 44;
        this.f18272c = 18;
        this.f18270a = str;
        this.f18271b = DensityUtil.dp2px(44.0f);
        this.f18272c = DensityUtil.dp2px(18.0f);
        bindTextView(textView);
        Drawable drawable = super.getDrawable();
        if (drawable != null) {
            drawable.setBounds(0, 0, this.f18271b, this.f18272c);
        }
        if (TextUtils.isEmpty(this.f18270a)) {
            return;
        }
        com.bumptech.glide.c.u(BaseApplication.getInstance()).r(str).a0(this.f18271b, this.f18272c).m().M0(new a(this));
    }

    public void a(Drawable drawable) {
        this.f18273d = drawable;
        drawable.setBounds(0, 0, this.f18271b, this.f18272c);
        TextView textView = this.mTextViewWeakReference.get();
        if (textView != null) {
            CharSequence text = textView.getText();
            if (text instanceof Spannable) {
                for (d dVar : (d[]) ((Spannable) text).getSpans(0, text.length(), d.class)) {
                    if (dVar == this) {
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
        Drawable drawable = this.f18273d;
        return drawable != null ? drawable : super.getDrawable();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.a, android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i9, int i10, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int i11 = fontMetricsInt2.bottom - fontMetricsInt2.top;
            int i12 = this.f18272c / 2;
            int i13 = i11 / 4;
            int i14 = i12 - i13;
            int i15 = -(i12 + i13);
            fontMetricsInt.ascent = i15;
            fontMetricsInt.top = i15;
            fontMetricsInt.bottom = i14;
            fontMetricsInt.descent = i14;
        }
        return this.f18271b;
    }
}
