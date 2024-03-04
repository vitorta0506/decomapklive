package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public final class VINResultParser extends ResultParser {
    private static final Pattern IOQ = Pattern.compile("[IOQ]");
    private static final Pattern AZ09 = Pattern.compile("[A-Z0-9]{17}");

    private static char checkChar(int i9) {
        if (i9 < 10) {
            return (char) (i9 + 48);
        }
        if (i9 == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    private static boolean checkChecksum(CharSequence charSequence) {
        int i9 = 0;
        int i10 = 0;
        while (i9 < charSequence.length()) {
            int i11 = i9 + 1;
            i10 += vinPositionWeight(i11) * vinCharValue(charSequence.charAt(i9));
            i9 = i11;
        }
        return charSequence.charAt(8) == checkChar(i10 % 11);
    }

    private static String countryCode(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        char charAt2 = charSequence.charAt(1);
        if (charAt == '9') {
            if (charAt2 < 'A' || charAt2 > 'E') {
                if (charAt2 < '3' || charAt2 > '9') {
                    return null;
                }
                return "BR";
            }
            return "BR";
        } else if (charAt == 'S') {
            if (charAt2 < 'A' || charAt2 > 'M') {
                if (charAt2 < 'N' || charAt2 > 'T') {
                    return null;
                }
                return "DE";
            }
            return "UK";
        } else if (charAt == 'Z') {
            if (charAt2 < 'A' || charAt2 > 'R') {
                return null;
            }
            return "IT";
        } else {
            switch (charAt) {
                case '1':
                case '4':
                case '5':
                    return "US";
                case '2':
                    return "CA";
                case '3':
                    if (charAt2 < 'A' || charAt2 > 'W') {
                        return null;
                    }
                    return "MX";
                default:
                    switch (charAt) {
                        case 'J':
                            if (charAt2 < 'A' || charAt2 > 'T') {
                                return null;
                            }
                            return "JP";
                        case 'K':
                            if (charAt2 < 'L' || charAt2 > 'R') {
                                return null;
                            }
                            return "KO";
                        case 'L':
                            return "CN";
                        case 'M':
                            if (charAt2 < 'A' || charAt2 > 'E') {
                                return null;
                            }
                            return "IN";
                        default:
                            switch (charAt) {
                                case 'V':
                                    if (charAt2 < 'F' || charAt2 > 'R') {
                                        if (charAt2 < 'S' || charAt2 > 'W') {
                                            return null;
                                        }
                                        return "ES";
                                    }
                                    return "FR";
                                case 'W':
                                    return "DE";
                                case 'X':
                                    if (charAt2 != '0') {
                                        if (charAt2 < '3' || charAt2 > '9') {
                                            return null;
                                        }
                                        return "RU";
                                    }
                                    return "RU";
                                default:
                                    return null;
                            }
                    }
            }
        }
    }

    private static int modelYear(char c10) {
        if (c10 < 'E' || c10 > 'H') {
            if (c10 < 'J' || c10 > 'N') {
                if (c10 == 'P') {
                    return 1993;
                }
                if (c10 < 'R' || c10 > 'T') {
                    if (c10 < 'V' || c10 > 'Y') {
                        if (c10 < '1' || c10 > '9') {
                            if (c10 < 'A' || c10 > 'D') {
                                throw new IllegalArgumentException();
                            }
                            return (c10 - 'A') + 2010;
                        }
                        return (c10 - '1') + 2001;
                    }
                    return (c10 - 'V') + 1997;
                }
                return (c10 - 'R') + 1994;
            }
            return (c10 - 'J') + 1988;
        }
        return (c10 - 'E') + 1984;
    }

    private static int vinCharValue(char c10) {
        if (c10 < 'A' || c10 > 'I') {
            if (c10 < 'J' || c10 > 'R') {
                if (c10 < 'S' || c10 > 'Z') {
                    if (c10 < '0' || c10 > '9') {
                        throw new IllegalArgumentException();
                    }
                    return c10 - '0';
                }
                return (c10 - 'S') + 2;
            }
            return (c10 - 'J') + 1;
        }
        return (c10 - 'A') + 1;
    }

    private static int vinPositionWeight(int i9) {
        if (i9 <= 0 || i9 > 7) {
            if (i9 == 8) {
                return 10;
            }
            if (i9 == 9) {
                return 0;
            }
            if (i9 < 10 || i9 > 17) {
                throw new IllegalArgumentException();
            }
            return 19 - i9;
        }
        return 9 - i9;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public VINParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.CODE_39) {
            return null;
        }
        String trim = IOQ.matcher(result.getText()).replaceAll("").trim();
        if (AZ09.matcher(trim).matches()) {
            try {
                if (checkChecksum(trim)) {
                    String substring = trim.substring(0, 3);
                    return new VINParsedResult(trim, substring, trim.substring(3, 9), trim.substring(9, 17), countryCode(substring), trim.substring(3, 8), modelYear(trim.charAt(9)), trim.charAt(10), trim.substring(11));
                }
                return null;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        return null;
    }
}
