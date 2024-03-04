package j0;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j0.n;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes.dex */
public class u<Data> implements n<String, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final n<Uri, Data> f52950a;

    /* loaded from: classes.dex */
    public static final class a implements o<String, AssetFileDescriptor> {
        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        public n<String, AssetFileDescriptor> c(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* loaded from: classes.dex */
    public static class b implements o<String, ParcelFileDescriptor> {
        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<String, ParcelFileDescriptor> c(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* loaded from: classes.dex */
    public static class c implements o<String, InputStream> {
        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<String, InputStream> c(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, InputStream.class));
        }
    }

    public u(n<Uri, Data> nVar) {
        this.f52950a = nVar;
    }

    @Nullable
    private static Uri e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) == '/') {
            return f(str);
        }
        Uri parse = Uri.parse(str);
        return parse.getScheme() == null ? f(str) : parse;
    }

    private static Uri f(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<Data> a(@NonNull String str, int i9, int i10, @NonNull e0.e eVar) {
        Uri e10 = e(str);
        if (e10 == null || !this.f52950a.b(e10)) {
            return null;
        }
        return this.f52950a.a(e10, i9, i10, eVar);
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull String str) {
        return true;
    }
}
