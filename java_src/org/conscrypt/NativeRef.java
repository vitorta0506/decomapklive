package org.conscrypt;
/* loaded from: classes7.dex */
abstract class NativeRef {

    /* renamed from: a  reason: collision with root package name */
    final long f56298a;

    /* loaded from: classes7.dex */
    static final class EC_GROUP extends NativeRef {
        /* JADX INFO: Access modifiers changed from: package-private */
        public EC_GROUP(long j10) {
            super(j10);
        }

        @Override // org.conscrypt.NativeRef
        void a(long j10) {
            NativeCrypto.EC_GROUP_clear_free(j10);
        }
    }

    /* loaded from: classes7.dex */
    static final class EC_POINT extends NativeRef {
        /* JADX INFO: Access modifiers changed from: package-private */
        public EC_POINT(long j10) {
            super(j10);
        }

        @Override // org.conscrypt.NativeRef
        void a(long j10) {
            NativeCrypto.EC_POINT_clear_free(j10);
        }
    }

    /* loaded from: classes7.dex */
    static final class EVP_PKEY extends NativeRef {
        /* JADX INFO: Access modifiers changed from: package-private */
        public EVP_PKEY(long j10) {
            super(j10);
        }

        @Override // org.conscrypt.NativeRef
        void a(long j10) {
            NativeCrypto.EVP_PKEY_free(j10);
        }
    }

    NativeRef(long j10) {
        if (j10 != 0) {
            this.f56298a = j10;
            return;
        }
        throw new NullPointerException("address == 0");
    }

    abstract void a(long j10);

    public boolean equals(Object obj) {
        return (obj instanceof NativeRef) && ((NativeRef) obj).f56298a == this.f56298a;
    }

    protected void finalize() throws Throwable {
        try {
            long j10 = this.f56298a;
            if (j10 != 0) {
                a(j10);
            }
        } finally {
            super.finalize();
        }
    }

    public int hashCode() {
        long j10 = this.f56298a;
        return (int) (j10 ^ (j10 >>> 32));
    }
}
