package com.bumptech.glide.load.engine;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
/* loaded from: classes.dex */
interface f {

    /* loaded from: classes.dex */
    public interface a {
        void b(e0.b bVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource);

        void c(e0.b bVar, @Nullable Object obj, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource, e0.b bVar2);

        void f();
    }

    boolean a();

    void cancel();
}
