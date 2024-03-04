package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.aaspring.beans.VideoPlayPauseEvent;
import com.guochao.faceshow.utils.HandlerGetter;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class VideoPlayPauseUtils {
    static Runnable VideoPlayPauseRunnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.VideoPlayPauseUtils.1
        @Override // java.lang.Runnable
        public void run() {
            EventBus.getDefault().post(new VideoPlayPauseEvent(true));
            HandlerGetter.getMainHandler().removeCallbacks(VideoPlayPauseUtils.VideoPlayPauseRunnable);
        }
    };

    public static void startVideoPlayPause() {
        HandlerGetter.getMainHandler().postDelayed(VideoPlayPauseRunnable, 500L);
    }
}
