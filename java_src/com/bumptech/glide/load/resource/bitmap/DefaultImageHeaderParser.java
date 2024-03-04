package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.view.InputDeviceCompat;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f4477a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f4478b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface Reader {

        /* loaded from: classes.dex */
        public static final class EndOfFileException extends IOException {
            private static final long serialVersionUID = 1;

            EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a() throws IOException;

        int b(byte[] bArr, int i9) throws IOException;

        short c() throws IOException;

        long skip(long j10) throws IOException;
    }

    /* loaded from: classes.dex */
    private static final class a implements Reader {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f4479a;

        a(ByteBuffer byteBuffer) {
            this.f4479a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int a() throws Reader.EndOfFileException {
            return (c() << 8) | c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int b(byte[] bArr, int i9) {
            int min = Math.min(i9, this.f4479a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f4479a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short c() throws Reader.EndOfFileException {
            if (this.f4479a.remaining() >= 1) {
                return (short) (this.f4479a.get() & UByte.MAX_VALUE);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j10) {
            int min = (int) Math.min(this.f4479a.remaining(), j10);
            ByteBuffer byteBuffer = this.f4479a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f4480a;

        b(byte[] bArr, int i9) {
            this.f4480a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i9);
        }

        private boolean c(int i9, int i10) {
            return this.f4480a.remaining() - i9 >= i10;
        }

        short a(int i9) {
            if (c(i9, 2)) {
                return this.f4480a.getShort(i9);
            }
            return (short) -1;
        }

        int b(int i9) {
            if (c(i9, 4)) {
                return this.f4480a.getInt(i9);
            }
            return -1;
        }

        int d() {
            return this.f4480a.remaining();
        }

        void e(ByteOrder byteOrder) {
            this.f4480a.order(byteOrder);
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements Reader {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f4481a;

        c(InputStream inputStream) {
            this.f4481a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int a() throws IOException {
            return (c() << 8) | c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int b(byte[] bArr, int i9) throws IOException {
            int i10 = 0;
            int i11 = 0;
            while (i10 < i9 && (i11 = this.f4481a.read(bArr, i10, i9 - i10)) != -1) {
                i10 += i11;
            }
            if (i10 == 0 && i11 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i10;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short c() throws IOException {
            int read = this.f4481a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long skip = this.f4481a.skip(j11);
                if (skip <= 0) {
                    if (this.f4481a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j11 -= skip;
            }
            return j10 - j11;
        }
    }

    private static int e(int i9, int i10) {
        return i9 + 2 + (i10 * 12);
    }

    private int f(Reader reader, g0.b bVar) throws IOException {
        try {
            int a10 = reader.a();
            if (!h(a10)) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + a10);
                }
                return -1;
            }
            int j10 = j(reader);
            if (j10 == -1) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) bVar.c(j10, byte[].class);
            int l10 = l(reader, bArr, j10);
            bVar.put(bArr);
            return l10;
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    @NonNull
    private ImageHeaderParser.ImageType g(Reader reader) throws IOException {
        try {
            int a10 = reader.a();
            if (a10 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int c10 = (a10 << 8) | reader.c();
            if (c10 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int c11 = (c10 << 8) | reader.c();
            if (c11 == -1991225785) {
                reader.skip(21L);
                try {
                    return reader.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (c11 != 1380533830) {
                return m(reader, c11) ? ImageHeaderParser.ImageType.AVIF : ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                reader.skip(4L);
                if (((reader.a() << 16) | reader.a()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int a11 = (reader.a() << 16) | reader.a();
                if ((a11 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i9 = a11 & 255;
                if (i9 != 88) {
                    if (i9 == 76) {
                        reader.skip(4L);
                        return (reader.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                    }
                    return ImageHeaderParser.ImageType.WEBP;
                }
                reader.skip(4L);
                short c12 = reader.c();
                if ((c12 & 2) != 0) {
                    return ImageHeaderParser.ImageType.ANIMATED_WEBP;
                }
                if ((c12 & 16) != 0) {
                    return ImageHeaderParser.ImageType.WEBP_A;
                }
                return ImageHeaderParser.ImageType.WEBP;
            }
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    private static boolean h(int i9) {
        return (i9 & 65496) == 65496 || i9 == 19789 || i9 == 18761;
    }

    private boolean i(byte[] bArr, int i9) {
        boolean z10 = bArr != null && i9 > f4477a.length;
        if (z10) {
            int i10 = 0;
            while (true) {
                byte[] bArr2 = f4477a;
                if (i10 >= bArr2.length) {
                    break;
                } else if (bArr[i10] != bArr2[i10]) {
                    return false;
                } else {
                    i10++;
                }
            }
        }
        return z10;
    }

    private int j(Reader reader) throws IOException {
        short c10;
        short c11;
        int a10;
        long j10;
        long skip;
        do {
            if (reader.c() != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) c10));
                }
                return -1;
            }
            c11 = reader.c();
            if (c11 == 218) {
                return -1;
            }
            if (c11 == 217) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            a10 = reader.a() - 2;
            if (c11 == 225) {
                return a10;
            }
            j10 = a10;
            skip = reader.skip(j10);
        } while (skip == j10);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + ((int) c11) + ", wanted to skip: " + a10 + ", but actually skipped: " + skip);
        }
        return -1;
    }

    private static int k(b bVar) {
        ByteOrder byteOrder;
        short a10 = bVar.a(6);
        if (a10 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (a10 != 19789) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) a10));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.e(byteOrder);
        int b10 = bVar.b(10) + 6;
        short a11 = bVar.a(b10);
        for (int i9 = 0; i9 < a11; i9++) {
            int e10 = e(b10, i9);
            short a12 = bVar.a(e10);
            if (a12 == 274) {
                short a13 = bVar.a(e10 + 2);
                if (a13 >= 1 && a13 <= 12) {
                    int b11 = bVar.b(e10 + 4);
                    if (b11 < 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Negative tiff component count");
                        }
                    } else {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got tagIndex=" + i9 + " tagType=" + ((int) a12) + " formatCode=" + ((int) a13) + " componentCount=" + b11);
                        }
                        int i10 = b11 + f4478b[a13];
                        if (i10 > 4) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) a13));
                            }
                        } else {
                            int i11 = e10 + 8;
                            if (i11 >= 0 && i11 <= bVar.d()) {
                                if (i10 >= 0 && i10 + i11 <= bVar.d()) {
                                    return bVar.a(i11);
                                }
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) a12));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i11 + " tagType=" + ((int) a12));
                            }
                        }
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) a13));
                }
            }
        }
        return -1;
    }

    private int l(Reader reader, byte[] bArr, int i9) throws IOException {
        int b10 = reader.b(bArr, i9);
        if (b10 != i9) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i9 + ", actually read: " + b10);
            }
            return -1;
        } else if (i(bArr, i9)) {
            return k(new b(bArr, i9));
        } else {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
    }

    private boolean m(Reader reader, int i9) throws IOException {
        if (((reader.a() << 16) | reader.a()) != 1718909296) {
            return false;
        }
        int a10 = (reader.a() << 16) | reader.a();
        if (a10 == 1635150182 || a10 == 1635150195) {
            return true;
        }
        reader.skip(4L);
        int i10 = i9 - 16;
        if (i10 % 4 != 0) {
            return false;
        }
        int i11 = 0;
        while (i11 < 5 && i10 > 0) {
            int a11 = (reader.a() << 16) | reader.a();
            if (a11 == 1635150182 || a11 == 1635150195) {
                return true;
            }
            i11++;
            i10 -= 4;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int a(@NonNull ByteBuffer byteBuffer, @NonNull g0.b bVar) throws IOException {
        return f(new a((ByteBuffer) v0.j.d(byteBuffer)), (g0.b) v0.j.d(bVar));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int b(@NonNull InputStream inputStream, @NonNull g0.b bVar) throws IOException {
        return f(new c((InputStream) v0.j.d(inputStream)), (g0.b) v0.j.d(bVar));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType c(@NonNull ByteBuffer byteBuffer) throws IOException {
        return g(new a((ByteBuffer) v0.j.d(byteBuffer)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType d(@NonNull InputStream inputStream) throws IOException {
        return g(new c((InputStream) v0.j.d(inputStream)));
    }
}
