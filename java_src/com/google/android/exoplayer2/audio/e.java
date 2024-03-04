package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class e implements com.google.android.exoplayer2.h {

    /* renamed from: g  reason: collision with root package name */
    public static final e f5488g = new C0077e().a();

    /* renamed from: h  reason: collision with root package name */
    public static final h.a<e> f5489h = new h.a() { // from class: com.google.android.exoplayer2.audio.d
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            e d10;
            d10 = e.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f5490a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5491b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5492c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5493d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5494e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f5495f;

    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static final class b {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i9) {
            builder.setAllowedCapturePolicy(i9);
        }
    }

    @RequiresApi(32)
    /* loaded from: classes.dex */
    private static final class c {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i9) {
            builder.setSpatializationBehavior(i9);
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final AudioAttributes f5496a;

        private d(e eVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(eVar.f5490a).setFlags(eVar.f5491b).setUsage(eVar.f5492c);
            int i9 = l0.f6985a;
            if (i9 >= 29) {
                b.a(usage, eVar.f5493d);
            }
            if (i9 >= 32) {
                c.a(usage, eVar.f5494e);
            }
            this.f5496a = usage.build();
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0077e {

        /* renamed from: a  reason: collision with root package name */
        private int f5497a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f5498b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f5499c = 1;

        /* renamed from: d  reason: collision with root package name */
        private int f5500d = 1;

        /* renamed from: e  reason: collision with root package name */
        private int f5501e = 0;

        public e a() {
            return new e(this.f5497a, this.f5498b, this.f5499c, this.f5500d, this.f5501e);
        }

        public C0077e b(int i9) {
            this.f5500d = i9;
            return this;
        }

        public C0077e c(int i9) {
            this.f5497a = i9;
            return this;
        }

        public C0077e d(int i9) {
            this.f5498b = i9;
            return this;
        }

        public C0077e e(int i9) {
            this.f5501e = i9;
            return this;
        }

        public C0077e f(int i9) {
            this.f5499c = i9;
            return this;
        }
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e d(Bundle bundle) {
        C0077e c0077e = new C0077e();
        if (bundle.containsKey(c(0))) {
            c0077e.c(bundle.getInt(c(0)));
        }
        if (bundle.containsKey(c(1))) {
            c0077e.d(bundle.getInt(c(1)));
        }
        if (bundle.containsKey(c(2))) {
            c0077e.f(bundle.getInt(c(2)));
        }
        if (bundle.containsKey(c(3))) {
            c0077e.b(bundle.getInt(c(3)));
        }
        if (bundle.containsKey(c(4))) {
            c0077e.e(bundle.getInt(c(4)));
        }
        return c0077e.a();
    }

    @RequiresApi(21)
    public d b() {
        if (this.f5495f == null) {
            this.f5495f = new d();
        }
        return this.f5495f;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f5490a == eVar.f5490a && this.f5491b == eVar.f5491b && this.f5492c == eVar.f5492c && this.f5493d == eVar.f5493d && this.f5494e == eVar.f5494e;
    }

    public int hashCode() {
        return ((((((((527 + this.f5490a) * 31) + this.f5491b) * 31) + this.f5492c) * 31) + this.f5493d) * 31) + this.f5494e;
    }

    private e(int i9, int i10, int i11, int i12, int i13) {
        this.f5490a = i9;
        this.f5491b = i10;
        this.f5492c = i11;
        this.f5493d = i12;
        this.f5494e = i13;
    }
}
