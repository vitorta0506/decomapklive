package com.google.android.gms.internal.measurement;

import android.os.Build;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
/* loaded from: classes2.dex */
public final class t0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f8328a;

    static {
        f8328a = Build.VERSION.SDK_INT >= 31 ? TPMediaCodecProfileLevel.HEVCHighTierLevel62 : 0;
    }
}
