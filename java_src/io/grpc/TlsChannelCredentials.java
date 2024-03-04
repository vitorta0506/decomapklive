package io.grpc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.TrustManager;
/* loaded from: classes5.dex */
public final class TlsChannelCredentials extends e {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f41728a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f41729b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f41730c;

    /* renamed from: d  reason: collision with root package name */
    private final String f41731d;

    /* renamed from: e  reason: collision with root package name */
    private final List<KeyManager> f41732e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f41733f;

    /* renamed from: g  reason: collision with root package name */
    private final List<TrustManager> f41734g;

    /* loaded from: classes5.dex */
    public enum Feature {
        FAKE,
        MTLS,
        CUSTOM_MANAGERS
    }

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f41735a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f41736b;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f41737c;

        /* renamed from: d  reason: collision with root package name */
        private String f41738d;

        /* renamed from: e  reason: collision with root package name */
        private List<KeyManager> f41739e;

        /* renamed from: f  reason: collision with root package name */
        private byte[] f41740f;

        /* renamed from: g  reason: collision with root package name */
        private List<TrustManager> f41741g;

        private b() {
        }

        private void i() {
            this.f41736b = null;
            this.f41737c = null;
            this.f41738d = null;
            this.f41739e = null;
        }

        public e h() {
            return new TlsChannelCredentials(this);
        }

        public b j(KeyManager... keyManagerArr) {
            List<KeyManager> unmodifiableList = Collections.unmodifiableList(new ArrayList(Arrays.asList(keyManagerArr)));
            i();
            this.f41739e = unmodifiableList;
            return this;
        }
    }

    TlsChannelCredentials(b bVar) {
        this.f41728a = bVar.f41735a;
        this.f41729b = bVar.f41736b;
        this.f41730c = bVar.f41737c;
        this.f41731d = bVar.f41738d;
        this.f41732e = bVar.f41739e;
        this.f41733f = bVar.f41740f;
        this.f41734g = bVar.f41741g;
    }

    public static e a() {
        return i().h();
    }

    public static b i() {
        return new b();
    }

    private static void j(Set<Feature> set, Set<Feature> set2, Feature feature) {
        if (set.contains(feature)) {
            return;
        }
        set2.add(feature);
    }

    public byte[] b() {
        byte[] bArr = this.f41729b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public List<KeyManager> c() {
        return this.f41732e;
    }

    public byte[] d() {
        byte[] bArr = this.f41730c;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public String e() {
        return this.f41731d;
    }

    public byte[] f() {
        byte[] bArr = this.f41733f;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public List<TrustManager> g() {
        return this.f41734g;
    }

    public Set<Feature> h(Set<Feature> set) {
        EnumSet noneOf = EnumSet.noneOf(Feature.class);
        if (this.f41728a) {
            j(set, noneOf, Feature.FAKE);
        }
        if (this.f41733f != null || this.f41730c != null || this.f41732e != null) {
            j(set, noneOf, Feature.MTLS);
        }
        if (this.f41732e != null || this.f41734g != null) {
            j(set, noneOf, Feature.CUSTOM_MANAGERS);
        }
        return Collections.unmodifiableSet(noneOf);
    }
}
