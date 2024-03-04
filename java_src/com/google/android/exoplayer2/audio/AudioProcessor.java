package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f5368a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes.dex */
    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f5369e = new a(-1, -1, -1);

        /* renamed from: a  reason: collision with root package name */
        public final int f5370a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5371b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5372c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5373d;

        public a(int i9, int i10, int i11) {
            this.f5370a = i9;
            this.f5371b = i10;
            this.f5372c = i11;
            this.f5373d = l0.o0(i11) ? l0.Y(i11, i10) : -1;
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f5370a + ", channelCount=" + this.f5371b + ", encoding=" + this.f5372c + ']';
        }
    }

    ByteBuffer a();

    void b(ByteBuffer byteBuffer);

    boolean c();

    a d(a aVar) throws UnhandledAudioFormatException;

    void e();

    void flush();

    boolean isActive();

    void reset();
}
