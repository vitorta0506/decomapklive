package com.tencent.thumbplayer.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.thumbplayer.adapter.a.b;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class a implements com.tencent.thumbplayer.tplayer.a.a.a {

    /* renamed from: a  reason: collision with root package name */
    private b f33872a;

    public a(@Nullable b bVar) {
        this.f33872a = bVar;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a.a
    @NonNull
    public TPDynamicStatisticParams a(boolean z10) {
        b bVar = this.f33872a;
        if (bVar == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "playerBase is null, return default dynamic statistic params");
            return new TPDynamicStatisticParams();
        }
        TPDynamicStatisticParams c10 = bVar.c(z10);
        if (c10 == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "cannot get params from core, return default dynamic statistic params");
            return new TPDynamicStatisticParams();
        }
        return c10;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a.a
    @NonNull
    public TPGeneralPlayFlowParams a() {
        b bVar = this.f33872a;
        if (bVar == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "playerBase is null, return default general play flow params");
            return new TPGeneralPlayFlowParams();
        }
        TPGeneralPlayFlowParams u10 = bVar.u();
        if (u10 == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "cannot get params from core, return default general play flow params");
            return new TPGeneralPlayFlowParams();
        }
        return u10;
    }
}
