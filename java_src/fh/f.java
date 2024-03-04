package fh;

import com.google.re2j.Pattern;
import com.google.re2j.PatternSyntaxException;
import fh.i;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
/* loaded from: classes5.dex */
public final class f {

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39745a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f39746b;

        static {
            int[] iArr = new int[StringMatcher.MatchPatternCase.values().length];
            f39746b = iArr;
            try {
                iArr[StringMatcher.MatchPatternCase.EXACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39746b[StringMatcher.MatchPatternCase.PREFIX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39746b[StringMatcher.MatchPatternCase.SUFFIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39746b[StringMatcher.MatchPatternCase.SAFE_REGEX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39746b[StringMatcher.MatchPatternCase.CONTAINS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39746b[StringMatcher.MatchPatternCase.MATCHPATTERN_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[HeaderMatcher.HeaderMatchSpecifierCase.values().length];
            f39745a = iArr2;
            try {
                iArr2[HeaderMatcher.HeaderMatchSpecifierCase.EXACT_MATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f39745a[HeaderMatcher.HeaderMatchSpecifierCase.SAFE_REGEX_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f39745a[HeaderMatcher.HeaderMatchSpecifierCase.RANGE_MATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f39745a[HeaderMatcher.HeaderMatchSpecifierCase.PRESENT_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f39745a[HeaderMatcher.HeaderMatchSpecifierCase.PREFIX_MATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f39745a[HeaderMatcher.HeaderMatchSpecifierCase.SUFFIX_MATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f39745a[HeaderMatcher.HeaderMatchSpecifierCase.HEADERMATCHSPECIFIER_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public static i a(HeaderMatcher headerMatcher) {
        switch (a.f39745a[headerMatcher.getHeaderMatchSpecifierCase().ordinal()]) {
            case 1:
                return i.c(headerMatcher.getName(), headerMatcher.getExactMatch(), headerMatcher.getInvertMatch());
            case 2:
                try {
                    return i.g(headerMatcher.getName(), Pattern.compile(headerMatcher.getSafeRegexMatch().getRegex()), headerMatcher.getInvertMatch());
                } catch (PatternSyntaxException e10) {
                    throw new IllegalArgumentException("HeaderMatcher [" + headerMatcher.getName() + "] contains malformed safe regex pattern: " + e10.getMessage());
                }
            case 3:
                return i.f(headerMatcher.getName(), i.a.a(headerMatcher.getRangeMatch().getStart(), headerMatcher.getRangeMatch().getEnd()), headerMatcher.getInvertMatch());
            case 4:
                return i.e(headerMatcher.getName(), headerMatcher.getPresentMatch(), headerMatcher.getInvertMatch());
            case 5:
                return i.d(headerMatcher.getName(), headerMatcher.getPrefixMatch(), headerMatcher.getInvertMatch());
            case 6:
                return i.h(headerMatcher.getName(), headerMatcher.getSuffixMatch(), headerMatcher.getInvertMatch());
            default:
                throw new IllegalArgumentException("Unknown header matcher type: " + headerMatcher.getHeaderMatchSpecifierCase());
        }
    }

    public static j b(StringMatcher stringMatcher) {
        int i9 = a.f39746b[stringMatcher.getMatchPatternCase().ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 == 5) {
                            return j.d(stringMatcher.getContains());
                        }
                        throw new IllegalArgumentException("Unknown StringMatcher match pattern: " + stringMatcher.getMatchPatternCase());
                    }
                    return j.g(Pattern.compile(stringMatcher.getSafeRegex().getRegex()));
                }
                return j.h(stringMatcher.getSuffix(), stringMatcher.getIgnoreCase());
            }
            return j.f(stringMatcher.getPrefix(), stringMatcher.getIgnoreCase());
        }
        return j.e(stringMatcher.getExact(), stringMatcher.getIgnoreCase());
    }
}
