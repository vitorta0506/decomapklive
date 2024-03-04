package kotlin.text;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import io.jsonwebtoken.JwtParser;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.IntIterator;
import kotlin.internal.InlineOnly;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000~\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\f\n\u0002\b\u0011\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\u0019\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0087\b\u001a!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b\u001a)\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0087\b\u001a!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b\u001a!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b\u001a\f\u0010\u0017\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0014\u0010\u0017\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0007\u001a\u0015\u0010\u001a\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0011H\u0087\b\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0011H\u0087\b\u001a\u001d\u0010\u001d\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0087\b\u001a\u001c\u0010 \u001a\u00020\u0011*\u00020\u00022\u0006\u0010!\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a\f\u0010$\u001a\u00020\u0002*\u00020\u0014H\u0007\u001a \u0010$\u001a\u00020\u0002*\u00020\u00142\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u0011H\u0007\u001a\u0019\u0010&\u001a\u00020#*\u0004\u0018\u00010'2\b\u0010!\u001a\u0004\u0018\u00010'H\u0087\u0004\u001a \u0010&\u001a\u00020#*\u0004\u0018\u00010'2\b\u0010!\u001a\u0004\u0018\u00010'2\u0006\u0010\"\u001a\u00020#H\u0007\u001a\u0015\u0010&\u001a\u00020#*\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0087\b\u001a\u0015\u0010&\u001a\u00020#*\u00020\u00022\u0006\u0010(\u001a\u00020'H\u0087\b\u001a\f\u0010)\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0014\u0010)\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0007\u001a\f\u0010*\u001a\u00020\u0002*\u00020\rH\u0007\u001a*\u0010*\u001a\u00020\u0002*\u00020\r2\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u00112\b\b\u0002\u0010+\u001a\u00020#H\u0007\u001a\f\u0010,\u001a\u00020\r*\u00020\u0002H\u0007\u001a*\u0010,\u001a\u00020\r*\u00020\u00022\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u00112\b\b\u0002\u0010+\u001a\u00020#H\u0007\u001a\u001c\u0010-\u001a\u00020#*\u00020\u00022\u0006\u0010.\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a \u0010/\u001a\u00020#*\u0004\u0018\u00010\u00022\b\u0010!\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a2\u00100\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00104\u001a6\u00100\u001a\u00020\u0002*\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0004\b5\u00104\u001a*\u00100\u001a\u00020\u0002*\u00020\u00022\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00106\u001a:\u00100\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00100\u001a\u00020\u00022\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00107\u001a>\u00100\u001a\u00020\u0002*\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u00100\u001a\u00020\u00022\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0004\b5\u00107\u001a2\u00100\u001a\u00020\u0002*\u00020\u00042\u0006\u00100\u001a\u00020\u00022\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010302\"\u0004\u0018\u000103H\u0087\b¢\u0006\u0002\u00108\u001a\r\u00109\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\n\u0010:\u001a\u00020#*\u00020'\u001a\r\u0010;\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010;\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\u001a\u001d\u0010<\u001a\u00020\u0011*\u00020\u00022\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010<\u001a\u00020\u0011*\u00020\u00022\u0006\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010A\u001a\u00020\u0011*\u00020\u00022\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010A\u001a\u00020\u0011*\u00020\u00022\u0006\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0011H\u0081\b\u001a\u001d\u0010B\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010C\u001a\u00020\u0011H\u0087\b\u001a4\u0010D\u001a\u00020#*\u00020'2\u0006\u0010E\u001a\u00020\u00112\u0006\u0010!\u001a\u00020'2\u0006\u0010F\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020#\u001a4\u0010D\u001a\u00020#*\u00020\u00022\u0006\u0010E\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00022\u0006\u0010F\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020#\u001a\u0012\u0010G\u001a\u00020\u0002*\u00020'2\u0006\u0010H\u001a\u00020\u0011\u001a$\u0010I\u001a\u00020\u0002*\u00020\u00022\u0006\u0010J\u001a\u00020>2\u0006\u0010K\u001a\u00020>2\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010I\u001a\u00020\u0002*\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010J\u001a\u00020>2\u0006\u0010K\u001a\u00020>2\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010L\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a\"\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00020P*\u00020'2\u0006\u0010Q\u001a\u00020R2\b\b\u0002\u0010S\u001a\u00020\u0011\u001a\u001c\u0010T\u001a\u00020#*\u00020\u00022\u0006\u0010U\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020#\u001a$\u0010T\u001a\u00020#*\u00020\u00022\u0006\u0010U\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020#\u001a\u0015\u0010V\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u0011H\u0087\b\u001a\u001d\u0010V\u001a\u00020\u0002*\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0087\b\u001a\u0017\u0010W\u001a\u00020\r*\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0087\b\u001a\r\u0010X\u001a\u00020\u0014*\u00020\u0002H\u0087\b\u001a3\u0010X\u001a\u00020\u0014*\u00020\u00022\u0006\u0010Y\u001a\u00020\u00142\b\b\u0002\u0010Z\u001a\u00020\u00112\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u0011H\u0087\b\u001a \u0010X\u001a\u00020\u0014*\u00020\u00022\b\b\u0002\u0010%\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u0011H\u0007\u001a\r\u0010[\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010[\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\u001a\u0017\u0010\\\u001a\u00020R*\u00020\u00022\b\b\u0002\u0010]\u001a\u00020\u0011H\u0087\b\u001a\r\u0010^\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010^\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\u001a\r\u0010_\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0015\u0010_\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\b\"%\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003*\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006`"}, d2 = {"CASE_INSENSITIVE_ORDER", "Ljava/util/Comparator;", "", "Lkotlin/Comparator;", "Lkotlin/String$Companion;", "getCASE_INSENSITIVE_ORDER", "(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;", "String", "stringBuffer", "Ljava/lang/StringBuffer;", "stringBuilder", "Ljava/lang/StringBuilder;", "bytes", "", "charset", "Ljava/nio/charset/Charset;", TypedValues.CycleType.S_WAVE_OFFSET, "", "length", "chars", "", "codePoints", "", "capitalize", "locale", "Ljava/util/Locale;", "codePointAt", "index", "codePointBefore", "codePointCount", "beginIndex", "endIndex", "compareTo", "other", "ignoreCase", "", "concatToString", "startIndex", "contentEquals", "", "charSequence", "decapitalize", "decodeToString", "throwOnInvalidSequence", "encodeToByteArray", "endsWith", "suffix", "equals", "format", "args", "", "", "(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;", "formatNullable", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "intern", "isBlank", "lowercase", "nativeIndexOf", "ch", "", "fromIndex", "str", "nativeLastIndexOf", "offsetByCodePoints", "codePointOffset", "regionMatches", "thisOffset", "otherOffset", "repeat", "n", "replace", "oldChar", "newChar", "oldValue", "newValue", "replaceFirst", "split", "", "regex", "Ljava/util/regex/Pattern;", "limit", "startsWith", "prefix", "substring", "toByteArray", "toCharArray", ShareConstants.DESTINATION, "destinationOffset", "toLowerCase", "toPattern", "flags", "toUpperCase", "uppercase", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/text/StringsKt")
/* loaded from: classes7.dex */
public class StringsKt__StringsJVMKt extends StringsKt__StringNumberConversionsKt {
    @InlineOnly
    private static final String String(byte[] bytes, int i9, int i10, Charset charset) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(bytes, i9, i10, charset);
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @NotNull
    public static final String capitalize(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        return capitalize(str, locale);
    }

    @InlineOnly
    private static final int codePointAt(String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.codePointAt(i9);
    }

    @InlineOnly
    private static final int codePointBefore(String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.codePointBefore(i9);
    }

    @InlineOnly
    private static final int codePointCount(String str, int i9, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.codePointCount(i9, i10);
    }

    public static int compareTo(@NotNull String str, @NotNull String other, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (z10) {
            return str.compareToIgnoreCase(other);
        }
        return str.compareTo(other);
    }

    public static /* synthetic */ int compareTo$default(String str, String str2, boolean z10, int i9, Object obj) {
        int compareTo;
        if ((i9 & 2) != 0) {
            z10 = false;
        }
        compareTo = compareTo(str, str2, z10);
        return compareTo;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static String concatToString(@NotNull char[] cArr) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        return new String(cArr);
    }

    public static /* synthetic */ String concatToString$default(char[] cArr, int i9, int i10, int i11, Object obj) {
        String concatToString;
        if ((i11 & 1) != 0) {
            i9 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = cArr.length;
        }
        concatToString = concatToString(cArr, i9, i10);
        return concatToString;
    }

    @InlineOnly
    private static final boolean contentEquals(String str, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charSequence, "charSequence");
        return str.contentEquals(charSequence);
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(Locale.getDefault()) }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @NotNull
    public static final String decapitalize(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!(str.length() > 0) || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        String substring = str.substring(0, 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
        sb2.append(lowerCase);
        String substring2 = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
        sb2.append(substring2);
        return sb2.toString();
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String decodeToString(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return new String(bArr, Charsets.UTF_8);
    }

    public static /* synthetic */ String decodeToString$default(byte[] bArr, int i9, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = bArr.length;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return decodeToString(bArr, i9, i10, z10);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final byte[] encodeToByteArray(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(String str, int i9, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return encodeToByteArray(str, i9, i10, z10);
    }

    public static boolean endsWith(@NotNull String str, @NotNull String suffix, boolean z10) {
        boolean regionMatches;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!z10) {
            return str.endsWith(suffix);
        }
        regionMatches = regionMatches(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
        return regionMatches;
    }

    public static /* synthetic */ boolean endsWith$default(String str, String str2, boolean z10, int i9, Object obj) {
        boolean endsWith;
        if ((i9 & 2) != 0) {
            z10 = false;
        }
        endsWith = endsWith(str, str2, z10);
        return endsWith;
    }

    public static boolean equals(@Nullable String str, @Nullable String str2, boolean z10) {
        if (str == null) {
            return str2 == null;
        } else if (!z10) {
            return str.equals(str2);
        } else {
            return str.equalsIgnoreCase(str2);
        }
    }

    public static /* synthetic */ boolean equals$default(String str, String str2, boolean z10, int i9, Object obj) {
        boolean equals;
        if ((i9 & 2) != 0) {
            z10 = false;
        }
        equals = equals(str, str2, z10);
        return equals;
    }

    @InlineOnly
    private static final String format(String str, Object... args) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        String format = String.format(str, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        return format;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "formatNullable")
    private static final String formatNullable(String str, Locale locale, Object... args) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        String format = String.format(locale, str, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, this, *args)");
        return format;
    }

    @NotNull
    public static Comparator<String> getCASE_INSENSITIVE_ORDER(@NotNull StringCompanionObject stringCompanionObject) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Comparator<String> CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.checkNotNullExpressionValue(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    @InlineOnly
    private static final String intern(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String intern = str.intern();
        Intrinsics.checkNotNullExpressionValue(intern, "this as java.lang.String).intern()");
        return intern;
    }

    public static boolean isBlank(@NotNull CharSequence charSequence) {
        boolean z10;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() != 0) {
            IntRange indices = StringsKt__StringsKt.getIndices(charSequence);
            if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
                Iterator<Integer> it = indices.iterator();
                while (it.hasNext()) {
                    if (!CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(((IntIterator) it).nextInt()))) {
                        z10 = false;
                        break;
                    }
                }
            }
            z10 = true;
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String lowercase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @InlineOnly
    private static final int nativeIndexOf(String str, char c10, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.indexOf(c10, i9);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, char c10, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.lastIndexOf(c10, i9);
    }

    @InlineOnly
    private static final int offsetByCodePoints(String str, int i9, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.offsetByCodePoints(i9, i10);
    }

    public static final boolean regionMatches(@NotNull CharSequence charSequence, int i9, @NotNull CharSequence other, int i10, int i11, boolean z10) {
        boolean regionMatches;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if ((charSequence instanceof String) && (other instanceof String)) {
            regionMatches = regionMatches((String) charSequence, i9, (String) other, i10, i11, z10);
            return regionMatches;
        }
        return StringsKt__StringsKt.regionMatchesImpl(charSequence, i9, other, i10, i11, z10);
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @NotNull
    public static String repeat(@NotNull CharSequence charSequence, int i9) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (!(i9 >= 0)) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i9 + JwtParser.SEPARATOR_CHAR).toString());
        } else if (i9 != 0) {
            if (i9 != 1) {
                int length = charSequence.length();
                if (length != 0) {
                    if (length != 1) {
                        StringBuilder sb2 = new StringBuilder(charSequence.length() * i9);
                        ?? it = new IntRange(1, i9).iterator();
                        while (it.hasNext()) {
                            it.nextInt();
                            sb2.append(charSequence);
                        }
                        String sb3 = sb2.toString();
                        Intrinsics.checkNotNullExpressionValue(sb3, "{\n                    va…tring()\n                }");
                        return sb3;
                    }
                    char charAt = charSequence.charAt(0);
                    char[] cArr = new char[i9];
                    for (int i10 = 0; i10 < i9; i10++) {
                        cArr[i10] = charAt;
                    }
                    return new String(cArr);
                }
                return "";
            }
            return charSequence.toString();
        } else {
            return "";
        }
    }

    @NotNull
    public static final String replace(@NotNull String str, char c10, char c11, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!z10) {
            String replace = str.replace(c10, c11);
            Intrinsics.checkNotNullExpressionValue(replace, "this as java.lang.String…replace(oldChar, newChar)");
            return replace;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (CharsKt__CharKt.equals(charAt, c10, z10)) {
                charAt = c11;
            }
            sb2.append(charAt);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder(capacity).…builderAction).toString()");
        return sb3;
    }

    public static /* synthetic */ String replace$default(String str, char c10, char c11, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = false;
        }
        return replace(str, c10, c11, z10);
    }

    @NotNull
    public static final String replaceFirst(@NotNull String str, char c10, char c11, boolean z10) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        indexOf$default = StringsKt__StringsKt.indexOf$default(str, c10, 0, z10, 2, (Object) null);
        return indexOf$default < 0 ? str : StringsKt__StringsKt.replaceRange((CharSequence) str, indexOf$default, indexOf$default + 1, (CharSequence) String.valueOf(c11)).toString();
    }

    public static /* synthetic */ String replaceFirst$default(String str, char c10, char c11, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = false;
        }
        return replaceFirst(str, c10, c11, z10);
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence charSequence, @NotNull Pattern regex, int i9) {
        List<String> asList;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        StringsKt__StringsKt.requireNonNegativeLimit(i9);
        if (i9 == 0) {
            i9 = -1;
        }
        String[] split = regex.split(charSequence, i9);
        Intrinsics.checkNotNullExpressionValue(split, "regex.split(this, if (limit == 0) -1 else limit)");
        asList = ArraysKt___ArraysJvmKt.asList(split);
        return asList;
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, Pattern pattern, int i9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i9 = 0;
        }
        return split(charSequence, pattern, i9);
    }

    public static boolean startsWith(@NotNull String str, @NotNull String prefix, boolean z10) {
        boolean regionMatches;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z10) {
            return str.startsWith(prefix);
        }
        regionMatches = regionMatches(str, 0, prefix, 0, prefix.length(), z10);
        return regionMatches;
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, boolean z10, int i9, Object obj) {
        boolean startsWith;
        if ((i9 & 2) != 0) {
            z10 = false;
        }
        startsWith = startsWith(str, str2, z10);
        return startsWith;
    }

    @InlineOnly
    private static final String substring(String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String substring = str.substring(i9);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return substring;
    }

    @InlineOnly
    private static final byte[] toByteArray(String str, Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    static /* synthetic */ byte[] toByteArray$default(String str, Charset charset, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final char[] toCharArray(@NotNull String str, int i9, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i9, i10, str.length());
        char[] cArr = new char[i10 - i9];
        str.getChars(i9, i10, cArr, 0);
        return cArr;
    }

    public static /* synthetic */ char[] toCharArray$default(String str, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return toCharArray(str, i9, i10);
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String lowerCase = str.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
        return lowerCase;
    }

    @InlineOnly
    private static final Pattern toPattern(String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Pattern compile = Pattern.compile(str, i9);
        Intrinsics.checkNotNullExpressionValue(compile, "compile(this, flags)");
        return compile;
    }

    static /* synthetic */ Pattern toPattern$default(String str, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = 0;
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Pattern compile = Pattern.compile(str, i9);
        Intrinsics.checkNotNullExpressionValue(compile, "compile(this, flags)");
        return compile;
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String upperCase = str.toUpperCase();
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase()");
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String uppercase(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    @InlineOnly
    private static final String String(byte[] bytes, Charset charset) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(bytes, charset);
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(locale) else it.toString() }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String capitalize(@NotNull String str, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (str.length() > 0) {
            char charAt = str.charAt(0);
            if (Character.isLowerCase(charAt)) {
                StringBuilder sb2 = new StringBuilder();
                char titleCase = Character.toTitleCase(charAt);
                if (titleCase != Character.toUpperCase(charAt)) {
                    sb2.append(titleCase);
                } else {
                    String substring = str.substring(0, 1);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                    String upperCase = substring.toUpperCase(locale);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
                    sb2.append(upperCase);
                }
                String substring2 = str.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                sb2.append(substring2);
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
                return sb3;
            }
            return str;
        }
        return str;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static String concatToString(@NotNull char[] cArr, int i9, int i10) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i9, i10, cArr.length);
        return new String(cArr, i9, i10 - i9);
    }

    @InlineOnly
    private static final boolean contentEquals(String str, StringBuffer stringBuilder) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
        return str.contentEquals(stringBuilder);
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(locale) }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String decapitalize(@NotNull String str, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (!(str.length() > 0) || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        String substring = str.substring(0, 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        sb2.append(lowerCase);
        String substring2 = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
        sb2.append(substring2);
        return sb2.toString();
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String decodeToString(@NotNull byte[] bArr, int i9, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i9, i10, bArr.length);
        if (!z10) {
            return new String(bArr, i9, i10 - i9, Charsets.UTF_8);
        }
        String charBuffer = Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bArr, i9, i10 - i9)).toString();
        Intrinsics.checkNotNullExpressionValue(charBuffer, "decoder.decode(ByteBuffe…- startIndex)).toString()");
        return charBuffer;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final byte[] encodeToByteArray(@NotNull String str, int i9, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i9, i10, str.length());
        if (!z10) {
            String substring = str.substring(i9, i10);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Charset charset = Charsets.UTF_8;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        ByteBuffer encode = Charsets.UTF_8.newEncoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).encode(CharBuffer.wrap(str, i9, i10));
        if (encode.hasArray() && encode.arrayOffset() == 0) {
            int remaining = encode.remaining();
            byte[] array = encode.array();
            Intrinsics.checkNotNull(array);
            if (remaining == array.length) {
                byte[] array2 = encode.array();
                Intrinsics.checkNotNullExpressionValue(array2, "{\n        byteBuffer.array()\n    }");
                return array2;
            }
        }
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }

    @InlineOnly
    private static final String format(StringCompanionObject stringCompanionObject, String format, Object... args) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        String format2 = String.format(format, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
        return format2;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "formatNullable")
    private static final String formatNullable(StringCompanionObject stringCompanionObject, Locale locale, String format, Object... args) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        String format2 = String.format(locale, format, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
        return format2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String lowercase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @InlineOnly
    private static final int nativeIndexOf(String str, String str2, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "str");
        return str.indexOf(str2, i9);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, String str2, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "str");
        return str.lastIndexOf(str2, i9);
    }

    public static /* synthetic */ boolean regionMatches$default(String str, int i9, String str2, int i10, int i11, boolean z10, int i12, Object obj) {
        boolean regionMatches;
        regionMatches = regionMatches(str, i9, str2, i10, i11, (i12 & 16) != 0 ? false : z10);
        return regionMatches;
    }

    public static /* synthetic */ String replace$default(String str, String str2, String str3, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = false;
        }
        return replace(str, str2, str3, z10);
    }

    public static /* synthetic */ String replaceFirst$default(String str, String str2, String str3, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = false;
        }
        return replaceFirst(str, str2, str3, z10);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, int i9, boolean z10, int i10, Object obj) {
        boolean startsWith;
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        startsWith = startsWith(str, str2, i9, z10);
        return startsWith;
    }

    @InlineOnly
    private static final String substring(String str, int i9, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String substring = str.substring(i9, i10);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    static /* synthetic */ char[] toCharArray$default(String str, char[] destination, int i9, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i9 = 0;
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = str.length();
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        str.getChars(i10, i11, destination, i9);
        return destination;
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String uppercase(String str, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @InlineOnly
    private static final String String(byte[] bytes, int i9, int i10) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return new String(bytes, i9, i10, Charsets.UTF_8);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && charSequence2 != null) {
            return ((String) charSequence).contentEquals(charSequence2);
        }
        return StringsKt__StringsKt.contentEqualsImpl(charSequence, charSequence2);
    }

    @Deprecated(message = "Use Kotlin compiler 1.4 to avoid deprecation warning.")
    @DeprecatedSinceKotlin(hiddenSince = "1.4")
    @InlineOnly
    private static final /* synthetic */ String format(String str, Locale locale, Object... args) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(args, "args");
        String format = String.format(locale, str, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, this, *args)");
        return format;
    }

    @NotNull
    public static final String replaceFirst(@NotNull String str, @NotNull String oldValue, @NotNull String newValue, boolean z10) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        indexOf$default = StringsKt__StringsKt.indexOf$default(str, oldValue, 0, z10, 2, (Object) null);
        return indexOf$default < 0 ? str : StringsKt__StringsKt.replaceRange((CharSequence) str, indexOf$default, oldValue.length() + indexOf$default, (CharSequence) newValue).toString();
    }

    public static boolean startsWith(@NotNull String str, @NotNull String prefix, int i9, boolean z10) {
        boolean regionMatches;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z10) {
            return str.startsWith(prefix, i9);
        }
        regionMatches = regionMatches(str, i9, prefix, 0, prefix.length(), z10);
        return regionMatches;
    }

    @InlineOnly
    private static final char[] toCharArray(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        char[] charArray = str.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        return charArray;
    }

    @InlineOnly
    private static final String String(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return new String(bytes, Charsets.UTF_8);
    }

    @Deprecated(message = "Use Kotlin compiler 1.4 to avoid deprecation warning.")
    @DeprecatedSinceKotlin(hiddenSince = "1.4")
    @InlineOnly
    private static final /* synthetic */ String format(StringCompanionObject stringCompanionObject, Locale locale, String format, Object... args) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        String format2 = String.format(locale, format, Arrays.copyOf(args, args.length));
        Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
        return format2;
    }

    public static boolean regionMatches(@NotNull String str, int i9, @NotNull String other, int i10, int i11, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (!z10) {
            return str.regionMatches(i9, other, i10, i11);
        }
        return str.regionMatches(z10, i9, other, i10, i11);
    }

    @InlineOnly
    private static final char[] toCharArray(String str, char[] destination, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        str.getChars(i10, i11, destination, i9);
        return destination;
    }

    @InlineOnly
    private static final String String(char[] chars) {
        Intrinsics.checkNotNullParameter(chars, "chars");
        return new String(chars);
    }

    @InlineOnly
    private static final String String(char[] chars, int i9, int i10) {
        Intrinsics.checkNotNullParameter(chars, "chars");
        return new String(chars, i9, i10);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z10) {
        if (z10) {
            return StringsKt__StringsKt.contentEqualsIgnoreCaseImpl(charSequence, charSequence2);
        }
        return contentEquals(charSequence, charSequence2);
    }

    @NotNull
    public static final String replace(@NotNull String str, @NotNull String oldValue, @NotNull String newValue, boolean z10) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        int i9 = 0;
        int indexOf = StringsKt__StringsKt.indexOf(str, oldValue, 0, z10);
        if (indexOf < 0) {
            return str;
        }
        int length = oldValue.length();
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 >= 0) {
            StringBuilder sb2 = new StringBuilder(length2);
            do {
                sb2.append((CharSequence) str, i9, indexOf);
                sb2.append(newValue);
                i9 = indexOf + length;
                if (indexOf >= str.length()) {
                    break;
                }
                indexOf = StringsKt__StringsKt.indexOf(str, oldValue, indexOf + coerceAtLeast, z10);
            } while (indexOf > 0);
            sb2.append((CharSequence) str, i9, str.length());
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "stringBuilder.append(this, i, length).toString()");
            return sb3;
        }
        throw new OutOfMemoryError();
    }

    @InlineOnly
    private static final String String(int[] codePoints, int i9, int i10) {
        Intrinsics.checkNotNullParameter(codePoints, "codePoints");
        return new String(codePoints, i9, i10);
    }

    @InlineOnly
    private static final String String(StringBuffer stringBuffer) {
        Intrinsics.checkNotNullParameter(stringBuffer, "stringBuffer");
        return new String(stringBuffer);
    }

    @InlineOnly
    private static final String String(StringBuilder stringBuilder) {
        Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
        return new String(stringBuilder);
    }
}
