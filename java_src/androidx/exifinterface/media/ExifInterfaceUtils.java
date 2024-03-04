package androidx.exifinterface.media;

import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.system.ErrnoException;
import android.system.Os;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
class ExifInterfaceUtils {
    private static final String TAG = "ExifInterfaceUtils";

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void close(FileDescriptor fileDescriptor) throws ErrnoException {
            Os.close(fileDescriptor);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @DoNotInline
        public static FileDescriptor dup(FileDescriptor fileDescriptor) throws ErrnoException {
            return Os.dup(fileDescriptor);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @DoNotInline
        public static long lseek(FileDescriptor fileDescriptor, long j10, int i9) throws ErrnoException {
            return Os.lseek(fileDescriptor, j10, i9);
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    static class Api23Impl {
        private Api23Impl() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @DoNotInline
        public static void setDataSource(MediaMetadataRetriever mediaMetadataRetriever, MediaDataSource mediaDataSource) {
            mediaMetadataRetriever.setDataSource(mediaDataSource);
        }
    }

    private ExifInterfaceUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (int i9 = 0; i9 < bArr.length; i9++) {
            sb2.append(String.format("%02x", Byte.valueOf(bArr[i9])));
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void closeFileDescriptor(FileDescriptor fileDescriptor) {
        try {
            Api21Impl.close(fileDescriptor);
        } catch (Exception unused) {
            Log.e(TAG, "Error closing fd.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long[] convertToLongArray(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i9 = 0; i9 < iArr.length; i9++) {
                jArr[i9] = iArr[i9];
            }
            return jArr;
        } else if (obj instanceof long[]) {
            return (long[]) obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        int i9 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return i9;
            }
            i9 += read;
            outputStream.write(bArr, 0, read);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long parseSubSeconds(String str) {
        try {
            int min = Math.min(str.length(), 3);
            long parseLong = Long.parseLong(str.substring(0, min));
            while (min < 3) {
                parseLong *= 10;
                min++;
            }
            return parseLong;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean startsWith(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i9 = 0; i9 < bArr2.length; i9++) {
            if (bArr[i9] != bArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void copy(InputStream inputStream, OutputStream outputStream, int i9) throws IOException {
        byte[] bArr = new byte[8192];
        while (i9 > 0) {
            int min = Math.min(i9, 8192);
            int read = inputStream.read(bArr, 0, min);
            if (read == min) {
                i9 -= read;
                outputStream.write(bArr, 0, read);
            } else {
                throw new IOException("Failed to copy the given amount of bytes from the inputstream to the output stream.");
            }
        }
    }
}
