package com.tencent.liteav.videoproducer.capture.a;

import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.g;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoproducer.capture.CaptureCloudConfig;
import com.tencent.liteav.videoproducer.capture.ah;
import com.tencent.liteav.videoproducer.capture.ai;
import com.tencent.liteav.videoproducer.capture.aj;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes4.dex */
public final class a implements Camera.ErrorCallback, ah {

    /* renamed from: b  reason: collision with root package name */
    private Camera f32524b;

    /* renamed from: d  reason: collision with root package name */
    private SurfaceTexture f32526d;

    /* renamed from: e  reason: collision with root package name */
    private q f32527e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f32528f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f32529g;

    /* renamed from: j  reason: collision with root package name */
    private ai f32532j;

    /* renamed from: l  reason: collision with root package name */
    private float f32534l;

    /* renamed from: a  reason: collision with root package name */
    private boolean f32523a = true;

    /* renamed from: c  reason: collision with root package name */
    private Rotation f32525c = Rotation.NORMAL;

    /* renamed from: h  reason: collision with root package name */
    private boolean f32530h = true;

    /* renamed from: i  reason: collision with root package name */
    private int f32531i = 0;

    /* renamed from: k  reason: collision with root package name */
    private boolean f32533k = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f32535m = false;

    /* renamed from: n  reason: collision with root package name */
    private float f32536n = 0.0f;

    /* renamed from: o  reason: collision with root package name */
    private ServerVideoProducerConfig f32537o = null;

    /* renamed from: p  reason: collision with root package name */
    private CaptureCloudConfig f32538p = null;

    /* renamed from: q  reason: collision with root package name */
    private final Camera.AutoFocusCallback f32539q = b.a();

    private Camera.Parameters i() {
        try {
            Camera camera = this.f32524b;
            if (camera != null) {
                return camera.getParameters();
            }
            return null;
        } catch (Exception e10) {
            LiteavLog.e("CameraController", "getCameraParameters failed.", e10);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x013e A[Catch: Exception -> 0x0175, TryCatch #0 {Exception -> 0x0175, blocks: (B:5:0x0009, B:7:0x000e, B:8:0x0015, B:10:0x0038, B:12:0x0044, B:19:0x007a, B:23:0x00a9, B:27:0x00b4, B:29:0x00bf, B:31:0x00c9, B:33:0x00cf, B:34:0x00e3, B:36:0x00e7, B:37:0x00f2, B:39:0x0111, B:43:0x0131, B:44:0x013a, B:46:0x013e, B:48:0x0155, B:47:0x014c, B:40:0x0121, B:42:0x0129, B:13:0x0053, B:15:0x0057, B:17:0x0063, B:18:0x0072, B:49:0x016d, B:50:0x0174), top: B:54:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014c A[Catch: Exception -> 0x0175, TryCatch #0 {Exception -> 0x0175, blocks: (B:5:0x0009, B:7:0x000e, B:8:0x0015, B:10:0x0038, B:12:0x0044, B:19:0x007a, B:23:0x00a9, B:27:0x00b4, B:29:0x00bf, B:31:0x00c9, B:33:0x00cf, B:34:0x00e3, B:36:0x00e7, B:37:0x00f2, B:39:0x0111, B:43:0x0131, B:44:0x013a, B:46:0x013e, B:48:0x0155, B:47:0x014c, B:40:0x0121, B:42:0x0129, B:13:0x0053, B:15:0x0057, B:17:0x0063, B:18:0x0072, B:49:0x016d, B:50:0x0174), top: B:54:0x0005 }] */
    @Override // com.tencent.liteav.videoproducer.capture.ah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.tencent.liteav.videoproducer.capture.CameraCaptureParams r7, android.graphics.SurfaceTexture r8, com.tencent.liteav.videoproducer.capture.ai r9) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.capture.a.a.a(com.tencent.liteav.videoproducer.capture.CameraCaptureParams, android.graphics.SurfaceTexture, com.tencent.liteav.videoproducer.capture.ai):boolean");
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void b(boolean z10) {
        Camera.Parameters i9;
        this.f32530h = z10;
        if (this.f32524b == null || (i9 = i()) == null) {
            return;
        }
        a(i9, z10);
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final q d() {
        return this.f32527e;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean e() {
        Camera.Parameters i9;
        return this.f32524b != null && (i9 = i()) != null && i9.getMaxZoom() > 0 && i9.isZoomSupported();
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean f() {
        Camera.Parameters i9;
        List<String> supportedFlashModes;
        return (this.f32524b == null || (i9 = i()) == null || (supportedFlashModes = i9.getSupportedFlashModes()) == null || !supportedFlashModes.contains("torch")) ? false : true;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean g() {
        Camera.Parameters i9;
        return (this.f32524b == null || (i9 = i()) == null || i9.getMaxNumDetectedFaces() <= 0) ? false : true;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean h() {
        return this.f32528f;
    }

    @Override // android.hardware.Camera.ErrorCallback
    public final void onError(int i9, Camera camera) {
        ai aiVar;
        if ((i9 == 1 || i9 == 2 || i9 == 100) && (aiVar = this.f32532j) != null) {
            aiVar.onCameraError(this);
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final int c() {
        int i9 = this.f32531i;
        if (i9 != 0) {
            return i9;
        }
        if (this.f32524b != null) {
            Camera.Parameters i10 = i();
            if (i10 == null) {
                return this.f32531i;
            }
            if (i10.getMaxZoom() > 0 && i10.isZoomSupported()) {
                this.f32531i = i10.getMaxZoom();
            }
        }
        return this.f32531i;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void b(float f10) {
        this.f32534l = f10;
        this.f32533k = true;
        if (this.f32524b == null) {
            return;
        }
        this.f32533k = false;
        Camera.Parameters i9 = i();
        if (i9 == null) {
            return;
        }
        i9.setExposureCompensation(a(i9, f10));
        try {
            this.f32524b.setParameters(i9);
        } catch (Exception e10) {
            LiteavLog.e("CameraController", "set exposure compensation failed.", e10);
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final Rotation b() {
        return this.f32525c;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean a(int i9, int i10, boolean z10) {
        boolean z11 = false;
        if (this.f32524b != null) {
            Camera.Parameters i11 = i();
            if (i11 == null) {
                return true;
            }
            q a10 = a(i11, this.f32525c, i9, i10);
            if (a10 != null) {
                int i12 = a10.f31029a * a10.f31030b;
                q qVar = this.f32527e;
                boolean z12 = i12 <= qVar.f31030b * qVar.f31029a;
                if (!z10 || Math.abs(a10.c() - this.f32527e.c()) <= 0.001d) {
                    z11 = z12;
                }
                LiteavLog.i("CameraController", "isCurrentPreviewSizeAspectRatioMatch : ".concat(String.valueOf(z11)));
                return z11;
            }
        }
        z11 = true;
        LiteavLog.i("CameraController", "isCurrentPreviewSizeAspectRatioMatch : ".concat(String.valueOf(z11)));
        return z11;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f32537o = serverVideoProducerConfig;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(CaptureCloudConfig captureCloudConfig) {
        this.f32538p = captureCloudConfig;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(boolean z10) {
        List<String> supportedFlashModes;
        if (this.f32524b == null) {
            return;
        }
        String str = z10 ? "torch" : DebugKt.DEBUG_PROPERTY_VALUE_OFF;
        Camera.Parameters i9 = i();
        if (i9 == null || (supportedFlashModes = i9.getSupportedFlashModes()) == null || !supportedFlashModes.contains(str)) {
            return;
        }
        try {
            i9.setFlashMode(str);
            this.f32524b.setParameters(i9);
        } catch (Exception e10) {
            LiteavLog.e("CameraController", "enable torch failed.", e10);
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(int i9, int i10) {
        if (this.f32530h) {
            if (i9 >= 0) {
                q qVar = this.f32527e;
                if (i9 < qVar.f31029a && i10 >= 0 && i10 < qVar.f31030b) {
                    LiteavLog.i("CameraController", "Start auto focus at (%d, %d)", Integer.valueOf(i9), Integer.valueOf(i10));
                    try {
                        this.f32524b.cancelAutoFocus();
                        Camera.Parameters i11 = i();
                        if (i11 == null) {
                            return;
                        }
                        if (this.f32528f) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(new Camera.Area(a(i9, i10, 2.0f), 1000));
                            i11.setFocusAreas(arrayList);
                        }
                        if (this.f32529g) {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(new Camera.Area(a(i9, i10, 3.0f), 1000));
                            i11.setMeteringAreas(arrayList2);
                        }
                        try {
                            this.f32524b.setParameters(i11);
                            this.f32524b.autoFocus(this.f32539q);
                            return;
                        } catch (Exception e10) {
                            LiteavLog.e("CameraController", "auto focus failed.", e10);
                            return;
                        }
                    } catch (Exception e11) {
                        LiteavLog.e("CameraController", "cancel auto focus failed.", e11);
                        return;
                    }
                }
            }
            LiteavLog.w("CameraController", "Start auto focus at (%d, %d) invalid ", Integer.valueOf(i9), Integer.valueOf(i10));
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(float f10) {
        this.f32536n = f10;
        this.f32535m = true;
        if (this.f32524b == null) {
            return;
        }
        this.f32535m = false;
        Camera.Parameters i9 = i();
        if (i9 == null) {
            return;
        }
        if (i9.getMaxZoom() > 0 && i9.isZoomSupported()) {
            int maxZoom = i9.getMaxZoom();
            try {
                i9.setZoom(g.a(Math.round(f10 * maxZoom), 0, maxZoom));
                this.f32524b.setParameters(i9);
                return;
            } catch (Exception e10) {
                LiteavLog.e("CameraController", "set zoom failed.", e10);
                return;
            }
        }
        LiteavLog.i("CameraController", "camera doesn't support zoom!");
    }

    private Rect a(float f10, float f11, float f12) {
        int i9 = (int) (f12 * 200.0f);
        q qVar = this.f32527e;
        int i10 = i9 / 2;
        int a10 = g.a(((int) (((f10 / qVar.f31029a) * 2000.0f) - 1000.0f)) - i10, -1000, 1000);
        int a11 = g.a(a10 + i9, -1000, 1000);
        int a12 = g.a(((int) (((f11 / qVar.f31030b) * 2000.0f) - 1000.0f)) - i10, -1000, 1000);
        return new Rect(a10, a12, a11, g.a(i9 + a12, -1000, 1000));
    }

    private static int a(Camera.Parameters parameters, float f10) {
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        if (minExposureCompensation == 0 && maxExposureCompensation == 0) {
            LiteavLog.i("CameraController", "camera doesn't support exposure compensation");
            return minExposureCompensation;
        }
        com.tencent.liteav.base.a.a.a();
        return g.a((int) (g.a(f10, -1.0f, 1.0f) * maxExposureCompensation), minExposureCompensation, maxExposureCompensation);
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a() {
        Camera camera = this.f32524b;
        if (camera != null) {
            camera.setErrorCallback(null);
            this.f32524b.stopPreview();
            this.f32524b.release();
            this.f32524b = null;
        }
        this.f32526d = null;
    }

    private static int a(boolean z10, Camera.CameraInfo cameraInfo) {
        int i9 = -1;
        int i10 = -1;
        for (int i11 = 0; i11 < Camera.getNumberOfCameras(); i11++) {
            Camera.getCameraInfo(i11, cameraInfo);
            LiteavLog.i("CameraController", "get camera info, index: " + i11 + ", facing: " + cameraInfo.facing);
            if (i9 == -1 && cameraInfo.facing == 1) {
                i9 = i11;
            } else if (i10 == -1 && cameraInfo.facing == 0) {
                i10 = i11;
            }
        }
        if (!z10 ? i10 != -1 : i9 == -1) {
            i9 = i10;
        }
        Camera.getCameraInfo(i9, cameraInfo);
        return i9;
    }

    private static q a(Camera.Parameters parameters, Rotation rotation, int i9, int i10) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes != null) {
            for (Camera.Size size : supportedPreviewSizes) {
                arrayList.add(new q(size.width, size.height));
            }
        }
        return aj.a(arrayList, rotation, i9, i10);
    }

    private static void a(Camera.Parameters parameters, boolean z10) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (supportedFocusModes == null) {
            return;
        }
        if (z10 && supportedFocusModes.contains(DebugKt.DEBUG_PROPERTY_VALUE_AUTO)) {
            parameters.setFocusMode(DebugKt.DEBUG_PROPERTY_VALUE_AUTO);
            LiteavLog.i("CameraController", "set focus mode to auto");
        } else if (supportedFocusModes.contains("continuous-video")) {
            parameters.setFocusMode("continuous-video");
            LiteavLog.i("CameraController", "set focus mode to continuous-video");
        }
    }

    private int a(int i9) {
        Camera.Parameters i10 = i();
        if (i10 == null) {
            return 1;
        }
        List<Integer> supportedPreviewFrameRates = i10.getSupportedPreviewFrameRates();
        if (supportedPreviewFrameRates != null && !supportedPreviewFrameRates.isEmpty()) {
            int intValue = supportedPreviewFrameRates.get(0).intValue();
            for (Integer num : supportedPreviewFrameRates) {
                int intValue2 = num.intValue();
                if (Math.abs(i9 - intValue2) < Math.abs(i9 - intValue)) {
                    intValue = intValue2;
                }
            }
            LiteavLog.i("CameraController", "best matched frame rate: %d", Integer.valueOf(intValue));
            return intValue;
        }
        LiteavLog.e("CameraController", "supported preview frame rates is empty");
        return 1;
    }

    private static int[] a(Camera.Parameters parameters, int i9) {
        int i10 = i9 * 1000;
        LiteavLog.i("CameraController", "preferred fps: ".concat(String.valueOf(i10)));
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        int[] iArr = null;
        if (supportedPreviewFpsRange != null && supportedPreviewFpsRange.size() > 0) {
            Collections.sort(supportedPreviewFpsRange, c.a());
            Iterator<int[]> it = supportedPreviewFpsRange.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] next = it.next();
                LiteavLog.i("CameraController", "supported fps range: " + next[0] + "->" + next[1]);
                if (next[0] <= i10 && i10 <= next[1]) {
                    iArr = next;
                    break;
                }
            }
            if (iArr != null) {
                LiteavLog.i("CameraController", "choosed fps range: " + iArr[0] + "->" + iArr[1]);
            }
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(int[] iArr, int[] iArr2) {
        return iArr[1] - iArr2[1];
    }
}
