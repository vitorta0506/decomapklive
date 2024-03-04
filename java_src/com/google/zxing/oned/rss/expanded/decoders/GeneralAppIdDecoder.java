package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.jsonwebtoken.JwtParser;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class GeneralAppIdDecoder {
    private final BitArray information;
    private final CurrentParsingState current = new CurrentParsingState();
    private final StringBuilder buffer = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public GeneralAppIdDecoder(BitArray bitArray) {
        this.information = bitArray;
    }

    private DecodedChar decodeAlphanumeric(int i9) {
        char c10;
        int extractNumericValueFromBitArray = extractNumericValueFromBitArray(i9, 5);
        if (extractNumericValueFromBitArray == 15) {
            return new DecodedChar(i9 + 5, Typography.dollar);
        }
        if (extractNumericValueFromBitArray >= 5 && extractNumericValueFromBitArray < 15) {
            return new DecodedChar(i9 + 5, (char) ((extractNumericValueFromBitArray + 48) - 5));
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i9, 6);
        if (extractNumericValueFromBitArray2 >= 32 && extractNumericValueFromBitArray2 < 58) {
            return new DecodedChar(i9 + 6, (char) (extractNumericValueFromBitArray2 + 33));
        }
        switch (extractNumericValueFromBitArray2) {
            case 58:
                c10 = '*';
                break;
            case 59:
                c10 = ',';
                break;
            case 60:
                c10 = '-';
                break;
            case 61:
                c10 = JwtParser.SEPARATOR_CHAR;
                break;
            case 62:
                c10 = IOUtils.DIR_SEPARATOR_UNIX;
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(extractNumericValueFromBitArray2)));
        }
        return new DecodedChar(i9 + 6, c10);
    }

    private DecodedChar decodeIsoIec646(int i9) throws FormatException {
        char c10;
        int extractNumericValueFromBitArray = extractNumericValueFromBitArray(i9, 5);
        if (extractNumericValueFromBitArray == 15) {
            return new DecodedChar(i9 + 5, Typography.dollar);
        }
        if (extractNumericValueFromBitArray >= 5 && extractNumericValueFromBitArray < 15) {
            return new DecodedChar(i9 + 5, (char) ((extractNumericValueFromBitArray + 48) - 5));
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i9, 7);
        if (extractNumericValueFromBitArray2 < 64 || extractNumericValueFromBitArray2 >= 90) {
            if (extractNumericValueFromBitArray2 >= 90 && extractNumericValueFromBitArray2 < 116) {
                return new DecodedChar(i9 + 7, (char) (extractNumericValueFromBitArray2 + 7));
            }
            switch (extractNumericValueFromBitArray(i9, 8)) {
                case 232:
                    c10 = '!';
                    break;
                case 233:
                    c10 = Typography.quote;
                    break;
                case 234:
                    c10 = '%';
                    break;
                case 235:
                    c10 = Typography.amp;
                    break;
                case 236:
                    c10 = '\'';
                    break;
                case 237:
                    c10 = '(';
                    break;
                case 238:
                    c10 = ')';
                    break;
                case 239:
                    c10 = '*';
                    break;
                case 240:
                    c10 = '+';
                    break;
                case 241:
                    c10 = ',';
                    break;
                case 242:
                    c10 = '-';
                    break;
                case 243:
                    c10 = JwtParser.SEPARATOR_CHAR;
                    break;
                case TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                    c10 = IOUtils.DIR_SEPARATOR_UNIX;
                    break;
                case 245:
                    c10 = ':';
                    break;
                case 246:
                    c10 = ';';
                    break;
                case TPCodecParamers.TP_PROFILE_MJPEG_JPEG_LS /* 247 */:
                    c10 = Typography.less;
                    break;
                case 248:
                    c10 = '=';
                    break;
                case 249:
                    c10 = Typography.greater;
                    break;
                case 250:
                    c10 = '?';
                    break;
                case 251:
                    c10 = '_';
                    break;
                case 252:
                    c10 = ' ';
                    break;
                default:
                    throw FormatException.getFormatInstance();
            }
            return new DecodedChar(i9 + 8, c10);
        }
        return new DecodedChar(i9 + 7, (char) (extractNumericValueFromBitArray2 + 1));
    }

    private DecodedNumeric decodeNumeric(int i9) throws FormatException {
        int i10 = i9 + 7;
        if (i10 > this.information.getSize()) {
            int extractNumericValueFromBitArray = extractNumericValueFromBitArray(i9, 4);
            if (extractNumericValueFromBitArray == 0) {
                return new DecodedNumeric(this.information.getSize(), 10, 10);
            }
            return new DecodedNumeric(this.information.getSize(), extractNumericValueFromBitArray - 1, 10);
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i9, 7) - 8;
        return new DecodedNumeric(i10, extractNumericValueFromBitArray2 / 11, extractNumericValueFromBitArray2 % 11);
    }

    private boolean isAlphaOr646ToNumericLatch(int i9) {
        int i10 = i9 + 3;
        if (i10 > this.information.getSize()) {
            return false;
        }
        while (i9 < i10) {
            if (this.information.get(i9)) {
                return false;
            }
            i9++;
        }
        return true;
    }

    private boolean isAlphaTo646ToAlphaLatch(int i9) {
        int i10;
        if (i9 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i11 = 0; i11 < 5 && (i10 = i11 + i9) < this.information.getSize(); i11++) {
            if (i11 == 2) {
                if (!this.information.get(i9 + 2)) {
                    return false;
                }
            } else if (this.information.get(i10)) {
                return false;
            }
        }
        return true;
    }

    private boolean isNumericToAlphaNumericLatch(int i9) {
        int i10;
        if (i9 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i11 = 0; i11 < 4 && (i10 = i11 + i9) < this.information.getSize(); i11++) {
            if (this.information.get(i10)) {
                return false;
            }
        }
        return true;
    }

    private boolean isStillAlpha(int i9) {
        int extractNumericValueFromBitArray;
        if (i9 + 5 > this.information.getSize()) {
            return false;
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i9, 5);
        if (extractNumericValueFromBitArray2 < 5 || extractNumericValueFromBitArray2 >= 16) {
            return i9 + 6 <= this.information.getSize() && (extractNumericValueFromBitArray = extractNumericValueFromBitArray(i9, 6)) >= 16 && extractNumericValueFromBitArray < 63;
        }
        return true;
    }

    private boolean isStillIsoIec646(int i9) {
        int extractNumericValueFromBitArray;
        if (i9 + 5 > this.information.getSize()) {
            return false;
        }
        int extractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i9, 5);
        if (extractNumericValueFromBitArray2 < 5 || extractNumericValueFromBitArray2 >= 16) {
            if (i9 + 7 > this.information.getSize()) {
                return false;
            }
            int extractNumericValueFromBitArray3 = extractNumericValueFromBitArray(i9, 7);
            if (extractNumericValueFromBitArray3 < 64 || extractNumericValueFromBitArray3 >= 116) {
                return i9 + 8 <= this.information.getSize() && (extractNumericValueFromBitArray = extractNumericValueFromBitArray(i9, 8)) >= 232 && extractNumericValueFromBitArray < 253;
            }
            return true;
        }
        return true;
    }

    private boolean isStillNumeric(int i9) {
        if (i9 + 7 > this.information.getSize()) {
            return i9 + 4 <= this.information.getSize();
        }
        int i10 = i9;
        while (true) {
            int i11 = i9 + 3;
            if (i10 < i11) {
                if (this.information.get(i10)) {
                    return true;
                }
                i10++;
            } else {
                return this.information.get(i11);
            }
        }
    }

    private BlockParsedResult parseAlphaBlock() {
        while (isStillAlpha(this.current.getPosition())) {
            DecodedChar decodeAlphanumeric = decodeAlphanumeric(this.current.getPosition());
            this.current.setPosition(decodeAlphanumeric.getNewPosition());
            if (decodeAlphanumeric.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodeAlphanumeric.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setIsoIec646();
        }
        return new BlockParsedResult(false);
    }

    private DecodedInformation parseBlocks() throws FormatException {
        BlockParsedResult parseNumericBlock;
        boolean isFinished;
        do {
            int position = this.current.getPosition();
            if (this.current.isAlpha()) {
                parseNumericBlock = parseAlphaBlock();
                isFinished = parseNumericBlock.isFinished();
            } else if (this.current.isIsoIec646()) {
                parseNumericBlock = parseIsoIec646Block();
                isFinished = parseNumericBlock.isFinished();
            } else {
                parseNumericBlock = parseNumericBlock();
                isFinished = parseNumericBlock.isFinished();
            }
            if (!(position != this.current.getPosition()) && !isFinished) {
                break;
            }
        } while (!isFinished);
        return parseNumericBlock.getDecodedInformation();
    }

    private BlockParsedResult parseIsoIec646Block() throws FormatException {
        while (isStillIsoIec646(this.current.getPosition())) {
            DecodedChar decodeIsoIec646 = decodeIsoIec646(this.current.getPosition());
            this.current.setPosition(decodeIsoIec646.getNewPosition());
            if (decodeIsoIec646.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodeIsoIec646.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setAlpha();
        }
        return new BlockParsedResult(false);
    }

    private BlockParsedResult parseNumericBlock() throws FormatException {
        DecodedInformation decodedInformation;
        while (isStillNumeric(this.current.getPosition())) {
            DecodedNumeric decodeNumeric = decodeNumeric(this.current.getPosition());
            this.current.setPosition(decodeNumeric.getNewPosition());
            if (decodeNumeric.isFirstDigitFNC1()) {
                if (decodeNumeric.isSecondDigitFNC1()) {
                    decodedInformation = new DecodedInformation(this.current.getPosition(), this.buffer.toString());
                } else {
                    decodedInformation = new DecodedInformation(this.current.getPosition(), this.buffer.toString(), decodeNumeric.getSecondDigit());
                }
                return new BlockParsedResult(decodedInformation, true);
            }
            this.buffer.append(decodeNumeric.getFirstDigit());
            if (decodeNumeric.isSecondDigitFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodeNumeric.getSecondDigit());
        }
        if (isNumericToAlphaNumericLatch(this.current.getPosition())) {
            this.current.setAlpha();
            this.current.incrementPosition(4);
        }
        return new BlockParsedResult(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String decodeAllCodes(StringBuilder sb2, int i9) throws NotFoundException, FormatException {
        String str = null;
        while (true) {
            DecodedInformation decodeGeneralPurposeField = decodeGeneralPurposeField(i9, str);
            String parseFieldsInGeneralPurpose = FieldParser.parseFieldsInGeneralPurpose(decodeGeneralPurposeField.getNewString());
            if (parseFieldsInGeneralPurpose != null) {
                sb2.append(parseFieldsInGeneralPurpose);
            }
            String valueOf = decodeGeneralPurposeField.isRemaining() ? String.valueOf(decodeGeneralPurposeField.getRemainingValue()) : null;
            if (i9 != decodeGeneralPurposeField.getNewPosition()) {
                i9 = decodeGeneralPurposeField.getNewPosition();
                str = valueOf;
            } else {
                return sb2.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedInformation decodeGeneralPurposeField(int i9, String str) throws FormatException {
        this.buffer.setLength(0);
        if (str != null) {
            this.buffer.append(str);
        }
        this.current.setPosition(i9);
        DecodedInformation parseBlocks = parseBlocks();
        if (parseBlocks != null && parseBlocks.isRemaining()) {
            return new DecodedInformation(this.current.getPosition(), this.buffer.toString(), parseBlocks.getRemainingValue());
        }
        return new DecodedInformation(this.current.getPosition(), this.buffer.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int extractNumericValueFromBitArray(int i9, int i10) {
        return extractNumericValueFromBitArray(this.information, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int extractNumericValueFromBitArray(BitArray bitArray, int i9, int i10) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (bitArray.get(i9 + i12)) {
                i11 |= 1 << ((i10 - i12) - 1);
            }
        }
        return i11;
    }
}
