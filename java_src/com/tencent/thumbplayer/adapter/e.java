package com.tencent.thumbplayer.adapter;

import androidx.annotation.NonNull;
import com.tencent.thumbplayer.config.TPPlayerConfig;
/* loaded from: classes4.dex */
public class e {
    public static a a(@NonNull com.tencent.thumbplayer.e.b bVar, @NonNull com.tencent.thumbplayer.tplayer.a aVar) {
        return TPPlayerConfig.getNewReportEnable() ? (a) new f(new d(aVar.a(), bVar), aVar).a() : new d(aVar.a(), bVar);
    }
}
