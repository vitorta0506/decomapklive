package com.google.zxing.qrcode.decoder;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();
    private static final int GB2312_SUBSET = 1;

    /* renamed from: com.google.zxing.qrcode.decoder.DecodedBitStreamParser$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private DecodedBitStreamParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static DecoderResult decode(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) throws FormatException {
        Mode forBits;
        Mode mode;
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb2 = new StringBuilder(50);
        int i9 = 1;
        ArrayList arrayList = new ArrayList(1);
        CharacterSetECI characterSetECI = null;
        boolean z10 = false;
        int i10 = -1;
        int i11 = -1;
        while (true) {
            try {
                if (bitSource.available() < 4) {
                    forBits = Mode.TERMINATOR;
                } else {
                    forBits = Mode.forBits(bitSource.readBits(4));
                }
                Mode mode2 = forBits;
                int[] iArr = AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode;
                switch (iArr[mode2.ordinal()]) {
                    case 5:
                        mode = mode2;
                        break;
                    case 6:
                    case 7:
                        mode = mode2;
                        z10 = true;
                        break;
                    case 8:
                        if (bitSource.available() >= 16) {
                            int readBits = bitSource.readBits(8);
                            i11 = bitSource.readBits(8);
                            i10 = readBits;
                            mode = mode2;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    case 9:
                        characterSetECI = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(bitSource));
                        if (characterSetECI == null) {
                            throw FormatException.getFormatInstance();
                        }
                        mode = mode2;
                        break;
                    case 10:
                        int readBits2 = bitSource.readBits(4);
                        int readBits3 = bitSource.readBits(mode2.getCharacterCountBits(version));
                        if (readBits2 == i9) {
                            decodeHanziSegment(bitSource, sb2, readBits3);
                        }
                        mode = mode2;
                        break;
                    default:
                        int readBits4 = bitSource.readBits(mode2.getCharacterCountBits(version));
                        int i12 = iArr[mode2.ordinal()];
                        if (i12 == i9) {
                            mode = mode2;
                            decodeNumericSegment(bitSource, sb2, readBits4);
                            break;
                        } else if (i12 == 2) {
                            mode = mode2;
                            decodeAlphanumericSegment(bitSource, sb2, readBits4, z10);
                            break;
                        } else if (i12 == 3) {
                            mode = mode2;
                            decodeByteSegment(bitSource, sb2, readBits4, characterSetECI, arrayList, map);
                            break;
                        } else if (i12 == 4) {
                            decodeKanjiSegment(bitSource, sb2, readBits4);
                            mode = mode2;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                }
                if (mode == Mode.TERMINATOR) {
                    return new DecoderResult(bArr, sb2.toString(), arrayList.isEmpty() ? null : arrayList, errorCorrectionLevel == null ? null : errorCorrectionLevel.toString(), i10, i11);
                }
                i9 = 1;
            } catch (IllegalArgumentException unused) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    private static void decodeAlphanumericSegment(BitSource bitSource, StringBuilder sb2, int i9, boolean z10) throws FormatException {
        while (i9 > 1) {
            if (bitSource.available() >= 11) {
                int readBits = bitSource.readBits(11);
                sb2.append(toAlphaNumericChar(readBits / 45));
                sb2.append(toAlphaNumericChar(readBits % 45));
                i9 -= 2;
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (i9 == 1) {
            if (bitSource.available() >= 6) {
                sb2.append(toAlphaNumericChar(bitSource.readBits(6)));
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (z10) {
            for (int length = sb2.length(); length < sb2.length(); length++) {
                if (sb2.charAt(length) == '%') {
                    if (length < sb2.length() - 1) {
                        int i10 = length + 1;
                        if (sb2.charAt(i10) == '%') {
                            sb2.deleteCharAt(i10);
                        }
                    }
                    sb2.setCharAt(length, (char) 29);
                }
            }
        }
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb2, int i9, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        String name;
        if ((i9 << 3) <= bitSource.available()) {
            byte[] bArr = new byte[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                bArr[i10] = (byte) bitSource.readBits(8);
            }
            if (characterSetECI == null) {
                name = StringUtils.guessEncoding(bArr, map);
            } else {
                name = characterSetECI.name();
            }
            try {
                sb2.append(new String(bArr, name));
                collection.add(bArr);
                return;
            } catch (UnsupportedEncodingException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb2, int i9) throws FormatException {
        if (i9 * 13 <= bitSource.available()) {
            byte[] bArr = new byte[i9 * 2];
            int i10 = 0;
            while (i9 > 0) {
                int readBits = bitSource.readBits(13);
                int i11 = (readBits % 96) | ((readBits / 96) << 8);
                int i12 = i11 + (i11 < 959 ? 41377 : 42657);
                bArr[i10] = (byte) (i12 >> 8);
                bArr[i10 + 1] = (byte) i12;
                i10 += 2;
                i9--;
            }
            try {
                sb2.append(new String(bArr, StringUtils.GB2312));
                return;
            } catch (UnsupportedEncodingException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb2, int i9) throws FormatException {
        if (i9 * 13 <= bitSource.available()) {
            byte[] bArr = new byte[i9 * 2];
            int i10 = 0;
            while (i9 > 0) {
                int readBits = bitSource.readBits(13);
                int i11 = (readBits % 192) | ((readBits / 192) << 8);
                int i12 = i11 + (i11 < 7936 ? 33088 : 49472);
                bArr[i10] = (byte) (i12 >> 8);
                bArr[i10 + 1] = (byte) i12;
                i10 += 2;
                i9--;
            }
            try {
                sb2.append(new String(bArr, StringUtils.SHIFT_JIS));
                return;
            } catch (UnsupportedEncodingException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb2, int i9) throws FormatException {
        while (i9 >= 3) {
            if (bitSource.available() >= 10) {
                int readBits = bitSource.readBits(10);
                if (readBits < 1000) {
                    sb2.append(toAlphaNumericChar(readBits / 100));
                    sb2.append(toAlphaNumericChar((readBits / 10) % 10));
                    sb2.append(toAlphaNumericChar(readBits % 10));
                    i9 -= 3;
                } else {
                    throw FormatException.getFormatInstance();
                }
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (i9 == 2) {
            if (bitSource.available() >= 7) {
                int readBits2 = bitSource.readBits(7);
                if (readBits2 < 100) {
                    sb2.append(toAlphaNumericChar(readBits2 / 10));
                    sb2.append(toAlphaNumericChar(readBits2 % 10));
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            throw FormatException.getFormatInstance();
        } else if (i9 == 1) {
            if (bitSource.available() >= 4) {
                int readBits3 = bitSource.readBits(4);
                if (readBits3 < 10) {
                    sb2.append(toAlphaNumericChar(readBits3));
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            throw FormatException.getFormatInstance();
        }
    }

    private static int parseECIValue(BitSource bitSource) throws FormatException {
        int readBits = bitSource.readBits(8);
        if ((readBits & 128) == 0) {
            return readBits & 127;
        }
        if ((readBits & 192) == 128) {
            return bitSource.readBits(8) | ((readBits & 63) << 8);
        }
        if ((readBits & 224) == 192) {
            return bitSource.readBits(16) | ((readBits & 31) << 16);
        }
        throw FormatException.getFormatInstance();
    }

    private static char toAlphaNumericChar(int i9) throws FormatException {
        char[] cArr = ALPHANUMERIC_CHARS;
        if (i9 < cArr.length) {
            return cArr[i9];
        }
        throw FormatException.getFormatInstance();
    }
}
