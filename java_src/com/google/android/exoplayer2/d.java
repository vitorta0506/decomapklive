package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final AudioManager f5684a;

    /* renamed from: b  reason: collision with root package name */
    private final a f5685b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private b f5686c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f5687d;

    /* renamed from: f  reason: collision with root package name */
    private int f5689f;

    /* renamed from: h  reason: collision with root package name */
    private AudioFocusRequest f5691h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f5692i;

    /* renamed from: g  reason: collision with root package name */
    private float f5690g = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private int f5688e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f5693a;

        public a(Handler handler) {
            this.f5693a = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i9) {
            d.this.h(i9);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i9) {
            this.f5693a.post(new Runnable() { // from class: com.google.android.exoplayer2.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.a.this.b(i9);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void E(float f10);

        void F(int i9);
    }

    public d(Context context, Handler handler, b bVar) {
        this.f5684a = (AudioManager) com.google.android.exoplayer2.util.a.e((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f5686c = bVar;
        this.f5685b = new a(handler);
    }

    private void a() {
        this.f5684a.abandonAudioFocus(this.f5685b);
    }

    private void b() {
        if (this.f5688e == 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.l0.f6985a >= 26) {
            c();
        } else {
            a();
        }
        n(0);
    }

    @RequiresApi(26)
    private void c() {
        AudioFocusRequest audioFocusRequest = this.f5691h;
        if (audioFocusRequest != null) {
            this.f5684a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int e(@Nullable com.google.android.exoplayer2.audio.e eVar) {
        if (eVar == null) {
            return 0;
        }
        switch (eVar.f5492c) {
            case 0:
                com.google.android.exoplayer2.util.r.i("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                break;
            case 11:
                if (eVar.f5490a == 1) {
                    return 2;
                }
                break;
            case 15:
            default:
                com.google.android.exoplayer2.util.r.i("AudioFocusManager", "Unidentified audio usage: " + eVar.f5492c);
                return 0;
            case 16:
                return com.google.android.exoplayer2.util.l0.f6985a >= 19 ? 4 : 2;
        }
        return 3;
    }

    private void f(int i9) {
        b bVar = this.f5686c;
        if (bVar != null) {
            bVar.F(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i9) {
        if (i9 == -3 || i9 == -2) {
            if (i9 != -2 && !q()) {
                n(3);
                return;
            }
            f(0);
            n(2);
        } else if (i9 == -1) {
            f(-1);
            b();
        } else if (i9 != 1) {
            com.google.android.exoplayer2.util.r.i("AudioFocusManager", "Unknown focus change type: " + i9);
        } else {
            n(1);
            f(1);
        }
    }

    private int j() {
        if (this.f5688e == 1) {
            return 1;
        }
        if ((com.google.android.exoplayer2.util.l0.f6985a >= 26 ? l() : k()) == 1) {
            n(1);
            return 1;
        }
        n(0);
        return -1;
    }

    private int k() {
        return this.f5684a.requestAudioFocus(this.f5685b, com.google.android.exoplayer2.util.l0.a0(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.f5687d)).f5492c), this.f5689f);
    }

    @RequiresApi(26)
    private int l() {
        AudioFocusRequest.Builder builder;
        AudioFocusRequest audioFocusRequest = this.f5691h;
        if (audioFocusRequest == null || this.f5692i) {
            if (audioFocusRequest == null) {
                builder = new AudioFocusRequest.Builder(this.f5689f);
            } else {
                builder = new AudioFocusRequest.Builder(this.f5691h);
            }
            this.f5691h = builder.setAudioAttributes(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.f5687d)).b().f5496a).setWillPauseWhenDucked(q()).setOnAudioFocusChangeListener(this.f5685b).build();
            this.f5692i = false;
        }
        return this.f5684a.requestAudioFocus(this.f5691h);
    }

    private void n(int i9) {
        if (this.f5688e == i9) {
            return;
        }
        this.f5688e = i9;
        float f10 = i9 == 3 ? 0.2f : 1.0f;
        if (this.f5690g == f10) {
            return;
        }
        this.f5690g = f10;
        b bVar = this.f5686c;
        if (bVar != null) {
            bVar.E(f10);
        }
    }

    private boolean o(int i9) {
        return i9 == 1 || this.f5689f != 1;
    }

    private boolean q() {
        com.google.android.exoplayer2.audio.e eVar = this.f5687d;
        return eVar != null && eVar.f5490a == 1;
    }

    public float g() {
        return this.f5690g;
    }

    public void i() {
        this.f5686c = null;
        b();
    }

    public void m(@Nullable com.google.android.exoplayer2.audio.e eVar) {
        if (com.google.android.exoplayer2.util.l0.c(this.f5687d, eVar)) {
            return;
        }
        this.f5687d = eVar;
        int e10 = e(eVar);
        this.f5689f = e10;
        boolean z10 = true;
        if (e10 != 1 && e10 != 0) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int p(boolean z10, int i9) {
        if (o(i9)) {
            b();
            return z10 ? 1 : -1;
        } else if (z10) {
            return j();
        } else {
            return -1;
        }
    }
}
