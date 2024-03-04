package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.utils.Rotation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public final class aj {

    /* renamed from: d  reason: collision with root package name */
    private Boolean f32557d;

    /* renamed from: a  reason: collision with root package name */
    a f32554a = a.CAMERA_1;

    /* renamed from: e  reason: collision with root package name */
    private int f32558e = Integer.MAX_VALUE;

    /* renamed from: b  reason: collision with root package name */
    boolean f32555b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f32556c = false;

    /* loaded from: classes4.dex */
    public enum a {
        MOCK,
        CAMERA_1,
        CAMERA_2
    }

    public static com.tencent.liteav.base.util.q a(List<com.tencent.liteav.base.util.q> list, Rotation rotation, int i9, int i10) {
        double d10;
        com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q(i9, i10);
        LiteavLog.i("CameraSupervisor", "preview wanted: " + qVar + " cameraRotation:" + rotation);
        if (list == null) {
            LiteavLog.e("CameraSupervisor", "findBestMatchedPreviewSize getPreviewSizes null");
            return qVar;
        }
        if (rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270) {
            qVar.a();
        }
        double c10 = qVar.c();
        com.tencent.liteav.base.util.q qVar2 = new com.tencent.liteav.base.util.q(640, 640);
        int i11 = qVar.f31029a;
        int i12 = qVar2.f31029a;
        if (i11 <= i12 && qVar.f31030b <= qVar2.f31030b) {
            qVar2.a(qVar);
        } else {
            int i13 = qVar.f31030b;
            if (i11 > i13) {
                qVar2.f31030b = (i12 * i13) / i11;
            } else {
                qVar2.f31029a = (qVar2.f31030b * i11) / i13;
            }
        }
        ArrayList<com.tencent.liteav.base.util.q> arrayList = new ArrayList();
        long j10 = Long.MAX_VALUE;
        for (com.tencent.liteav.base.util.q qVar3 : list) {
            LiteavLog.d("CameraSupervisor", "support preview size ".concat(String.valueOf(qVar3)));
            long round = (qVar3.f31029a < qVar2.f31029a || qVar3.f31030b < qVar2.f31030b) ? Long.MAX_VALUE : Math.round(Math.abs(qVar3.c() - c10) * 10.0d);
            int i14 = (round > j10 ? 1 : (round == j10 ? 0 : -1));
            if (i14 < 0) {
                arrayList.clear();
                arrayList.add(qVar3);
                j10 = round;
            } else if (i14 == 0) {
                arrayList.add(qVar3);
            }
        }
        Collections.sort(arrayList, ak.a());
        com.tencent.liteav.base.util.q qVar4 = (com.tencent.liteav.base.util.q) arrayList.get(0);
        int b10 = qVar.b();
        double d11 = Double.MAX_VALUE;
        for (com.tencent.liteav.base.util.q qVar5 : arrayList) {
            LiteavLog.i("CameraSupervisor", "size in same buck ".concat(String.valueOf(qVar5)));
            if (c10 > qVar5.c()) {
                int i15 = qVar5.f31029a;
                d10 = (i15 * i15) / c10;
            } else {
                int i16 = qVar5.f31030b;
                d10 = i16 * i16 * c10;
            }
            double d12 = b10;
            if (d10 / d12 >= 0.9d) {
                double d13 = d10 - d12;
                if (Math.abs(d13) < d11) {
                    d11 = Math.abs(d13);
                    qVar4 = qVar5;
                }
            }
        }
        LiteavLog.i("CameraSupervisor", "best match preview size ".concat(String.valueOf(qVar4)));
        return new com.tencent.liteav.base.util.q(qVar4.f31029a, qVar4.f31030b);
    }

    private boolean b() {
        if (this.f32557d == null) {
            this.f32557d = Boolean.valueOf(c());
        }
        return this.f32557d.booleanValue();
    }

    private boolean c() {
        boolean z10 = false;
        if (LiteavSystemInfo.getSystemOSVersionInt() < 21) {
            LiteavLog.w("CameraSupervisor", "isApiLevelSupportCamera2 false, current:" + LiteavSystemInfo.getSystemOSVersionInt() + " is low to:21");
            return false;
        } else if (this.f32558e < 21) {
            LiteavLog.w("CameraSupervisor", "isApiLevelSupportCamera2 false, apiLevel:" + this.f32558e + " is too low.");
            return false;
        } else if (LiteavSystemInfo.getSystemOSVersionInt() < this.f32558e) {
            LiteavLog.w("CameraSupervisor", "isApiLevelSupportCamera2 false, current:" + LiteavSystemInfo.getSystemOSVersionInt() + " is low to config api level:" + this.f32558e);
            return false;
        } else {
            int a10 = com.tencent.liteav.videoproducer.capture.a.a();
            z10 = (a10 == 1 || a10 == 3) ? true : true;
            LiteavLog.i("CameraSupervisor", "isApiLevelSupportCamera2 apiLevel:" + this.f32558e + " supportLevel:" + a10 + " result:" + z10);
            return z10;
        }
    }

    public final void a(int i9) {
        this.f32558e = i9;
        LiteavLog.i("CameraSupervisor", "setCamera2SupportMinApiLevel apiLevel:".concat(String.valueOf(i9)));
    }

    public final a a() {
        if (this.f32556c) {
            this.f32554a = a.MOCK;
        } else if (b() && !this.f32555b) {
            this.f32554a = a.CAMERA_2;
        } else {
            this.f32554a = a.CAMERA_1;
        }
        return this.f32554a;
    }
}
