package com.guochao.faceshow.service;

import android.app.Service;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Binder;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes4.dex */
public class MediaService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private a f26253a = new a();

    /* renamed from: b  reason: collision with root package name */
    public MediaPlayer f26254b = new MediaPlayer();

    /* renamed from: c  reason: collision with root package name */
    private int f26255c = 0;

    /* loaded from: classes4.dex */
    public class a extends Binder {

        /* renamed from: a  reason: collision with root package name */
        public String f26256a = "";

        public a() {
        }

        public void a() {
            MediaPlayer mediaPlayer = MediaService.this.f26254b;
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.stop();
                } catch (Exception unused) {
                    MediaService mediaService = MediaService.this;
                    mediaService.f26254b = null;
                    mediaService.f26254b = new MediaPlayer();
                    MediaService.this.f26254b.stop();
                }
                MediaService.this.f26254b.release();
                MediaService.this.f26254b = null;
            }
        }

        public void b(String str) {
            if (MediaService.this.f26254b != null && !TextUtils.isEmpty(this.f26256a)) {
                MediaService.this.f26254b.reset();
            }
            MediaService.this.b(str);
            this.f26256a = str;
            d();
        }

        public void c() {
            MediaPlayer mediaPlayer = MediaService.this.f26254b;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return;
            }
            MediaService.this.f26254b.pause();
        }

        public void d() {
            MediaPlayer mediaPlayer = MediaService.this.f26254b;
            if (mediaPlayer == null || mediaPlayer.isPlaying()) {
                return;
            }
            MediaService.this.f26254b.start();
        }

        public void e() {
            MediaPlayer mediaPlayer = MediaService.this.f26254b;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return;
            }
            MediaService.this.f26254b.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (this.f26254b == null) {
                this.f26254b = new MediaPlayer();
            }
            this.f26254b.setDataSource(str);
            this.f26254b.setAudioStreamType(3);
            this.f26254b.setLooping(true);
            this.f26254b.prepare();
            this.f26255c = this.f26254b.getDuration();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.f26253a;
    }
}
