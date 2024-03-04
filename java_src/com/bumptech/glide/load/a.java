package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.resource.bitmap.w;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: com.bumptech.glide.load.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0063a implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f4207a;

        C0063a(InputStream inputStream) {
            this.f4207a = inputStream;
        }

        @Override // com.bumptech.glide.load.a.h
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.d(this.f4207a);
            } finally {
                this.f4207a.reset();
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f4208a;

        b(ByteBuffer byteBuffer) {
            this.f4208a = byteBuffer;
        }

        @Override // com.bumptech.glide.load.a.h
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.c(this.f4208a);
        }
    }

    /* loaded from: classes.dex */
    class c implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ParcelFileDescriptorRewinder f4209a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g0.b f4210b;

        c(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, g0.b bVar) {
            this.f4209a = parcelFileDescriptorRewinder;
            this.f4210b = bVar;
        }

        @Override // com.bumptech.glide.load.a.h
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            w wVar = null;
            try {
                w wVar2 = new w(new FileInputStream(this.f4209a.a().getFileDescriptor()), this.f4210b);
                try {
                    ImageHeaderParser.ImageType d10 = imageHeaderParser.d(wVar2);
                    try {
                        wVar2.close();
                    } catch (IOException unused) {
                    }
                    this.f4209a.a();
                    return d10;
                } catch (Throwable th2) {
                    th = th2;
                    wVar = wVar2;
                    if (wVar != null) {
                        try {
                            wVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f4209a.a();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f4211a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g0.b f4212b;

        d(ByteBuffer byteBuffer, g0.b bVar) {
            this.f4211a = byteBuffer;
            this.f4212b = bVar;
        }

        @Override // com.bumptech.glide.load.a.g
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.a(this.f4211a, this.f4212b);
        }
    }

    /* loaded from: classes.dex */
    class e implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f4213a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g0.b f4214b;

        e(InputStream inputStream, g0.b bVar) {
            this.f4213a = inputStream;
            this.f4214b = bVar;
        }

        @Override // com.bumptech.glide.load.a.g
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.b(this.f4213a, this.f4214b);
            } finally {
                this.f4213a.reset();
            }
        }
    }

    /* loaded from: classes.dex */
    class f implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ParcelFileDescriptorRewinder f4215a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g0.b f4216b;

        f(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, g0.b bVar) {
            this.f4215a = parcelFileDescriptorRewinder;
            this.f4216b = bVar;
        }

        @Override // com.bumptech.glide.load.a.g
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            w wVar = null;
            try {
                w wVar2 = new w(new FileInputStream(this.f4215a.a().getFileDescriptor()), this.f4216b);
                try {
                    int b10 = imageHeaderParser.b(wVar2, this.f4216b);
                    try {
                        wVar2.close();
                    } catch (IOException unused) {
                    }
                    this.f4215a.a();
                    return b10;
                } catch (Throwable th2) {
                    th = th2;
                    wVar = wVar2;
                    if (wVar != null) {
                        try {
                            wVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f4215a.a();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface g {
        int a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface h {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    @RequiresApi(21)
    public static int a(@NonNull List<ImageHeaderParser> list, @NonNull ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull g0.b bVar) throws IOException {
        return d(list, new f(parcelFileDescriptorRewinder, bVar));
    }

    public static int b(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull g0.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, bVar);
        }
        inputStream.mark(5242880);
        return d(list, new e(inputStream, bVar));
    }

    public static int c(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer, @NonNull g0.b bVar) throws IOException {
        if (byteBuffer == null) {
            return -1;
        }
        return d(list, new d(byteBuffer, bVar));
    }

    private static int d(@NonNull List<ImageHeaderParser> list, g gVar) throws IOException {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            int a10 = gVar.a(list.get(i9));
            if (a10 != -1) {
                return a10;
            }
        }
        return -1;
    }

    @NonNull
    @RequiresApi(21)
    public static ImageHeaderParser.ImageType e(@NonNull List<ImageHeaderParser> list, @NonNull ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull g0.b bVar) throws IOException {
        return h(list, new c(parcelFileDescriptorRewinder, bVar));
    }

    @NonNull
    public static ImageHeaderParser.ImageType f(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull g0.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, bVar);
        }
        inputStream.mark(5242880);
        return h(list, new C0063a(inputStream));
    }

    @NonNull
    public static ImageHeaderParser.ImageType g(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return h(list, new b(byteBuffer));
    }

    @NonNull
    private static ImageHeaderParser.ImageType h(@NonNull List<ImageHeaderParser> list, h hVar) throws IOException {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            ImageHeaderParser.ImageType a10 = hVar.a(list.get(i9));
            if (a10 != ImageHeaderParser.ImageType.UNKNOWN) {
                return a10;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
