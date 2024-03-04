package com.google.zxing.aztec.decoder;

import androidx.exifinterface.media.ExifInterface;
import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.utils.ReportController;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.opendevice.c;
import com.huawei.hms.opendevice.i;
import com.huawei.hms.push.e;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.Arrays;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class Decoder {
    private AztecDetectorResult ddata;
    private static final String[] UPPER_TABLE = {"CTRL_PS", " ", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] LOWER_TABLE = {"CTRL_PS", " ", "a", "b", c.f27627a, "d", e.f27721a, "f", "g", "h", i.TAG, "j", "k", NotifyType.LIGHTS, "m", "n", "o", "p", "q", "r", NotifyType.SOUND, "t", "u", NotifyType.VIBRATE, "w", x.f19108w, "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] MIXED_TABLE = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", IOUtils.LINE_SEPARATOR_UNIX, "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", HiAnalyticsConstant.REPORT_VAL_SEPARATOR, "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] PUNCT_TABLE = {"", "\r", IOUtils.LINE_SEPARATOR_WINDOWS, ". ", ", ", ": ", "!", "\"", "#", "$", "%", ContainerUtils.FIELD_DELIMITER, "'", "(", ")", ProxyConfig.MATCH_ALL_SCHEMES, "+", ",", "-", ".", FileUtils.RES_PREFIX_STORAGE, CertificateUtil.DELIMITER, ";", "<", ContainerUtils.KEY_VALUE_DELIMITER, ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] DIGIT_TABLE = {"CTRL_PS", " ", "0", "1", "2", "3", "4", "5", MVPActivity.FROM_BAG_BADGE, "7", ReportController.REPORT_TYPE_ONE_V_ONE, "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.aztec.decoder.Decoder$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;

        static {
            int[] iArr = new int[Table.values().length];
            $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table = iArr;
            try {
                iArr[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    static byte[] convertBoolArrayToByteArray(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i9 = 0; i9 < length; i9++) {
            bArr[i9] = readByte(zArr, i9 << 3);
        }
        return bArr;
    }

    private boolean[] correctBits(boolean[] zArr) throws FormatException {
        GenericGF genericGF;
        int i9 = 8;
        if (this.ddata.getNbLayers() <= 2) {
            i9 = 6;
            genericGF = GenericGF.AZTEC_DATA_6;
        } else if (this.ddata.getNbLayers() <= 8) {
            genericGF = GenericGF.AZTEC_DATA_8;
        } else if (this.ddata.getNbLayers() <= 22) {
            i9 = 10;
            genericGF = GenericGF.AZTEC_DATA_10;
        } else {
            i9 = 12;
            genericGF = GenericGF.AZTEC_DATA_12;
        }
        int nbDatablocks = this.ddata.getNbDatablocks();
        int length = zArr.length / i9;
        if (length >= nbDatablocks) {
            int length2 = zArr.length % i9;
            int[] iArr = new int[length];
            int i10 = 0;
            while (i10 < length) {
                iArr[i10] = readCode(zArr, length2, i9);
                i10++;
                length2 += i9;
            }
            try {
                new ReedSolomonDecoder(genericGF).decode(iArr, length - nbDatablocks);
                int i11 = (1 << i9) - 1;
                int i12 = 0;
                for (int i13 = 0; i13 < nbDatablocks; i13++) {
                    int i14 = iArr[i13];
                    if (i14 == 0 || i14 == i11) {
                        throw FormatException.getFormatInstance();
                    }
                    if (i14 == 1 || i14 == i11 - 1) {
                        i12++;
                    }
                }
                boolean[] zArr2 = new boolean[(nbDatablocks * i9) - i12];
                int i15 = 0;
                for (int i16 = 0; i16 < nbDatablocks; i16++) {
                    int i17 = iArr[i16];
                    if (i17 == 1 || i17 == i11 - 1) {
                        Arrays.fill(zArr2, i15, (i15 + i9) - 1, i17 > 1);
                        i15 += i9 - 1;
                    } else {
                        int i18 = i9 - 1;
                        while (i18 >= 0) {
                            int i19 = i15 + 1;
                            zArr2[i15] = ((1 << i18) & i17) != 0;
                            i18--;
                            i15 = i19;
                        }
                    }
                }
                return zArr2;
            } catch (ReedSolomonException e10) {
                throw FormatException.getFormatInstance(e10);
            }
        }
        throw FormatException.getFormatInstance();
    }

    private boolean[] extractBits(BitMatrix bitMatrix) {
        boolean isCompact = this.ddata.isCompact();
        int nbLayers = this.ddata.getNbLayers();
        int i9 = (isCompact ? 11 : 14) + (nbLayers << 2);
        int[] iArr = new int[i9];
        boolean[] zArr = new boolean[totalBitsInLayer(nbLayers, isCompact)];
        int i10 = 2;
        if (isCompact) {
            for (int i11 = 0; i11 < i9; i11++) {
                iArr[i11] = i11;
            }
        } else {
            int i12 = i9 / 2;
            int i13 = ((i9 + 1) + (((i12 - 1) / 15) * 2)) / 2;
            for (int i14 = 0; i14 < i12; i14++) {
                int i15 = (i14 / 15) + i14;
                iArr[(i12 - i14) - 1] = (i13 - i15) - 1;
                iArr[i12 + i14] = i15 + i13 + 1;
            }
        }
        int i16 = 0;
        int i17 = 0;
        while (i16 < nbLayers) {
            int i18 = ((nbLayers - i16) << i10) + (isCompact ? 9 : 12);
            int i19 = i16 << 1;
            int i20 = (i9 - 1) - i19;
            int i21 = 0;
            while (i21 < i18) {
                int i22 = i21 << 1;
                int i23 = 0;
                while (i23 < i10) {
                    int i24 = i19 + i23;
                    int i25 = i19 + i21;
                    zArr[i17 + i22 + i23] = bitMatrix.get(iArr[i24], iArr[i25]);
                    int i26 = iArr[i25];
                    int i27 = i20 - i23;
                    boolean z10 = isCompact;
                    zArr[(i18 * 2) + i17 + i22 + i23] = bitMatrix.get(i26, iArr[i27]);
                    int i28 = i20 - i21;
                    zArr[(i18 * 4) + i17 + i22 + i23] = bitMatrix.get(iArr[i27], iArr[i28]);
                    zArr[(i18 * 6) + i17 + i22 + i23] = bitMatrix.get(iArr[i28], iArr[i24]);
                    i23++;
                    nbLayers = nbLayers;
                    isCompact = z10;
                    i10 = 2;
                }
                i21++;
                i10 = 2;
            }
            i17 += i18 << 3;
            i16++;
            i10 = 2;
        }
        return zArr;
    }

    private static String getCharacter(Table table, int i9) {
        int i10 = AnonymousClass1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            return DIGIT_TABLE[i9];
                        }
                        throw new IllegalStateException("Bad table");
                    }
                    return PUNCT_TABLE[i9];
                }
                return MIXED_TABLE[i9];
            }
            return LOWER_TABLE[i9];
        }
        return UPPER_TABLE[i9];
    }

    private static String getEncodedData(boolean[] zArr) {
        int length = zArr.length;
        Table table = Table.UPPER;
        StringBuilder sb2 = new StringBuilder(20);
        Table table2 = table;
        int i9 = 0;
        while (i9 < length) {
            if (table != Table.BINARY) {
                int i10 = table == Table.DIGIT ? 4 : 5;
                if (length - i9 < i10) {
                    break;
                }
                int readCode = readCode(zArr, i9, i10);
                i9 += i10;
                String character = getCharacter(table, readCode);
                if (character.startsWith("CTRL_")) {
                    table2 = getTable(character.charAt(5));
                    if (character.charAt(6) != 'L') {
                        table2 = table;
                        table = table2;
                    }
                } else {
                    sb2.append(character);
                }
                table = table2;
            } else if (length - i9 < 5) {
                break;
            } else {
                int readCode2 = readCode(zArr, i9, 5);
                i9 += 5;
                if (readCode2 == 0) {
                    if (length - i9 < 11) {
                        break;
                    }
                    readCode2 = readCode(zArr, i9, 11) + 31;
                    i9 += 11;
                }
                int i11 = 0;
                while (true) {
                    if (i11 >= readCode2) {
                        break;
                    } else if (length - i9 < 8) {
                        i9 = length;
                        break;
                    } else {
                        sb2.append((char) readCode(zArr, i9, 8));
                        i9 += 8;
                        i11++;
                    }
                }
                table = table2;
            }
        }
        return sb2.toString();
    }

    private static Table getTable(char c10) {
        if (c10 != 'B') {
            if (c10 != 'D') {
                if (c10 != 'P') {
                    if (c10 != 'L') {
                        if (c10 != 'M') {
                            return Table.UPPER;
                        }
                        return Table.MIXED;
                    }
                    return Table.LOWER;
                }
                return Table.PUNCT;
            }
            return Table.DIGIT;
        }
        return Table.BINARY;
    }

    public static String highLevelDecode(boolean[] zArr) {
        return getEncodedData(zArr);
    }

    private static byte readByte(boolean[] zArr, int i9) {
        int readCode;
        int length = zArr.length - i9;
        if (length >= 8) {
            readCode = readCode(zArr, i9, 8);
        } else {
            readCode = readCode(zArr, i9, length) << (8 - length);
        }
        return (byte) readCode;
    }

    private static int readCode(boolean[] zArr, int i9, int i10) {
        int i11 = 0;
        for (int i12 = i9; i12 < i9 + i10; i12++) {
            i11 <<= 1;
            if (zArr[i12]) {
                i11 |= 1;
            }
        }
        return i11;
    }

    private static int totalBitsInLayer(int i9, boolean z10) {
        return ((z10 ? 88 : 112) + (i9 << 4)) * i9;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) throws FormatException {
        this.ddata = aztecDetectorResult;
        boolean[] correctBits = correctBits(extractBits(aztecDetectorResult.getBits()));
        DecoderResult decoderResult = new DecoderResult(convertBoolArrayToByteArray(correctBits), getEncodedData(correctBits), null, null);
        decoderResult.setNumBits(correctBits.length);
        return decoderResult;
    }
}
