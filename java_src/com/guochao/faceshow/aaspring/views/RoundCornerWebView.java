package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class RoundCornerWebView extends FaceCastWebView {

    /* renamed from: s  reason: collision with root package name */
    int f23999s;

    /* renamed from: t  reason: collision with root package name */
    Path f24000t;

    /* renamed from: u  reason: collision with root package name */
    boolean f24001u;

    public RoundCornerWebView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.guochao.faceshow.aaspring.views.DsBridgeWebView
    public void init() {
        super.init();
        this.f24001u = Build.VERSION.SDK_INT < 29;
        this.f23999s = DensityUtil.dp2px(16.0f);
        setBackground(new ColorDrawable(0));
        getBackground().setAlpha(0);
        this.f24000t = new Path();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.views.DsBridgeWebView, android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f24001u) {
            float scrollY = getScrollY();
            float scrollX = getScrollX();
            int i9 = this.f23999s;
            int width = getWidth();
            int height = getHeight();
            if (getWidth() > i9 && getHeight() > i9) {
                Path path = this.f24000t;
                path.reset();
                float f10 = i9;
                path.moveTo(f10, 0.0f);
                path.lineTo((width - i9) + scrollX, 0.0f);
                float f11 = width + scrollX;
                path.quadTo(f11, 0.0f, f11, f10);
                float f12 = height;
                float f13 = scrollY + f12;
                path.lineTo(f11, f13);
                path.quadTo(f11, f13, f11, f13);
                path.lineTo(0.0f, f13);
                path.quadTo(0.0f, f12, 0.0f, f13);
                path.lineTo(0.0f, f10);
                path.quadTo(0.0f, 0.0f, f10, 0.0f);
                if (i9 > 0) {
                    canvas.clipPath(path);
                }
            }
        }
        super.onDraw(canvas);
    }

    public RoundCornerWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
