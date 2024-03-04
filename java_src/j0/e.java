package j0;

import android.util.Base64;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import j0.n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class e<Model, Data> implements n<Model, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Data> f52879a;

    /* loaded from: classes.dex */
    public interface a<Data> {
        Class<Data> a();

        void b(Data data) throws IOException;

        Data decode(String str) throws IllegalArgumentException;
    }

    /* loaded from: classes.dex */
    private static final class b<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final String f52880a;

        /* renamed from: b  reason: collision with root package name */
        private final a<Data> f52881b;

        /* renamed from: c  reason: collision with root package name */
        private Data f52882c;

        b(String str, a<Data> aVar) {
            this.f52880a = str;
            this.f52881b = aVar;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f52881b.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            try {
                this.f52881b.b(this.f52882c);
            } catch (IOException unused) {
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

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.d
        public void e(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            try {
                Data decode = this.f52881b.decode(this.f52880a);
                this.f52882c = decode;
                aVar.f(decode);
            } catch (IllegalArgumentException e10) {
                aVar.c(e10);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class c<Model> implements o<Model, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final a<InputStream> f52883a = new a();

        /* loaded from: classes.dex */
        class a implements a<InputStream> {
            a() {
            }

            @Override // j0.e.a
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // j0.e.a
            /* renamed from: c */
            public void b(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // j0.e.a
            /* renamed from: d */
            public InputStream decode(String str) {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf != -1) {
                        if (str.substring(0, indexOf).endsWith(";base64")) {
                            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                        }
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Model, InputStream> c(@NonNull r rVar) {
            return new e(this.f52883a);
        }
    }

    public e(a<Data> aVar) {
        this.f52879a = aVar;
    }

    @Override // j0.n
    public n.a<Data> a(@NonNull Model model, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(model), new b(model.toString(), this.f52879a));
    }

    @Override // j0.n
    public boolean b(@NonNull Model model) {
        return model.toString().startsWith("data:image");
    }
}
