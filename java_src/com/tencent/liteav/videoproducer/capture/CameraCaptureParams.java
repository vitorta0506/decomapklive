package com.tencent.liteav.videoproducer.capture;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import java.util.Locale;
/* loaded from: classes4.dex */
public class CameraCaptureParams extends CaptureSourceInterface.CaptureParams {

    /* renamed from: a  reason: collision with root package name */
    public Boolean f32476a;

    public CameraCaptureParams() {
        this.f32476a = null;
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureParams
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CameraCaptureParams) {
            CameraCaptureParams cameraCaptureParams = (CameraCaptureParams) obj;
            return super.equals(cameraCaptureParams) && com.tencent.liteav.base.util.h.a(this.f32476a, cameraCaptureParams.f32476a);
        }
        return false;
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureParams
    @NonNull
    public String toString() {
        return String.format(Locale.ENGLISH, "%s, frontCamera: %b", super.toString(), this.f32476a);
    }

    public CameraCaptureParams(CameraCaptureParams cameraCaptureParams) {
        super(cameraCaptureParams);
        this.f32476a = null;
        this.f32476a = cameraCaptureParams.f32476a;
    }
}
