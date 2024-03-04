package com.tencent.liteav.audio.route;

import android.media.AudioManager;
import android.os.Handler;
import com.tencent.liteav.audio.route.b;
import com.tencent.liteav.base.Log;
/* loaded from: classes4.dex */
public final class n {

    /* renamed from: com.tencent.liteav.audio.route.n$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f30847a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f30848b;

        static {
            int[] iArr = new int[b.a.a().length];
            f30848b = iArr;
            try {
                iArr[b.a.f30859a - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30848b[b.a.f30860b - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30848b[b.a.f30862d - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30848b[b.a.f30861c - 1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[b.a.values().length];
            f30847a = iArr2;
            try {
                iArr2[b.a.EARPHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f30847a[b.a.SPEAKERPHONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f30847a[b.a.WIRED_HEADSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f30847a[b.a.BLUETOOTH_HEADSET.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        protected final AudioManager f30849a;

        /* renamed from: b  reason: collision with root package name */
        final Handler f30850b;

        /* renamed from: d  reason: collision with root package name */
        protected com.tencent.liteav.audio.route.a f30852d;

        /* renamed from: c  reason: collision with root package name */
        protected b.a f30851c = b.a.NONE;

        /* renamed from: e  reason: collision with root package name */
        protected InterfaceC0316a f30853e = null;

        /* renamed from: f  reason: collision with root package name */
        protected int f30854f = 0;

        /* renamed from: g  reason: collision with root package name */
        boolean f30855g = false;

        /* renamed from: h  reason: collision with root package name */
        protected final Runnable f30856h = new Runnable() { // from class: com.tencent.liteav.audio.route.n.a.1
            @Override // java.lang.Runnable
            public final void run() {
                long e10 = a.this.e();
                a aVar = a.this;
                aVar.f30854f++;
                aVar.f30850b.removeCallbacks(aVar.f30856h);
                a aVar2 = a.this;
                if (!aVar2.f30855g || e10 < 0) {
                    return;
                }
                aVar2.f30850b.postDelayed(aVar2.f30856h, e10);
            }
        };

        /* renamed from: com.tencent.liteav.audio.route.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public interface InterfaceC0316a {
            void a(b.a aVar);

            void b(b.a aVar);
        }

        public a(AudioManager audioManager, Handler handler, com.tencent.liteav.audio.route.a aVar) {
            this.f30852d = com.tencent.liteav.audio.route.a.STOPPED;
            this.f30849a = audioManager;
            this.f30850b = handler;
            this.f30852d = aVar;
        }

        public final void a(InterfaceC0316a interfaceC0316a) {
            this.f30853e = interfaceC0316a;
        }

        public void a(boolean z10) {
        }

        public final void b() {
            c();
            this.f30850b.removeCallbacks(this.f30856h);
            this.f30855g = false;
        }

        protected void c() {
        }

        protected final int d() {
            AudioManager audioManager = this.f30849a;
            if (audioManager != null) {
                try {
                    return audioManager.getMode();
                } catch (Exception e10) {
                    Log.i("AudioRouteSwitcher", "Exception occurs in getAudioMode " + e10.getMessage(), new Object[0]);
                    return 0;
                }
            }
            return 0;
        }

        protected abstract long e();

        public final void a() {
            this.f30855g = true;
            InterfaceC0316a interfaceC0316a = this.f30853e;
            if (interfaceC0316a != null) {
                interfaceC0316a.a(this.f30851c);
            }
            this.f30850b.post(this.f30856h);
        }

        public void a(com.tencent.liteav.audio.route.a aVar) {
            this.f30852d = aVar;
            this.f30850b.removeCallbacks(this.f30856h);
            this.f30854f = 0;
            this.f30850b.post(this.f30856h);
        }
    }

    /* loaded from: classes4.dex */
    public static class c extends a {
        public c(AudioManager audioManager, Handler handler, com.tencent.liteav.audio.route.a aVar) {
            super(audioManager, handler, aVar);
            this.f30851c = b.a.EARPHONE;
        }

        @Override // com.tencent.liteav.audio.route.n.a
        protected final long e() {
            long j10 = this.f30854f < 5 ? 1000L : 4000L;
            if (this.f30852d.a() && this.f30849a.isSpeakerphoneOn()) {
                Log.i("AudioRouteSwitcher", "EarphoneSwitcher switch to earphone", new Object[0]);
                this.f30849a.setSpeakerphoneOn(false);
            } else if (this.f30854f == 0) {
                Log.i("AudioRouteSwitcher", "EarphoneSwitcher do nothing, mCurrentIOScene: " + this.f30852d + ", isSpeakerOn: " + this.f30849a.isSpeakerphoneOn() + ", AudioMode: " + d(), new Object[0]);
            }
            return j10;
        }
    }

    /* loaded from: classes4.dex */
    public static class d extends a {
        public d(AudioManager audioManager, Handler handler, com.tencent.liteav.audio.route.a aVar) {
            super(audioManager, handler, aVar);
            this.f30851c = b.a.SPEAKERPHONE;
        }

        @Override // com.tencent.liteav.audio.route.n.a
        protected final long e() {
            long j10 = this.f30854f < 5 ? 1000L : 4000L;
            if (this.f30852d.a() && !this.f30849a.isSpeakerphoneOn()) {
                Log.i("AudioRouteSwitcher", "SpeakerSwitcher switch to speakerphone", new Object[0]);
                this.f30849a.setSpeakerphoneOn(true);
            } else if (this.f30854f == 0) {
                Log.i("AudioRouteSwitcher", "SpeakerSwitcher do nothing, mCurrentIOScene: " + this.f30852d + ", isSpeakerOn: " + this.f30849a.isSpeakerphoneOn() + ", AudioMode: " + d(), new Object[0]);
            }
            return j10;
        }
    }

    /* loaded from: classes4.dex */
    public static class e extends a {
        public e(AudioManager audioManager, Handler handler, com.tencent.liteav.audio.route.a aVar) {
            super(audioManager, handler, aVar);
            this.f30851c = b.a.WIRED_HEADSET;
        }

        @Override // com.tencent.liteav.audio.route.n.a
        protected final long e() {
            long j10 = this.f30854f < 5 ? 1000L : 4000L;
            if (this.f30852d.a() && this.f30849a.isSpeakerphoneOn()) {
                Log.i("AudioRouteSwitcher", "WiredHeadsetSwitcher switch to wired headset", new Object[0]);
                this.f30849a.setWiredHeadsetOn(true);
                this.f30849a.setSpeakerphoneOn(false);
            } else if (this.f30854f == 0) {
                Log.i("AudioRouteSwitcher", "WiredHeadsetSwitcher do nothing, mCurrentIOScene: " + this.f30852d + ", isWiredHeadsetOn: " + this.f30849a.isWiredHeadsetOn() + ", isSpeakerphoneOn: " + this.f30849a.isSpeakerphoneOn() + ", AudioMode: " + d(), new Object[0]);
            }
            return j10;
        }
    }

    /* loaded from: classes4.dex */
    public static class b extends a {

        /* renamed from: i  reason: collision with root package name */
        private int f30858i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* loaded from: classes4.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            public static final int f30859a = 1;

            /* renamed from: b  reason: collision with root package name */
            public static final int f30860b = 2;

            /* renamed from: c  reason: collision with root package name */
            public static final int f30861c = 3;

            /* renamed from: d  reason: collision with root package name */
            public static final int f30862d = 4;

            /* renamed from: e  reason: collision with root package name */
            private static final /* synthetic */ int[] f30863e = {1, 2, 3, 4};

            public static int[] a() {
                return (int[]) f30863e.clone();
            }
        }

        public b(AudioManager audioManager, Handler handler, com.tencent.liteav.audio.route.a aVar) {
            super(audioManager, handler, aVar);
            this.f30858i = a.f30860b;
            this.f30851c = b.a.BLUETOOTH_HEADSET;
        }

        private void f() {
            Log.i("AudioRouteSwitcher", "stopBluetoothSco", new Object[0]);
            try {
                this.f30849a.stopBluetoothSco();
                this.f30849a.setBluetoothScoOn(false);
            } catch (Throwable th2) {
                Log.w("AudioRouteSwitcher", "stop bluetooth sco exception " + th2.getMessage(), new Object[0]);
            }
        }

        @Override // com.tencent.liteav.audio.route.n.a
        public final void a(com.tencent.liteav.audio.route.a aVar) {
            if (this.f30852d.a() != aVar.a()) {
                a(false);
            }
            super.a(aVar);
        }

        @Override // com.tencent.liteav.audio.route.n.a
        protected final void c() {
            Log.i("AudioRouteSwitcher", "beforeStop: stop bluetooth SCO", new Object[0]);
            f();
        }

        @Override // com.tencent.liteav.audio.route.n.a
        protected final long e() {
            if (!this.f30852d.a()) {
                Log.i("AudioRouteSwitcher", "BluetoothHeadsetSwitcher stop sco, mCurrentIOScene: " + this.f30852d + ", AudioMode: " + d(), new Object[0]);
                f();
                return -1L;
            }
            int i9 = AnonymousClass1.f30848b[this.f30858i - 1];
            if (i9 == 1) {
                Log.i("AudioRouteSwitcher", "Bluetooth Headset is connected, isBluetoothScoOn:" + this.f30849a.isBluetoothScoOn(), new Object[0]);
                return -1L;
            } else if (i9 != 2 && i9 != 3) {
                if (i9 != 4) {
                    return -1L;
                }
                f();
                this.f30858i = a.f30862d;
                return 4000L;
            } else if (this.f30854f > 5) {
                Log.w("AudioRouteSwitcher", "Bluetooth headset connection failed for 3 times, give it up", new Object[0]);
                this.f30853e.b(this.f30851c);
                return -1L;
            } else {
                Log.i("AudioRouteSwitcher", "BluetoothHeadsetSwitcher start bluetooth SCO mode", new Object[0]);
                try {
                    this.f30849a.setBluetoothScoOn(true);
                    this.f30849a.startBluetoothSco();
                } catch (Throwable th2) {
                    Log.w("AudioRouteSwitcher", "start bluetooth sco exception " + th2.getMessage(), new Object[0]);
                }
                this.f30858i = a.f30861c;
                return 4000L;
            }
        }

        @Override // com.tencent.liteav.audio.route.n.a
        public final void a(boolean z10) {
            this.f30858i = z10 ? a.f30859a : a.f30860b;
        }
    }
}
