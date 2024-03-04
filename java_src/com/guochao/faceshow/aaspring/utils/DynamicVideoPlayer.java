package com.guochao.faceshow.aaspring.utils;

import android.app.ActivityManager;
import android.content.Context;
import com.guochao.faceshow.BaseApplication;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.rtmp.TXVodPlayConfig;
import com.tencent.rtmp.TXVodPlayer;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class DynamicVideoPlayer {
    public static final int CACHE_SIZE = 10;
    static final long GB = 1073741824;
    private static final HashMap<String, VideoPlayer> PLAYER_POOL = new HashMap<>();
    private static final List<TXVodPlayer> VODPLAYER_POOL = new CopyOnWriteArrayList();
    static int sCacheSize = -1;
    private static DynamicVideoPlayer sDynamicVideoPlayer;
    private TXVodPlayer mTXVodPlayer;

    public static int getAutoCacheCount() {
        int i9 = sCacheSize;
        if (i9 > 0) {
            return i9;
        }
        ActivityManager activityManager = (ActivityManager) BaseApplication.getInstance().getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        if (activityManager == null) {
            sCacheSize = 1;
            return 1;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        int min = (int) Math.min((((((float) memoryInfo.totalMem) * 1.0f) / 1.0737418E9f) / 2.0f) + 0.5d, 3.0d);
        sCacheSize = min;
        return min;
    }

    public static DynamicVideoPlayer getInstance() {
        if (sDynamicVideoPlayer == null) {
            synchronized (DynamicVideoPlayer.class) {
                if (sDynamicVideoPlayer == null) {
                    sDynamicVideoPlayer = new DynamicVideoPlayer();
                }
            }
        }
        return sDynamicVideoPlayer;
    }

    private TXVodPlayer getPlayer() {
        List<TXVodPlayer> list = VODPLAYER_POOL;
        synchronized (list) {
            if (list.size() > 0) {
                return list.remove(0);
            }
            return createPlayer(BaseApplication.getInstance(), "ugc_video");
        }
    }

    public VideoPlayer cacheVideo(String str) {
        VideoPlayer player = getPlayer(str);
        if (player.isCaching()) {
            return player;
        }
        player.cache();
        return player;
    }

    public TXVodPlayer createPlayer(Context context) {
        return createPlayer(context, "ugc_video");
    }

    public TXVodPlayer createShortVideoPlayer(Context context) {
        if (context == null) {
            context = BaseApplication.getInstance();
        }
        TXVodPlayer tXVodPlayer = new TXVodPlayer(BaseApplication.getInstance());
        TXVodPlayConfig tXVodPlayConfig = new TXVodPlayConfig();
        tXVodPlayer.setLoop(true);
        tXVodPlayConfig.setCacheFolderPath(context.getCacheDir() + "/short_videos/");
        tXVodPlayConfig.setMaxCacheItems(4);
        tXVodPlayer.setConfig(tXVodPlayConfig);
        tXVodPlayer.setRenderMode(0);
        return tXVodPlayer;
    }

    public TXVodPlayer getTXVodPlayer() {
        return this.mTXVodPlayer;
    }

    public void setCurrentPlayer(TXVodPlayer tXVodPlayer) {
        this.mTXVodPlayer = tXVodPlayer;
    }

    public void setTXVodPlayer(TXVodPlayer tXVodPlayer) {
        this.mTXVodPlayer = tXVodPlayer;
    }

    public void stop(String str) {
        HashMap<String, VideoPlayer> hashMap = PLAYER_POOL;
        VideoPlayer videoPlayer = hashMap.get(str);
        if (videoPlayer != null) {
            videoPlayer.getTXVodPlayer().stopPlay(false);
            videoPlayer.getTXVodPlayer().setVodListener(null);
            videoPlayer.stop();
            hashMap.remove(str);
            VODPLAYER_POOL.add(videoPlayer.getTXVodPlayer());
            videoPlayer.setTXVodPlayer(null);
        }
    }

    public TXVodPlayer createPlayer(Context context, String str) {
        if (context == null) {
            context = BaseApplication.getInstance();
        }
        TXVodPlayer tXVodPlayer = new TXVodPlayer(BaseApplication.getInstance());
        TXVodPlayConfig tXVodPlayConfig = new TXVodPlayConfig();
        tXVodPlayer.setLoop(true);
        tXVodPlayConfig.setCacheFolderPath(context.getCacheDir() + org.light.utils.FileUtils.RES_PREFIX_STORAGE + str + org.light.utils.FileUtils.RES_PREFIX_STORAGE);
        tXVodPlayConfig.setMaxCacheItems(4);
        tXVodPlayer.setConfig(tXVodPlayConfig);
        tXVodPlayer.setRenderMode(0);
        VideoPlayer.setMute(tXVodPlayer, true);
        return tXVodPlayer;
    }

    public VideoPlayer getPlayer(String str) {
        HashMap<String, VideoPlayer> hashMap = PLAYER_POOL;
        VideoPlayer videoPlayer = hashMap.get(str);
        if (videoPlayer == null) {
            TXVodPlayer player = getPlayer();
            player.stopPlay(false);
            player.setVodListener(null);
            VideoPlayer videoPlayer2 = new VideoPlayer(player, str);
            hashMap.put(str, videoPlayer2);
            return videoPlayer2;
        }
        return videoPlayer;
    }
}
