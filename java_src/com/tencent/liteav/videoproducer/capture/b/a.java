package com.tencent.liteav.videoproducer.capture.b;

import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.g;
import com.tencent.liteav.base.util.j;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.base.util.t;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoproducer.capture.CaptureCloudConfig;
import com.tencent.liteav.videoproducer.capture.ah;
import com.tencent.liteav.videoproducer.capture.ai;
import com.tencent.liteav.videoproducer.capture.aj;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4.dex */
public final class a implements ah {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f32619c;

    /* renamed from: g  reason: collision with root package name */
    private final j f32624g;

    /* renamed from: l  reason: collision with root package name */
    private CaptureRequest f32629l;

    /* renamed from: m  reason: collision with root package name */
    private CaptureRequest.Builder f32630m;

    /* renamed from: n  reason: collision with root package name */
    private q f32631n;

    /* renamed from: p  reason: collision with root package name */
    private SurfaceTexture f32633p;

    /* renamed from: w  reason: collision with root package name */
    private CountDownLatch f32640w;

    /* renamed from: x  reason: collision with root package name */
    private CountDownLatch f32641x;

    /* renamed from: y  reason: collision with root package name */
    private ai f32642y;

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, CameraCharacteristics> f32618b = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static String f32620d = "";

    /* renamed from: e  reason: collision with root package name */
    private static String f32621e = "";

    /* renamed from: f  reason: collision with root package name */
    private final Handler f32623f = new Handler(Looper.getMainLooper());

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f32625h = new AtomicBoolean(false);

    /* renamed from: i  reason: collision with root package name */
    private final AtomicReference<CameraDevice> f32626i = new AtomicReference<>();

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f32627j = new AtomicBoolean(false);

    /* renamed from: k  reason: collision with root package name */
    private final AtomicReference<CameraCaptureSession> f32628k = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private Rotation f32632o = Rotation.NORMAL;

    /* renamed from: q  reason: collision with root package name */
    private boolean f32634q = true;

    /* renamed from: r  reason: collision with root package name */
    private boolean f32635r = true;

    /* renamed from: s  reason: collision with root package name */
    private boolean f32636s = true;

    /* renamed from: t  reason: collision with root package name */
    private int f32637t = -1;

    /* renamed from: u  reason: collision with root package name */
    private EnumC0332a f32638u = EnumC0332a.IDLE;

    /* renamed from: v  reason: collision with root package name */
    private boolean f32639v = false;

    /* renamed from: a  reason: collision with root package name */
    public boolean f32622a = false;

    /* renamed from: z  reason: collision with root package name */
    private float f32643z = 0.0f;
    private final CameraDevice.StateCallback A = new CameraDevice.StateCallback() { // from class: com.tencent.liteav.videoproducer.capture.b.a.1
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onClosed(@NonNull CameraDevice cameraDevice) {
            LiteavLog.i("Camera2Controller", "CameraDevice onClosed");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onDisconnected(@NonNull CameraDevice cameraDevice) {
            LiteavLog.e("Camera2Controller", "CameraDevice onDisconnected!");
            a.this.a(false, cameraDevice);
            a.b(a.this);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onError(@NonNull CameraDevice cameraDevice, int i9) {
            LiteavLog.e("Camera2Controller", "CameraDevice onError, error:".concat(String.valueOf(i9)));
            a.this.a(false, cameraDevice);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onOpened(@NonNull CameraDevice cameraDevice) {
            LiteavLog.i("Camera2Controller", "CameraDevice onOpen!");
            a.this.a(true, cameraDevice);
        }
    };
    private final CameraCaptureSession.StateCallback B = new CameraCaptureSession.StateCallback() { // from class: com.tencent.liteav.videoproducer.capture.b.a.2
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public final void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
            LiteavLog.e("Camera2Controller", "CameraCaptureSession onConfigureFailed!");
            a.this.a(false, cameraCaptureSession);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public final void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
            LiteavLog.i("Camera2Controller", "CameraCaptureSession onConfigured!");
            a.this.a(true, cameraCaptureSession);
        }
    };
    private final CameraManager.AvailabilityCallback C = new CameraManager.AvailabilityCallback() { // from class: com.tencent.liteav.videoproducer.capture.b.a.3
        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public final void onCameraAccessPrioritiesChanged() {
            super.onCameraAccessPrioritiesChanged();
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public final void onCameraAvailable(@NonNull String str) {
            super.onCameraAvailable(str);
            LiteavLog.i("Camera2Controller", "onCameraAvailable: ".concat(String.valueOf(str)));
            if (!a.this.o() && a.d(a.this.f32634q).equals(str) && a.this.f32625h.get()) {
                LiteavLog.w("Camera2Controller", "Current camera is available, it could be interrupted by system app.");
                a aVar = a.this;
                aVar.a(false, (CameraDevice) aVar.f32626i.get());
                a.b(a.this);
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public final void onCameraUnavailable(@NonNull String str) {
            super.onCameraUnavailable(str);
            LiteavLog.i("Camera2Controller", "onCameraUnavailable: ".concat(String.valueOf(str)));
        }
    };
    private final CameraCaptureSession.CaptureCallback D = new AnonymousClass4();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.capture.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0332a {
        IDLE,
        PREVIEWING
    }

    public a(j jVar) {
        this.f32624g = jVar;
    }

    static /* synthetic */ boolean g(a aVar) {
        aVar.f32639v = false;
        return false;
    }

    private void j() {
        CameraCaptureSession andSet = this.f32628k.getAndSet(null);
        if (andSet != null) {
            andSet.close();
        }
    }

    private void k() {
        CameraDevice andSet = this.f32626i.getAndSet(null);
        if (andSet != null) {
            andSet.close();
        }
        ((CameraManager) ContextUtils.getApplicationContext().getSystemService("camera")).unregisterAvailabilityCallback(this.C);
    }

    private void l() {
        CaptureRequest.Builder builder;
        CameraCaptureSession cameraCaptureSession = this.f32628k.get();
        if (cameraCaptureSession == null || (builder = this.f32630m) == null) {
            return;
        }
        try {
            cameraCaptureSession.setRepeatingRequest(builder.build(), null, null);
        } catch (Exception e10) {
            LiteavLog.e("Camera2Controller", "updatePreview exception:".concat(String.valueOf(e10)));
        }
    }

    private List<q> m() {
        if (i() == null) {
            LiteavLog.e("Camera2Controller", "getPreviewSizes error, Characteristics is null");
            return null;
        }
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) i().get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            LiteavLog.e("Camera2Controller", "getPreviewSizes map null");
            return null;
        }
        Size[] outputSizes = streamConfigurationMap.getOutputSizes(SurfaceTexture.class);
        if (outputSizes == null) {
            LiteavLog.e("Camera2Controller", "getPreviewSizes choices is null");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Size size : outputSizes) {
            arrayList.add(new q(size.getWidth(), size.getHeight()));
        }
        return arrayList;
    }

    private List<int[]> n() {
        if (i() == null) {
            LiteavLog.e("Camera2Controller", "getPreviewFps error, Characteristics: ", i());
            return null;
        }
        Range[] rangeArr = (Range[]) i().get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        ArrayList arrayList = new ArrayList();
        if (rangeArr != null) {
            for (Range range : rangeArr) {
                arrayList.add(new int[]{((Integer) range.getLower()).intValue(), ((Integer) range.getUpper()).intValue()});
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        return i() == null || this.f32630m == null || this.f32638u != EnumC0332a.PREVIEWING;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(CaptureCloudConfig captureCloudConfig) {
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(ServerVideoProducerConfig serverVideoProducerConfig) {
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void b(float f10) {
        if (o()) {
            LiteavLog.e("Camera2Controller", "setExposureCompensation fail, value:" + f10 + " mCameraStatus:" + this.f32638u);
            return;
        }
        Range range = (Range) i().get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
        int intValue = ((Integer) range.getLower()).intValue();
        int intValue2 = ((Integer) range.getUpper()).intValue();
        if (intValue == 0 && intValue2 == 0) {
            LiteavLog.i("Camera2Controller", "camera doesn't support exposure compensation");
            return;
        }
        this.f32630m.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(g.a(((int) (((intValue2 - intValue) * (g.a(f10, -1.0f, 1.0f) - (-1.0f))) / 2.0f)) + intValue, intValue, intValue2)));
        l();
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final int c() {
        return 100;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.capture.b.a$4  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass4 extends CameraCaptureSession.CaptureCallback {
        AnonymousClass4() {
        }

        private static boolean a(CaptureRequest captureRequest) {
            return (captureRequest.getTag() instanceof a) && !((a) captureRequest.getTag()).f32622a;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureCompleted(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult) {
            a.this.f32624g.a(d.a(this, totalCaptureResult, cameraCaptureSession, captureRequest));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureFailed(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull CaptureFailure captureFailure) {
            LiteavLog.e("Camera2Controller", "onCaptureFailed failure reason:" + captureFailure.getReason());
            a.this.f32624g.a(e.a(this, captureRequest, cameraCaptureSession));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureProgressed(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
        }

        private void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, boolean z10) {
            if (a.this.o()) {
                return;
            }
            a.g(a.this);
            try {
                a.this.f32630m.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
                a.this.f32630m.set(CaptureRequest.CONTROL_AF_MODE, 3);
                cameraCaptureSession.setRepeatingRequest(captureRequest, null, null);
                if (captureRequest.getTag() instanceof a) {
                    a.a((a) captureRequest.getTag(), z10);
                }
            } catch (Exception e10) {
                LiteavLog.e("Camera2Controller", "mAfCaptureCallback exception:".concat(String.valueOf(e10)));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(@NonNull AnonymousClass4 anonymousClass4, @NonNull CaptureRequest captureRequest, CameraCaptureSession cameraCaptureSession) {
            if (!a(captureRequest)) {
                a.g(a.this);
            } else {
                anonymousClass4.a(cameraCaptureSession, captureRequest, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(@NonNull AnonymousClass4 anonymousClass4, @NonNull TotalCaptureResult totalCaptureResult, @NonNull CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest) {
            if (!a(captureRequest)) {
                a.g(a.this);
                return;
            }
            Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
            if (num == null) {
                LiteavLog.e("Camera2Controller", "handleCaptureCompleted get afState fail");
                anonymousClass4.a(cameraCaptureSession, captureRequest, false);
            } else if (4 == num.intValue() || 5 == num.intValue()) {
                anonymousClass4.a(cameraCaptureSession, captureRequest, true);
            }
        }
    }

    private CameraCharacteristics i() {
        String d10 = d(this.f32634q);
        if (TextUtils.isEmpty(d10)) {
            return null;
        }
        return f32618b.get(d10);
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final q d() {
        return this.f32631n;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean e() {
        return i() != null && ((Float) i().get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue() > 0.0f;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean f() {
        return i() != null && ((Boolean) i().get(CameraCharacteristics.FLASH_INFO_AVAILABLE)).booleanValue();
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean g() {
        return i() != null && ((Integer) i().get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT)).intValue() > 0;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean h() {
        return i() != null && ((Integer) i().get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF)).intValue() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(boolean z10) {
        return z10 ? !TextUtils.isEmpty(f32621e) ? f32621e : f32620d : !TextUtils.isEmpty(f32620d) ? f32620d : f32621e;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0113  */
    @Override // com.tencent.liteav.videoproducer.capture.ah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.tencent.liteav.videoproducer.capture.CameraCaptureParams r13, android.graphics.SurfaceTexture r14, com.tencent.liteav.videoproducer.capture.ai r15) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.capture.b.a.a(com.tencent.liteav.videoproducer.capture.CameraCaptureParams, android.graphics.SurfaceTexture, com.tencent.liteav.videoproducer.capture.ai):boolean");
    }

    private void e(boolean z10) {
        CaptureRequest.Builder builder = this.f32630m;
        if (builder == null) {
            return;
        }
        int i9 = z10 ? 1 : 3;
        builder.set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(i9));
        LiteavLog.i("Camera2Controller", "setFocusMode to ".concat(String.valueOf(i9)));
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final Rotation b() {
        return this.f32632o;
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void b(boolean z10) {
        this.f32635r = z10;
        e(z10);
    }

    private boolean b(int i9, int i10) {
        String d10 = d(this.f32634q);
        if (i() == null) {
            LiteavLog.e("Camera2Controller", "openCamera fail getCameraCharacteristics null");
            return false;
        }
        this.f32632o = Rotation.a(((Integer) i().get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue());
        this.f32631n = aj.a(m(), this.f32632o, i9, i10);
        StringBuilder sb2 = new StringBuilder("openCamera ");
        sb2.append(this.f32634q ? "front camera" : "back camera");
        sb2.append(" mPreviewSize ");
        sb2.append(this.f32631n);
        sb2.append(" mCameraRotation ");
        sb2.append(this.f32632o);
        sb2.append(" mIsCameraSupportAutoFocus ");
        sb2.append(this.f32636s);
        LiteavLog.i("Camera2Controller", sb2.toString());
        try {
            this.f32640w = new CountDownLatch(1);
            ((CameraManager) ContextUtils.getApplicationContext().getSystemService("camera")).openCamera(d10, this.A, this.f32623f);
            this.f32640w.await();
        } catch (Exception e10) {
            LiteavLog.e("Camera2Controller", "openCamera exception:".concat(String.valueOf(e10)));
            a(false, (CameraDevice) null);
        }
        return this.f32625h.get();
    }

    static /* synthetic */ void b(a aVar) {
        aVar.f32624g.a(b.a(aVar));
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(int i9, int i10) {
        CameraCaptureSession cameraCaptureSession;
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        if (this.f32635r && this.f32636s) {
            if (!o() && !this.f32639v) {
                CameraCaptureSession cameraCaptureSession2 = this.f32628k.get();
                if (cameraCaptureSession2 == null) {
                    LiteavLog.e("Camera2Controller", "CameraCaptureSession get fail");
                    return;
                }
                if (i9 >= 0) {
                    q qVar = this.f32631n;
                    if (i9 < qVar.f31029a && i10 >= 0 && i10 < qVar.f31030b) {
                        LiteavLog.i("Camera2Controller", "Start auto focus at (%d, %d)", Integer.valueOf(i9), Integer.valueOf(i10));
                        double d15 = i9;
                        double d16 = i10;
                        q qVar2 = this.f32631n;
                        int i11 = qVar2.f31029a;
                        int i12 = qVar2.f31030b;
                        Rotation rotation = this.f32632o;
                        Rotation rotation2 = Rotation.ROTATION_90;
                        if (rotation != rotation2 && rotation != Rotation.ROTATION_270) {
                            i11 = i12;
                            i12 = i11;
                        }
                        q a10 = t.a(ContextUtils.getApplicationContext());
                        int i13 = a10.f31029a;
                        int i14 = i11 * i13;
                        int i15 = a10.f31030b;
                        double d17 = 0.0d;
                        if (i14 > i12 * i15) {
                            d11 = (i13 * 1.0d) / i12;
                            cameraCaptureSession = cameraCaptureSession2;
                            d12 = (i11 - (i15 / d11)) / 2.0d;
                            d10 = 0.0d;
                        } else {
                            cameraCaptureSession = cameraCaptureSession2;
                            double d18 = (i15 * 1.0d) / i11;
                            d10 = (i12 - (i13 / d18)) / 2.0d;
                            d11 = d18;
                            d12 = 0.0d;
                        }
                        double d19 = (d15 / d11) + d10;
                        double d20 = (d16 / d11) + d12;
                        Rotation rotation3 = this.f32632o;
                        if (rotation3 == rotation2) {
                            double d21 = this.f32631n.f31030b - d19;
                            d19 = d20;
                            d20 = d21;
                        } else if (rotation3 == Rotation.ROTATION_270) {
                            double d22 = this.f32631n.f31029a - d20;
                            d20 = d19;
                            d19 = d22;
                        }
                        Rect rect = (Rect) this.f32629l.get(CaptureRequest.SCALER_CROP_REGION);
                        if (rect == null) {
                            LiteavLog.e("Camera2Controller", "getMeteringRect can't get crop region");
                            rect = (Rect) i().get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
                        }
                        int width = rect.width();
                        int height = rect.height();
                        q qVar3 = this.f32631n;
                        int i16 = qVar3.f31030b;
                        int i17 = i16 * width;
                        int i18 = qVar3.f31029a;
                        if (i17 > i18 * height) {
                            d13 = (height * 1.0d) / i16;
                            double d23 = (width - (i18 * d13)) / 2.0d;
                            d14 = 0.0d;
                            d17 = d23;
                        } else {
                            d13 = (width * 1.0d) / i18;
                            d14 = (height - (i16 * d13)) / 2.0d;
                        }
                        double d24 = (d19 * d13) + d17 + rect.left;
                        double d25 = (d20 * d13) + d14 + rect.top;
                        Rect rect2 = new Rect();
                        rect2.left = g.a((int) (d24 - (rect.width() * 0.05d)), 0, rect.width());
                        rect2.right = g.a((int) (d24 + (rect.width() * 0.05d)), 0, rect.width());
                        rect2.top = g.a((int) (d25 - (rect.height() * 0.05d)), 0, rect.height());
                        rect2.bottom = g.a((int) (d25 + (rect.height() * 0.05d)), 0, rect.height());
                        try {
                            this.f32630m.set(CaptureRequest.CONTROL_AF_REGIONS, new MeteringRectangle[]{new MeteringRectangle(rect2, 1000)});
                            this.f32630m.set(CaptureRequest.CONTROL_AE_REGIONS, new MeteringRectangle[]{new MeteringRectangle(rect2, 1000)});
                            this.f32630m.set(CaptureRequest.CONTROL_AF_MODE, 1);
                            this.f32630m.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
                            this.f32630m.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
                            this.f32639v = true;
                            this.f32622a = false;
                            this.f32630m.setTag(this);
                            cameraCaptureSession.setRepeatingRequest(this.f32630m.build(), this.D, this.f32623f);
                            return;
                        } catch (Exception e10) {
                            LiteavLog.e("Camera2Controller", "startAutoFocusAtPosition exception:".concat(String.valueOf(e10)));
                            return;
                        }
                    }
                }
                LiteavLog.w("Camera2Controller", "Start auto focus at (%d, %d) invalid ", Integer.valueOf(i9), Integer.valueOf(i10));
                return;
            }
            LiteavLog.e("Camera2Controller", "autoFocus not preview, mCameraStatus:" + this.f32638u + " mIsAutoFocusing:" + this.f32639v);
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(float f10) {
        this.f32643z = f10;
        CaptureRequest.Builder builder = this.f32630m;
        if (builder == null) {
            LiteavLog.e("Camera2Controller", "setZoom fail, scale:" + f10 + " mPreviewBuilder is null.");
            return;
        }
        CaptureRequest.Key key = CaptureRequest.SCALER_CROP_REGION;
        Rect rect = (Rect) i().get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        float floatValue = ((Float) i().get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue();
        float f11 = floatValue - 1.0f;
        float a10 = (g.a(f10, 0.0f, 1.0f) * f11) + 1.0f;
        int height = (int) (rect.height() / floatValue);
        int width = rect.width() - ((int) (rect.width() / floatValue));
        int height2 = rect.height() - height;
        float f12 = a10 - 1.0f;
        int i9 = (int) (((width * f12) / f11) / 2.0f);
        int i10 = (int) (((height2 * f12) / f11) / 2.0f);
        Rect rect2 = new Rect(i9, i10, rect.width() - i9, rect.height() - i10);
        LiteavLog.i("Camera2Controller", "calculateZoomRect calculatedZoomLevel:" + a10 + " rect:" + rect + " newRect2:" + rect2);
        builder.set(key, rect2);
        l();
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a(boolean z10) {
        if (o()) {
            LiteavLog.e("Camera2Controller", "turnOnTorch error mCameraStatus:" + this.f32638u);
            return;
        }
        boolean z11 = true;
        if (z10 && this.f32637t != 2) {
            this.f32637t = 2;
        } else if (z10) {
            z11 = false;
        } else {
            this.f32637t = 0;
        }
        LiteavLog.i("Camera2Controller", "turnOnTorch:" + z10 + ", mode:" + this.f32637t + ", updateView:" + z11);
        if (z11) {
            this.f32630m.set(CaptureRequest.FLASH_MODE, Integer.valueOf(this.f32637t));
            l();
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final boolean a(int i9, int i10, boolean z10) {
        q a10 = aj.a(m(), this.f32632o, i9, i10);
        boolean z11 = false;
        boolean z12 = a10.b() <= this.f32631n.b();
        if (!z10 || Math.abs(a10.c() - this.f32631n.c()) <= 0.001d) {
            z11 = z12;
        }
        LiteavLog.i("Camera2Controller", "isCurrentPreviewSizeAspectRatioMatch:".concat(String.valueOf(z11)));
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar) {
        if (aVar.o()) {
            LiteavLog.e("Camera2Controller", "onCameraError, but camera is invalid, do not send camera error.");
            return;
        }
        ai aiVar = aVar.f32642y;
        if (aiVar != null) {
            aiVar.onCameraError(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, CameraDevice cameraDevice) {
        CountDownLatch countDownLatch = this.f32640w;
        this.f32625h.set(z10);
        this.f32626i.set(cameraDevice);
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, CameraCaptureSession cameraCaptureSession) {
        CountDownLatch countDownLatch = this.f32641x;
        this.f32627j.set(z10);
        this.f32628k.set(cameraCaptureSession);
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    private boolean a(SurfaceTexture surfaceTexture) {
        CameraDevice cameraDevice;
        try {
            cameraDevice = this.f32626i.get();
        } catch (Exception e10) {
            LiteavLog.e("Camera2Controller", "startPreview exception", e10);
            a(false, (CameraCaptureSession) null);
        }
        if (cameraDevice != null && surfaceTexture != null) {
            j();
            SurfaceTexture surfaceTexture2 = this.f32633p;
            q qVar = this.f32631n;
            surfaceTexture2.setDefaultBufferSize(qVar.f31029a, qVar.f31030b);
            Surface surface = new Surface(this.f32633p);
            CaptureRequest.Builder createCaptureRequest = cameraDevice.createCaptureRequest(3);
            this.f32630m = createCaptureRequest;
            createCaptureRequest.addTarget(surface);
            List<Surface> singletonList = Collections.singletonList(surface);
            this.f32641x = new CountDownLatch(1);
            cameraDevice.createCaptureSession(singletonList, this.B, this.f32623f);
            this.f32641x.await();
            return this.f32627j.get();
        }
        throw new IOException("startPreview cameraDevice null!");
    }

    private Range<Integer> a(int i9) {
        LiteavLog.i("Camera2Controller", "preferred fps: ".concat(String.valueOf(i9)));
        Range<Integer> range = new Range<>(Integer.valueOf(i9), Integer.valueOf(i9));
        List<int[]> n9 = n();
        if (com.tencent.liteav.videobase.utils.c.a(n9)) {
            return range;
        }
        Collections.sort(n9, c.a());
        int[] iArr = null;
        Iterator<int[]> it = n9.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int[] next = it.next();
            if (next[0] <= i9 && i9 <= next[1]) {
                iArr = next;
                break;
            }
        }
        return (iArr == null || iArr.length < 2) ? range : new Range<>(Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(int[] iArr, int[] iArr2) {
        return iArr[1] - iArr2[1];
    }

    @Override // com.tencent.liteav.videoproducer.capture.ah
    public final void a() {
        CountDownLatch countDownLatch = this.f32640w;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        this.f32640w = null;
        CountDownLatch countDownLatch2 = this.f32641x;
        if (countDownLatch2 != null) {
            countDownLatch2.countDown();
        }
        this.f32641x = null;
        j();
        k();
        this.f32629l = null;
        this.f32622a = false;
        this.f32633p = null;
        this.f32637t = -1;
        this.f32638u = EnumC0332a.IDLE;
        LiteavLog.i("Camera2Controller", "stopCapture success");
    }

    static /* synthetic */ void a(a aVar, boolean z10) {
        LiteavLog.i("Camera2Controller", "onFocusCallback success:".concat(String.valueOf(z10)));
        aVar.f32622a = true;
    }
}
