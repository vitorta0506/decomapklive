package com.google.android.exoplayer2.upstream;

import java.io.IOException;
import v2.j;
import v2.m;
/* loaded from: classes2.dex */
public interface b {

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final j f6919a;

        /* renamed from: b  reason: collision with root package name */
        public final m f6920b;

        /* renamed from: c  reason: collision with root package name */
        public final IOException f6921c;

        /* renamed from: d  reason: collision with root package name */
        public final int f6922d;

        public a(j jVar, m mVar, IOException iOException, int i9) {
            this.f6919a = jVar;
            this.f6920b = mVar;
            this.f6921c = iOException;
            this.f6922d = i9;
        }
    }

    long a(a aVar);

    int b(int i9);

    void c(long j10);
}
