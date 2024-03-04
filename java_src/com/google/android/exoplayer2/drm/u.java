package com.google.android.exoplayer2.drm;

import a2.s1;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.k1;
/* loaded from: classes.dex */
public interface u {

    /* renamed from: a  reason: collision with root package name */
    public static final u f5847a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final u f5848b;

    /* loaded from: classes.dex */
    class a implements u {
        a() {
        }

        @Override // com.google.android.exoplayer2.drm.u
        public int a(k1 k1Var) {
            return k1Var.f6114o != null ? 1 : 0;
        }

        @Override // com.google.android.exoplayer2.drm.u
        public void b(Looper looper, s1 s1Var) {
        }

        @Override // com.google.android.exoplayer2.drm.u
        @Nullable
        public DrmSession c(@Nullable s.a aVar, k1 k1Var) {
            if (k1Var.f6114o == null) {
                return null;
            }
            return new a0(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ b d(s.a aVar, k1 k1Var) {
            return t.a(this, aVar, k1Var);
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ void prepare() {
            t.b(this);
        }

        @Override // com.google.android.exoplayer2.drm.u
        public /* synthetic */ void release() {
            t.c(this);
        }
    }

    /* loaded from: classes.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f5849a = new b() { // from class: com.google.android.exoplayer2.drm.v
            @Override // com.google.android.exoplayer2.drm.u.b
            public final void release() {
                w.a();
            }
        };

        void release();
    }

    static {
        a aVar = new a();
        f5847a = aVar;
        f5848b = aVar;
    }

    int a(k1 k1Var);

    void b(Looper looper, s1 s1Var);

    @Nullable
    DrmSession c(@Nullable s.a aVar, k1 k1Var);

    b d(@Nullable s.a aVar, k1 k1Var);

    void prepare();

    void release();
}
