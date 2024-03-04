package la;

import android.graphics.Bitmap;
import java.util.List;
/* loaded from: classes3.dex */
public interface a {
    boolean a();

    void b(boolean z10);

    void c();

    void clear();

    void d(c cVar);

    List<c> getAllItem();

    Bitmap getBitmap();

    b getColor();

    int getDoodleRotation();

    float getDoodleScale();

    int getItemCount();

    e getPen();

    g getShape();

    float getSize();

    float getUnitSize();

    void setColor(b bVar);

    void setDoodleMaxScale(float f10);

    void setDoodleMinScale(float f10);

    void setIsDrawableOutside(boolean z10);

    void setPen(e eVar);

    void setShape(g gVar);

    void setSize(float f10);

    void setZoomerScale(float f10);
}
