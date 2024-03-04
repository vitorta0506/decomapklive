package com.tencent.qgame.animplayer.util;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import com.facebook.share.internal.ShareInternalUtility;
import com.tencent.qgame.animplayer.file.IFileContainer;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011J\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\tj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007`\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/tencent/qgame/animplayer/util/MediaUtil;", "", "()V", "MIME_HEVC", "", "TAG", "isTypeMapInit", "", "supportTypeMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "checkIsHevc", "videoFormat", "Landroid/media/MediaFormat;", "checkSupportCodec", "mimeType", "getExtractor", "Landroid/media/MediaExtractor;", ShareInternalUtility.STAGING_PARAM, "Lcom/tencent/qgame/animplayer/file/IFileContainer;", "getSupportType", "", "selectAudioTrack", "", "extractor", "selectVideoTrack", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class MediaUtil {
    @NotNull
    public static final String MIME_HEVC = "video/hevc";
    private static final String TAG = "AnimPlayer.MediaUtil";
    private static boolean isTypeMapInit;
    public static final MediaUtil INSTANCE = new MediaUtil();
    private static final HashMap<String, Boolean> supportTypeMap = new HashMap<>();

    private MediaUtil() {
    }

    private final void getSupportType() {
        try {
            int codecCount = MediaCodecList.getCodecCount();
            for (int i9 = 0; i9 < codecCount; i9++) {
                MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i9);
                Intrinsics.checkExpressionValueIsNotNull(codecInfo, "codecInfo");
                if (codecInfo.isEncoder()) {
                    String[] types = codecInfo.getSupportedTypes();
                    Intrinsics.checkExpressionValueIsNotNull(types, "types");
                    for (String str : types) {
                        HashMap<String, Boolean> hashMap = supportTypeMap;
                        Intrinsics.checkExpressionValueIsNotNull(str, "types[j]");
                        if (str == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        String lowerCase = str.toLowerCase();
                        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
                        hashMap.put(lowerCase, Boolean.TRUE);
                    }
                    continue;
                }
            }
            ALog.INSTANCE.i(TAG, "supportType=" + supportTypeMap.keySet());
        } catch (Throwable th2) {
            ALog.INSTANCE.e(TAG, "getSupportType " + th2);
        }
    }

    public final boolean checkIsHevc(@NotNull MediaFormat mediaFormat) {
        boolean contains$default;
        String string = mediaFormat.getString("mime");
        if (string == null) {
            string = "";
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) string, (CharSequence) "hevc", false, 2, (Object) null);
        return contains$default;
    }

    public final synchronized boolean checkSupportCodec(@NotNull String str) {
        HashMap<String, Boolean> hashMap;
        String lowerCase;
        if (!isTypeMapInit) {
            isTypeMapInit = true;
            getSupportType();
        }
        hashMap = supportTypeMap;
        lowerCase = str.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
        return hashMap.containsKey(lowerCase);
    }

    @NotNull
    public final MediaExtractor getExtractor(@NotNull IFileContainer iFileContainer) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        iFileContainer.setDataSource(mediaExtractor);
        return mediaExtractor;
    }

    public final int selectAudioTrack(@NotNull MediaExtractor mediaExtractor) {
        boolean startsWith$default;
        int trackCount = mediaExtractor.getTrackCount();
        for (int i9 = 0; i9 < trackCount; i9++) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(i9);
            String string = trackFormat.getString("mime");
            if (string == null) {
                string = "";
            }
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(string, "audio/", false, 2, null);
            if (startsWith$default) {
                ALog aLog = ALog.INSTANCE;
                aLog.i(TAG, "Extractor selected track " + i9 + " (" + string + "): " + trackFormat);
                return i9;
            }
        }
        return -1;
    }

    public final int selectVideoTrack(@NotNull MediaExtractor mediaExtractor) {
        boolean startsWith$default;
        int trackCount = mediaExtractor.getTrackCount();
        for (int i9 = 0; i9 < trackCount; i9++) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(i9);
            String string = trackFormat.getString("mime");
            if (string == null) {
                string = "";
            }
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(string, "video/", false, 2, null);
            if (startsWith$default) {
                ALog aLog = ALog.INSTANCE;
                aLog.i(TAG, "Extractor selected track " + i9 + " (" + string + "): " + trackFormat);
                return i9;
            }
        }
        return -1;
    }
}
