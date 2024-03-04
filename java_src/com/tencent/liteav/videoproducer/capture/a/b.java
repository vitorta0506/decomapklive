package com.tencent.liteav.videoproducer.capture.a;

import android.hardware.Camera;
import com.tencent.liteav.base.util.LiteavLog;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Camera.AutoFocusCallback {

    /* renamed from: a  reason: collision with root package name */
    private static final b f32540a = new b();

    private b() {
    }

    public static Camera.AutoFocusCallback a() {
        return f32540a;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public final void onAutoFocus(boolean z10, Camera camera) {
        LiteavLog.d("CameraController", "onAutoFocus success: %b", Boolean.valueOf(z10));
    }
}
