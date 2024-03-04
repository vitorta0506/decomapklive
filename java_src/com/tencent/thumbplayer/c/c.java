package com.tencent.thumbplayer.c;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.config.TPPlayerConfig;
/* loaded from: classes4.dex */
public class c {
    public static a a(@NonNull Looper looper, @NonNull com.tencent.thumbplayer.tplayer.a aVar) {
        return TPPlayerConfig.getNewReportEnable() ? (a) new d(new e(aVar.a(), looper), aVar).a() : new e(aVar.a(), looper);
    }
}
