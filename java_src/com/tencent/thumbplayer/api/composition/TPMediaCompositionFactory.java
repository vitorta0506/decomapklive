package com.tencent.thumbplayer.api.composition;

import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.b.a;
import com.tencent.thumbplayer.b.b;
import com.tencent.thumbplayer.b.c;
import com.tencent.thumbplayer.b.e;
import com.tencent.thumbplayer.b.g;
import com.tencent.thumbplayer.b.h;
import com.tencent.thumbplayer.b.j;
import com.tencent.thumbplayer.b.k;
import com.tencent.thumbplayer.b.l;
import java.util.List;
/* loaded from: classes4.dex */
public class TPMediaCompositionFactory {
    public static ITPMediaTrackClip createEmptyTrackClip(int i9, long j10, long j11) {
        a aVar = new a(i9);
        aVar.setCutTimeRange(j10, j11);
        return aVar;
    }

    public static ITPMediaAssetExtraParam createMediaAssetExtraParam() {
        return new b();
    }

    public static ITPMediaAssetOrderedMap createMediaAssetOrderedMap() {
        return new c();
    }

    public static ITPMediaComposition createMediaComposition() {
        return new e();
    }

    public static ITPMediaDRMAsset createMediaDRMAsset(@TPCommonEnum.TP_DRM_TYPE int i9, String str) {
        return new j(i9, str);
    }

    public static ITPMediaAsset createMediaRTCAsset(String str, String str2) {
        return new k(str, str2);
    }

    public static ITPMediaAsset createMediaRTCAsset(String str, String str2, int i9) {
        return new k(str, str2, i9);
    }

    public static ITPMediaTrack createMediaTrack(int i9) {
        return new g(i9);
    }

    public static ITPMediaTrack createMediaTrack(int i9, List<ITPMediaTrackClip> list) {
        g gVar = new g(i9);
        for (ITPMediaTrackClip iTPMediaTrackClip : list) {
            gVar.addTrackClip(iTPMediaTrackClip);
        }
        return gVar;
    }

    public static ITPMediaTrack createMediaTrack(int i9, ITPMediaTrackClip... iTPMediaTrackClipArr) {
        g gVar = new g(i9);
        for (ITPMediaTrackClip iTPMediaTrackClip : iTPMediaTrackClipArr) {
            gVar.addTrackClip(iTPMediaTrackClip);
        }
        return gVar;
    }

    public static ITPMediaTrackClip createMediaTrackClip(String str, int i9) {
        return new h(str, i9);
    }

    public static ITPMediaTrackClip createMediaTrackClip(String str, int i9, long j10, long j11) {
        return new h(str, i9, j10, j11);
    }

    public static ITPMediaUrlAsset createMediaUrlAsset(String str) {
        return new l(str);
    }
}
