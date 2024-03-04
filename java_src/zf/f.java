package zf;

import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f60447b = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f60448c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: a  reason: collision with root package name */
    private final b f60449a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f60450a;

        public a(byte[] bArr, int i9) {
            this.f60450a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i9);
        }

        public short a(int i9) {
            return this.f60450a.getShort(i9);
        }

        public int b(int i9) {
            return this.f60450a.getInt(i9);
        }

        public int c() {
            return this.f60450a.remaining();
        }

        public void d(ByteOrder byteOrder) {
            this.f60450a.order(byteOrder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface b {
        int a() throws IOException;

        int b(byte[] bArr, int i9) throws IOException;

        short c() throws IOException;

        long skip(long j10) throws IOException;
    }

    /* loaded from: classes5.dex */
    private static class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f60451a;

        public c(InputStream inputStream) {
            this.f60451a = inputStream;
        }

        @Override // zf.f.b
        public int a() throws IOException {
            return ((this.f60451a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f60451a.read() & 255);
        }

        @Override // zf.f.b
        public int b(byte[] bArr, int i9) throws IOException {
            int i10 = i9;
            while (i10 > 0) {
                int read = this.f60451a.read(bArr, i9 - i10, i10);
                if (read == -1) {
                    break;
                }
                i10 -= read;
            }
            return i9 - i10;
        }

        @Override // zf.f.b
        public short c() throws IOException {
            return (short) (this.f60451a.read() & 255);
        }

        @Override // zf.f.b
        public long skip(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long skip = this.f60451a.skip(j11);
                if (skip <= 0) {
                    if (this.f60451a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j11 -= skip;
            }
            return j10 - j11;
        }
    }

    public f(InputStream inputStream) {
        this.f60449a = new c(inputStream);
    }

    private static int a(int i9, int i10) {
        return i9 + 2 + (i10 * 12);
    }

    public static void b(ExifInterface exifInterface, int i9, int i10, String str) {
        String[] strArr = {ExifInterface.TAG_F_NUMBER, ExifInterface.TAG_DATETIME, ExifInterface.TAG_DATETIME_DIGITIZED, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_FLASH, ExifInterface.TAG_FOCAL_LENGTH, ExifInterface.TAG_GPS_ALTITUDE, ExifInterface.TAG_GPS_ALTITUDE_REF, ExifInterface.TAG_GPS_DATESTAMP, ExifInterface.TAG_GPS_LATITUDE, ExifInterface.TAG_GPS_LATITUDE_REF, ExifInterface.TAG_GPS_LONGITUDE, ExifInterface.TAG_GPS_LONGITUDE_REF, ExifInterface.TAG_GPS_PROCESSING_METHOD, ExifInterface.TAG_GPS_TIMESTAMP, ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY, ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL, ExifInterface.TAG_SUBSEC_TIME, ExifInterface.TAG_SUBSEC_TIME_DIGITIZED, ExifInterface.TAG_SUBSEC_TIME_ORIGINAL, ExifInterface.TAG_WHITE_BALANCE};
        try {
            ExifInterface exifInterface2 = new ExifInterface(str);
            for (int i11 = 0; i11 < 22; i11++) {
                String str2 = strArr[i11];
                String attribute = exifInterface.getAttribute(str2);
                if (!TextUtils.isEmpty(attribute)) {
                    exifInterface2.setAttribute(str2, attribute);
                }
            }
            exifInterface2.setAttribute(ExifInterface.TAG_IMAGE_WIDTH, String.valueOf(i9));
            exifInterface2.setAttribute(ExifInterface.TAG_IMAGE_LENGTH, String.valueOf(i10));
            exifInterface2.setAttribute(ExifInterface.TAG_ORIENTATION, "0");
            exifInterface2.saveAttributes();
        } catch (IOException e10) {
            Log.d("ImageHeaderParser", e10.getMessage());
        }
    }

    private static boolean d(int i9) {
        return (i9 & 65496) == 65496 || i9 == 19789 || i9 == 18761;
    }

    private boolean e(byte[] bArr, int i9) {
        boolean z10 = bArr != null && i9 > f60447b.length;
        if (z10) {
            int i10 = 0;
            while (true) {
                byte[] bArr2 = f60447b;
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

    private int f() throws IOException {
        short c10;
        short c11;
        int a10;
        long j10;
        long skip;
        do {
            if (this.f60449a.c() != 255) {
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Unknown segmentId=" + ((int) c10));
                }
                return -1;
            }
            c11 = this.f60449a.c();
            if (c11 == 218) {
                return -1;
            }
            if (c11 == 217) {
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            a10 = this.f60449a.a() - 2;
            if (c11 == 225) {
                return a10;
            }
            j10 = a10;
            skip = this.f60449a.skip(j10);
        } while (skip == j10);
        if (Log.isLoggable("ImageHeaderParser", 3)) {
            Log.d("ImageHeaderParser", "Unable to skip enough data, type: " + ((int) c11) + ", wanted to skip: " + a10 + ", but actually skipped: " + skip);
        }
        return -1;
    }

    private static int g(a aVar) {
        ByteOrder byteOrder;
        short a10 = aVar.a(6);
        if (a10 == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (a10 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unknown endianness = " + ((int) a10));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        aVar.d(byteOrder);
        int b10 = aVar.b(10) + 6;
        short a11 = aVar.a(b10);
        for (int i9 = 0; i9 < a11; i9++) {
            int a12 = a(b10, i9);
            short a13 = aVar.a(a12);
            if (a13 == 274) {
                short a14 = aVar.a(a12 + 2);
                if (a14 >= 1 && a14 <= 12) {
                    int b11 = aVar.b(a12 + 4);
                    if (b11 < 0) {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Negative tiff component count");
                        }
                    } else {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got tagIndex=" + i9 + " tagType=" + ((int) a13) + " formatCode=" + ((int) a14) + " componentCount=" + b11);
                        }
                        int i10 = b11 + f60448c[a14];
                        if (i10 > 4) {
                            if (Log.isLoggable("ImageHeaderParser", 3)) {
                                Log.d("ImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) a14));
                            }
                        } else {
                            int i11 = a12 + 8;
                            if (i11 >= 0 && i11 <= aVar.c()) {
                                if (i10 >= 0 && i10 + i11 <= aVar.c()) {
                                    return aVar.a(i11);
                                }
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) a13));
                                }
                            } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                Log.d("ImageHeaderParser", "Illegal tagValueOffset=" + i11 + " tagType=" + ((int) a13));
                            }
                        }
                    }
                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Got invalid format code = " + ((int) a14));
                }
            }
        }
        return -1;
    }

    private int h(byte[] bArr, int i9) throws IOException {
        int b10 = this.f60449a.b(bArr, i9);
        if (b10 != i9) {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unable to read exif segment data, length: " + i9 + ", actually read: " + b10);
            }
            return -1;
        } else if (e(bArr, i9)) {
            return g(new a(bArr, i9));
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
    }

    public int c() throws IOException {
        int a10 = this.f60449a.a();
        if (!d(a10)) {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Parser doesn't handle magic number: " + a10);
            }
            return -1;
        }
        int f10 = f();
        if (f10 == -1) {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
            }
            return -1;
        }
        return h(new byte[f10], f10);
    }
}
