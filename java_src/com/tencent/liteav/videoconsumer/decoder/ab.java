package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videoconsumer.decoder.d;
import com.tencent.ugc.UGCTransitionRules;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
final /* synthetic */ class ab implements d.InterfaceC0330d {

    /* renamed from: a  reason: collision with root package name */
    private static final ab f32184a = new ab();

    private ab() {
    }

    public static d.InterfaceC0330d a() {
        return f32184a;
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.d.InterfaceC0330d
    public final SpsInfo a(boolean z10, ByteBuffer byteBuffer) {
        SpsInfo nativeDecodeSps = SpsInfo.nativeDecodeSps(z10, byteBuffer);
        if (nativeDecodeSps == null) {
            nativeDecodeSps = new SpsInfo();
        }
        if (nativeDecodeSps.width <= 0 || nativeDecodeSps.height <= 0) {
            nativeDecodeSps.width = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;
            nativeDecodeSps.height = UGCTransitionRules.DEFAULT_IMAGE_HEIGHT;
        }
        return nativeDecodeSps;
    }
}
