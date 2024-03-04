package com.guochao.faceshow.component.f2fmatch.utils;

import android.media.MediaPlayer;
import android.net.Uri;
import com.guochao.faceshow.component.f2fmatch.R$raw;
import com.guochao.faceshow.context.GCApplication;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/F2fCountDownPlayerUtils;", "", "()V", "mediaPlayer", "Landroid/media/MediaPlayer;", "startPlay", "", "stopPlay", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fCountDownPlayerUtils {
    @NotNull
    public static final F2fCountDownPlayerUtils INSTANCE = new F2fCountDownPlayerUtils();
    @Nullable
    private static MediaPlayer mediaPlayer;

    private F2fCountDownPlayerUtils() {
    }

    public final void startPlay() {
        MediaPlayer mediaPlayer2 = mediaPlayer;
        if (mediaPlayer2 == null) {
            mediaPlayer2 = new MediaPlayer();
            mediaPlayer = mediaPlayer2;
        }
        try {
            mediaPlayer2.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.guochao.faceshow.component.f2fmatch.utils.a
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer3) {
                    mediaPlayer3.start();
                }
            });
            mediaPlayer2.setLooping(true);
            mediaPlayer2.setDataSource(GCApplication.app(), Uri.parse("android.resource://" + GCApplication.app().getPackageName() + IOUtils.DIR_SEPARATOR_UNIX + R$raw.f2f_count_down));
            mediaPlayer2.prepare();
        } catch (Exception unused) {
        }
    }

    public final void stopPlay() {
        MediaPlayer mediaPlayer2 = mediaPlayer;
        if (mediaPlayer2 != null) {
            mediaPlayer2.stop();
            mediaPlayer2.reset();
        }
        mediaPlayer = null;
    }
}
