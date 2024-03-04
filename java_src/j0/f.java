package j0;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import j0.n;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class f<Data> implements n<File, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final d<Data> f52885a;

    /* loaded from: classes.dex */
    public static class a<Data> implements o<File, Data> {

        /* renamed from: a  reason: collision with root package name */
        private final d<Data> f52886a;

        public a(d<Data> dVar) {
            this.f52886a = dVar;
        }

        @Override // j0.o
        public final void a() {
        }

        @Override // j0.o
        @NonNull
        public final n<File, Data> c(@NonNull r rVar) {
            return new f(this.f52886a);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends a<ParcelFileDescriptor> {

        /* loaded from: classes.dex */
        class a implements d<ParcelFileDescriptor> {
            a() {
            }

            @Override // j0.f.d
            public Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override // j0.f.d
            /* renamed from: d */
            public void b(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }

            @Override // j0.f.d
            /* renamed from: e */
            public ParcelFileDescriptor c(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public b() {
            super(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final File f52887a;

        /* renamed from: b  reason: collision with root package name */
        private final d<Data> f52888b;

        /* renamed from: c  reason: collision with root package name */
        private Data f52889c;

        c(File file, d<Data> dVar) {
            this.f52887a = file;
            this.f52888b = dVar;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f52888b.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            Data data = this.f52889c;
            if (data != null) {
                try {
                    this.f52888b.b(data);
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

        /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.d
        public void e(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            try {
                Data c10 = this.f52888b.c(this.f52887a);
                this.f52889c = c10;
                aVar.f(c10);
            } catch (FileNotFoundException e10) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e10);
                }
                aVar.c(e10);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface d<Data> {
        Class<Data> a();

        void b(Data data) throws IOException;

        Data c(File file) throws FileNotFoundException;
    }

    /* loaded from: classes.dex */
    public static class e extends a<InputStream> {

        /* loaded from: classes.dex */
        class a implements d<InputStream> {
            a() {
            }

            @Override // j0.f.d
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // j0.f.d
            /* renamed from: d */
            public void b(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // j0.f.d
            /* renamed from: e */
            public InputStream c(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }
        }

        public e() {
            super(new a());
        }
    }

    public f(d<Data> dVar) {
        this.f52885a = dVar;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<Data> a(@NonNull File file, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(file), new c(file, this.f52885a));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull File file) {
        return true;
    }
}
