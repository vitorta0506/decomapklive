package m0;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.u;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import v0.k;
@RequiresApi(28)
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f54401a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.b f54402b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0563a implements u<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        private final AnimatedImageDrawable f54403a;

        C0563a(AnimatedImageDrawable animatedImageDrawable) {
            this.f54403a = animatedImageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.u
        @NonNull
        public Class<Drawable> a() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.engine.u
        @NonNull
        /* renamed from: b */
        public AnimatedImageDrawable get() {
            return this.f54403a;
        }

        @Override // com.bumptech.glide.load.engine.u
        public int getSize() {
            return this.f54403a.getIntrinsicWidth() * this.f54403a.getIntrinsicHeight() * k.i(Bitmap.Config.ARGB_8888) * 2;
        }

        @Override // com.bumptech.glide.load.engine.u
        public void recycle() {
            this.f54403a.stop();
            this.f54403a.clearAnimationCallbacks();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements e0.f<ByteBuffer, Drawable> {

        /* renamed from: a  reason: collision with root package name */
        private final a f54404a;

        b(a aVar) {
            this.f54404a = aVar;
        }

        @Override // e0.f
        /* renamed from: c */
        public u<Drawable> b(@NonNull ByteBuffer byteBuffer, int i9, int i10, @NonNull e0.e eVar) throws IOException {
            return this.f54404a.b(ImageDecoder.createSource(byteBuffer), i9, i10, eVar);
        }

        @Override // e0.f
        /* renamed from: d */
        public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull e0.e eVar) throws IOException {
            return this.f54404a.d(byteBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements e0.f<InputStream, Drawable> {

        /* renamed from: a  reason: collision with root package name */
        private final a f54405a;

        c(a aVar) {
            this.f54405a = aVar;
        }

        @Override // e0.f
        /* renamed from: c */
        public u<Drawable> b(@NonNull InputStream inputStream, int i9, int i10, @NonNull e0.e eVar) throws IOException {
            return this.f54405a.b(ImageDecoder.createSource(v0.a.b(inputStream)), i9, i10, eVar);
        }

        @Override // e0.f
        /* renamed from: d */
        public boolean a(@NonNull InputStream inputStream, @NonNull e0.e eVar) throws IOException {
            return this.f54405a.c(inputStream);
        }
    }

    private a(List<ImageHeaderParser> list, g0.b bVar) {
        this.f54401a = list;
        this.f54402b = bVar;
    }

    public static e0.f<ByteBuffer, Drawable> a(List<ImageHeaderParser> list, g0.b bVar) {
        return new b(new a(list, bVar));
    }

    private boolean e(ImageHeaderParser.ImageType imageType) {
        return imageType == ImageHeaderParser.ImageType.ANIMATED_WEBP;
    }

    public static e0.f<InputStream, Drawable> f(List<ImageHeaderParser> list, g0.b bVar) {
        return new c(new a(list, bVar));
    }

    u<Drawable> b(@NonNull ImageDecoder.Source source, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        Drawable decodeDrawable = ImageDecoder.decodeDrawable(source, new com.bumptech.glide.load.resource.a(i9, i10, eVar));
        if (decodeDrawable instanceof AnimatedImageDrawable) {
            return new C0563a((AnimatedImageDrawable) decodeDrawable);
        }
        throw new IOException("Received unexpected drawable type for animated webp, failing: " + decodeDrawable);
    }

    boolean c(InputStream inputStream) throws IOException {
        return e(com.bumptech.glide.load.a.f(this.f54401a, inputStream, this.f54402b));
    }

    boolean d(ByteBuffer byteBuffer) throws IOException {
        return e(com.bumptech.glide.load.a.g(this.f54401a, byteBuffer));
    }
}
