package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
/* loaded from: classes.dex */
public final class y {

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(18)
    /* loaded from: classes.dex */
    public static final class a {
        @DoNotInline
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof DeniedByServerException;
        }

        @DoNotInline
        public static boolean b(@Nullable Throwable th2) {
            return th2 instanceof NotProvisionedException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static final class b {
        @DoNotInline
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof MediaDrm.MediaDrmStateException;
        }

        @DoNotInline
        public static int b(Throwable th2) {
            return com.google.android.exoplayer2.util.l0.P(com.google.android.exoplayer2.util.l0.Q(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static final class c {
        @DoNotInline
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof MediaDrmResetException;
        }
    }

    public static int a(Exception exc, int i9) {
        int i10 = com.google.android.exoplayer2.util.l0.f6985a;
        if (i10 >= 21 && b.a(exc)) {
            return b.b(exc);
        }
        if (i10 < 23 || !c.a(exc)) {
            if (i10 < 18 || !a.b(exc)) {
                if (i10 < 18 || !a.a(exc)) {
                    if (exc instanceof UnsupportedDrmException) {
                        return 6001;
                    }
                    if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
                        return 6003;
                    }
                    if (exc instanceof KeysExpiredException) {
                        return 6008;
                    }
                    if (i9 == 1) {
                        return 6006;
                    }
                    if (i9 == 2) {
                        return 6004;
                    }
                    if (i9 == 3) {
                        return 6002;
                    }
                    throw new IllegalArgumentException();
                }
                return 6007;
            }
            return 6002;
        }
        return 6006;
    }
}
