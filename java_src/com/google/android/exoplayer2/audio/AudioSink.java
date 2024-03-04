package com.google.android.exoplayer2.audio;

import a2.s1;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.k2;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface AudioSink {

    /* loaded from: classes.dex */
    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final k1 format;
        public final boolean isRecoverable;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InitializationException(int r3, int r4, int r5, int r6, com.google.android.exoplayer2.k1 r7, boolean r8, @androidx.annotation.Nullable java.lang.Exception r9) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "AudioTrack init failed "
                r0.append(r1)
                r0.append(r3)
                java.lang.String r1 = " "
                r0.append(r1)
                java.lang.String r1 = "Config("
                r0.append(r1)
                r0.append(r4)
                java.lang.String r4 = ", "
                r0.append(r4)
                r0.append(r5)
                r0.append(r4)
                r0.append(r6)
                java.lang.String r4 = ")"
                r0.append(r4)
                if (r8 == 0) goto L32
                java.lang.String r4 = " (recoverable)"
                goto L34
            L32:
                java.lang.String r4 = ""
            L34:
                r0.append(r4)
                java.lang.String r4 = r0.toString()
                r2.<init>(r4, r9)
                r2.audioTrackState = r3
                r2.isRecoverable = r8
                r2.format = r7
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioSink.InitializationException.<init>(int, int, int, int, com.google.android.exoplayer2.k1, boolean, java.lang.Exception):void");
        }
    }

    /* loaded from: classes.dex */
    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j10, long j11) {
            super("Unexpected audio track timestamp discontinuity: expected " + j11 + ", got " + j10);
            this.actualPresentationTimeUs = j10;
            this.expectedPresentationTimeUs = j11;
        }
    }

    /* loaded from: classes.dex */
    public static final class WriteException extends Exception {
        public final int errorCode;
        public final k1 format;
        public final boolean isRecoverable;

        public WriteException(int i9, k1 k1Var, boolean z10) {
            super("AudioTrack write failed: " + i9);
            this.isRecoverable = z10;
            this.errorCode = i9;
            this.format = k1Var;
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(boolean z10);

        void b(Exception exc);

        void c(long j10);

        void d();

        void e(int i9, long j10, long j11);

        void f();

        void g();
    }

    boolean a(k1 k1Var);

    k2 b();

    boolean c();

    void d(k2 k2Var);

    boolean e();

    void f(int i9);

    void flush();

    void g();

    void h(e eVar);

    boolean i(ByteBuffer byteBuffer, long j10, int i9) throws InitializationException, WriteException;

    void j(a aVar);

    int k(k1 k1Var);

    void l();

    void m(u uVar);

    void n() throws WriteException;

    void o(@Nullable s1 s1Var);

    long p(boolean z10);

    void pause();

    void play();

    void q();

    void r();

    void reset();

    void s(k1 k1Var, int i9, @Nullable int[] iArr) throws ConfigurationException;

    void setVolume(float f10);

    void t(boolean z10);

    /* loaded from: classes.dex */
    public static final class ConfigurationException extends Exception {
        public final k1 format;

        public ConfigurationException(Throwable th2, k1 k1Var) {
            super(th2);
            this.format = k1Var;
        }

        public ConfigurationException(String str, k1 k1Var) {
            super(str);
            this.format = k1Var;
        }
    }
}
