package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.e9;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    public static final f f5514c = new f(new int[]{2}, 8);

    /* renamed from: d  reason: collision with root package name */
    private static final f f5515d = new f(new int[]{2, 5, 6}, 8);

    /* renamed from: e  reason: collision with root package name */
    private static final ImmutableMap<Integer, Integer> f5516e = new ImmutableMap.b().h(5, 6).h(17, 6).h(7, 6).h(18, 6).h(6, 8).h(8, 8).h(14, 8).d();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f5517a;

    /* renamed from: b  reason: collision with root package name */
    private final int f5518b;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final AudioAttributes f5519a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        @DoNotInline
        public static int[] a() {
            ImmutableList.b builder = ImmutableList.builder();
            e9 it = f.f5516e.keySet().iterator();
            while (it.hasNext()) {
                int intValue = ((Integer) it.next()).intValue();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), f5519a)) {
                    builder.a(Integer.valueOf(intValue));
                }
            }
            builder.a(2);
            return com.google.common.primitives.f.j(builder.j());
        }

        @DoNotInline
        public static int b(int i9, int i10) {
            for (int i11 = 8; i11 > 0; i11--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i9).setSampleRate(i10).setChannelMask(l0.D(i11)).build(), f5519a)) {
                    return i11;
                }
            }
            return 0;
        }
    }

    public f(@Nullable int[] iArr, int i9) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f5517a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f5517a = new int[0];
        }
        this.f5518b = i9;
    }

    private static boolean b() {
        if (l0.f6985a >= 17) {
            String str = l0.f6987c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static f c(Context context) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    static f d(Context context, @Nullable Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return f5515d;
        }
        if (l0.f6985a >= 29 && (l0.r0(context) || l0.m0(context))) {
            return new f(a.a(), 8);
        }
        if (intent != null && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 0) {
            return new f(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return f5514c;
    }

    private static int e(int i9) {
        int i10 = l0.f6985a;
        if (i10 <= 28) {
            if (i9 == 7) {
                i9 = 8;
            } else if (i9 == 3 || i9 == 4 || i9 == 5) {
                i9 = 6;
            }
        }
        if (i10 <= 26 && "fugu".equals(l0.f6986b) && i9 == 1) {
            i9 = 2;
        }
        return l0.D(i9);
    }

    private static int g(int i9, int i10) {
        if (l0.f6985a >= 29) {
            return a.b(i9, i10);
        }
        return ((Integer) com.google.android.exoplayer2.util.a.e(f5516e.getOrDefault(Integer.valueOf(i9), 0))).intValue();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return Arrays.equals(this.f5517a, fVar.f5517a) && this.f5518b == fVar.f5518b;
        }
        return false;
    }

    @Nullable
    public Pair<Integer, Integer> f(k1 k1Var) {
        int d10 = com.google.android.exoplayer2.util.v.d((String) com.google.android.exoplayer2.util.a.e(k1Var.f6111l), k1Var.f6108i);
        if (f5516e.containsKey(Integer.valueOf(d10))) {
            if (d10 == 18 && !i(18)) {
                d10 = 6;
            } else if (d10 == 8 && !i(8)) {
                d10 = 7;
            }
            if (i(d10)) {
                int i9 = k1Var.f6124y;
                if (i9 != -1 && d10 != 18) {
                    if (i9 > this.f5518b) {
                        return null;
                    }
                } else {
                    int i10 = k1Var.f6125z;
                    if (i10 == -1) {
                        i10 = 48000;
                    }
                    i9 = g(d10, i10);
                }
                int e10 = e(i9);
                if (e10 == 0) {
                    return null;
                }
                return Pair.create(Integer.valueOf(d10), Integer.valueOf(e10));
            }
            return null;
        }
        return null;
    }

    public boolean h(k1 k1Var) {
        return f(k1Var) != null;
    }

    public int hashCode() {
        return this.f5518b + (Arrays.hashCode(this.f5517a) * 31);
    }

    public boolean i(int i9) {
        return Arrays.binarySearch(this.f5517a, i9) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f5518b + ", supportedEncodings=" + Arrays.toString(this.f5517a) + "]";
    }
}
