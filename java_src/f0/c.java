package f0;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class c implements com.bumptech.glide.load.data.d<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f39567a;

    /* renamed from: b  reason: collision with root package name */
    private final e f39568b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f39569c;

    /* loaded from: classes.dex */
    static class a implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f39570b = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f39571a;

        a(ContentResolver contentResolver) {
            this.f39571a = contentResolver;
        }

        @Override // f0.d
        public Cursor a(Uri uri) {
            return this.f39571a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f39570b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* loaded from: classes.dex */
    static class b implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f39572b = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f39573a;

        b(ContentResolver contentResolver) {
            this.f39573a = contentResolver;
        }

        @Override // f0.d
        public Cursor a(Uri uri) {
            return this.f39573a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f39572b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    c(Uri uri, e eVar) {
        this.f39567a = uri;
        this.f39568b = eVar;
    }

    private static c c(Context context, Uri uri, d dVar) {
        return new c(uri, new e(com.bumptech.glide.c.c(context).j().g(), dVar, com.bumptech.glide.c.c(context).e(), context.getContentResolver()));
    }

    public static c f(Context context, Uri uri) {
        return c(context, uri, new a(context.getContentResolver()));
    }

    public static c g(Context context, Uri uri) {
        return c(context, uri, new b(context.getContentResolver()));
    }

    private InputStream h() throws FileNotFoundException {
        InputStream d10 = this.f39568b.d(this.f39567a);
        int a10 = d10 != null ? this.f39568b.a(this.f39567a) : -1;
        return a10 != -1 ? new g(d10, a10) : d10;
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        InputStream inputStream = this.f39569c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
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
    public void e(@NonNull Priority priority, @NonNull d.a<? super InputStream> aVar) {
        try {
            InputStream h10 = h();
            this.f39569c = h10;
            aVar.f(h10);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e10);
            }
            aVar.c(e10);
        }
    }
}
