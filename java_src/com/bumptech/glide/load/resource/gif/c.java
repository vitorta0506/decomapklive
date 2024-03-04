package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.u;
import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public class c implements e0.g<GifDrawable> {
    @Override // e0.g
    @NonNull
    public EncodeStrategy b(@NonNull e0.e eVar) {
        return EncodeStrategy.SOURCE;
    }

    @Override // e0.a
    /* renamed from: c */
    public boolean a(@NonNull u<GifDrawable> uVar, @NonNull File file, @NonNull e0.e eVar) {
        try {
            v0.a.f(uVar.get().c(), file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e10);
            }
            return false;
        }
    }
}
