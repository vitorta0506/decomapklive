package j0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import j0.n;
import java.io.File;
import java.io.FileNotFoundException;
/* loaded from: classes.dex */
public final class k implements n<Uri, File> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f52907a;

    /* loaded from: classes.dex */
    public static final class a implements o<Uri, File> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f52908a;

        public a(Context context) {
            this.f52908a = context;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Uri, File> c(r rVar) {
            return new k(this.f52908a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements com.bumptech.glide.load.data.d<File> {

        /* renamed from: c  reason: collision with root package name */
        private static final String[] f52909c = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final Context f52910a;

        /* renamed from: b  reason: collision with root package name */
        private final Uri f52911b;

        b(Context context, Uri uri) {
            this.f52910a = context;
            this.f52911b = uri;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<File> a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void e(@NonNull Priority priority, @NonNull d.a<? super File> aVar) {
            Cursor query = this.f52910a.getContentResolver().query(this.f52911b, f52909c, null, null, null);
            if (query != null) {
                try {
                    r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(r0)) {
                aVar.c(new FileNotFoundException("Failed to find file path for: " + this.f52911b));
                return;
            }
            aVar.f(new File(r0));
        }
    }

    public k(Context context) {
        this.f52907a = context;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<File> a(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(uri), new b(this.f52907a, uri));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull Uri uri) {
        return f0.b.b(uri);
    }
}
