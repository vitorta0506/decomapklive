package com.tencent.qgame.animplayer.util;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.tencent.qgame.animplayer.PointRect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0002¨\u0006\u0010"}, d2 = {"Lcom/tencent/qgame/animplayer/util/VertexUtil;", "", "()V", "create", "", "width", "", "height", "rect", "Lcom/tencent/qgame/animplayer/PointRect;", "array", "switchX", "", x.f19108w, "switchY", "y", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class VertexUtil {
    public static final VertexUtil INSTANCE = new VertexUtil();

    private VertexUtil() {
    }

    private final float switchX(float f10) {
        return (f10 * 2.0f) - 1.0f;
    }

    private final float switchY(float f10) {
        return (((f10 * 2.0f) - 2.0f) * (-1.0f)) - 1.0f;
    }

    @NotNull
    public final float[] create(int i9, int i10, @NotNull PointRect pointRect, @NotNull float[] fArr) {
        float f10 = i9;
        fArr[0] = switchX(pointRect.getX() / f10);
        float f11 = i10;
        fArr[1] = switchY(pointRect.getY() / f11);
        fArr[2] = switchX(pointRect.getX() / f10);
        fArr[3] = switchY((pointRect.getY() + pointRect.getH()) / f11);
        fArr[4] = switchX((pointRect.getX() + pointRect.getW()) / f10);
        fArr[5] = switchY(pointRect.getY() / f11);
        fArr[6] = switchX((pointRect.getX() + pointRect.getW()) / f10);
        fArr[7] = switchY((pointRect.getY() + pointRect.getH()) / f11);
        return fArr;
    }
}
