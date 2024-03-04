package j0;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import j0.n;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class d implements n<File, ByteBuffer> {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements com.bumptech.glide.load.data.d<ByteBuffer> {

        /* renamed from: a  reason: collision with root package name */
        private final File f52878a;

        a(File file) {
            this.f52878a = file;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
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
        public void e(@NonNull Priority priority, @NonNull d.a<? super ByteBuffer> aVar) {
            try {
                aVar.f(v0.a.a(this.f52878a));
            } catch (IOException e10) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e10);
                }
                aVar.c(e10);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b implements o<File, ByteBuffer> {
        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<File, ByteBuffer> c(@NonNull r rVar) {
            return new d();
        }
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<ByteBuffer> a(@NonNull File file, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(file), new a(file));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull File file) {
        return true;
    }
}
