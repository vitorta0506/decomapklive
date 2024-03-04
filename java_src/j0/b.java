package j0;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import j0.n;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class b<Data> implements n<byte[], Data> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0533b<Data> f52873a;

    /* loaded from: classes.dex */
    public static class a implements o<byte[], ByteBuffer> {

        /* renamed from: j0.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0532a implements InterfaceC0533b<ByteBuffer> {
            C0532a() {
            }

            @Override // j0.b.InterfaceC0533b
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override // j0.b.InterfaceC0533b
            /* renamed from: c */
            public ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<byte[], ByteBuffer> c(@NonNull r rVar) {
            return new b(new C0532a());
        }
    }

    /* renamed from: j0.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0533b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f52875a;

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC0533b<Data> f52876b;

        c(byte[] bArr, InterfaceC0533b<Data> interfaceC0533b) {
            this.f52875a = bArr;
            this.f52876b = interfaceC0533b;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f52876b.a();
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
        public void e(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            aVar.f((Data) this.f52876b.b(this.f52875a));
        }
    }

    /* loaded from: classes.dex */
    public static class d implements o<byte[], InputStream> {

        /* loaded from: classes.dex */
        class a implements InterfaceC0533b<InputStream> {
            a() {
            }

            @Override // j0.b.InterfaceC0533b
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // j0.b.InterfaceC0533b
            /* renamed from: c */
            public InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<byte[], InputStream> c(@NonNull r rVar) {
            return new b(new a());
        }
    }

    public b(InterfaceC0533b<Data> interfaceC0533b) {
        this.f52873a = interfaceC0533b;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<Data> a(@NonNull byte[] bArr, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(bArr), new c(bArr, this.f52873a));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull byte[] bArr) {
        return true;
    }
}
