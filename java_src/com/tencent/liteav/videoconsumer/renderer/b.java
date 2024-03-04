package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Bitmap;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
/* loaded from: classes4.dex */
public abstract class b {

    /* renamed from: com.tencent.liteav.videoconsumer.renderer.b$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32380a;

        static {
            int[] iArr = new int[DisplayTarget.a.values().length];
            f32380a = iArr;
            try {
                iArr[DisplayTarget.a.SURFACEVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32380a[DisplayTarget.a.TEXTUREVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32380a[DisplayTarget.a.SURFACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32380a[DisplayTarget.a.TXCLOUDVIEW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface a {
        void a();

        void a(@NonNull Bitmap bitmap);

        void a(Surface surface, boolean z10);
    }

    public abstract void a(GLConstants.GLScaleType gLScaleType, int i9, int i10);

    public abstract void a(boolean z10);
}
