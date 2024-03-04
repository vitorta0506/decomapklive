package com.twitter.sdk.android.tweetui;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.sdk.android.tweetui.PlayerActivity;
import com.twitter.sdk.android.tweetui.internal.VideoControlView;
import com.twitter.sdk.android.tweetui.internal.VideoView;
import com.twitter.sdk.android.tweetui.internal.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    final VideoView f35574a;

    /* renamed from: b  reason: collision with root package name */
    final VideoControlView f35575b;

    /* renamed from: c  reason: collision with root package name */
    final ProgressBar f35576c;

    /* renamed from: d  reason: collision with root package name */
    final TextView f35577d;

    /* renamed from: e  reason: collision with root package name */
    final View f35578e;

    /* renamed from: f  reason: collision with root package name */
    int f35579f;

    /* renamed from: g  reason: collision with root package name */
    boolean f35580g = true;

    /* renamed from: h  reason: collision with root package name */
    final i.a f35581h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(View view, i.a aVar) {
        this.f35578e = view;
        this.f35574a = (VideoView) view.findViewById(R$id.video_view);
        this.f35575b = (VideoControlView) view.findViewById(R$id.video_control_view);
        this.f35576c = (ProgressBar) view.findViewById(R$id.video_progress_view);
        this.f35577d = (TextView) view.findViewById(R$id.call_to_action_view);
        this.f35581h = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(MediaPlayer mediaPlayer) {
        this.f35576c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean g(MediaPlayer mediaPlayer, int i9, int i10) {
        if (i9 == 702) {
            this.f35576c.setVisibility(8);
            return true;
        } else if (i9 == 701) {
            this.f35576c.setVisibility(0);
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(String str, View view) {
        com.twitter.sdk.android.core.f.b(this.f35577d.getContext(), new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        if (this.f35574a.isPlaying()) {
            this.f35574a.pause();
        } else {
            this.f35574a.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        if (this.f35577d.getVisibility() == 0) {
            this.f35577d.setVisibility(8);
        } else {
            this.f35577d.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        this.f35574a.F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.f35580g = this.f35574a.isPlaying();
        this.f35579f = this.f35574a.getCurrentPosition();
        this.f35574a.pause();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        int i9 = this.f35579f;
        if (i9 != 0) {
            this.f35574a.seekTo(i9);
        }
        if (this.f35580g) {
            this.f35574a.start();
            this.f35575b.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(PlayerActivity.PlayerItem playerItem) {
        try {
            o(playerItem);
            s(playerItem.looping, playerItem.showVideoControls);
            this.f35574a.setOnTouchListener(com.twitter.sdk.android.tweetui.internal.i.d(this.f35574a, this.f35581h));
            this.f35574a.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.twitter.sdk.android.tweetui.o
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer) {
                    s.this.f(mediaPlayer);
                }
            });
            this.f35574a.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.twitter.sdk.android.tweetui.n
                @Override // android.media.MediaPlayer.OnInfoListener
                public final boolean onInfo(MediaPlayer mediaPlayer, int i9, int i10) {
                    boolean g10;
                    g10 = s.this.g(mediaPlayer, i9, i10);
                    return g10;
                }
            });
            this.f35574a.E(Uri.parse(playerItem.url), playerItem.looping);
            this.f35574a.requestFocus();
        } catch (Exception e10) {
            com.twitter.sdk.android.core.l.g().e("PlayerController", "Error occurred during video playback", e10);
        }
    }

    void o(PlayerActivity.PlayerItem playerItem) {
        if (playerItem.callToActionText == null || playerItem.callToActionUrl == null) {
            return;
        }
        this.f35577d.setVisibility(0);
        this.f35577d.setText(playerItem.callToActionText);
        p(playerItem.callToActionUrl);
        t();
    }

    void p(final String str) {
        this.f35577d.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s.this.h(str, view);
            }
        });
    }

    void q() {
        this.f35575b.setVisibility(4);
        this.f35574a.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s.this.i(view);
            }
        });
    }

    void r() {
        this.f35574a.setMediaController(this.f35575b);
    }

    void s(boolean z10, boolean z11) {
        if (z10 && !z11) {
            q();
        } else {
            r();
        }
    }

    void t() {
        this.f35578e.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s.this.j(view);
            }
        });
    }
}
