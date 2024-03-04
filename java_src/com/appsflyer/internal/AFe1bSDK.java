package com.appsflyer.internal;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class AFe1bSDK extends FilterInputStream {
    private final int AFInAppEventParameterName;
    private byte[] AFInAppEventType;
    private AFe1dSDK AFKeystoreWrapper;
    private int AFLogger;
    private int afDebugLog;
    private int[] afErrorLog;
    private int afInfoLog;
    private int afRDLog;
    private byte[] valueOf;
    private byte[] values;

    public AFe1bSDK(InputStream inputStream, int[] iArr, byte[] bArr, int i9, boolean z10, int i10) throws IOException {
        super(inputStream);
        this.AFLogger = Integer.MAX_VALUE;
        int min = Math.min(Math.max(i9, 3), 16);
        this.AFInAppEventParameterName = min;
        this.AFInAppEventType = new byte[8];
        byte[] bArr2 = new byte[8];
        this.values = bArr2;
        this.valueOf = new byte[8];
        this.afErrorLog = new int[2];
        this.afRDLog = 8;
        this.afInfoLog = 8;
        this.afDebugLog = i10;
        if (i10 == 2) {
            System.arraycopy(bArr, 0, bArr2, 0, 8);
        }
        this.AFKeystoreWrapper = new AFe1dSDK(iArr, min, true, false);
    }

    private void AFInAppEventParameterName() {
        if (this.afDebugLog == 2) {
            byte[] bArr = this.AFInAppEventType;
            System.arraycopy(bArr, 0, this.valueOf, 0, bArr.length);
        }
        byte[] bArr2 = this.AFInAppEventType;
        int i9 = ((bArr2[0] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr2[1] << 16) & 16711680) + ((bArr2[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr2[3] & UByte.MAX_VALUE);
        int i10 = ((-16777216) & (bArr2[4] << 24)) + (16711680 & (bArr2[5] << 16)) + (65280 & (bArr2[6] << 8)) + (bArr2[7] & UByte.MAX_VALUE);
        int i11 = this.AFInAppEventParameterName;
        AFe1dSDK aFe1dSDK = this.AFKeystoreWrapper;
        AFe1aSDK.values(i9, i10, false, i11, aFe1dSDK.AFInAppEventType, aFe1dSDK.values, this.afErrorLog);
        int[] iArr = this.afErrorLog;
        int i12 = iArr[0];
        int i13 = iArr[1];
        byte[] bArr3 = this.AFInAppEventType;
        bArr3[0] = (byte) (i12 >> 24);
        bArr3[1] = (byte) (i12 >> 16);
        bArr3[2] = (byte) (i12 >> 8);
        bArr3[3] = (byte) i12;
        bArr3[4] = (byte) (i13 >> 24);
        bArr3[5] = (byte) (i13 >> 16);
        bArr3[6] = (byte) (i13 >> 8);
        bArr3[7] = (byte) i13;
        if (this.afDebugLog == 2) {
            for (int i14 = 0; i14 < 8; i14++) {
                byte[] bArr4 = this.AFInAppEventType;
                bArr4[i14] = (byte) (bArr4[i14] ^ this.values[i14]);
            }
            byte[] bArr5 = this.valueOf;
            System.arraycopy(bArr5, 0, this.values, 0, bArr5.length);
        }
    }

    private int AFKeystoreWrapper() throws IOException {
        if (this.AFLogger == Integer.MAX_VALUE) {
            this.AFLogger = ((FilterInputStream) this).in.read();
        }
        if (this.afRDLog == 8) {
            byte[] bArr = this.AFInAppEventType;
            int i9 = this.AFLogger;
            bArr[0] = (byte) i9;
            if (i9 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i10 = 1;
            do {
                int read = ((FilterInputStream) this).in.read(this.AFInAppEventType, i10, 8 - i10);
                if (read <= 0) {
                    break;
                }
                i10 += read;
            } while (i10 < 8);
            if (i10 >= 8) {
                AFInAppEventParameterName();
                int read2 = ((FilterInputStream) this).in.read();
                this.AFLogger = read2;
                this.afRDLog = 0;
                this.afInfoLog = read2 < 0 ? 8 - (this.AFInAppEventType[7] & UByte.MAX_VALUE) : 8;
            } else {
                throw new IllegalStateException("unexpected block size");
            }
        }
        return this.afInfoLog;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        AFKeystoreWrapper();
        return this.afInfoLog - this.afRDLog;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        AFKeystoreWrapper();
        int i9 = this.afRDLog;
        if (i9 >= this.afInfoLog) {
            return -1;
        }
        byte[] bArr = this.AFInAppEventType;
        this.afRDLog = i9 + 1;
        return bArr[i9] & UByte.MAX_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long j11 = 0;
        while (j11 < j10 && read() != -1) {
            j11++;
        }
        return j11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = i9 + i10;
        for (int i12 = i9; i12 < i11; i12++) {
            AFKeystoreWrapper();
            int i13 = this.afRDLog;
            if (i13 >= this.afInfoLog) {
                if (i12 == i9) {
                    return -1;
                }
                return i10 - (i11 - i12);
            }
            byte[] bArr2 = this.AFInAppEventType;
            this.afRDLog = i13 + 1;
            bArr[i12] = bArr2[i13];
        }
        return i10;
    }
}
