package j0;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.facebook.share.internal.ShareInternalUtility;
import j0.n;
import java.io.InputStream;
/* loaded from: classes.dex */
public class a<Data> implements n<Uri, Data> {

    /* renamed from: c  reason: collision with root package name */
    private static final int f52868c = 22;

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f52869a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0531a<Data> f52870b;

    /* renamed from: j0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0531a<Data> {
        com.bumptech.glide.load.data.d<Data> b(AssetManager assetManager, String str);
    }

    /* loaded from: classes.dex */
    public static class b implements o<Uri, AssetFileDescriptor>, InterfaceC0531a<AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final AssetManager f52871a;

        public b(AssetManager assetManager) {
            this.f52871a = assetManager;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.a.InterfaceC0531a
        public com.bumptech.glide.load.data.d<AssetFileDescriptor> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.h(assetManager, str);
        }

        @Override // j0.o
        @NonNull
        public n<Uri, AssetFileDescriptor> c(r rVar) {
            return new a(this.f52871a, this);
        }
    }

    /* loaded from: classes.dex */
    public static class c implements o<Uri, InputStream>, InterfaceC0531a<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final AssetManager f52872a;

        public c(AssetManager assetManager) {
            this.f52872a = assetManager;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.a.InterfaceC0531a
        public com.bumptech.glide.load.data.d<InputStream> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.m(assetManager, str);
        }

        @Override // j0.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new a(this.f52872a, this);
        }
    }

    public a(AssetManager assetManager, InterfaceC0531a<Data> interfaceC0531a) {
        this.f52869a = assetManager;
        this.f52870b = interfaceC0531a;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<Data> a(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(uri), this.f52870b.b(this.f52869a, uri.toString().substring(f52868c)));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull Uri uri) {
        return ShareInternalUtility.STAGING_PARAM.equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }
}
