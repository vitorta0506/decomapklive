package com.google.android.exoplayer2.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
final class s {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f5591a;

    /* renamed from: b  reason: collision with root package name */
    private int f5592b;

    /* renamed from: c  reason: collision with root package name */
    private long f5593c;

    /* renamed from: d  reason: collision with root package name */
    private long f5594d;

    /* renamed from: e  reason: collision with root package name */
    private long f5595e;

    /* renamed from: f  reason: collision with root package name */
    private long f5596f;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioTrack f5597a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioTimestamp f5598b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        private long f5599c;

        /* renamed from: d  reason: collision with root package name */
        private long f5600d;

        /* renamed from: e  reason: collision with root package name */
        private long f5601e;

        public a(AudioTrack audioTrack) {
            this.f5597a = audioTrack;
        }

        public long a() {
            return this.f5601e;
        }

        public long b() {
            return this.f5598b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.f5597a.getTimestamp(this.f5598b);
            if (timestamp) {
                long j10 = this.f5598b.framePosition;
                if (this.f5600d > j10) {
                    this.f5599c++;
                }
                this.f5600d = j10;
                this.f5601e = j10 + (this.f5599c << 32);
            }
            return timestamp;
        }
    }

    public s(AudioTrack audioTrack) {
        if (l0.f6985a >= 19) {
            this.f5591a = new a(audioTrack);
            g();
            return;
        }
        this.f5591a = null;
        h(3);
    }

    private void h(int i9) {
        this.f5592b = i9;
        if (i9 == 0) {
            this.f5595e = 0L;
            this.f5596f = -1L;
            this.f5593c = System.nanoTime() / 1000;
            this.f5594d = 10000L;
        } else if (i9 == 1) {
            this.f5594d = 10000L;
        } else if (i9 == 2 || i9 == 3) {
            this.f5594d = 10000000L;
        } else if (i9 == 4) {
            this.f5594d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }

    public void a() {
        if (this.f5592b == 4) {
            g();
        }
    }

    public long b() {
        a aVar = this.f5591a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1L;
    }

    public long c() {
        a aVar = this.f5591a;
        if (aVar != null) {
            return aVar.b();
        }
        return -9223372036854775807L;
    }

    public boolean d() {
        return this.f5592b == 2;
    }

    public boolean e(long j10) {
        a aVar = this.f5591a;
        if (aVar == null || j10 - this.f5595e < this.f5594d) {
            return false;
        }
        this.f5595e = j10;
        boolean c10 = aVar.c();
        int i9 = this.f5592b;
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (c10) {
                        g();
                    }
                } else if (!c10) {
                    g();
                }
            } else if (c10) {
                if (this.f5591a.a() > this.f5596f) {
                    h(2);
                }
            } else {
                g();
            }
        } else if (c10) {
            if (this.f5591a.b() < this.f5593c) {
                return false;
            }
            this.f5596f = this.f5591a.a();
            h(1);
        } else if (j10 - this.f5593c > 500000) {
            h(3);
        }
        return c10;
    }

    public void f() {
        h(4);
    }

    public void g() {
        if (this.f5591a != null) {
            h(0);
        }
    }
}
