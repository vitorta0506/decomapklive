package com.tencent.qgame.animplayer.util;

import com.tencent.qgame.animplayer.PointRect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004¨\u0006\f"}, d2 = {"Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;", "", "()V", "create", "", "width", "", "height", "rect", "Lcom/tencent/qgame/animplayer/PointRect;", "array", "rotate90", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class TexCoordsUtil {
    public static final TexCoordsUtil INSTANCE = new TexCoordsUtil();

    private TexCoordsUtil() {
    }

    @NotNull
    public final float[] create(int i9, int i10, @NotNull PointRect pointRect, @NotNull float[] fArr) {
        float f10 = i9;
        fArr[0] = pointRect.getX() / f10;
        float f11 = i10;
        fArr[1] = pointRect.getY() / f11;
        fArr[2] = pointRect.getX() / f10;
        fArr[3] = (pointRect.getY() + pointRect.getH()) / f11;
        fArr[4] = (pointRect.getX() + pointRect.getW()) / f10;
        fArr[5] = pointRect.getY() / f11;
        fArr[6] = (pointRect.getX() + pointRect.getW()) / f10;
        fArr[7] = (pointRect.getY() + pointRect.getH()) / f11;
        return fArr;
    }

    @NotNull
    public final float[] rotate90(@NotNull float[] fArr) {
        float f10 = fArr[0];
        float f11 = fArr[1];
        fArr[0] = fArr[2];
        fArr[1] = fArr[3];
        fArr[2] = fArr[6];
        fArr[3] = fArr[7];
        fArr[6] = fArr[4];
        fArr[7] = fArr[5];
        fArr[4] = f10;
        fArr[5] = f11;
        return fArr;
    }
}
