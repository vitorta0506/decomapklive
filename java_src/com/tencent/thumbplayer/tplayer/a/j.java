package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import androidx.annotation.NonNull;
import com.gyailib.library.BuildConfig;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.capability.TPCapability;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.utils.i;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class j implements i.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f34295a = String.format("android %s", TPSystemInfo.getOsVersion());

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Integer, Integer> f34296c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Integer, Integer> f34297d;

    /* renamed from: b  reason: collision with root package name */
    private Context f34298b;

    static {
        HashMap hashMap = new HashMap();
        f34296c = hashMap;
        hashMap.put(0, -1);
        hashMap.put(1, 0);
        hashMap.put(2, 3);
        hashMap.put(3, 3);
        HashMap hashMap2 = new HashMap();
        f34297d = hashMap2;
        hashMap2.put(-1, -1);
        hashMap2.put(0, 32);
        hashMap2.put(2, 4);
    }

    public j(@NonNull Context context) {
        this.f34298b = context;
        com.tencent.thumbplayer.utils.i.a().a(this);
    }

    private int a() {
        int i9 = 0;
        for (int i10 : TPCapability.getDRMCapabilities()) {
            i9 |= a(i10);
        }
        return i9;
    }

    public static int a(@TPCommonEnum.TP_DRM_TYPE int i9) {
        Integer num = f34297d.get(Integer.valueOf(i9));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public static int b(int i9) {
        Integer num = f34296c.get(Integer.valueOf(i9));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.tencent.thumbplayer.utils.i.b
    public void a(int i9, int i10, int i11, int i12) {
        com.tencent.thumbplayer.utils.h.b(this.f34298b);
    }

    public void a(com.tencent.thumbplayer.tplayer.a.b.a aVar) {
        aVar.b(TPPlayerConfig.getGuid());
        aVar.b(0);
        aVar.c(0);
        aVar.d(com.tencent.thumbplayer.utils.h.a(this.f34298b));
        aVar.c(TPSystemInfo.getDeviceName());
        aVar.d(f34295a);
        aVar.e(this.f34298b.getPackageName());
        aVar.g(TPPlayerConfig.getAppVersionName(this.f34298b));
        aVar.h(BuildConfig.VERSION_NAME);
        aVar.f(TPPlayerConfig.VERSION);
        aVar.m(TPPlayerConfig.getPlatform());
        aVar.a(0);
        aVar.n(a());
    }

    public void b(com.tencent.thumbplayer.tplayer.a.b.a aVar) {
        aVar.d(com.tencent.thumbplayer.utils.h.a(this.f34298b));
    }
}
