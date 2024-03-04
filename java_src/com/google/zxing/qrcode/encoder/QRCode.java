package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
/* loaded from: classes3.dex */
public final class QRCode {
    public static final int NUM_MASK_PATTERNS = 8;
    private ErrorCorrectionLevel ecLevel;
    private int maskPattern = -1;
    private ByteMatrix matrix;
    private Mode mode;
    private Version version;

    public static boolean isValidMaskPattern(int i9) {
        return i9 >= 0 && i9 < 8;
    }

    public ErrorCorrectionLevel getECLevel() {
        return this.ecLevel;
    }

    public int getMaskPattern() {
        return this.maskPattern;
    }

    public ByteMatrix getMatrix() {
        return this.matrix;
    }

    public Mode getMode() {
        return this.mode;
    }

    public Version getVersion() {
        return this.version;
    }

    public void setECLevel(ErrorCorrectionLevel errorCorrectionLevel) {
        this.ecLevel = errorCorrectionLevel;
    }

    public void setMaskPattern(int i9) {
        this.maskPattern = i9;
    }

    public void setMatrix(ByteMatrix byteMatrix) {
        this.matrix = byteMatrix;
    }

    public void setMode(Mode mode) {
        this.mode = mode;
    }

    public void setVersion(Version version) {
        this.version = version;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(200);
        sb2.append("<<\n");
        sb2.append(" mode: ");
        sb2.append(this.mode);
        sb2.append("\n ecLevel: ");
        sb2.append(this.ecLevel);
        sb2.append("\n version: ");
        sb2.append(this.version);
        sb2.append("\n maskPattern: ");
        sb2.append(this.maskPattern);
        if (this.matrix == null) {
            sb2.append("\n matrix: null\n");
        } else {
            sb2.append("\n matrix:\n");
            sb2.append(this.matrix);
        }
        sb2.append(">>\n");
        return sb2.toString();
    }
}
