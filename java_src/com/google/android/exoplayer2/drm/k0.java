package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.c0;
import java.util.UUID;
/* loaded from: classes.dex */
public interface k0 {
    byte[] a(UUID uuid, c0.g gVar) throws MediaDrmCallbackException;

    byte[] b(UUID uuid, c0.a aVar) throws MediaDrmCallbackException;
}
