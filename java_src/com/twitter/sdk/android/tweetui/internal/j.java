package com.twitter.sdk.android.tweetui.internal;

import com.facebook.internal.AnalyticsEvents;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.VideoInfo;
import com.twitter.sdk.android.core.models.l;
import com.twitter.sdk.android.core.models.n;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class j {
    static List<MediaEntity> a(l lVar) {
        List<MediaEntity> list;
        List<MediaEntity> list2;
        ArrayList arrayList = new ArrayList();
        n nVar = lVar.f35258d;
        if (nVar != null && (list2 = nVar.f35310c) != null) {
            arrayList.addAll(list2);
        }
        n nVar2 = lVar.f35259e;
        if (nVar2 != null && (list = nVar2.f35310c) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    public static List<MediaEntity> b(l lVar) {
        List<MediaEntity> list;
        ArrayList arrayList = new ArrayList();
        n nVar = lVar.f35259e;
        if (nVar != null && (list = nVar.f35310c) != null && list.size() > 0) {
            for (int i9 = 0; i9 <= nVar.f35310c.size() - 1; i9++) {
                MediaEntity mediaEntity = nVar.f35310c.get(i9);
                if (mediaEntity.type != null && i(mediaEntity)) {
                    arrayList.add(mediaEntity);
                }
            }
        }
        return arrayList;
    }

    public static MediaEntity c(l lVar) {
        List<MediaEntity> a10 = a(lVar);
        for (int size = a10.size() - 1; size >= 0; size--) {
            MediaEntity mediaEntity = a10.get(size);
            if (mediaEntity.type != null && i(mediaEntity)) {
                return mediaEntity;
            }
        }
        return null;
    }

    public static VideoInfo.Variant d(MediaEntity mediaEntity) {
        for (VideoInfo.Variant variant : mediaEntity.videoInfo.variants) {
            if (j(variant)) {
                return variant;
            }
        }
        return null;
    }

    public static MediaEntity e(l lVar) {
        for (MediaEntity mediaEntity : a(lVar)) {
            if (mediaEntity.type != null && k(mediaEntity)) {
                return mediaEntity;
            }
        }
        return null;
    }

    public static boolean f(l lVar) {
        return c(lVar) != null;
    }

    public static boolean g(l lVar) {
        MediaEntity e10 = e(lVar);
        return (e10 == null || d(e10) == null) ? false : true;
    }

    public static boolean h(MediaEntity mediaEntity) {
        return "animated_gif".equals(mediaEntity.type) || (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.endsWith(mediaEntity.type) && mediaEntity.videoInfo.durationMillis < 6500);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(MediaEntity mediaEntity) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO.equals(mediaEntity.type);
    }

    static boolean j(VideoInfo.Variant variant) {
        return "application/x-mpegURL".equals(variant.contentType) || "video/mp4".equals(variant.contentType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean k(MediaEntity mediaEntity) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(mediaEntity.type) || "animated_gif".equals(mediaEntity.type);
    }

    public static boolean l(MediaEntity mediaEntity) {
        return !"animated_gif".equals(mediaEntity.type);
    }
}
