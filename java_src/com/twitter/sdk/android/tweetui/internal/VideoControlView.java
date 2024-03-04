package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;
import com.twitter.sdk.android.tweetui.R$drawable;
import com.twitter.sdk.android.tweetui.R$id;
import com.twitter.sdk.android.tweetui.R$layout;
import com.twitter.sdk.android.tweetui.R$string;
import org.light.LightConstants;
/* loaded from: classes4.dex */
public class VideoControlView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    c f35489a;

    /* renamed from: b  reason: collision with root package name */
    ImageButton f35490b;

    /* renamed from: c  reason: collision with root package name */
    TextView f35491c;

    /* renamed from: d  reason: collision with root package name */
    TextView f35492d;

    /* renamed from: e  reason: collision with root package name */
    SeekBar f35493e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f35494f;

    /* loaded from: classes4.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1001) {
                VideoControlView videoControlView = VideoControlView.this;
                if (videoControlView.f35489a == null) {
                    return;
                }
                videoControlView.o();
                VideoControlView.this.p();
                if (VideoControlView.this.g() && VideoControlView.this.f35489a.isPlaying()) {
                    sendMessageDelayed(obtainMessage(1001), 500L);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements SeekBar.OnSeekBarChangeListener {
        b() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i9, boolean z10) {
            if (z10) {
                int duration = (int) ((VideoControlView.this.f35489a.getDuration() * i9) / 1000);
                VideoControlView.this.f35489a.seekTo(duration);
                VideoControlView.this.setCurrentTime(duration);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            VideoControlView.this.f35494f.removeMessages(1001);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            VideoControlView.this.f35494f.sendEmptyMessage(1001);
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        int getBufferPercentage();

        int getCurrentPosition();

        int getDuration();

        boolean isPlaying();

        void pause();

        void seekTo(int i9);

        void start();
    }

    public VideoControlView(Context context) {
        super(context);
        this.f35494f = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        if (this.f35489a.isPlaying()) {
            this.f35489a.pause();
        } else {
            this.f35489a.start();
        }
        m();
    }

    SeekBar.OnSeekBarChangeListener c() {
        return new b();
    }

    View.OnClickListener d() {
        return new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.internal.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControlView.this.h(view);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f35494f.removeMessages(1001);
        com.twitter.sdk.android.tweetui.internal.a.b(this, 150);
    }

    void f() {
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R$layout.tw__video_control, this);
        this.f35490b = (ImageButton) findViewById(R$id.tw__state_control);
        this.f35491c = (TextView) findViewById(R$id.tw__current_time);
        this.f35492d = (TextView) findViewById(R$id.tw__duration);
        SeekBar seekBar = (SeekBar) findViewById(R$id.tw__progress);
        this.f35493e = seekBar;
        seekBar.setMax(1000);
        this.f35493e.setOnSeekBarChangeListener(c());
        this.f35490b.setOnClickListener(d());
        setDuration(0);
        setCurrentTime(0);
        k(0, 0, 0);
    }

    public boolean g() {
        return getVisibility() == 0;
    }

    void i() {
        this.f35490b.setImageResource(R$drawable.tw__video_pause_btn);
        this.f35490b.setContentDescription(getContext().getString(R$string.tw__pause));
    }

    void j() {
        this.f35490b.setImageResource(R$drawable.tw__video_play_btn);
        this.f35490b.setContentDescription(getContext().getString(R$string.tw__play));
    }

    void k(int i9, int i10, int i11) {
        this.f35493e.setProgress((int) (i10 > 0 ? (i9 * 1000) / i10 : 0L));
        this.f35493e.setSecondaryProgress(i11 * 10);
    }

    void l() {
        this.f35490b.setImageResource(R$drawable.tw__video_replay_btn);
        this.f35490b.setContentDescription(getContext().getString(R$string.tw__replay));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        this.f35494f.sendEmptyMessage(1001);
        com.twitter.sdk.android.tweetui.internal.a.a(this, 150);
    }

    public void n() {
        this.f35494f.sendEmptyMessage(1001);
    }

    void o() {
        int duration = this.f35489a.getDuration();
        int currentPosition = this.f35489a.getCurrentPosition();
        int bufferPercentage = this.f35489a.getBufferPercentage();
        setDuration(duration);
        setCurrentTime(currentPosition);
        k(currentPosition, duration, bufferPercentage);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        f();
    }

    void p() {
        if (this.f35489a.isPlaying()) {
            i();
        } else if (this.f35489a.getCurrentPosition() > Math.max(this.f35489a.getDuration() + LightConstants.ErrorCode.SDK_VERSION_NOT_SUPPORT, 0)) {
            l();
        } else {
            j();
        }
    }

    void setCurrentTime(int i9) {
        this.f35491c.setText(d.a(i9));
    }

    void setDuration(int i9) {
        this.f35492d.setText(d.a(i9));
    }

    public void setMediaPlayer(c cVar) {
        this.f35489a = cVar;
    }

    public VideoControlView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35494f = new a();
    }

    public VideoControlView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f35494f = new a();
    }
}
