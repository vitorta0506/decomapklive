package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.util.SparseIntArray;
import androidx.annotation.RawRes;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class SoundPoolManager {
    public static final float SOUND = 0.05f;
    private static final String TAG = "Sound";
    static SoundPoolManager sSoundPoolManager;
    private Context mContext;
    private int mDefaultButtonSound = -1;
    private int mDefaultCountDownSound = -1;
    private SparseIntArray mSoundIds = new SparseIntArray();
    SoundPool mSoundPool;

    private SoundPoolManager(Context context) {
        this.mContext = context;
        SoundPool.Builder builder = new SoundPool.Builder();
        builder.setMaxStreams(1);
        AudioAttributes.Builder builder2 = new AudioAttributes.Builder();
        builder2.setLegacyStreamType(1);
        builder2.setContentType(4);
        builder.setAudioAttributes(builder2.build());
        this.mSoundPool = builder.build();
    }

    public static SoundPoolManager getInstance(Context context) {
        if (sSoundPoolManager == null) {
            synchronized (SoundPoolManager.class) {
                if (sSoundPoolManager == null) {
                    sSoundPoolManager = new SoundPoolManager(context.getApplicationContext());
                }
            }
        }
        return sSoundPoolManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playQrScanSound$0(SoundPool soundPool, int i9, int i10) {
        this.mSoundPool.play(i9, 1.0f, 1.0f, 100, 0, 1.0f);
        this.mSoundPool.unload(i9);
    }

    public int addSound(int i9) {
        return this.mSoundPool.load(this.mContext, i9, 100);
    }

    public void pause(int i9) {
        this.mSoundPool.pause(i9);
    }

    public int play(int i9) {
        return this.mSoundPool.play(i9, 0.05f, 0.05f, 100, 0, 1.0f);
    }

    public int playCountDown() {
        if (this.mDefaultCountDownSound == -1) {
            this.mDefaultCountDownSound = addSound(R.raw.count_down);
        }
        return play(this.mDefaultCountDownSound);
    }

    public int playDefaultButtonSound() {
        this.mSoundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.guochao.faceshow.aaspring.utils.SoundPoolManager.2
            @Override // android.media.SoundPool.OnLoadCompleteListener
            public void onLoadComplete(SoundPool soundPool, int i9, int i10) {
                SoundPoolManager.this.mSoundPool.play(i9, 0.05f, 0.05f, 100, 0, 1.0f);
                SoundPoolManager.this.mSoundPool.unload(i9);
            }
        });
        this.mSoundPool.load(this.mContext, R.raw.menu_click, 100);
        return 1;
    }

    public int playQrScanSound() {
        this.mSoundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.guochao.faceshow.aaspring.utils.q
            @Override // android.media.SoundPool.OnLoadCompleteListener
            public final void onLoadComplete(SoundPool soundPool, int i9, int i10) {
                SoundPoolManager.this.lambda$playQrScanSound$0(soundPool, i9, i10);
            }
        });
        this.mSoundPool.load(this.mContext, R.raw.qr_scan, 100);
        return 1;
    }

    public int playRaw(@RawRes int i9) {
        this.mSoundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.guochao.faceshow.aaspring.utils.SoundPoolManager.1
            @Override // android.media.SoundPool.OnLoadCompleteListener
            public void onLoadComplete(SoundPool soundPool, int i10, int i11) {
                SoundPoolManager.this.mSoundPool.play(i10, 1.0f, 1.0f, 100, 0, 1.0f);
                SoundPoolManager.this.mSoundPool.unload(i10);
            }
        });
        return this.mSoundPool.load(this.mContext, i9, 100);
    }

    public static SoundPoolManager getInstance() {
        return getInstance(BaseApplication.getInstance());
    }
}
