package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
/* loaded from: classes3.dex */
public enum DoodleShape implements la.g {
    HAND_WRITE,
    ARROW,
    LINE,
    FILL_CIRCLE,
    HOLLOW_CIRCLE,
    FILL_RECT,
    HOLLOW_RECT;

    @Override // la.g
    public void config(la.c cVar, Paint paint) {
        if (cVar.getShape() != ARROW && cVar.getShape() != FILL_CIRCLE && cVar.getShape() != FILL_RECT) {
            paint.setStyle(Paint.Style.STROKE);
        } else {
            paint.setStyle(Paint.Style.FILL);
        }
    }

    @Override // la.g
    public la.g copy() {
        return this;
    }

    @Override // la.g
    public void drawHelpers(Canvas canvas, la.a aVar) {
    }
}
