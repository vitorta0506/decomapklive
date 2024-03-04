package org.light.gles;

import java.io.File;
import java.io.IOException;
/* loaded from: classes7.dex */
public class OffscreenSurface extends EglSurfaceBase {
    public OffscreenSurface(EglCore eglCore, int i9, int i10) {
        super(eglCore);
        createOffscreenSurface(i9, i10);
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ void createOffscreenSurface(int i9, int i10) {
        super.createOffscreenSurface(i9, i10);
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ void createWindowSurface(Object obj) {
        super.createWindowSurface(obj);
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ int getHeight() {
        return super.getHeight();
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ int getWidth() {
        return super.getWidth();
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ void makeCurrent() {
        super.makeCurrent();
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ void makeCurrentReadFrom(EglSurfaceBase eglSurfaceBase) {
        super.makeCurrentReadFrom(eglSurfaceBase);
    }

    public void release() {
        releaseEglSurface();
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ void releaseEglSurface() {
        super.releaseEglSurface();
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ void saveFrame(File file) throws IOException {
        super.saveFrame(file);
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ void setPresentationTime(long j10) {
        super.setPresentationTime(j10);
    }

    @Override // org.light.gles.EglSurfaceBase
    public /* bridge */ /* synthetic */ boolean swapBuffers() {
        return super.swapBuffers();
    }
}
