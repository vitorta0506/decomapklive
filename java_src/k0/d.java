package k0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import j0.n;
import j0.o;
import j0.r;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
@RequiresApi(29)
/* loaded from: classes.dex */
public final class d<DataT> implements n<Uri, DataT> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f53324a;

    /* renamed from: b  reason: collision with root package name */
    private final n<File, DataT> f53325b;

    /* renamed from: c  reason: collision with root package name */
    private final n<Uri, DataT> f53326c;

    /* renamed from: d  reason: collision with root package name */
    private final Class<DataT> f53327d;

    /* loaded from: classes.dex */
    private static abstract class a<DataT> implements o<Uri, DataT> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f53328a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<DataT> f53329b;

        a(Context context, Class<DataT> cls) {
            this.f53328a = context;
            this.f53329b = cls;
        }

        @Override // j0.o
        public final void a() {
        }

        @Override // j0.o
        @NonNull
        public final n<Uri, DataT> c(@NonNull r rVar) {
            return new d(this.f53328a, rVar.d(File.class, this.f53329b), rVar.d(Uri.class, this.f53329b), this.f53329b);
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0547d<DataT> implements com.bumptech.glide.load.data.d<DataT> {

        /* renamed from: k  reason: collision with root package name */
        private static final String[] f53330k = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final Context f53331a;

        /* renamed from: b  reason: collision with root package name */
        private final n<File, DataT> f53332b;

        /* renamed from: c  reason: collision with root package name */
        private final n<Uri, DataT> f53333c;

        /* renamed from: d  reason: collision with root package name */
        private final Uri f53334d;

        /* renamed from: e  reason: collision with root package name */
        private final int f53335e;

        /* renamed from: f  reason: collision with root package name */
        private final int f53336f;

        /* renamed from: g  reason: collision with root package name */
        private final e0.e f53337g;

        /* renamed from: h  reason: collision with root package name */
        private final Class<DataT> f53338h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f53339i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private volatile com.bumptech.glide.load.data.d<DataT> f53340j;

        C0547d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Uri uri, int i9, int i10, e0.e eVar, Class<DataT> cls) {
            this.f53331a = context.getApplicationContext();
            this.f53332b = nVar;
            this.f53333c = nVar2;
            this.f53334d = uri;
            this.f53335e = i9;
            this.f53336f = i10;
            this.f53337g = eVar;
            this.f53338h = cls;
        }

        @Nullable
        private n.a<DataT> c() throws FileNotFoundException {
            if (Environment.isExternalStorageLegacy()) {
                return this.f53332b.a(h(this.f53334d), this.f53335e, this.f53336f, this.f53337g);
            }
            return this.f53333c.a(g() ? MediaStore.setRequireOriginal(this.f53334d) : this.f53334d, this.f53335e, this.f53336f, this.f53337g);
        }

        @Nullable
        private com.bumptech.glide.load.data.d<DataT> f() throws FileNotFoundException {
            n.a<DataT> c10 = c();
            if (c10 != null) {
                return c10.f52920c;
            }
            return null;
        }

        private boolean g() {
            return this.f53331a.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        @NonNull
        private File h(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor query = this.f53331a.getContentResolver().query(uri, f53330k, null, null, null);
                if (query != null && query.moveToFirst()) {
                    String string = query.getString(query.getColumnIndexOrThrow("_data"));
                    if (!TextUtils.isEmpty(string)) {
                        File file = new File(string);
                        query.close();
                        return file;
                    }
                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th2) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th2;
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<DataT> a() {
            return this.f53338h;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            com.bumptech.glide.load.data.d<DataT> dVar = this.f53340j;
            if (dVar != null) {
                dVar.b();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.f53339i = true;
            com.bumptech.glide.load.data.d<DataT> dVar = this.f53340j;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void e(@NonNull Priority priority, @NonNull d.a<? super DataT> aVar) {
            try {
                com.bumptech.glide.load.data.d<DataT> f10 = f();
                if (f10 == null) {
                    aVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.f53334d));
                    return;
                }
                this.f53340j = f10;
                if (this.f53339i) {
                    cancel();
                } else {
                    f10.e(priority, aVar);
                }
            } catch (FileNotFoundException e10) {
                aVar.c(e10);
            }
        }
    }

    d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Class<DataT> cls) {
        this.f53324a = context.getApplicationContext();
        this.f53325b = nVar;
        this.f53326c = nVar2;
        this.f53327d = cls;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<DataT> a(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(uri), new C0547d(this.f53324a, this.f53325b, this.f53326c, uri, i9, i10, eVar, this.f53327d));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && f0.b.b(uri);
    }
}
