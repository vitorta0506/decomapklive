package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import java.io.IOException;
/* loaded from: classes.dex */
public final class ExoPlaybackException extends PlaybackException {
    public static final h.a<ExoPlaybackException> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.p
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return ExoPlaybackException.a(bundle);
        }
    };
    private static final int FIELD_IS_RECOVERABLE = 1006;
    private static final int FIELD_RENDERER_FORMAT = 1004;
    private static final int FIELD_RENDERER_FORMAT_SUPPORT = 1005;
    private static final int FIELD_RENDERER_INDEX = 1003;
    private static final int FIELD_RENDERER_NAME = 1002;
    private static final int FIELD_TYPE = 1001;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;
    @Nullable
    public final v2.o mediaPeriodId;
    @Nullable
    public final k1 rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;
    @Nullable
    public final String rendererName;
    public final int type;

    private ExoPlaybackException(int i9, Throwable th2, int i10) {
        this(i9, th2, null, i10, null, -1, null, 4, false);
    }

    public static /* synthetic */ ExoPlaybackException a(Bundle bundle) {
        return new ExoPlaybackException(bundle);
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, null, str, 1001, null, -1, null, 4, false);
    }

    public static ExoPlaybackException createForRenderer(Throwable th2, String str, int i9, @Nullable k1 k1Var, int i10, boolean z10, int i11) {
        return new ExoPlaybackException(1, th2, null, i11, str, i9, k1Var, k1Var == null ? 4 : i10, z10);
    }

    public static ExoPlaybackException createForSource(IOException iOException, int i9) {
        return new ExoPlaybackException(0, iOException, i9);
    }

    @Deprecated
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return createForUnexpected(runtimeException, 1000);
    }

    private static String deriveMessage(int i9, @Nullable String str, @Nullable String str2, int i10, @Nullable k1 k1Var, int i11) {
        String str3;
        if (i9 == 0) {
            str3 = "Source error";
        } else if (i9 != 1) {
            str3 = i9 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i10 + ", format=" + k1Var + ", format_supported=" + com.google.android.exoplayer2.util.l0.R(i11);
        }
        if (TextUtils.isEmpty(str)) {
            return str3;
        }
        return str3 + ": " + str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckResult
    public ExoPlaybackException copyWithMediaPeriodId(@Nullable v2.o oVar) {
        return new ExoPlaybackException((String) com.google.android.exoplayer2.util.l0.j(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, oVar, this.timestampMs, this.isRecoverable);
    }

    @Override // com.google.android.exoplayer2.PlaybackException
    public boolean errorInfoEquals(@Nullable PlaybackException playbackException) {
        if (super.errorInfoEquals(playbackException)) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) com.google.android.exoplayer2.util.l0.j(playbackException);
            return this.type == exoPlaybackException.type && com.google.android.exoplayer2.util.l0.c(this.rendererName, exoPlaybackException.rendererName) && this.rendererIndex == exoPlaybackException.rendererIndex && com.google.android.exoplayer2.util.l0.c(this.rendererFormat, exoPlaybackException.rendererFormat) && this.rendererFormatSupport == exoPlaybackException.rendererFormatSupport && com.google.android.exoplayer2.util.l0.c(this.mediaPeriodId, exoPlaybackException.mediaPeriodId) && this.isRecoverable == exoPlaybackException.isRecoverable;
        }
        return false;
    }

    public Exception getRendererException() {
        com.google.android.exoplayer2.util.a.f(this.type == 1);
        return (Exception) com.google.android.exoplayer2.util.a.e(getCause());
    }

    public IOException getSourceException() {
        com.google.android.exoplayer2.util.a.f(this.type == 0);
        return (IOException) com.google.android.exoplayer2.util.a.e(getCause());
    }

    public RuntimeException getUnexpectedException() {
        com.google.android.exoplayer2.util.a.f(this.type == 2);
        return (RuntimeException) com.google.android.exoplayer2.util.a.e(getCause());
    }

    @Override // com.google.android.exoplayer2.PlaybackException
    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putInt(PlaybackException.keyForField(1001), this.type);
        bundle.putString(PlaybackException.keyForField(1002), this.rendererName);
        bundle.putInt(PlaybackException.keyForField(1003), this.rendererIndex);
        if (this.rendererFormat != null) {
            bundle.putBundle(PlaybackException.keyForField(1004), this.rendererFormat.j());
        }
        bundle.putInt(PlaybackException.keyForField(1005), this.rendererFormatSupport);
        bundle.putBoolean(PlaybackException.keyForField(1006), this.isRecoverable);
        return bundle;
    }

    private ExoPlaybackException(int i9, @Nullable Throwable th2, @Nullable String str, int i10, @Nullable String str2, int i11, @Nullable k1 k1Var, int i12, boolean z10) {
        this(deriveMessage(i9, str, str2, i11, k1Var, i12), th2, i10, i9, str2, i11, k1Var, i12, null, SystemClock.elapsedRealtime(), z10);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException, int i9) {
        return new ExoPlaybackException(2, runtimeException, i9);
    }

    private ExoPlaybackException(Bundle bundle) {
        super(bundle);
        this.type = bundle.getInt(PlaybackException.keyForField(1001), 2);
        this.rendererName = bundle.getString(PlaybackException.keyForField(1002));
        this.rendererIndex = bundle.getInt(PlaybackException.keyForField(1003), -1);
        Bundle bundle2 = bundle.getBundle(PlaybackException.keyForField(1004));
        this.rendererFormat = bundle2 == null ? null : k1.H.a(bundle2);
        this.rendererFormatSupport = bundle.getInt(PlaybackException.keyForField(1005), 4);
        this.isRecoverable = bundle.getBoolean(PlaybackException.keyForField(1006), false);
        this.mediaPeriodId = null;
    }

    private ExoPlaybackException(String str, @Nullable Throwable th2, int i9, int i10, @Nullable String str2, int i11, @Nullable k1 k1Var, int i12, @Nullable v2.o oVar, long j10, boolean z10) {
        super(str, th2, i9, j10);
        boolean z11 = false;
        com.google.android.exoplayer2.util.a.a(!z10 || i10 == 1);
        com.google.android.exoplayer2.util.a.a((th2 != null || i10 == 3) ? true : true);
        this.type = i10;
        this.rendererName = str2;
        this.rendererIndex = i11;
        this.rendererFormat = k1Var;
        this.rendererFormatSupport = i12;
        this.mediaPeriodId = oVar;
        this.isRecoverable = z10;
    }
}
