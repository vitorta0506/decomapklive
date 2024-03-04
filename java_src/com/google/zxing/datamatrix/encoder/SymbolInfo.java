package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.ugc.datereport.UGCDataReportDef;
/* loaded from: classes3.dex */
public class SymbolInfo {
    static final SymbolInfo[] PROD_SYMBOLS;
    private static SymbolInfo[] symbols;
    private final int dataCapacity;
    private final int dataRegions;
    private final int errorCodewords;
    public final int matrixHeight;
    public final int matrixWidth;
    private final boolean rectangular;
    private final int rsBlockData;
    private final int rsBlockError;

    static {
        SymbolInfo[] symbolInfoArr = {new SymbolInfo(false, 3, 5, 8, 8, 1), new SymbolInfo(false, 5, 7, 10, 10, 1), new SymbolInfo(true, 5, 7, 16, 6, 1), new SymbolInfo(false, 8, 10, 12, 12, 1), new SymbolInfo(true, 10, 11, 14, 6, 2), new SymbolInfo(false, 12, 12, 14, 14, 1), new SymbolInfo(true, 16, 14, 24, 10, 1), new SymbolInfo(false, 18, 14, 16, 16, 1), new SymbolInfo(false, 22, 18, 18, 18, 1), new SymbolInfo(true, 22, 18, 16, 10, 2), new SymbolInfo(false, 30, 20, 20, 20, 1), new SymbolInfo(true, 32, 24, 16, 14, 2), new SymbolInfo(false, 36, 24, 22, 22, 1), new SymbolInfo(false, 44, 28, 24, 24, 1), new SymbolInfo(true, 49, 28, 22, 14, 2), new SymbolInfo(false, 62, 36, 14, 14, 4), new SymbolInfo(false, 86, 42, 16, 16, 4), new SymbolInfo(false, 114, 48, 18, 18, 4), new SymbolInfo(false, 144, 56, 20, 20, 4), new SymbolInfo(false, 174, 68, 22, 22, 4), new SymbolInfo(false, 204, 84, 24, 24, 4, 102, 42), new SymbolInfo(false, 280, 112, 14, 14, 16, 140, 56), new SymbolInfo(false, 368, 144, 16, 16, 16, 92, 36), new SymbolInfo(false, 456, 192, 18, 18, 16, 114, 48), new SymbolInfo(false, 576, 224, 20, 20, 16, 144, 56), new SymbolInfo(false, 696, 272, 22, 22, 16, 174, 68), new SymbolInfo(false, 816, 336, 24, 24, 16, TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE, 56), new SymbolInfo(false, UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_GOP, 408, 18, 18, 36, BaseMessageViewHolder.MAX_SIZE, 68), new SymbolInfo(false, 1304, 496, 20, 20, 36, 163, 62), new DataMatrixSymbolInfo144()};
        PROD_SYMBOLS = symbolInfoArr;
        symbols = symbolInfoArr;
    }

    public SymbolInfo(boolean z10, int i9, int i10, int i11, int i12, int i13) {
        this(z10, i9, i10, i11, i12, i13, i9, i10);
    }

    private int getHorizontalDataRegions() {
        int i9 = this.dataRegions;
        int i10 = 1;
        if (i9 != 1) {
            i10 = 2;
            if (i9 != 2 && i9 != 4) {
                if (i9 != 16) {
                    if (i9 == 36) {
                        return 6;
                    }
                    throw new IllegalStateException("Cannot handle this number of data regions");
                }
                return 4;
            }
        }
        return i10;
    }

    private int getVerticalDataRegions() {
        int i9 = this.dataRegions;
        if (i9 == 1 || i9 == 2) {
            return 1;
        }
        if (i9 != 4) {
            if (i9 != 16) {
                if (i9 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
            return 4;
        }
        return 2;
    }

    public static SymbolInfo lookup(int i9) {
        return lookup(i9, SymbolShapeHint.FORCE_NONE, true);
    }

    public static void overrideSymbolSet(SymbolInfo[] symbolInfoArr) {
        symbols = symbolInfoArr;
    }

    public int getCodewordCount() {
        return this.dataCapacity + this.errorCodewords;
    }

    public final int getDataCapacity() {
        return this.dataCapacity;
    }

    public int getDataLengthForInterleavedBlock(int i9) {
        return this.rsBlockData;
    }

    public final int getErrorCodewords() {
        return this.errorCodewords;
    }

    public final int getErrorLengthForInterleavedBlock(int i9) {
        return this.rsBlockError;
    }

    public int getInterleavedBlockCount() {
        return this.dataCapacity / this.rsBlockData;
    }

    public final int getSymbolDataHeight() {
        return getVerticalDataRegions() * this.matrixHeight;
    }

    public final int getSymbolDataWidth() {
        return getHorizontalDataRegions() * this.matrixWidth;
    }

    public final int getSymbolHeight() {
        return getSymbolDataHeight() + (getVerticalDataRegions() << 1);
    }

    public final int getSymbolWidth() {
        return getSymbolDataWidth() + (getHorizontalDataRegions() << 1);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.rectangular ? "Rectangular Symbol:" : "Square Symbol:");
        sb2.append(" data region ");
        sb2.append(this.matrixWidth);
        sb2.append('x');
        sb2.append(this.matrixHeight);
        sb2.append(", symbol size ");
        sb2.append(getSymbolWidth());
        sb2.append('x');
        sb2.append(getSymbolHeight());
        sb2.append(", symbol data size ");
        sb2.append(getSymbolDataWidth());
        sb2.append('x');
        sb2.append(getSymbolDataHeight());
        sb2.append(", codewords ");
        sb2.append(this.dataCapacity);
        sb2.append('+');
        sb2.append(this.errorCodewords);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SymbolInfo(boolean z10, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        this.rectangular = z10;
        this.dataCapacity = i9;
        this.errorCodewords = i10;
        this.matrixWidth = i11;
        this.matrixHeight = i12;
        this.dataRegions = i13;
        this.rsBlockData = i14;
        this.rsBlockError = i15;
    }

    public static SymbolInfo lookup(int i9, SymbolShapeHint symbolShapeHint) {
        return lookup(i9, symbolShapeHint, true);
    }

    public static SymbolInfo lookup(int i9, boolean z10, boolean z11) {
        return lookup(i9, z10 ? SymbolShapeHint.FORCE_NONE : SymbolShapeHint.FORCE_SQUARE, z11);
    }

    private static SymbolInfo lookup(int i9, SymbolShapeHint symbolShapeHint, boolean z10) {
        return lookup(i9, symbolShapeHint, null, null, z10);
    }

    public static SymbolInfo lookup(int i9, SymbolShapeHint symbolShapeHint, Dimension dimension, Dimension dimension2, boolean z10) {
        SymbolInfo[] symbolInfoArr;
        for (SymbolInfo symbolInfo : symbols) {
            if (!(symbolShapeHint == SymbolShapeHint.FORCE_SQUARE && symbolInfo.rectangular) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || symbolInfo.rectangular) && ((dimension == null || (symbolInfo.getSymbolWidth() >= dimension.getWidth() && symbolInfo.getSymbolHeight() >= dimension.getHeight())) && ((dimension2 == null || (symbolInfo.getSymbolWidth() <= dimension2.getWidth() && symbolInfo.getSymbolHeight() <= dimension2.getHeight())) && i9 <= symbolInfo.dataCapacity)))) {
                return symbolInfo;
            }
        }
        if (z10) {
            throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i9)));
        }
        return null;
    }
}
