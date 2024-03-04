package com.tencent.liteav.videobase.videobase;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.j;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.utils.YUVReadTools;
import com.tencent.liteav.videobase.videobase.c;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final GLConstants.PixelFormatType[] f31930a = {GLConstants.PixelFormatType.I420, GLConstants.PixelFormatType.NV21, GLConstants.PixelFormatType.NV12};

    /* renamed from: d  reason: collision with root package name */
    final com.tencent.liteav.videobase.videobase.a f31933d;

    /* renamed from: g  reason: collision with root package name */
    j f31936g;

    /* renamed from: i  reason: collision with root package name */
    com.tencent.liteav.videobase.frame.i f31938i;

    /* renamed from: j  reason: collision with root package name */
    com.tencent.liteav.videobase.frame.e f31939j;

    /* renamed from: k  reason: collision with root package name */
    private int f31940k = -1;

    /* renamed from: h  reason: collision with root package name */
    boolean f31937h = false;

    /* renamed from: b  reason: collision with root package name */
    final FloatBuffer f31931b = OpenGlUtils.createNormalCubeVerticesBuffer();

    /* renamed from: c  reason: collision with root package name */
    final FloatBuffer f31932c = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);

    /* renamed from: e  reason: collision with root package name */
    final Map<GLConstants.PixelFormatType, List<a>> f31934e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    final Map<GLConstants.PixelFormatType, com.tencent.liteav.videobase.a.b> f31935f = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videobase.videobase.f$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31941a;

        static {
            int[] iArr = new int[GLConstants.PixelFormatType.values().length];
            f31941a = iArr;
            try {
                iArr[GLConstants.PixelFormatType.I420.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31941a[GLConstants.PixelFormatType.NV12.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31941a[GLConstants.PixelFormatType.NV21.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final GLConstants.PixelBufferType f31942a;

        /* renamed from: b  reason: collision with root package name */
        public final int f31943b;

        /* renamed from: c  reason: collision with root package name */
        public final c.a f31944c;

        public a(GLConstants.PixelBufferType pixelBufferType, int i9, c.a aVar) {
            this.f31942a = pixelBufferType;
            this.f31943b = i9;
            this.f31944c = aVar;
        }
    }

    public f(com.tencent.liteav.videobase.videobase.a aVar) {
        this.f31933d = aVar;
    }

    public final void a(com.tencent.liteav.videobase.frame.e eVar) {
        if (!this.f31937h && eVar != null) {
            this.f31937h = true;
            this.f31938i = new com.tencent.liteav.videobase.frame.i();
            this.f31939j = eVar;
            return;
        }
        LiteavLog.i("SameParamsConverter", "SameParamsConverter mIsInitialized " + this.f31937h + " , texturePool " + eVar);
    }

    public final void a() {
        for (com.tencent.liteav.videobase.a.b bVar : this.f31935f.values()) {
            bVar.uninitialize();
        }
        this.f31935f.clear();
        j jVar = this.f31936g;
        if (jVar != null) {
            jVar.a();
            this.f31936g = null;
        }
        com.tencent.liteav.videobase.frame.i iVar = this.f31938i;
        if (iVar != null) {
            iVar.b();
            this.f31938i = null;
        }
        OpenGlUtils.deleteFrameBuffer(this.f31940k);
        this.f31940k = -1;
        this.f31937h = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PixelFrame a(long j10, com.tencent.liteav.videobase.frame.d dVar, GLConstants.PixelFormatType pixelFormatType) {
        PixelFrame a10;
        GLConstants.PixelBufferType pixelBufferType = GLConstants.PixelBufferType.BYTE_BUFFER;
        int a11 = a(pixelFormatType, pixelBufferType);
        GLConstants.PixelBufferType pixelBufferType2 = GLConstants.PixelBufferType.BYTE_ARRAY;
        int a12 = a(pixelFormatType, pixelBufferType2);
        if (a11 == 0 && a12 == 0) {
            return null;
        }
        if (a11 != 0) {
            a10 = this.f31938i.a(dVar.b(), dVar.c(), pixelBufferType, pixelFormatType);
            a(pixelFormatType, dVar, a10.getBuffer());
        } else {
            a10 = this.f31938i.a(dVar.b(), dVar.c(), pixelBufferType2, pixelFormatType);
            a(pixelFormatType, dVar, a10.getData());
        }
        a10.setMetaData(dVar.d());
        a(a10, j10);
        a(j10, a10, a11, a12);
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j10, PixelFrame pixelFrame, int i9, int i10) {
        GLConstants.PixelBufferType pixelBufferType = pixelFrame.getPixelBufferType();
        GLConstants.PixelBufferType pixelBufferType2 = GLConstants.PixelBufferType.BYTE_BUFFER;
        if (pixelBufferType == pixelBufferType2) {
            if (i10 != 0) {
                PixelFrame a10 = this.f31938i.a(pixelFrame.getWidth(), pixelFrame.getHeight(), GLConstants.PixelBufferType.BYTE_ARRAY, pixelFrame.getPixelFormatType());
                OpenGlUtils.nativeCopyDataFromByteBufferToByteArray(pixelFrame.getBuffer(), a10.getData(), a10.getData().length);
                a(a10, j10);
                a10.release();
            }
        } else if (pixelFrame.getPixelBufferType() != GLConstants.PixelBufferType.BYTE_ARRAY || i9 == 0) {
        } else {
            PixelFrame a11 = this.f31938i.a(pixelFrame.getWidth(), pixelFrame.getHeight(), pixelBufferType2, pixelFrame.getPixelFormatType());
            OpenGlUtils.nativeCopyDataFromByteArrayToByteBuffer(pixelFrame.getData(), a11.getBuffer(), pixelFrame.getData().length);
            a(a11, j10);
            a11.release();
        }
    }

    private void a(GLConstants.PixelFormatType pixelFormatType, com.tencent.liteav.videobase.frame.d dVar, Object obj) {
        com.tencent.liteav.videobase.videobase.a aVar = this.f31933d;
        int i9 = aVar.f31922a;
        int i10 = aVar.f31923b;
        if (this.f31940k == -1) {
            this.f31940k = OpenGlUtils.generateFrameBufferId();
        }
        OpenGlUtils.attachTextureToFrameBuffer(dVar.a(), this.f31940k);
        GLES20.glBindFramebuffer(36160, this.f31940k);
        if (pixelFormatType == GLConstants.PixelFormatType.RGBA) {
            OpenGlUtils.readPixels(0, 0, i9, i10, obj);
            OpenGlUtils.detachTextureFromFrameBuffer(this.f31940k);
            return;
        }
        if (i10 % 16 == 0) {
            OpenGlUtils.readPixels(0, 0, i9, (i10 * 3) / 8, obj);
        } else if (obj instanceof ByteBuffer) {
            YUVReadTools.nativeReadYUVPlanesForByteBuffer(i9, i10, (ByteBuffer) obj);
        } else {
            YUVReadTools.nativeReadYUVPlanesForByteArray(i9, i10, (byte[]) obj);
        }
        OpenGlUtils.detachTextureFromFrameBuffer(this.f31940k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(PixelFrame pixelFrame, long j10) {
        List<a> list = this.f31934e.get(pixelFrame.getPixelFormatType());
        if (list == null || list.isEmpty()) {
            return;
        }
        pixelFrame.setTimestamp(j10);
        for (a aVar : list) {
            if (aVar.f31942a == pixelFrame.getPixelBufferType()) {
                aVar.f31944c.onFrameConverted(aVar.f31943b, pixelFrame);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType) {
        List<a> list = this.f31934e.get(pixelFormatType);
        int i9 = 0;
        if (list != null) {
            for (a aVar : list) {
                if (aVar.f31942a == pixelBufferType) {
                    i9++;
                }
            }
        }
        return i9;
    }

    public final void a(int i9, c.a aVar) {
        for (Map.Entry<GLConstants.PixelFormatType, List<a>> entry : this.f31934e.entrySet()) {
            Iterator<a> it = entry.getValue().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                a next = it.next();
                if (next.f31943b == i9 && next.f31944c == aVar) {
                    entry.getValue().remove(next);
                    break;
                }
            }
            if (entry.getValue().isEmpty()) {
                this.f31934e.remove(entry.getKey());
                return;
            }
        }
    }
}
