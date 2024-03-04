package kotlin.time;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.NativeProtocol;
import com.meizu.cloud.pushsdk.notification.model.NotificationStyle;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import io.jsonwebtoken.JwtParser;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.comparisons.ComparisonsKt___ComparisonsJvmKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin(version = "1.6")
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087@\u0018\u0000 ¤\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002¤\u0001B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u0003H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bG\u0010HJ\u001b\u0010I\u001a\u00020\t2\u0006\u0010J\u001a\u00020\u0000H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\bK\u0010LJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bO\u0010PJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\tH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bO\u0010QJ\u001b\u0010M\u001a\u00020\u000f2\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bR\u0010SJ\u001a\u0010T\u001a\u00020U2\b\u0010J\u001a\u0004\u0018\u00010VHÖ\u0003¢\u0006\u0004\bW\u0010XJ\u0010\u0010Y\u001a\u00020\tHÖ\u0001¢\u0006\u0004\bZ\u0010\rJ\r\u0010[\u001a\u00020U¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020UH\u0002¢\u0006\u0004\b_\u0010]J\u000f\u0010`\u001a\u00020UH\u0002¢\u0006\u0004\ba\u0010]J\r\u0010b\u001a\u00020U¢\u0006\u0004\bc\u0010]J\r\u0010d\u001a\u00020U¢\u0006\u0004\be\u0010]J\r\u0010f\u001a\u00020U¢\u0006\u0004\bg\u0010]J\u001b\u0010h\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bi\u0010jJ\u001b\u0010k\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bl\u0010jJ\u001e\u0010m\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bn\u0010PJ\u001e\u0010m\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\tH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bn\u0010QJ\u009d\u0001\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2u\u0010q\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(u\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(v\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0rH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010{J\u0088\u0001\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2`\u0010q\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(v\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0|H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010}Js\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2K\u0010q\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0~H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010\u007fJ`\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p27\u0010q\u001a3\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0\u0080\u0001H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0005\bz\u0010\u0081\u0001J\u0019\u0010\u0082\u0001\u001a\u00020\u000f2\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0019\u0010\u0086\u0001\u001a\u00020\t2\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u00030\u008a\u0001¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u0019\u0010\u008d\u0001\u001a\u00020\u00032\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u0011\u0010\u0090\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u0091\u0001\u0010\u0005J\u0011\u0010\u0092\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u0093\u0001\u0010\u0005J\u0013\u0010\u0094\u0001\u001a\u00030\u008a\u0001H\u0016¢\u0006\u0006\b\u0095\u0001\u0010\u008c\u0001J%\u0010\u0094\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u0083\u0001\u001a\u00020=2\t\b\u0002\u0010\u0096\u0001\u001a\u00020\t¢\u0006\u0006\b\u0095\u0001\u0010\u0097\u0001J\u0018\u0010\u0098\u0001\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0005\b\u0099\u0001\u0010\u0005JK\u0010\u009a\u0001\u001a\u00030\u009b\u0001*\b0\u009c\u0001j\u0003`\u009d\u00012\u0007\u0010\u009e\u0001\u001a\u00020\t2\u0007\u0010\u009f\u0001\u001a\u00020\t2\u0007\u0010 \u0001\u001a\u00020\t2\b\u0010\u0083\u0001\u001a\u00030\u008a\u00012\u0007\u0010¡\u0001\u001a\u00020UH\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001R\u0017\u0010\u0006\u001a\u00020\u00008Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u001a\u0010\b\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\u0012R\u001a\u0010\"\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010\u0012R\u0011\u0010%\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b&\u0010\u0005R\u0011\u0010'\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b(\u0010\u0005R\u0011\u0010)\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b*\u0010\u0005R\u0011\u0010+\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b,\u0010\u0005R\u0011\u0010-\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b.\u0010\u0005R\u0011\u0010/\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b0\u0010\u0005R\u0011\u00101\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b2\u0010\u0005R\u001a\u00103\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b4\u0010\u000b\u001a\u0004\b5\u0010\rR\u001a\u00106\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b7\u0010\u000b\u001a\u0004\b8\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00109\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b:\u0010\u000b\u001a\u0004\b;\u0010\rR\u0014\u0010<\u001a\u00020=8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0015\u0010@\u001a\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\rR\u0014\u0010B\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006¥\u0001"}, d2 = {"Lkotlin/time/Duration;", "", "rawValue", "", "constructor-impl", "(J)J", "absoluteValue", "getAbsoluteValue-UwyO8pc", "hoursComponent", "", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "(J)I", "inDays", "", "getInDays$annotations", "getInDays-impl", "(J)D", "inHours", "getInHours$annotations", "getInHours-impl", "inMicroseconds", "getInMicroseconds$annotations", "getInMicroseconds-impl", "inMilliseconds", "getInMilliseconds$annotations", "getInMilliseconds-impl", "inMinutes", "getInMinutes$annotations", "getInMinutes-impl", "inNanoseconds", "getInNanoseconds$annotations", "getInNanoseconds-impl", "inSeconds", "getInSeconds$annotations", "getInSeconds-impl", "inWholeDays", "getInWholeDays-impl", "inWholeHours", "getInWholeHours-impl", "inWholeMicroseconds", "getInWholeMicroseconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds-impl", "inWholeMinutes", "getInWholeMinutes-impl", "inWholeNanoseconds", "getInWholeNanoseconds-impl", "inWholeSeconds", "getInWholeSeconds-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "storageUnit", "Lkotlin/time/DurationUnit;", "getStorageUnit-impl", "(J)Lkotlin/time/DurationUnit;", "unitDiscriminator", "getUnitDiscriminator-impl", "value", "getValue-impl", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "compareTo", "other", "compareTo-LRDsOJo", "(JJ)I", "div", "scale", "div-UwyO8pc", "(JD)J", "(JI)J", "div-LRDsOJo", "(JJ)D", "equals", "", "", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "isFinite", "isFinite-impl", "(J)Z", "isInMillis", "isInMillis-impl", "isInNanos", "isInNanos-impl", "isInfinite", "isInfinite-impl", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "minus", "minus-LRDsOJo", "(JJ)J", "plus", "plus-LRDsOJo", "times", "times-UwyO8pc", "toComponents", ExifInterface.GPS_DIRECTION_TRUE, NativeProtocol.WEB_DIALOG_ACTION, "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble", "unit", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toInt", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "toIsoString", "", "toIsoString-impl", "(J)Ljava/lang/String;", "toLong", "toLong-impl", "(JLkotlin/time/DurationUnit;)J", "toLongMilliseconds", "toLongMilliseconds-impl", "toLongNanoseconds", "toLongNanoseconds-impl", "toString", "toString-impl", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "unaryMinus", "unaryMinus-UwyO8pc", "appendFractional", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@JvmInline
@WasExperimental(markerClass = {ExperimentalTime.class})
/* loaded from: classes7.dex */
public final class Duration implements Comparable<Duration> {
    private final long rawValue;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long ZERO = m2983constructorimpl(0);
    private static final long INFINITE = DurationKt.access$durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.access$durationOfMillis(-4611686018427387903L);

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0007J\u001d\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0011J\u001d\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0014J\u001d\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0017J\u001d\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0011J\u001d\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0014J\u001d\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0017J\u001d\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0011J\u001d\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0014J\u001d\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0017J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0011J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0014J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0017J\u001d\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0011J\u001d\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0014J\u001d\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0017J\u001d\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0011J\u001d\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0014J\u001d\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0017J\u001b\u00105\u001a\u00020\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b7\u00108J\u001b\u00109\u001a\u00020\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b:\u00108J\u001b\u0010;\u001a\u0004\u0018\u00010\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0002\b<J\u001b\u0010=\u001a\u0004\u0018\u00010\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0002\b>J\u001d\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0011J\u001d\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0014J\u001d\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0017R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R%\u0010\f\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R%\u0010\f\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u000e\u0010\u0013\u001a\u0004\b\u0010\u0010\u0014R%\u0010\f\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u000e\u0010\u0016\u001a\u0004\b\u0010\u0010\u0017R%\u0010\u0018\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u001a\u0010\u0011R%\u0010\u0018\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0014R%\u0010\u0018\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0017R%\u0010\u001b\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001c\u0010\u000f\u001a\u0004\b\u001d\u0010\u0011R%\u0010\u001b\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u0014R%\u0010\u001b\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u0017R%\u0010\u001e\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001f\u0010\u000f\u001a\u0004\b \u0010\u0011R%\u0010\u001e\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010\u0014R%\u0010\u001e\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u0017R%\u0010!\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\"\u0010\u000f\u001a\u0004\b#\u0010\u0011R%\u0010!\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\"\u0010\u0013\u001a\u0004\b#\u0010\u0014R%\u0010!\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0017R%\u0010$\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b%\u0010\u000f\u001a\u0004\b&\u0010\u0011R%\u0010$\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b%\u0010\u0013\u001a\u0004\b&\u0010\u0014R%\u0010$\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0017R%\u0010'\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b(\u0010\u000f\u001a\u0004\b)\u0010\u0011R%\u0010'\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b(\u0010\u0013\u001a\u0004\b)\u0010\u0014R%\u0010'\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0017\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006@"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "()V", "INFINITE", "Lkotlin/time/Duration;", "getINFINITE-UwyO8pc", "()J", "J", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "ZERO", "getZERO-UwyO8pc", "days", "", "getDays-UwyO8pc$annotations", "(D)V", "getDays-UwyO8pc", "(D)J", "", "(I)V", "(I)J", "", "(J)V", "(J)J", "hours", "getHours-UwyO8pc$annotations", "getHours-UwyO8pc", "microseconds", "getMicroseconds-UwyO8pc$annotations", "getMicroseconds-UwyO8pc", "milliseconds", "getMilliseconds-UwyO8pc$annotations", "getMilliseconds-UwyO8pc", "minutes", "getMinutes-UwyO8pc$annotations", "getMinutes-UwyO8pc", "nanoseconds", "getNanoseconds-UwyO8pc$annotations", "getNanoseconds-UwyO8pc", "seconds", "getSeconds-UwyO8pc$annotations", "getSeconds-UwyO8pc", "convert", "value", "sourceUnit", "Lkotlin/time/DurationUnit;", "targetUnit", "days-UwyO8pc", "hours-UwyO8pc", "microseconds-UwyO8pc", "milliseconds-UwyO8pc", "minutes-UwyO8pc", "nanoseconds-UwyO8pc", "parse", "", "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "parseOrNull", "parseOrNull-FghU774", "seconds-UwyO8pc", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m3039getDaysUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.DAYS);
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3041getDaysUwyO8pc$annotations(double d10) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3042getDaysUwyO8pc$annotations(int i9) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3043getDaysUwyO8pc$annotations(long j10) {
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m3045getHoursUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.HOURS);
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3047getHoursUwyO8pc$annotations(double d10) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3048getHoursUwyO8pc$annotations(int i9) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3049getHoursUwyO8pc$annotations(long j10) {
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m3051getMicrosecondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.MICROSECONDS);
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3053getMicrosecondsUwyO8pc$annotations(double d10) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3054getMicrosecondsUwyO8pc$annotations(int i9) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3055getMicrosecondsUwyO8pc$annotations(long j10) {
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m3057getMillisecondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.MILLISECONDS);
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3059getMillisecondsUwyO8pc$annotations(double d10) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3060getMillisecondsUwyO8pc$annotations(int i9) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3061getMillisecondsUwyO8pc$annotations(long j10) {
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m3063getMinutesUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.MINUTES);
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3065getMinutesUwyO8pc$annotations(double d10) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3066getMinutesUwyO8pc$annotations(int i9) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3067getMinutesUwyO8pc$annotations(long j10) {
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m3069getNanosecondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.NANOSECONDS);
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3071getNanosecondsUwyO8pc$annotations(double d10) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3072getNanosecondsUwyO8pc$annotations(int i9) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3073getNanosecondsUwyO8pc$annotations(long j10) {
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m3075getSecondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.SECONDS);
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3077getSecondsUwyO8pc$annotations(double d10) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3078getSecondsUwyO8pc$annotations(int i9) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3079getSecondsUwyO8pc$annotations(long j10) {
        }

        @ExperimentalTime
        public final double convert(double d10, @NotNull DurationUnit sourceUnit, @NotNull DurationUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d10, sourceUnit, targetUnit);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m3081daysUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.DAYS);
        }

        /* renamed from: getINFINITE-UwyO8pc  reason: not valid java name */
        public final long m3083getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib  reason: not valid java name */
        public final long m3084getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        /* renamed from: getZERO-UwyO8pc  reason: not valid java name */
        public final long m3085getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m3087hoursUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m3090microsecondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m3093millisecondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m3096minutesUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m3099nanosecondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.NANOSECONDS);
        }

        /* renamed from: parse-UwyO8pc  reason: not valid java name */
        public final long m3101parseUwyO8pc(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, false);
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e10);
            }
        }

        /* renamed from: parseIsoString-UwyO8pc  reason: not valid java name */
        public final long m3102parseIsoStringUwyO8pc(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, true);
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e10);
            }
        }

        @Nullable
        /* renamed from: parseIsoStringOrNull-FghU774  reason: not valid java name */
        public final Duration m3103parseIsoStringOrNullFghU774(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2981boximpl(DurationKt.access$parseDuration(value, true));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @Nullable
        /* renamed from: parseOrNull-FghU774  reason: not valid java name */
        public final Duration m3104parseOrNullFghU774(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2981boximpl(DurationKt.access$parseDuration(value, false));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m3106secondsUwyO8pc(int i9) {
            return DurationKt.toDuration(i9, DurationUnit.SECONDS);
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m3040getDaysUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.DAYS);
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m3046getHoursUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.HOURS);
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m3052getMicrosecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MICROSECONDS);
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m3058getMillisecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MILLISECONDS);
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m3064getMinutesUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MINUTES);
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m3070getNanosecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.NANOSECONDS);
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m3076getSecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.SECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m3082daysUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.DAYS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m3088hoursUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m3091microsecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m3094millisecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m3097minutesUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m3100nanosecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.NANOSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m3107secondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.SECONDS);
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m3038getDaysUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.DAYS);
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m3044getHoursUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.HOURS);
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m3050getMicrosecondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.MICROSECONDS);
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m3056getMillisecondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.MILLISECONDS);
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m3062getMinutesUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.MINUTES);
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m3068getNanosecondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.NANOSECONDS);
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m3074getSecondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.SECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m3080daysUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.DAYS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m3086hoursUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m3089microsecondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m3092millisecondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m3095minutesUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m3098nanosecondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.NANOSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m3105secondsUwyO8pc(double d10) {
            return DurationKt.toDuration(d10, DurationUnit.SECONDS);
        }
    }

    private /* synthetic */ Duration(long j10) {
        this.rawValue = j10;
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc  reason: not valid java name */
    private static final long m2979addValuesMixedRangesUwyO8pc(long j10, long j11, long j12) {
        long coerceIn;
        long access$nanosToMillis = DurationKt.access$nanosToMillis(j12);
        long j13 = j11 + access$nanosToMillis;
        if (new LongRange(-4611686018426L, 4611686018426L).contains(j13)) {
            return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(j13) + (j12 - DurationKt.access$millisToNanos(access$nanosToMillis)));
        }
        coerceIn = RangesKt___RangesKt.coerceIn(j13, -4611686018427387903L, (long) DurationKt.MAX_MILLIS);
        return DurationKt.access$durationOfMillis(coerceIn);
    }

    /* renamed from: appendFractional-impl  reason: not valid java name */
    private static final void m2980appendFractionalimpl(long j10, StringBuilder sb2, int i9, int i10, int i11, String str, boolean z10) {
        String padStart;
        sb2.append(i9);
        if (i10 != 0) {
            sb2.append(JwtParser.SEPARATOR_CHAR);
            padStart = StringsKt__StringsKt.padStart(String.valueOf(i10), i11, '0');
            int i12 = -1;
            int length = padStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i13 = length - 1;
                    if (padStart.charAt(length) != '0') {
                        i12 = length;
                        break;
                    } else if (i13 < 0) {
                        break;
                    } else {
                        length = i13;
                    }
                }
            }
            int i14 = i12 + 1;
            if (!z10 && i14 < 3) {
                sb2.append((CharSequence) padStart, 0, i14);
                Intrinsics.checkNotNullExpressionValue(sb2, "this.append(value, startIndex, endIndex)");
            } else {
                sb2.append((CharSequence) padStart, 0, ((i14 + 2) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb2, "this.append(value, startIndex, endIndex)");
            }
        }
        sb2.append(str);
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Duration m2981boximpl(long j10) {
        return new Duration(j10);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2983constructorimpl(long j10) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            if (m3014isInNanosimpl(j10)) {
                if (!new LongRange(-4611686018426999999L, DurationKt.MAX_NANOS).contains(m3010getValueimpl(j10))) {
                    throw new AssertionError(m3010getValueimpl(j10) + " ns is out of nanoseconds range");
                }
            } else if (new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS).contains(m3010getValueimpl(j10))) {
                if (new LongRange(-4611686018426L, 4611686018426L).contains(m3010getValueimpl(j10))) {
                    throw new AssertionError(m3010getValueimpl(j10) + " ms is denormalized");
                }
            } else {
                throw new AssertionError(m3010getValueimpl(j10) + " ms is out of milliseconds range");
            }
        }
        return j10;
    }

    /* renamed from: div-LRDsOJo  reason: not valid java name */
    public static final double m2984divLRDsOJo(long j10, long j11) {
        Comparable maxOf;
        maxOf = ComparisonsKt___ComparisonsJvmKt.maxOf(m3008getStorageUnitimpl(j10), m3008getStorageUnitimpl(j11));
        DurationUnit durationUnit = (DurationUnit) maxOf;
        return m3026toDoubleimpl(j10, durationUnit) / m3026toDoubleimpl(j11, durationUnit);
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m2986divUwyO8pc(long j10, int i9) {
        int sign;
        if (i9 == 0) {
            if (m3017isPositiveimpl(j10)) {
                return INFINITE;
            }
            if (m3016isNegativeimpl(j10)) {
                return NEG_INFINITE;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        } else if (m3014isInNanosimpl(j10)) {
            return DurationKt.access$durationOfNanos(m3010getValueimpl(j10) / i9);
        } else {
            if (m3015isInfiniteimpl(j10)) {
                sign = MathKt__MathJVMKt.getSign(i9);
                return m3021timesUwyO8pc(j10, sign);
            }
            long j11 = i9;
            long m3010getValueimpl = m3010getValueimpl(j10) / j11;
            if (new LongRange(-4611686018426L, 4611686018426L).contains(m3010getValueimpl)) {
                return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(m3010getValueimpl) + (DurationKt.access$millisToNanos(m3010getValueimpl(j10) - (m3010getValueimpl * j11)) / j11));
            }
            return DurationKt.access$durationOfMillis(m3010getValueimpl);
        }
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2987equalsimpl(long j10, Object obj) {
        return (obj instanceof Duration) && j10 == ((Duration) obj).m3037unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2988equalsimpl0(long j10, long j11) {
        return j10 == j11;
    }

    /* renamed from: getAbsoluteValue-UwyO8pc  reason: not valid java name */
    public static final long m2989getAbsoluteValueUwyO8pc(long j10) {
        return m3016isNegativeimpl(j10) ? m3035unaryMinusUwyO8pc(j10) : j10;
    }

    @PublishedApi
    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    /* renamed from: getHoursComponent-impl  reason: not valid java name */
    public static final int m2990getHoursComponentimpl(long j10) {
        if (m3015isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m2999getInWholeHoursimpl(j10) % 24);
    }

    @Deprecated(message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.DAYS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInDays$annotations() {
    }

    /* renamed from: getInDays-impl  reason: not valid java name */
    public static final double m2991getInDaysimpl(long j10) {
        return m3026toDoubleimpl(j10, DurationUnit.DAYS);
    }

    @Deprecated(message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.HOURS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInHours$annotations() {
    }

    /* renamed from: getInHours-impl  reason: not valid java name */
    public static final double m2992getInHoursimpl(long j10) {
        return m3026toDoubleimpl(j10, DurationUnit.HOURS);
    }

    @Deprecated(message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MICROSECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInMicroseconds$annotations() {
    }

    /* renamed from: getInMicroseconds-impl  reason: not valid java name */
    public static final double m2993getInMicrosecondsimpl(long j10) {
        return m3026toDoubleimpl(j10, DurationUnit.MICROSECONDS);
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MILLISECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInMilliseconds$annotations() {
    }

    /* renamed from: getInMilliseconds-impl  reason: not valid java name */
    public static final double m2994getInMillisecondsimpl(long j10) {
        return m3026toDoubleimpl(j10, DurationUnit.MILLISECONDS);
    }

    @Deprecated(message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MINUTES)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInMinutes$annotations() {
    }

    /* renamed from: getInMinutes-impl  reason: not valid java name */
    public static final double m2995getInMinutesimpl(long j10) {
        return m3026toDoubleimpl(j10, DurationUnit.MINUTES);
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.NANOSECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInNanoseconds$annotations() {
    }

    /* renamed from: getInNanoseconds-impl  reason: not valid java name */
    public static final double m2996getInNanosecondsimpl(long j10) {
        return m3026toDoubleimpl(j10, DurationUnit.NANOSECONDS);
    }

    @Deprecated(message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.SECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInSeconds$annotations() {
    }

    /* renamed from: getInSeconds-impl  reason: not valid java name */
    public static final double m2997getInSecondsimpl(long j10) {
        return m3026toDoubleimpl(j10, DurationUnit.SECONDS);
    }

    /* renamed from: getInWholeDays-impl  reason: not valid java name */
    public static final long m2998getInWholeDaysimpl(long j10) {
        return m3029toLongimpl(j10, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl  reason: not valid java name */
    public static final long m2999getInWholeHoursimpl(long j10) {
        return m3029toLongimpl(j10, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMicroseconds-impl  reason: not valid java name */
    public static final long m3000getInWholeMicrosecondsimpl(long j10) {
        return m3029toLongimpl(j10, DurationUnit.MICROSECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl  reason: not valid java name */
    public static final long m3001getInWholeMillisecondsimpl(long j10) {
        return (m3013isInMillisimpl(j10) && m3012isFiniteimpl(j10)) ? m3010getValueimpl(j10) : m3029toLongimpl(j10, DurationUnit.MILLISECONDS);
    }

    /* renamed from: getInWholeMinutes-impl  reason: not valid java name */
    public static final long m3002getInWholeMinutesimpl(long j10) {
        return m3029toLongimpl(j10, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeNanoseconds-impl  reason: not valid java name */
    public static final long m3003getInWholeNanosecondsimpl(long j10) {
        long m3010getValueimpl = m3010getValueimpl(j10);
        if (m3014isInNanosimpl(j10)) {
            return m3010getValueimpl;
        }
        if (m3010getValueimpl > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (m3010getValueimpl < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.access$millisToNanos(m3010getValueimpl);
    }

    /* renamed from: getInWholeSeconds-impl  reason: not valid java name */
    public static final long m3004getInWholeSecondsimpl(long j10) {
        return m3029toLongimpl(j10, DurationUnit.SECONDS);
    }

    @PublishedApi
    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    /* renamed from: getMinutesComponent-impl  reason: not valid java name */
    public static final int m3005getMinutesComponentimpl(long j10) {
        if (m3015isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m3002getInWholeMinutesimpl(j10) % 60);
    }

    @PublishedApi
    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    /* renamed from: getNanosecondsComponent-impl  reason: not valid java name */
    public static final int m3006getNanosecondsComponentimpl(long j10) {
        if (m3015isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m3013isInMillisimpl(j10) ? DurationKt.access$millisToNanos(m3010getValueimpl(j10) % 1000) : m3010getValueimpl(j10) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS));
    }

    @PublishedApi
    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: getSecondsComponent-impl  reason: not valid java name */
    public static final int m3007getSecondsComponentimpl(long j10) {
        if (m3015isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m3004getInWholeSecondsimpl(j10) % 60);
    }

    /* renamed from: getStorageUnit-impl  reason: not valid java name */
    private static final DurationUnit m3008getStorageUnitimpl(long j10) {
        return m3014isInNanosimpl(j10) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* renamed from: getUnitDiscriminator-impl  reason: not valid java name */
    private static final int m3009getUnitDiscriminatorimpl(long j10) {
        return ((int) j10) & 1;
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    private static final long m3010getValueimpl(long j10) {
        return j10 >> 1;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3011hashCodeimpl(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    /* renamed from: isFinite-impl  reason: not valid java name */
    public static final boolean m3012isFiniteimpl(long j10) {
        return !m3015isInfiniteimpl(j10);
    }

    /* renamed from: isInMillis-impl  reason: not valid java name */
    private static final boolean m3013isInMillisimpl(long j10) {
        return (((int) j10) & 1) == 1;
    }

    /* renamed from: isInNanos-impl  reason: not valid java name */
    private static final boolean m3014isInNanosimpl(long j10) {
        return (((int) j10) & 1) == 0;
    }

    /* renamed from: isInfinite-impl  reason: not valid java name */
    public static final boolean m3015isInfiniteimpl(long j10) {
        return j10 == INFINITE || j10 == NEG_INFINITE;
    }

    /* renamed from: isNegative-impl  reason: not valid java name */
    public static final boolean m3016isNegativeimpl(long j10) {
        return j10 < 0;
    }

    /* renamed from: isPositive-impl  reason: not valid java name */
    public static final boolean m3017isPositiveimpl(long j10) {
        return j10 > 0;
    }

    /* renamed from: minus-LRDsOJo  reason: not valid java name */
    public static final long m3018minusLRDsOJo(long j10, long j11) {
        return m3019plusLRDsOJo(j10, m3035unaryMinusUwyO8pc(j11));
    }

    /* renamed from: plus-LRDsOJo  reason: not valid java name */
    public static final long m3019plusLRDsOJo(long j10, long j11) {
        if (m3015isInfiniteimpl(j10)) {
            if (m3012isFiniteimpl(j11) || (j11 ^ j10) >= 0) {
                return j10;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        } else if (m3015isInfiniteimpl(j11)) {
            return j11;
        } else {
            if ((((int) j10) & 1) == (((int) j11) & 1)) {
                long m3010getValueimpl = m3010getValueimpl(j10) + m3010getValueimpl(j11);
                if (m3014isInNanosimpl(j10)) {
                    return DurationKt.access$durationOfNanosNormalized(m3010getValueimpl);
                }
                return DurationKt.access$durationOfMillisNormalized(m3010getValueimpl);
            } else if (m3013isInMillisimpl(j10)) {
                return m2979addValuesMixedRangesUwyO8pc(j10, m3010getValueimpl(j10), m3010getValueimpl(j11));
            } else {
                return m2979addValuesMixedRangesUwyO8pc(j10, m3010getValueimpl(j11), m3010getValueimpl(j10));
            }
        }
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m3021timesUwyO8pc(long j10, int i9) {
        int sign;
        int sign2;
        long coerceIn;
        int sign3;
        int sign4;
        long coerceIn2;
        if (m3015isInfiniteimpl(j10)) {
            if (i9 != 0) {
                return i9 > 0 ? j10 : m3035unaryMinusUwyO8pc(j10);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        } else if (i9 == 0) {
            return ZERO;
        } else {
            long m3010getValueimpl = m3010getValueimpl(j10);
            long j11 = i9;
            long j12 = m3010getValueimpl * j11;
            if (m3014isInNanosimpl(j10)) {
                if (new LongRange(-2147483647L, 2147483647L).contains(m3010getValueimpl)) {
                    return DurationKt.access$durationOfNanos(j12);
                }
                if (j12 / j11 == m3010getValueimpl) {
                    return DurationKt.access$durationOfNanosNormalized(j12);
                }
                long access$nanosToMillis = DurationKt.access$nanosToMillis(m3010getValueimpl);
                long j13 = access$nanosToMillis * j11;
                long access$nanosToMillis2 = DurationKt.access$nanosToMillis((m3010getValueimpl - DurationKt.access$millisToNanos(access$nanosToMillis)) * j11) + j13;
                if (j13 / j11 == access$nanosToMillis && (access$nanosToMillis2 ^ j13) >= 0) {
                    coerceIn2 = RangesKt___RangesKt.coerceIn(access$nanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS));
                    return DurationKt.access$durationOfMillis(coerceIn2);
                }
                sign3 = MathKt__MathJVMKt.getSign(m3010getValueimpl);
                sign4 = MathKt__MathJVMKt.getSign(i9);
                return sign3 * sign4 > 0 ? INFINITE : NEG_INFINITE;
            } else if (j12 / j11 == m3010getValueimpl) {
                coerceIn = RangesKt___RangesKt.coerceIn(j12, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS));
                return DurationKt.access$durationOfMillis(coerceIn);
            } else {
                sign = MathKt__MathJVMKt.getSign(m3010getValueimpl);
                sign2 = MathKt__MathJVMKt.getSign(i9);
                return sign * sign2 > 0 ? INFINITE : NEG_INFINITE;
            }
        }
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m3025toComponentsimpl(long j10, @NotNull Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2998getInWholeDaysimpl(j10)), Integer.valueOf(m2990getHoursComponentimpl(j10)), Integer.valueOf(m3005getMinutesComponentimpl(j10)), Integer.valueOf(m3007getSecondsComponentimpl(j10)), Integer.valueOf(m3006getNanosecondsComponentimpl(j10)));
    }

    /* renamed from: toDouble-impl  reason: not valid java name */
    public static final double m3026toDoubleimpl(long j10, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j10 == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j10 == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m3010getValueimpl(j10), m3008getStorageUnitimpl(j10), unit);
    }

    /* renamed from: toInt-impl  reason: not valid java name */
    public static final int m3027toIntimpl(long j10, @NotNull DurationUnit unit) {
        long coerceIn;
        Intrinsics.checkNotNullParameter(unit, "unit");
        coerceIn = RangesKt___RangesKt.coerceIn(m3029toLongimpl(j10, unit), -2147483648L, 2147483647L);
        return (int) coerceIn;
    }

    @NotNull
    /* renamed from: toIsoString-impl  reason: not valid java name */
    public static final String m3028toIsoStringimpl(long j10) {
        StringBuilder sb2 = new StringBuilder();
        if (m3016isNegativeimpl(j10)) {
            sb2.append('-');
        }
        sb2.append("PT");
        long m2989getAbsoluteValueUwyO8pc = m2989getAbsoluteValueUwyO8pc(j10);
        long m2999getInWholeHoursimpl = m2999getInWholeHoursimpl(m2989getAbsoluteValueUwyO8pc);
        int m3005getMinutesComponentimpl = m3005getMinutesComponentimpl(m2989getAbsoluteValueUwyO8pc);
        int m3007getSecondsComponentimpl = m3007getSecondsComponentimpl(m2989getAbsoluteValueUwyO8pc);
        int m3006getNanosecondsComponentimpl = m3006getNanosecondsComponentimpl(m2989getAbsoluteValueUwyO8pc);
        if (m3015isInfiniteimpl(j10)) {
            m2999getInWholeHoursimpl = 9999999999999L;
        }
        boolean z10 = true;
        boolean z11 = m2999getInWholeHoursimpl != 0;
        boolean z12 = (m3007getSecondsComponentimpl == 0 && m3006getNanosecondsComponentimpl == 0) ? false : true;
        if (m3005getMinutesComponentimpl == 0 && (!z12 || !z11)) {
            z10 = false;
        }
        if (z11) {
            sb2.append(m2999getInWholeHoursimpl);
            sb2.append('H');
        }
        if (z10) {
            sb2.append(m3005getMinutesComponentimpl);
            sb2.append('M');
        }
        if (z12 || (!z11 && !z10)) {
            m2980appendFractionalimpl(j10, sb2, m3007getSecondsComponentimpl, m3006getNanosecondsComponentimpl, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    public static final long m3029toLongimpl(long j10, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j10 == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j10 == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m3010getValueimpl(j10), m3008getStorageUnitimpl(j10), unit);
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeMilliseconds", imports = {}))
    @ExperimentalTime
    /* renamed from: toLongMilliseconds-impl  reason: not valid java name */
    public static final long m3030toLongMillisecondsimpl(long j10) {
        return m3001getInWholeMillisecondsimpl(j10);
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeNanoseconds", imports = {}))
    @ExperimentalTime
    /* renamed from: toLongNanoseconds-impl  reason: not valid java name */
    public static final long m3031toLongNanosecondsimpl(long j10) {
        return m3003getInWholeNanosecondsimpl(j10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3032toStringimpl(long j10) {
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == INFINITE) {
            return "Infinity";
        }
        if (j10 == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean m3016isNegativeimpl = m3016isNegativeimpl(j10);
        StringBuilder sb2 = new StringBuilder();
        if (m3016isNegativeimpl) {
            sb2.append('-');
        }
        long m2989getAbsoluteValueUwyO8pc = m2989getAbsoluteValueUwyO8pc(j10);
        long m2998getInWholeDaysimpl = m2998getInWholeDaysimpl(m2989getAbsoluteValueUwyO8pc);
        int m2990getHoursComponentimpl = m2990getHoursComponentimpl(m2989getAbsoluteValueUwyO8pc);
        int m3005getMinutesComponentimpl = m3005getMinutesComponentimpl(m2989getAbsoluteValueUwyO8pc);
        int m3007getSecondsComponentimpl = m3007getSecondsComponentimpl(m2989getAbsoluteValueUwyO8pc);
        int m3006getNanosecondsComponentimpl = m3006getNanosecondsComponentimpl(m2989getAbsoluteValueUwyO8pc);
        int i9 = 0;
        boolean z10 = m2998getInWholeDaysimpl != 0;
        boolean z11 = m2990getHoursComponentimpl != 0;
        boolean z12 = m3005getMinutesComponentimpl != 0;
        boolean z13 = (m3007getSecondsComponentimpl == 0 && m3006getNanosecondsComponentimpl == 0) ? false : true;
        if (z10) {
            sb2.append(m2998getInWholeDaysimpl);
            sb2.append('d');
            i9 = 1;
        }
        if (z11 || (z10 && (z12 || z13))) {
            int i10 = i9 + 1;
            if (i9 > 0) {
                sb2.append(' ');
            }
            sb2.append(m2990getHoursComponentimpl);
            sb2.append('h');
            i9 = i10;
        }
        if (z12 || (z13 && (z11 || z10))) {
            int i11 = i9 + 1;
            if (i9 > 0) {
                sb2.append(' ');
            }
            sb2.append(m3005getMinutesComponentimpl);
            sb2.append('m');
            i9 = i11;
        }
        if (z13) {
            int i12 = i9 + 1;
            if (i9 > 0) {
                sb2.append(' ');
            }
            if (m3007getSecondsComponentimpl != 0 || z10 || z11 || z12) {
                m2980appendFractionalimpl(j10, sb2, m3007getSecondsComponentimpl, m3006getNanosecondsComponentimpl, 9, NotifyType.SOUND, false);
            } else if (m3006getNanosecondsComponentimpl >= 1000000) {
                m2980appendFractionalimpl(j10, sb2, m3006getNanosecondsComponentimpl / 1000000, m3006getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (m3006getNanosecondsComponentimpl >= 1000) {
                m2980appendFractionalimpl(j10, sb2, m3006getNanosecondsComponentimpl / 1000, m3006getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb2.append(m3006getNanosecondsComponentimpl);
                sb2.append(NotificationStyle.NOTIFICATION_STYLE);
            }
            i9 = i12;
        }
        if (m3016isNegativeimpl && i9 > 1) {
            sb2.insert(1, '(').append(')');
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    /* renamed from: toString-impl$default  reason: not valid java name */
    public static /* synthetic */ String m3034toStringimpl$default(long j10, DurationUnit durationUnit, int i9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i9 = 0;
        }
        return m3033toStringimpl(j10, durationUnit, i9);
    }

    /* renamed from: unaryMinus-UwyO8pc  reason: not valid java name */
    public static final long m3035unaryMinusUwyO8pc(long j10) {
        return DurationKt.access$durationOf(-m3010getValueimpl(j10), ((int) j10) & 1);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m3036compareToLRDsOJo(duration.m3037unboximpl());
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public int m3036compareToLRDsOJo(long j10) {
        return m2982compareToLRDsOJo(this.rawValue, j10);
    }

    public boolean equals(Object obj) {
        return m2987equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m3011hashCodeimpl(this.rawValue);
    }

    @NotNull
    public String toString() {
        return m3032toStringimpl(this.rawValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m3037unboximpl() {
        return this.rawValue;
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public static int m2982compareToLRDsOJo(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 < 0 || (((int) j12) & 1) == 0) {
            return Intrinsics.compare(j10, j11);
        }
        int i9 = (((int) j10) & 1) - (((int) j11) & 1);
        return m3016isNegativeimpl(j10) ? -i9 : i9;
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m3024toComponentsimpl(long j10, @NotNull Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2999getInWholeHoursimpl(j10)), Integer.valueOf(m3005getMinutesComponentimpl(j10)), Integer.valueOf(m3007getSecondsComponentimpl(j10)), Integer.valueOf(m3006getNanosecondsComponentimpl(j10)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m3023toComponentsimpl(long j10, @NotNull Function3<? super Long, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m3002getInWholeMinutesimpl(j10)), Integer.valueOf(m3007getSecondsComponentimpl(j10)), Integer.valueOf(m3006getNanosecondsComponentimpl(j10)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m3022toComponentsimpl(long j10, @NotNull Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.mo1invoke(Long.valueOf(m3004getInWholeSecondsimpl(j10)), Integer.valueOf(m3006getNanosecondsComponentimpl(j10)));
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m2985divUwyO8pc(long j10, double d10) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(d10);
        if ((((double) roundToInt) == d10) && roundToInt != 0) {
            return m2986divUwyO8pc(j10, roundToInt);
        }
        DurationUnit m3008getStorageUnitimpl = m3008getStorageUnitimpl(j10);
        return DurationKt.toDuration(m3026toDoubleimpl(j10, m3008getStorageUnitimpl) / d10, m3008getStorageUnitimpl);
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m3020timesUwyO8pc(long j10, double d10) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(d10);
        if (((double) roundToInt) == d10) {
            return m3021timesUwyO8pc(j10, roundToInt);
        }
        DurationUnit m3008getStorageUnitimpl = m3008getStorageUnitimpl(j10);
        return DurationKt.toDuration(m3026toDoubleimpl(j10, m3008getStorageUnitimpl) * d10, m3008getStorageUnitimpl);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static final String m3033toStringimpl(long j10, @NotNull DurationUnit unit, int i9) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (i9 >= 0) {
            double m3026toDoubleimpl = m3026toDoubleimpl(j10, unit);
            if (Double.isInfinite(m3026toDoubleimpl)) {
                return String.valueOf(m3026toDoubleimpl);
            }
            StringBuilder sb2 = new StringBuilder();
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(i9, 12);
            sb2.append(DurationJvmKt.formatToExactDecimals(m3026toDoubleimpl, coerceAtMost));
            sb2.append(DurationUnitKt__DurationUnitKt.shortName(unit));
            return sb2.toString();
        }
        throw new IllegalArgumentException(("decimals must be not negative, but was " + i9).toString());
    }
}
