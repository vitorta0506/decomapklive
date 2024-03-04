package com.previewlibrary;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.widget.Toast;
import android.widget.VideoView;
/* loaded from: classes4.dex */
public class GPVideoPlayerActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    VideoView f28891a;

    /* loaded from: classes4.dex */
    class a implements MediaPlayer.OnErrorListener {
        a() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i9, int i10) {
            Toast.makeText(GPVideoPlayerActivity.this, R$string.Playback_failed, 0).show();
            return false;
        }
    }

    public static void a(Context context, String str) {
        Intent intent = new Intent(context, GPVideoPlayerActivity.class);
        intent.putExtra("url", str);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_gpvideoplayer);
        VideoView videoView = (VideoView) findViewById(R$id.gpVideo);
        this.f28891a = videoView;
        videoView.setVideoPath(getIntent().getStringExtra("url"));
        this.f28891a.setOnErrorListener(new a());
        this.f28891a.start();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f28891a.stopPlayback();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f28891a.pause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f28891a.isPlaying()) {
            return;
        }
        this.f28891a.start();
    }
}
