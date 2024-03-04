package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes.dex */
interface s {

    /* loaded from: classes.dex */
    public static final class a implements s {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f4552a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ImageHeaderParser> f4553b;

        /* renamed from: c  reason: collision with root package name */
        private final g0.b f4554c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(ByteBuffer byteBuffer, List<ImageHeaderParser> list, g0.b bVar) {
            this.f4552a = byteBuffer;
            this.f4553b = list;
            this.f4554c = bVar;
        }

        private InputStream e() {
            return v0.a.g(v0.a.d(this.f4552a));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        @Nullable
        public Bitmap a(BitmapFactory.Options options) {
            return BitmapFactory.decodeStream(e(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public int c() throws IOException {
            return com.bumptech.glide.load.a.c(this.f4553b, v0.a.d(this.f4552a), this.f4554c);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.g(this.f4553b, v0.a.d(this.f4552a));
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements s {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.load.data.k f4555a;

        /* renamed from: b  reason: collision with root package name */
        private final g0.b f4556b;

        /* renamed from: c  reason: collision with root package name */
        private final List<ImageHeaderParser> f4557c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(InputStream inputStream, List<ImageHeaderParser> list, g0.b bVar) {
            this.f4556b = (g0.b) v0.j.d(bVar);
            this.f4557c = (List) v0.j.d(list);
            this.f4555a = new com.bumptech.glide.load.data.k(inputStream, bVar);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        @Nullable
        public Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f4555a.a(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public void b() {
            this.f4555a.c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public int c() throws IOException {
            return com.bumptech.glide.load.a.b(this.f4557c, this.f4555a.a(), this.f4556b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.f(this.f4557c, this.f4555a.a(), this.f4556b);
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static final class c implements s {

        /* renamed from: a  reason: collision with root package name */
        private final g0.b f4558a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ImageHeaderParser> f4559b;

        /* renamed from: c  reason: collision with root package name */
        private final ParcelFileDescriptorRewinder f4560c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, g0.b bVar) {
            this.f4558a = (g0.b) v0.j.d(bVar);
            this.f4559b = (List) v0.j.d(list);
            this.f4560c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        @Nullable
        public Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f4560c.a().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public int c() throws IOException {
            return com.bumptech.glide.load.a.a(this.f4559b, this.f4560c, this.f4558a);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.s
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.e(this.f4559b, this.f4560c, this.f4558a);
        }
    }

    @Nullable
    Bitmap a(BitmapFactory.Options options) throws IOException;

    void b();

    int c() throws IOException;

    ImageHeaderParser.ImageType d() throws IOException;
}
