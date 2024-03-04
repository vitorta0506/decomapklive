package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.aaspring.beans.PlanetUserBean;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;", "", "()V", "planetBaseMatchUser", "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;", "getPlanetBaseMatchUser", "()Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;", "setPlanetBaseMatchUser", "(Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;)V", "planetDataList", "", "getPlanetDataList", "()Ljava/util/List;", "setPlanetDataList", "(Ljava/util/List;)V", "planetDataTime", "", "getPlanetDataTime", "()J", "setPlanetDataTime", "(J)V", "planetUserIdList", "getPlanetUserIdList", "setPlanetUserIdList", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PlanetDataUtils {
    @Nullable
    private static PlanetUserBean planetBaseMatchUser;
    private static long planetDataTime;
    @NotNull
    public static final PlanetDataUtils INSTANCE = new PlanetDataUtils();
    @NotNull
    private static List<PlanetUserBean> planetDataList = new ArrayList();
    @NotNull
    private static List<PlanetUserBean> planetUserIdList = new ArrayList();

    private PlanetDataUtils() {
    }

    @Nullable
    public final PlanetUserBean getPlanetBaseMatchUser() {
        return planetBaseMatchUser;
    }

    @NotNull
    public final List<PlanetUserBean> getPlanetDataList() {
        return planetDataList;
    }

    public final long getPlanetDataTime() {
        return planetDataTime;
    }

    @NotNull
    public final List<PlanetUserBean> getPlanetUserIdList() {
        return planetUserIdList;
    }

    public final void setPlanetBaseMatchUser(@Nullable PlanetUserBean planetUserBean) {
        planetBaseMatchUser = planetUserBean;
    }

    public final void setPlanetDataList(@NotNull List<PlanetUserBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        planetDataList = list;
    }

    public final void setPlanetDataTime(long j10) {
        planetDataTime = j10;
    }

    public final void setPlanetUserIdList(@NotNull List<PlanetUserBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        planetUserIdList = list;
    }
}
