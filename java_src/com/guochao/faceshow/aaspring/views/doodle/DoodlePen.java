package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
/* loaded from: classes3.dex */
public enum DoodlePen implements la.e {
    BRUSH,
    COPY,
    ERASER,
    TEXT,
    BITMAP,
    MOSAIC;
    
    private a mCopyLocation;

    @Override // la.e
    public void config(la.c cVar, Paint paint) {
        if (this == COPY || this == ERASER) {
            la.a k10 = cVar.k();
            if ((cVar.getColor() instanceof DoodleColor) && ((DoodleColor) cVar.getColor()).a() == k10.getBitmap()) {
                return;
            }
            cVar.setColor(new DoodleColor(k10.getBitmap()));
        }
    }

    @Override // la.e
    public la.e copy() {
        return this;
    }

    @Override // la.e
    public void drawHelpers(Canvas canvas, la.a aVar) {
        if (this == COPY && (aVar instanceof DoodleView) && !((DoodleView) aVar).A()) {
            this.mCopyLocation.c(canvas, aVar.getSize());
        }
    }

    public a getCopyLocation() {
        if (this != COPY) {
            return null;
        }
        if (this.mCopyLocation == null) {
            synchronized (this) {
                if (this.mCopyLocation == null) {
                    this.mCopyLocation = new a();
                }
            }
        }
        return this.mCopyLocation;
    }
}
