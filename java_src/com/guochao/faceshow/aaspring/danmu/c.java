package com.guochao.faceshow.aaspring.danmu;

import android.graphics.Canvas;
import android.view.MotionEvent;
import java.util.List;
/* loaded from: classes3.dex */
public interface c {

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(com.guochao.faceshow.aaspring.danmu.b bVar, MotionEvent motionEvent);

        boolean b(com.guochao.faceshow.aaspring.danmu.b bVar, MotionEvent motionEvent);
    }

    /* loaded from: classes3.dex */
    public interface b {
        void onDanmuShowEnd(c cVar);
    }

    void a(com.guochao.faceshow.aaspring.danmu.b bVar);

    void b(Canvas canvas, List<com.guochao.faceshow.aaspring.danmu.b> list);

    void c(com.guochao.faceshow.aaspring.danmu.b bVar);

    v7.a getConfig();

    v7.b getDanmuProvider();

    int getSurfaceWidth();

    void setOnDanmuClickListener(a aVar);

    void setOnDanmuStateListener(b bVar);
}
