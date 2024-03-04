package uk.co.senab2.photoview2;

import android.view.GestureDetector;
import android.view.View;
import uk.co.senab2.photoview2.c;
/* loaded from: classes7.dex */
public interface b {
    void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);

    void setOnLongClickListener(View.OnLongClickListener onLongClickListener);

    void setOnMatrixChangeListener(c.e eVar);

    void setOnPhotoTapListener(c.f fVar);

    void setOnScaleChangeListener(c.g gVar);

    void setOnSingleFlingListener(c.h hVar);

    void setOnViewTapListener(c.i iVar);
}
