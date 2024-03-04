package j0;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import com.facebook.share.internal.ShareInternalUtility;
import j0.n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class w<Data> implements n<Uri, Data> {

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f52954b = Collections.unmodifiableSet(new HashSet(Arrays.asList(ShareInternalUtility.STAGING_PARAM, "android.resource", "content")));

    /* renamed from: a  reason: collision with root package name */
    private final c<Data> f52955a;

    /* loaded from: classes.dex */
    public static final class a implements o<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f52956a;

        public a(ContentResolver contentResolver) {
            this.f52956a = contentResolver;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.w.c
        public com.bumptech.glide.load.data.d<AssetFileDescriptor> b(Uri uri) {
            return new com.bumptech.glide.load.data.a(this.f52956a, uri);
        }

        @Override // j0.o
        public n<Uri, AssetFileDescriptor> c(r rVar) {
            return new w(this);
        }
    }

    /* loaded from: classes.dex */
    public static class b implements o<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f52957a;

        public b(ContentResolver contentResolver) {
            this.f52957a = contentResolver;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.w.c
        public com.bumptech.glide.load.data.d<ParcelFileDescriptor> b(Uri uri) {
            return new com.bumptech.glide.load.data.i(this.f52957a, uri);
        }

        @Override // j0.o
        @NonNull
        public n<Uri, ParcelFileDescriptor> c(r rVar) {
            return new w(this);
        }
    }

    /* loaded from: classes.dex */
    public interface c<Data> {
        com.bumptech.glide.load.data.d<Data> b(Uri uri);
    }

    /* loaded from: classes.dex */
    public static class d implements o<Uri, InputStream>, c<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f52958a;

        public d(ContentResolver contentResolver) {
            this.f52958a = contentResolver;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.w.c
        public com.bumptech.glide.load.data.d<InputStream> b(Uri uri) {
            return new com.bumptech.glide.load.data.n(this.f52958a, uri);
        }

        @Override // j0.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new w(this);
        }
    }

    public w(c<Data> cVar) {
        this.f52955a = cVar;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<Data> a(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(uri), this.f52955a.b(uri));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull Uri uri) {
        return f52954b.contains(uri.getScheme());
    }
}
