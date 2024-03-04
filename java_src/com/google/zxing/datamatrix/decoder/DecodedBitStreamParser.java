package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.DecoderResult;
import io.jsonwebtoken.JwtParser;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] C40_SHIFT2_SET_CHARS;
    private static final char[] TEXT_BASIC_SET_CHARS;
    private static final char[] TEXT_SHIFT2_SET_CHARS;
    private static final char[] TEXT_SHIFT3_SET_CHARS;

    /* renamed from: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE
    }

    static {
        char[] cArr = {'!', Typography.quote, '#', Typography.dollar, '%', Typography.amp, '\'', '(', ')', '*', '+', ',', '-', JwtParser.SEPARATOR_CHAR, IOUtils.DIR_SEPARATOR_UNIX, ':', ';', Typography.less, '=', Typography.greater, '?', '@', '[', IOUtils.DIR_SEPARATOR_WINDOWS, ']', '^', '_'};
        C40_SHIFT2_SET_CHARS = cArr;
        TEXT_BASIC_SET_CHARS = new char[]{'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        TEXT_SHIFT2_SET_CHARS = cArr;
        TEXT_SHIFT3_SET_CHARS = new char[]{'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};
    }

    private DecodedBitStreamParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DecoderResult decode(byte[] bArr) throws FormatException {
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb2 = new StringBuilder(100);
        StringBuilder sb3 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        Mode mode = Mode.ASCII_ENCODE;
        do {
            Mode mode2 = Mode.ASCII_ENCODE;
            if (mode == mode2) {
                mode = decodeAsciiSegment(bitSource, sb2, sb3);
            } else {
                int i9 = AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[mode.ordinal()];
                if (i9 == 1) {
                    decodeC40Segment(bitSource, sb2);
                } else if (i9 == 2) {
                    decodeTextSegment(bitSource, sb2);
                } else if (i9 == 3) {
                    decodeAnsiX12Segment(bitSource, sb2);
                } else if (i9 == 4) {
                    decodeEdifactSegment(bitSource, sb2);
                } else if (i9 == 5) {
                    decodeBase256Segment(bitSource, sb2, arrayList);
                } else {
                    throw FormatException.getFormatInstance();
                }
                mode = mode2;
            }
            if (mode == Mode.PAD_ENCODE) {
                break;
            }
        } while (bitSource.available() > 0);
        if (sb3.length() > 0) {
            sb2.append((CharSequence) sb3);
        }
        String sb4 = sb2.toString();
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return new DecoderResult(bArr, sb4, arrayList, null);
    }

    private static void decodeAnsiX12Segment(BitSource bitSource, StringBuilder sb2) throws FormatException {
        int readBits;
        int[] iArr = new int[3];
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i9 = 0; i9 < 3; i9++) {
                int i10 = iArr[i9];
                if (i10 == 0) {
                    sb2.append('\r');
                } else if (i10 == 1) {
                    sb2.append('*');
                } else if (i10 == 2) {
                    sb2.append(Typography.greater);
                } else if (i10 == 3) {
                    sb2.append(' ');
                } else if (i10 < 14) {
                    sb2.append((char) (i10 + 44));
                } else if (i10 < 40) {
                    sb2.append((char) (i10 + 51));
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static Mode decodeAsciiSegment(BitSource bitSource, StringBuilder sb2, StringBuilder sb3) throws FormatException {
        boolean z10 = false;
        do {
            int readBits = bitSource.readBits(8);
            if (readBits == 0) {
                throw FormatException.getFormatInstance();
            }
            if (readBits > 128) {
                if (readBits != 129) {
                    if (readBits <= 229) {
                        int i9 = readBits - 130;
                        if (i9 < 10) {
                            sb2.append('0');
                        }
                        sb2.append(i9);
                    } else {
                        switch (readBits) {
                            case 230:
                                return Mode.C40_ENCODE;
                            case 231:
                                return Mode.BASE256_ENCODE;
                            case 232:
                                sb2.append((char) 29);
                                break;
                            case 233:
                            case 234:
                            case 241:
                                break;
                            case 235:
                                z10 = true;
                                break;
                            case 236:
                                sb2.append("[)>\u001e05\u001d");
                                sb3.insert(0, "\u001e\u0004");
                                break;
                            case 237:
                                sb2.append("[)>\u001e06\u001d");
                                sb3.insert(0, "\u001e\u0004");
                                break;
                            case 238:
                                return Mode.ANSIX12_ENCODE;
                            case 239:
                                return Mode.TEXT_ENCODE;
                            case 240:
                                return Mode.EDIFACT_ENCODE;
                            default:
                                if (readBits != 254 || bitSource.available() != 0) {
                                    throw FormatException.getFormatInstance();
                                }
                                break;
                        }
                    }
                } else {
                    return Mode.PAD_ENCODE;
                }
            } else {
                if (z10) {
                    readBits += 128;
                }
                sb2.append((char) (readBits - 1));
                return Mode.ASCII_ENCODE;
            }
        } while (bitSource.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeBase256Segment(BitSource bitSource, StringBuilder sb2, Collection<byte[]> collection) throws FormatException {
        int byteOffset = bitSource.getByteOffset() + 1;
        int i9 = byteOffset + 1;
        int unrandomize255State = unrandomize255State(bitSource.readBits(8), byteOffset);
        if (unrandomize255State == 0) {
            unrandomize255State = bitSource.available() / 8;
        } else if (unrandomize255State >= 250) {
            unrandomize255State = ((unrandomize255State - 249) * 250) + unrandomize255State(bitSource.readBits(8), i9);
            i9++;
        }
        if (unrandomize255State >= 0) {
            byte[] bArr = new byte[unrandomize255State];
            int i10 = 0;
            while (i10 < unrandomize255State) {
                if (bitSource.available() >= 8) {
                    bArr[i10] = (byte) unrandomize255State(bitSource.readBits(8), i9);
                    i10++;
                    i9++;
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            collection.add(bArr);
            try {
                sb2.append(new String(bArr, "ISO8859_1"));
                return;
            } catch (UnsupportedEncodingException e10) {
                throw new IllegalStateException("Platform does not support required encoding: ".concat(String.valueOf(e10)));
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeC40Segment(BitSource bitSource, StringBuilder sb2) throws FormatException {
        int readBits;
        int[] iArr = new int[3];
        boolean z10 = false;
        int i9 = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i10 = 0; i10 < 3; i10++) {
                int i11 = iArr[i10];
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 == 2) {
                            char[] cArr = C40_SHIFT2_SET_CHARS;
                            if (i11 < cArr.length) {
                                char c10 = cArr[i11];
                                if (z10) {
                                    sb2.append((char) (c10 + 128));
                                    z10 = false;
                                } else {
                                    sb2.append(c10);
                                }
                            } else if (i11 == 27) {
                                sb2.append((char) 29);
                            } else if (i11 != 30) {
                                throw FormatException.getFormatInstance();
                            } else {
                                z10 = true;
                            }
                            i9 = 0;
                        } else if (i9 != 3) {
                            throw FormatException.getFormatInstance();
                        } else {
                            if (z10) {
                                sb2.append((char) (i11 + 224));
                                z10 = false;
                                i9 = 0;
                            } else {
                                sb2.append((char) (i11 + 96));
                                i9 = 0;
                            }
                        }
                    } else if (z10) {
                        sb2.append((char) (i11 + 128));
                        z10 = false;
                        i9 = 0;
                    } else {
                        sb2.append((char) i11);
                        i9 = 0;
                    }
                } else if (i11 < 3) {
                    i9 = i11 + 1;
                } else {
                    char[] cArr2 = C40_BASIC_SET_CHARS;
                    if (i11 < cArr2.length) {
                        char c11 = cArr2[i11];
                        if (z10) {
                            sb2.append((char) (c11 + 128));
                            z10 = false;
                        } else {
                            sb2.append(c11);
                        }
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeEdifactSegment(BitSource bitSource, StringBuilder sb2) {
        while (bitSource.available() > 16) {
            for (int i9 = 0; i9 < 4; i9++) {
                int readBits = bitSource.readBits(6);
                if (readBits == 31) {
                    int bitOffset = 8 - bitSource.getBitOffset();
                    if (bitOffset != 8) {
                        bitSource.readBits(bitOffset);
                        return;
                    }
                    return;
                }
                if ((readBits & 32) == 0) {
                    readBits |= 64;
                }
                sb2.append((char) readBits);
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeTextSegment(BitSource bitSource, StringBuilder sb2) throws FormatException {
        int readBits;
        int[] iArr = new int[3];
        boolean z10 = false;
        int i9 = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i10 = 0; i10 < 3; i10++) {
                int i11 = iArr[i10];
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 == 2) {
                            char[] cArr = TEXT_SHIFT2_SET_CHARS;
                            if (i11 < cArr.length) {
                                char c10 = cArr[i11];
                                if (z10) {
                                    sb2.append((char) (c10 + 128));
                                    z10 = false;
                                } else {
                                    sb2.append(c10);
                                }
                            } else if (i11 == 27) {
                                sb2.append((char) 29);
                            } else if (i11 != 30) {
                                throw FormatException.getFormatInstance();
                            } else {
                                z10 = true;
                            }
                            i9 = 0;
                        } else if (i9 == 3) {
                            char[] cArr2 = TEXT_SHIFT3_SET_CHARS;
                            if (i11 < cArr2.length) {
                                char c11 = cArr2[i11];
                                if (z10) {
                                    sb2.append((char) (c11 + 128));
                                    z10 = false;
                                    i9 = 0;
                                } else {
                                    sb2.append(c11);
                                    i9 = 0;
                                }
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    } else if (z10) {
                        sb2.append((char) (i11 + 128));
                        z10 = false;
                        i9 = 0;
                    } else {
                        sb2.append((char) i11);
                        i9 = 0;
                    }
                } else if (i11 < 3) {
                    i9 = i11 + 1;
                } else {
                    char[] cArr3 = TEXT_BASIC_SET_CHARS;
                    if (i11 < cArr3.length) {
                        char c12 = cArr3[i11];
                        if (z10) {
                            sb2.append((char) (c12 + 128));
                            z10 = false;
                        } else {
                            sb2.append(c12);
                        }
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void parseTwoBytes(int i9, int i10, int[] iArr) {
        int i11 = ((i9 << 8) + i10) - 1;
        int i12 = i11 / 1600;
        iArr[0] = i12;
        int i13 = i11 - (i12 * 1600);
        int i14 = i13 / 40;
        iArr[1] = i14;
        iArr[2] = i13 - (i14 * 40);
    }

    private static int unrandomize255State(int i9, int i10) {
        int i11 = i9 - (((i10 * 149) % 255) + 1);
        return i11 >= 0 ? i11 : i11 + 256;
    }
}
