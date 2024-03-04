package com.guochao.faceshow.aaspring.modulars.chat.utils;

import android.media.MediaPlayer;
import java.io.File;
/* loaded from: classes3.dex */
public class d implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener {

    /* renamed from: c  reason: collision with root package name */
    private static d f17259c;

    /* renamed from: a  reason: collision with root package name */
    private MediaPlayer f17260a;

    /* renamed from: b  reason: collision with root package name */
    private a f17261b;

    /* loaded from: classes3.dex */
    public interface a {
        void a(MediaPlayer mediaPlayer);

        void b(MediaPlayer mediaPlayer);
    }

    d() {
    }

    public static d a() {
        d dVar;
        synchronized (d.class) {
            if (f17259c == null) {
                f17259c = new d();
            }
            dVar = f17259c;
        }
        return dVar;
    }

    public void b(File file) {
        try {
            MediaPlayer mediaPlayer = this.f17260a;
            if (mediaPlayer != null && mediaPlayer.isPlaying()) {
                this.f17260a.stop();
                this.f17260a.release();
                a aVar = this.f17261b;
                if (aVar != null) {
                    aVar.b(this.f17260a);
                }
                this.f17260a = null;
            }
        } catch (Exception unused) {
        }
        try {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            this.f17260a = mediaPlayer2;
            mediaPlayer2.setDataSource(file.getPath());
            this.f17260a.setOnPreparedListener(this);
            this.f17260a.setOnCompletionListener(this);
            this.f17260a.prepareAsync();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c() {
        try {
            MediaPlayer mediaPlayer = this.f17260a;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return;
            }
            this.f17260a.stop();
            this.f17260a.release();
            this.f17260a = null;
        } catch (Exception unused) {
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        a aVar = this.f17261b;
        if (aVar != null) {
            aVar.b(this.f17260a);
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.start();
        a aVar = this.f17261b;
        if (aVar != null) {
            aVar.a(this.f17260a);
        }
    }

    public void setOnPlayListener(a aVar) {
        this.f17261b = aVar;
    }
}
