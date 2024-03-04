package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public final class BidiFormatter {
    private static final int DEFAULT_FLAGS = 2;
    static final BidiFormatter DEFAULT_LTR_INSTANCE;
    static final BidiFormatter DEFAULT_RTL_INSTANCE;
    static final TextDirectionHeuristicCompat DEFAULT_TEXT_DIRECTION_HEURISTIC;
    private static final int DIR_LTR = -1;
    private static final int DIR_RTL = 1;
    private static final int DIR_UNKNOWN = 0;
    private static final String EMPTY_STRING = "";
    private static final int FLAG_STEREO_RESET = 2;
    private static final char LRE = 8234;
    private static final char LRM = 8206;
    private static final String LRM_STRING;
    private static final char PDF = 8236;
    private static final char RLE = 8235;
    private static final char RLM = 8207;
    private static final String RLM_STRING;
    private final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
    private final int mFlags;
    private final boolean mIsRtlContext;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DirectionalityEstimator {
        private int charIndex;
        private final boolean isHtml;
        private char lastChar;
        private final int length;
        private final CharSequence text;
        private static final int DIR_TYPE_CACHE_SIZE = 1792;
        private static final byte[] DIR_TYPE_CACHE = new byte[DIR_TYPE_CACHE_SIZE];

        static {
            for (int i9 = 0; i9 < DIR_TYPE_CACHE_SIZE; i9++) {
                DIR_TYPE_CACHE[i9] = Character.getDirectionality(i9);
            }
        }

        DirectionalityEstimator(CharSequence charSequence, boolean z10) {
            this.text = charSequence;
            this.isHtml = z10;
            this.length = charSequence.length();
        }

        private static byte getCachedDirectionality(char c10) {
            return c10 < DIR_TYPE_CACHE_SIZE ? DIR_TYPE_CACHE[c10] : Character.getDirectionality(c10);
        }

        private byte skipEntityBackward() {
            char charAt;
            int i9 = this.charIndex;
            do {
                int i10 = this.charIndex;
                if (i10 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i11 = i10 - 1;
                this.charIndex = i11;
                charAt = charSequence.charAt(i11);
                this.lastChar = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.charIndex = i9;
            this.lastChar = ';';
            return (byte) 13;
        }

        private byte skipEntityForward() {
            char charAt;
            do {
                int i9 = this.charIndex;
                if (i9 >= this.length) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.text;
                this.charIndex = i9 + 1;
                charAt = charSequence.charAt(i9);
                this.lastChar = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        private byte skipTagBackward() {
            char charAt;
            int i9 = this.charIndex;
            while (true) {
                int i10 = this.charIndex;
                if (i10 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i11 = i10 - 1;
                this.charIndex = i11;
                char charAt2 = charSequence.charAt(i11);
                this.lastChar = charAt2;
                if (charAt2 == '<') {
                    return (byte) 12;
                }
                if (charAt2 == '>') {
                    break;
                } else if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i12 = this.charIndex;
                        if (i12 > 0) {
                            CharSequence charSequence2 = this.text;
                            int i13 = i12 - 1;
                            this.charIndex = i13;
                            charAt = charSequence2.charAt(i13);
                            this.lastChar = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
            this.charIndex = i9;
            this.lastChar = Typography.greater;
            return (byte) 13;
        }

        private byte skipTagForward() {
            char charAt;
            int i9 = this.charIndex;
            while (true) {
                int i10 = this.charIndex;
                if (i10 < this.length) {
                    CharSequence charSequence = this.text;
                    this.charIndex = i10 + 1;
                    char charAt2 = charSequence.charAt(i10);
                    this.lastChar = charAt2;
                    if (charAt2 == '>') {
                        return (byte) 12;
                    }
                    if (charAt2 == '\"' || charAt2 == '\'') {
                        do {
                            int i11 = this.charIndex;
                            if (i11 < this.length) {
                                CharSequence charSequence2 = this.text;
                                this.charIndex = i11 + 1;
                                charAt = charSequence2.charAt(i11);
                                this.lastChar = charAt;
                            }
                        } while (charAt != charAt2);
                    }
                } else {
                    this.charIndex = i9;
                    this.lastChar = Typography.less;
                    return (byte) 13;
                }
            }
        }

        byte dirTypeBackward() {
            char charAt = this.text.charAt(this.charIndex - 1);
            this.lastChar = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.text, this.charIndex);
                this.charIndex -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.charIndex--;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (this.isHtml) {
                char c10 = this.lastChar;
                if (c10 == '>') {
                    return skipTagBackward();
                }
                return c10 == ';' ? skipEntityBackward() : cachedDirectionality;
            }
            return cachedDirectionality;
        }

        byte dirTypeForward() {
            char charAt = this.text.charAt(this.charIndex);
            this.lastChar = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.text, this.charIndex);
                this.charIndex += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.charIndex++;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (this.isHtml) {
                char c10 = this.lastChar;
                if (c10 == '<') {
                    return skipTagForward();
                }
                return c10 == '&' ? skipEntityForward() : cachedDirectionality;
            }
            return cachedDirectionality;
        }

        int getEntryDir() {
            this.charIndex = 0;
            int i9 = 0;
            int i10 = 0;
            int i11 = 0;
            while (this.charIndex < this.length && i9 == 0) {
                byte dirTypeForward = dirTypeForward();
                if (dirTypeForward != 0) {
                    if (dirTypeForward == 1 || dirTypeForward == 2) {
                        if (i11 == 0) {
                            return 1;
                        }
                    } else if (dirTypeForward != 9) {
                        switch (dirTypeForward) {
                            case 14:
                            case 15:
                                i11++;
                                i10 = -1;
                                break;
                            case 16:
                            case 17:
                                i11++;
                                i10 = 1;
                                break;
                            case 18:
                                i11--;
                                i10 = 0;
                                break;
                        }
                    }
                } else if (i11 == 0) {
                    return -1;
                }
                i9 = i11;
            }
            if (i9 == 0) {
                return 0;
            }
            if (i10 != 0) {
                return i10;
            }
            while (this.charIndex > 0) {
                switch (dirTypeBackward()) {
                    case 14:
                    case 15:
                        if (i9 == i11) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i9 == i11) {
                            return 1;
                        }
                        break;
                    case 18:
                        i11++;
                        continue;
                }
                i11--;
            }
            return 0;
        }

        int getExitDir() {
            this.charIndex = this.length;
            int i9 = 0;
            int i10 = 0;
            while (this.charIndex > 0) {
                byte dirTypeBackward = dirTypeBackward();
                if (dirTypeBackward != 0) {
                    if (dirTypeBackward == 1 || dirTypeBackward == 2) {
                        if (i9 == 0) {
                            return 1;
                        }
                        if (i10 == 0) {
                            i10 = i9;
                        }
                    } else if (dirTypeBackward != 9) {
                        switch (dirTypeBackward) {
                            case 14:
                            case 15:
                                if (i10 == i9) {
                                    return -1;
                                }
                                i9--;
                                break;
                            case 16:
                            case 17:
                                if (i10 == i9) {
                                    return 1;
                                }
                                i9--;
                                break;
                            case 18:
                                i9++;
                                break;
                            default:
                                if (i10 != 0) {
                                    break;
                                } else {
                                    i10 = i9;
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else if (i9 == 0) {
                    return -1;
                } else {
                    if (i10 == 0) {
                        i10 = i9;
                    }
                }
            }
            return 0;
        }
    }

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        DEFAULT_TEXT_DIRECTION_HEURISTIC = textDirectionHeuristicCompat;
        LRM_STRING = Character.toString(LRM);
        RLM_STRING = Character.toString(RLM);
        DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, textDirectionHeuristicCompat);
        DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, textDirectionHeuristicCompat);
    }

    BidiFormatter(boolean z10, int i9, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.mIsRtlContext = z10;
        this.mFlags = i9;
        this.mDefaultTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
    }

    private static int getEntryDir(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).getEntryDir();
    }

    private static int getExitDir(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).getExitDir();
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    static boolean isRtlLocale(Locale locale) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
    }

    private String markAfter(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        if (this.mIsRtlContext || !(isRtl || getExitDir(charSequence) == 1)) {
            return this.mIsRtlContext ? (!isRtl || getExitDir(charSequence) == -1) ? RLM_STRING : "" : "";
        }
        return LRM_STRING;
    }

    private String markBefore(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        if (this.mIsRtlContext || !(isRtl || getEntryDir(charSequence) == 1)) {
            return this.mIsRtlContext ? (!isRtl || getEntryDir(charSequence) == -1) ? RLM_STRING : "" : "";
        }
        return LRM_STRING;
    }

    public boolean getStereoReset() {
        return (this.mFlags & 2) != 0;
    }

    public boolean isRtl(String str) {
        return isRtl((CharSequence) str);
    }

    public boolean isRtlContext() {
        return this.mIsRtlContext;
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z10) {
        if (str == null) {
            return null;
        }
        return unicodeWrap((CharSequence) str, textDirectionHeuristicCompat, z10).toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

        public Builder() {
            initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
        }

        private static BidiFormatter getDefaultInstanceFromContext(boolean z10) {
            return z10 ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
        }

        private void initialize(boolean z10) {
            this.mIsRtlContext = z10;
            this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        public BidiFormatter build() {
            if (this.mFlags == 2 && this.mTextDirectionHeuristicCompat == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC) {
                return getDefaultInstanceFromContext(this.mIsRtlContext);
            }
            return new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristicCompat);
        }

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
            this.mTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
            return this;
        }

        public Builder stereoReset(boolean z10) {
            if (z10) {
                this.mFlags |= 2;
            } else {
                this.mFlags &= -3;
            }
            return this;
        }

        public Builder(boolean z10) {
            initialize(z10);
        }

        public Builder(Locale locale) {
            initialize(BidiFormatter.isRtlLocale(locale));
        }
    }

    public static BidiFormatter getInstance(boolean z10) {
        return new Builder(z10).build();
    }

    public boolean isRtl(CharSequence charSequence) {
        return this.mDefaultTextDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z10) {
        if (charSequence == null) {
            return null;
        }
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (getStereoReset() && z10) {
            spannableStringBuilder.append((CharSequence) markBefore(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        if (isRtl != this.mIsRtlContext) {
            spannableStringBuilder.append(isRtl ? RLE : LRE);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(PDF);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z10) {
            spannableStringBuilder.append((CharSequence) markAfter(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        return spannableStringBuilder;
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(str, textDirectionHeuristicCompat, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(charSequence, textDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String str, boolean z10) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristicCompat, z10);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, boolean z10) {
        return unicodeWrap(charSequence, this.mDefaultTextDirectionHeuristicCompat, z10);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristicCompat, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence) {
        return unicodeWrap(charSequence, this.mDefaultTextDirectionHeuristicCompat, true);
    }
}
