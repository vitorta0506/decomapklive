package com.guochao.faceshow.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.TCConstants;
import com.tencent.rtmp.ITXLivePlayListener;
import com.tencent.rtmp.TXLivePlayConfig;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.UGCTransitionRules;
import java.io.File;
import java.util.Locale;
/* loaded from: classes3.dex */
public class TCVideoPreviewActivity extends Activity implements View.OnClickListener, ITXLivePlayListener {

    /* renamed from: a  reason: collision with root package name */
    ImageView f24843a;

    /* renamed from: e  reason: collision with root package name */
    private String f24847e;

    /* renamed from: f  reason: collision with root package name */
    private String f24848f;

    /* renamed from: g  reason: collision with root package name */
    ImageView f24849g;

    /* renamed from: j  reason: collision with root package name */
    private TXCloudVideoView f24852j;

    /* renamed from: k  reason: collision with root package name */
    private SeekBar f24853k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f24854l;

    /* renamed from: o  reason: collision with root package name */
    private String f24857o;

    /* renamed from: b  reason: collision with root package name */
    boolean f24844b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f24845c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f24846d = false;

    /* renamed from: h  reason: collision with root package name */
    private TXLivePlayer f24850h = null;

    /* renamed from: i  reason: collision with root package name */
    private TXLivePlayConfig f24851i = null;

    /* renamed from: m  reason: collision with root package name */
    private long f24855m = 0;

    /* renamed from: n  reason: collision with root package name */
    private boolean f24856n = false;

    /* loaded from: classes3.dex */
    class a implements SeekBar.OnSeekBarChangeListener {
        a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i9, boolean z10) {
            if (TCVideoPreviewActivity.this.f24854l != null) {
                TCVideoPreviewActivity.this.f24854l.setText(String.format(Locale.CHINA, "%02d:%02d/%02d:%02d", Integer.valueOf(i9 / 60), Integer.valueOf(i9 % 60), Integer.valueOf(seekBar.getMax() / 60), Integer.valueOf(seekBar.getMax() % 60)));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            TCVideoPreviewActivity.this.f24856n = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            if (TCVideoPreviewActivity.this.f24850h != null) {
                TCVideoPreviewActivity.this.f24850h.seek(seekBar.getProgress());
            }
            TCVideoPreviewActivity.this.f24855m = System.currentTimeMillis();
            TCVideoPreviewActivity.this.f24856n = false;
        }
    }

    private void e() {
        File file = new File(this.f24847e);
        if (file.exists()) {
            file.delete();
            finish();
        }
    }

    private boolean f() {
        this.f24843a.setBackgroundResource(R.drawable.icon_record_pause);
        this.f24850h.setPlayerView(this.f24852j);
        this.f24850h.setPlayListener(this);
        this.f24850h.enableHardwareDecode(false);
        this.f24850h.setRenderRotation(0);
        this.f24850h.setRenderMode(0);
        this.f24850h.setConfig(this.f24851i);
        if (this.f24850h.startLivePlay(this.f24847e, 6) != 0) {
            this.f24843a.setBackgroundResource(R.drawable.icon_record_start);
            return false;
        }
        this.f24849g.setVisibility(8);
        this.f24844b = true;
        return true;
    }

    private void g() {
        Intent intent = new Intent();
        intent.putExtra("videoPath", this.f24847e);
        intent.putExtra("coverPath", this.f24848f);
        setResult(-1, intent);
        finish();
    }

    protected void h(boolean z10) {
        TXLivePlayer tXLivePlayer = this.f24850h;
        if (tXLivePlayer != null) {
            tXLivePlayer.setPlayListener(null);
            this.f24850h.stopPlay(z10);
            this.f24844b = false;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.record_delete) {
            e();
        } else if (id2 != R.id.record_preview) {
            if (id2 != R.id.record_publish) {
                return;
            }
            g();
        } else if (this.f24844b) {
            if (this.f24845c) {
                this.f24850h.resume();
                this.f24843a.setBackgroundResource(R.drawable.icon_record_pause);
                this.f24845c = false;
                return;
            }
            this.f24850h.pause();
            this.f24843a.setBackgroundResource(R.drawable.icon_record_start);
            this.f24845c = true;
        } else {
            f();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(2097152);
        getWindow().addFlags(128);
        getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        setContentView(R.layout.activity_video_preview);
        this.f24843a = (ImageView) findViewById(R.id.record_preview);
        this.f24847e = getIntent().getStringExtra(TCConstants.VIDEO_RECORD_VIDEPATH);
        this.f24848f = getIntent().getStringExtra(TCConstants.VIDEO_RECORD_COVERPATH);
        this.f24857o = getIntent().getStringExtra("topicName");
        this.f24849g = (ImageView) findViewById(R.id.cover);
        if (!TextUtils.isEmpty(this.f24848f)) {
            com.bumptech.glide.c.t(this).n(Uri.fromFile(new File(this.f24848f))).Q0(this.f24849g);
        }
        this.f24850h = new TXLivePlayer(this);
        this.f24851i = new TXLivePlayConfig();
        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) findViewById(R.id.video_view);
        this.f24852j = tXCloudVideoView;
        tXCloudVideoView.disableLog(true);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekbar);
        this.f24853k = seekBar;
        seekBar.setOnSeekBarChangeListener(new a());
        this.f24854l = (TextView) findViewById(R.id.progress_time);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f24852j.onDestroy();
        h(true);
    }

    @Override // com.tencent.rtmp.ITXLivePlayListener
    public void onNetStatus(Bundle bundle) {
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f24852j.onPause();
        if (!this.f24844b || this.f24845c) {
            return;
        }
        this.f24850h.pause();
        this.f24846d = true;
    }

    @Override // com.tencent.rtmp.ITXLivePlayListener
    public void onPlayEvent(int i9, Bundle bundle) {
        if (i9 != 2005) {
            if (i9 != -2301 && i9 == 2006) {
                TextView textView = this.f24854l;
                if (textView != null) {
                    textView.setText(String.format(Locale.CHINA, "%s", "00:00/00:00"));
                }
                SeekBar seekBar = this.f24853k;
                if (seekBar != null) {
                    seekBar.setProgress(0);
                }
                h(false);
                f();
            }
        } else if (this.f24856n) {
        } else {
            int i10 = bundle.getInt("EVT_PLAY_PROGRESS");
            int i11 = bundle.getInt("EVT_PLAY_DURATION");
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(currentTimeMillis - this.f24855m) < 500) {
                return;
            }
            this.f24855m = currentTimeMillis;
            SeekBar seekBar2 = this.f24853k;
            if (seekBar2 != null) {
                seekBar2.setProgress(i10);
            }
            TextView textView2 = this.f24854l;
            if (textView2 != null) {
                textView2.setText(String.format(Locale.CHINA, "%02d:%02d/%02d:%02d", Integer.valueOf(i10 / 60), Integer.valueOf(i10 % 60), Integer.valueOf(i11 / 60), Integer.valueOf(i11 % 60)));
            }
            SeekBar seekBar3 = this.f24853k;
            if (seekBar3 != null) {
                seekBar3.setMax(i11);
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f24852j.onResume();
        if (this.f24844b && this.f24846d) {
            this.f24850h.resume();
            this.f24846d = false;
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
