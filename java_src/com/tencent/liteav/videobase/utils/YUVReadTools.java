package com.tencent.liteav.videobase.utils;

import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class YUVReadTools {
    public static native void nativeReadYUVPlanesForByteArray(int i9, int i10, byte[] bArr);

    public static native void nativeReadYUVPlanesForByteBuffer(int i9, int i10, ByteBuffer byteBuffer);
}
