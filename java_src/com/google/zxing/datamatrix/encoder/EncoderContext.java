package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import java.nio.charset.StandardCharsets;
import kotlin.UByte;
/* loaded from: classes3.dex */
final class EncoderContext {
    private final StringBuilder codewords;
    private Dimension maxSize;
    private Dimension minSize;
    private final String msg;
    private int newEncoding;
    int pos;
    private SymbolShapeHint shape;
    private int skipAtEnd;
    private SymbolInfo symbolInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EncoderContext(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb2 = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i9 = 0; i9 < length; i9++) {
            char c10 = (char) (bytes[i9] & UByte.MAX_VALUE);
            if (c10 == '?' && str.charAt(i9) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb2.append(c10);
        }
        this.msg = sb2.toString();
        this.shape = SymbolShapeHint.FORCE_NONE;
        this.codewords = new StringBuilder(str.length());
        this.newEncoding = -1;
    }

    private int getTotalMessageCharCount() {
        return this.msg.length() - this.skipAtEnd;
    }

    public int getCodewordCount() {
        return this.codewords.length();
    }

    public StringBuilder getCodewords() {
        return this.codewords;
    }

    public char getCurrent() {
        return this.msg.charAt(this.pos);
    }

    public char getCurrentChar() {
        return this.msg.charAt(this.pos);
    }

    public String getMessage() {
        return this.msg;
    }

    public int getNewEncoding() {
        return this.newEncoding;
    }

    public int getRemainingCharacters() {
        return getTotalMessageCharCount() - this.pos;
    }

    public SymbolInfo getSymbolInfo() {
        return this.symbolInfo;
    }

    public boolean hasMoreCharacters() {
        return this.pos < getTotalMessageCharCount();
    }

    public void resetEncoderSignal() {
        this.newEncoding = -1;
    }

    public void resetSymbolInfo() {
        this.symbolInfo = null;
    }

    public void setSizeConstraints(Dimension dimension, Dimension dimension2) {
        this.minSize = dimension;
        this.maxSize = dimension2;
    }

    public void setSkipAtEnd(int i9) {
        this.skipAtEnd = i9;
    }

    public void setSymbolShape(SymbolShapeHint symbolShapeHint) {
        this.shape = symbolShapeHint;
    }

    public void signalEncoderChange(int i9) {
        this.newEncoding = i9;
    }

    public void updateSymbolInfo() {
        updateSymbolInfo(getCodewordCount());
    }

    public void writeCodeword(char c10) {
        this.codewords.append(c10);
    }

    public void writeCodewords(String str) {
        this.codewords.append(str);
    }

    public void updateSymbolInfo(int i9) {
        SymbolInfo symbolInfo = this.symbolInfo;
        if (symbolInfo == null || i9 > symbolInfo.getDataCapacity()) {
            this.symbolInfo = SymbolInfo.lookup(i9, this.shape, this.minSize, this.maxSize, true);
        }
    }
}
