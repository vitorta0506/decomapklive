package com.google.android.exoplayer2.drm;

import a2.s1;
import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public interface c0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f5790a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5791b;

        /* renamed from: c  reason: collision with root package name */
        private final int f5792c;

        public a(byte[] bArr, String str, int i9) {
            this.f5790a = bArr;
            this.f5791b = str;
            this.f5792c = i9;
        }

        public byte[] a() {
            return this.f5790a;
        }

        public String b() {
            return this.f5791b;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f5793a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f5794b;

        public b(int i9, byte[] bArr) {
            this.f5793a = i9;
            this.f5794b = bArr;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(c0 c0Var, @Nullable byte[] bArr, int i9, int i10, @Nullable byte[] bArr2);
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(c0 c0Var, byte[] bArr, long j10);
    }

    /* loaded from: classes.dex */
    public interface e {
        void a(c0 c0Var, byte[] bArr, List<b> list, boolean z10);
    }

    /* loaded from: classes.dex */
    public interface f {
        c0 a(UUID uuid);
    }

    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f5795a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5796b;

        public g(byte[] bArr, String str) {
            this.f5795a = bArr;
            this.f5796b = str;
        }

        public byte[] a() {
            return this.f5795a;
        }

        public String b() {
            return this.f5796b;
        }
    }

    Map<String, String> a(byte[] bArr);

    g b();

    void c(byte[] bArr, s1 s1Var);

    byte[] d() throws MediaDrmException;

    void e(byte[] bArr, byte[] bArr2);

    void f(byte[] bArr) throws DeniedByServerException;

    int g();

    b2.b h(byte[] bArr) throws MediaCryptoException;

    boolean i(byte[] bArr, String str);

    void j(byte[] bArr);

    @Nullable
    byte[] k(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    a l(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i9, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException;

    void release();

    void setOnEventListener(@Nullable c cVar);

    void setOnExpirationUpdateListener(@Nullable d dVar);

    void setOnKeyStatusChangeListener(@Nullable e eVar);
}
