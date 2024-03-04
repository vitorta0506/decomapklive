package com.tencent.thumbplayer.common.a;

import com.tencent.thumbplayer.api.TPNativeException;
import com.tencent.thumbplayer.api.capability.TPCapability;
import com.tencent.thumbplayer.api.capability.TPVCodecCapabilityForGet;
import com.tencent.thumbplayer.common.a.d;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.l;
import java.util.UUID;
/* loaded from: classes4.dex */
public class c {
    private void a(d.a aVar, a aVar2) {
        TPVCodecCapabilityForGet b10 = b();
        if (b10 != null) {
            aVar.f33879a = b10.getMaxProfile();
            aVar.f33880b = b10.getMaxLevel();
        }
        aVar.a(aVar2);
    }

    private void a(d.b bVar, a aVar) {
        bVar.f33884c = TPSystemInfo.SDK_INT;
        bVar.f33882a = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        bVar.f33883b = TPPlayerConfig.getPlatform();
        bVar.f33885d = String.format("Android %s", TPSystemInfo.getOsVersion());
        bVar.f33886e = String.format("%s_%s", TPSystemInfo.getDeviceManufacturer(), TPSystemInfo.getDeviceName());
        bVar.f33888g = TPSystemInfo.getCpuHarewareName();
        bVar.a(aVar);
    }

    private void a(d.c cVar, a aVar) {
        TPVCodecCapabilityForGet e10 = e();
        if (e10 != null) {
            cVar.f33890a = e10.getMaxProfile();
            cVar.f33891b = e10.getMaxLevel();
        }
        cVar.a(aVar);
    }

    private void a(d.C0344d c0344d, a aVar) {
        TPVCodecCapabilityForGet d10 = d();
        if (d10 != null) {
            c0344d.f33893a = d10.getMaxProfile();
            c0344d.f33894b = d10.getMaxLevel();
        }
        c0344d.a(aVar);
    }

    private void a(d.e eVar, a aVar) {
        TPVCodecCapabilityForGet c10 = c();
        if (c10 != null) {
            eVar.f33896a = c10.getMaxProfile();
            eVar.f33897b = c10.getMaxLevel();
        }
        eVar.a(aVar);
    }

    private static TPVCodecCapabilityForGet b() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(1029, 102);
        } catch (TPNativeException e10) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e10);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet c() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(166, 102);
        } catch (TPNativeException e10) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e10);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet d() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(138, 102);
        } catch (TPNativeException e10) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e10);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet e() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(172, 102);
        } catch (TPNativeException e10) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e10);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private void f() {
        d dVar = new d();
        l lVar = new l();
        a(dVar.a(), lVar);
        a(dVar.b(), lVar);
        a(dVar.c(), lVar);
        a(dVar.d(), lVar);
        a(dVar.e(), lVar);
        TPLogUtil.i("TPDeviceCapabilityReportManager", "device capability report:" + lVar.toString());
        b.a("tp_common_device_cap", lVar);
    }

    public void a() {
        f();
    }
}
