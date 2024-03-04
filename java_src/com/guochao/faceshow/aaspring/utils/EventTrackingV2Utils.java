package com.guochao.faceshow.aaspring.utils;

import android.os.Bundle;
import com.guochao.faceshow.context.GCApplication;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u0016\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0003\b\u0083\u0001\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002Ç\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010µ\u0001\u001a\u00030¶\u00012\u0007\u0010·\u0001\u001a\u000202J\u0013\u0010¸\u0001\u001a\u00030¶\u00012\t\u0010·\u0001\u001a\u0004\u0018\u000102J\u0007\u0010¹\u0001\u001a\u00020\u0004J\u0007\u0010º\u0001\u001a\u00020\u0004J\u0013\u0010»\u0001\u001a\u00030¼\u00012\u0007\u0010½\u0001\u001a\u00020\u0004H\u0002J\u0011\u0010¾\u0001\u001a\u00030¶\u00012\u0007\u0010·\u0001\u001a\u000202J\u0013\u0010¿\u0001\u001a\u00030¶\u00012\t\u0010·\u0001\u001a\u0004\u0018\u000102J\u0010\u0010À\u0001\u001a\u00030¶\u00012\u0006\u0010\u0010\u001a\u00020\u0011J\u001b\u0010Á\u0001\u001a\b\u0012\u0004\u0012\u00020\u0004012\n\u0010Â\u0001\u001a\u0005\u0018\u00010Ã\u0001H\u0002J\u0011\u0010Ä\u0001\u001a\u00030¶\u00012\u0007\u0010½\u0001\u001a\u00020\u0004J\u001d\u0010Ä\u0001\u001a\u00030¶\u00012\u0007\u0010½\u0001\u001a\u00020\u00042\n\u0010Â\u0001\u001a\u0005\u0018\u00010Ã\u0001J\u001c\u0010Ä\u0001\u001a\u00030¶\u00012\u0007\u0010½\u0001\u001a\u00020\u00042\t\u0010Å\u0001\u001a\u0004\u0018\u00010\u0004J\u0013\u0010Æ\u0001\u001a\u00030¶\u00012\u0007\u0010½\u0001\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u0013\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u001aX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u00100\u001a\b\u0012\u0004\u0012\u00020201X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00103\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u00104\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u00105\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u00106\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010B\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010C\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010H\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R$\u0010J\u001a\f\u0012\u0006\u0012\u0004\u0018\u000102\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u0010\u0010O\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010R\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010S\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010U\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010V\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010W\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010X\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010Y\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010Z\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\\\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010^\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010`\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010b\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010d\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010e\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010f\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010g\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010h\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010i\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010j\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010k\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010m\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010n\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010o\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010p\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010q\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010r\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010s\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010t\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010u\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010v\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010w\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010x\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010y\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010z\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010{\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010|\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010}\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010~\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u007f\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u001f\u0010\u0080\u0001\u001a\u00020\u0011X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0011\u0010\u0085\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0086\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0087\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000f\u0010\u0088\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0089\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u008a\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000f\u0010\u008b\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u008c\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u008d\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u008e\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u008f\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0090\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0091\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000f\u0010\u0092\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0093\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0094\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0095\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0096\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0097\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u0098\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000f\u0010\u0099\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u009a\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u009b\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u009c\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u009d\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u009e\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010\u009f\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010 \u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010¡\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010¢\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010£\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010¤\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010¥\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010¦\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010§\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010¨\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000f\u0010©\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010ª\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010«\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000f\u0010¬\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u00ad\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010®\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010¯\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010°\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010±\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010²\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010³\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0011\u0010´\u0001\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000¨\u0006È\u0001"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;", "", "()V", "activity_banner", "", "activity_center_activity", "activity_center_entrance", "activity_limit_task", "activity_load_from", "activity_load_success", "app_open", "apply_link_multi_click", "apply_link_single_click", "chat_page", "choose_login_page", "complete_profile_page", "diff", "", "Ljava/lang/Long;", "enter_live_room", "enter_live_room_success", "fast_recharge_dialog_show", "fast_recharge_list_success", "fast_recharge_recharge_click", "fast_recharge_recharge_success", "filterEveryDayEvents", "", "[Ljava/lang/String;", "first_charge_Icon_click", "first_charge_charge_click", "first_charge_dialog", "first_charge_dialog_show", "first_charge_gift_icon_click", "first_charge_goole_payment_specifications", "first_charge_success", "first_charge_success_price", "first_charge_success_scene", "first_charge_success_time", "first_charge_success_time1", "first_charge_success_time2", "first_charge_success_types", "first_charge_success_user_time", EventTrackingUtils.GOOGLE_PAY_AFTER_SERVER_FAIL, EventTrackingUtils.GOOGLE_PAY_AFTER_SERVER_SUCCESS, EventTrackingUtils.GOOGLE_PAY_BEFORE_SERVER, "g_pay_error", EventTrackingUtils.GOOGLE_PAY_ERROR_CALLBACK, EventTrackingUtils.GOOGLE_PAY_SUCCESS_CALLBACK, "gcServerListeners", "", "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;", "gift_dialog", "gift_dialog_switch_tab", "h24_be_greeted", "h24_reply_greeted", "handy_gift_clear", "handy_gift_click", "handy_gift_draw", "handy_gift_price", "handy_gift_quantity", "handy_gift_send", "handy_gift_send2", "handy_gift_total_price", "handy_gift_use_template", "handy_gift_withdraw", "im_friend_group_click", "im_friend_tab_click", "im_page", "im_top_click", "live_list_load_more", "live_list_page", "live_list_refresh", "live_tab_click", "live_tab_success", "mListeners", "getMListeners", "()Ljava/util/List;", "setMListeners", "(Ljava/util/List;)V", "main_home_tab_click", "main_im_tab_click", "main_page", "main_ugc_tab_click", "main_video_chat_click", "main_video_country", "main_video_float_click", "main_video_float_close", "main_video_follow_click", "main_video_gift_click", "main_video_global", "main_video_load_more", "main_video_music_click", "main_video_page", "main_video_refresh", "main_video_tipic_country", "main_video_tipic_global", "main_video_tipic_latest", "main_video_topic_click", "main_video_topic_join", "main_video_user_click", "mvp_bullet_chat", "mvp_bullet_chat_click", "mvp_contact", "mvp_contact_4000", "mvp_gift_click_role", "mvp_gift_open_role", "mvp_gift_toast_appear_3000", "mvp_my_click", "mvp_my_click_yes", "mvp_my_mvp_open_yes", "mvp_my_open_from", "mvp_oneclick_to_get_click", "mvp_receive_click", "mvp_use_click", EventTrackingUtils.NOTICE_LIST_CLOSE_CLICK, "notice_permission_change_open", "notice_permission_close", "notice_permission_dialog", "notice_permission_open", EventTrackingUtils.PLANET_SURPRISE_CLICK, "plant_avatar_click", "plant_page", "push_close", "push_ugc_click", "push_video_click", "recharge_list_success", "recharge_page", "recharge_start_pay", "registerTime", "getRegisterTime", "()J", "setRegisterTime", "(J)V", "replay_msg_from_plant", "replay_msg_from_plant_surprise", "reply_first_msg", "second_day_meeting", "select_hoby_page", "send_first_msg", "send_gift", "send_hello_gift", "sent_msg_from_plant", "sent_msg_from_plant_surprise", "start_buy_svip", "start_buy_vip", "start_first_charge_click", "ugc_comment", "ugc_filter_sex", "ugc_focus_click", "ugc_follow_click", "ugc_hot_click", "ugc_hot_topic_click", "ugc_latest_click", "ugc_like", "ugc_list_success", "ugc_load_more", "ugc_nearby_click", "ugc_page", "ugc_plant_click", "ugc_refresh", "ugc_sayhi_click", "ugc_search", "ugc_search_address", "ugc_search_multiple", "ugc_search_music", "ugc_search_topic", "ugc_search_user", "ugc_search_voice", "user_home_page", "video_like", "video_play_progress", "video_play_success", "video_share", "vip_dialog", "vip_load_success", "vip_permiss_switch", "vip_switch_tab", "watch_live_multi_stay", "watch_live_single_stay", "watch_live_switch", "watch_voice_room_single_stay", "addGCServerEventListener", "", "listener", "addListener", "getRegisterDay", "getToday", "isFilterEveryDayEvent", "", "event", "removeGCServerEventListener", "removeListener", "setServerDiffTime", "splitKeyToEvents", "bundle", "Landroid/os/Bundle;", "track", "value", "trackToGCServer", "OnEventTrackListener", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class EventTrackingV2Utils {
    @NotNull
    public static final String activity_banner = "activity_banner_3000";
    @NotNull
    public static final String activity_center_activity = "activity_center_activity_3000";
    @NotNull
    public static final String activity_center_entrance = "activity_center_entrance_3000";
    @NotNull
    public static final String activity_limit_task = "activity_limit_task_3000";
    @NotNull
    public static final String activity_load_from = "activity_load_from_4000";
    @NotNull
    public static final String activity_load_success = "activity_load_success_3000";
    @NotNull
    public static final String fast_recharge_dialog_show = "fast_recharge_dialog_show_4000";
    @NotNull
    public static final String fast_recharge_list_success = "fast_recharge_list_success_3000";
    @NotNull
    public static final String fast_recharge_recharge_click = "fast_recharge_recharge_click_3000";
    @NotNull
    public static final String fast_recharge_recharge_success = "fast_recharge_recharge_success_3000";
    @NotNull
    public static final String first_charge_Icon_click = "first_charge_Icon_click_4000";
    @NotNull
    public static final String first_charge_charge_click = "first_charge_charge_click_4000";
    @NotNull
    public static final String first_charge_dialog_show = "first_charge_dialog_show_4000";
    @NotNull
    public static final String first_charge_gift_icon_click = "first_charge_gift_icon_click_4000";
    @NotNull
    public static final String first_charge_goole_payment_specifications = "first_charge_g_p_spec_3000";
    @NotNull
    public static final String first_charge_success = "first_charge_success_4000";
    @NotNull
    public static final String first_charge_success_price = "first_charge_success_price_4000";
    @NotNull
    public static final String first_charge_success_scene = "first_charge_success_scene_4000";
    @NotNull
    public static final String first_charge_success_time = "first_charge_success_time_4000";
    @NotNull
    public static final String first_charge_success_time1 = "first_charge_success_time1_4000";
    @NotNull
    public static final String first_charge_success_time2 = "first_charge_success_time2_4000";
    @NotNull
    public static final String first_charge_success_types = "first_charge_success_types_4000";
    @NotNull
    public static final String first_charge_success_user_time = "first_charge_success_user_time_4000";
    @NotNull
    public static final String g_pay_error = "g_pay_error_4000";
    @NotNull
    public static final String g_pay_success_call = "g_pay_success_call_4000";
    @NotNull
    public static final String handy_gift_clear = "Graffiti_gift_delete_3000";
    @NotNull
    public static final String handy_gift_click = "Graffiti_gift_click_3000";
    @NotNull
    public static final String handy_gift_draw = "Graffiti_gift_draw_3000";
    @NotNull
    public static final String handy_gift_price = "Graffiti_gift_give_Price_3000";
    @NotNull
    public static final String handy_gift_quantity = "Graffiti_gift_give_quantity_3000";
    @NotNull
    public static final String handy_gift_send = "Graffiti_gift_give_3000";
    @NotNull
    public static final String handy_gift_send2 = "Graffiti_gift_give_4000";
    @NotNull
    public static final String handy_gift_total_price = "Graffiti_gift_give_Total_price_3000";
    @NotNull
    public static final String handy_gift_use_template = "Graffiti_gift_panel_3000";
    @NotNull
    public static final String handy_gift_withdraw = "Graffiti_gift_withdraw_3000";
    @Nullable
    private static List<OnEventTrackListener> mListeners = null;
    private static long registerTime = 0;
    @NotNull
    public static final String second_day_meeting = "second_day_meeting_3000";
    @NotNull
    public static final String send_gift = "send_gift_4000";
    @NotNull
    public static final String ugc_comment = "ugc_comment_3000";
    @NotNull
    public static final String ugc_like = "ugc_like_3000";
    @NotNull
    public static final String video_like = "video_like_3000";
    @NotNull
    public static final String video_share = "video_share_3000";
    @NotNull
    public static final EventTrackingV2Utils INSTANCE = new EventTrackingV2Utils();
    @JvmField
    @NotNull
    public static final String mvp_my_click = "mvp_my_click_3000";
    @JvmField
    @NotNull
    public static final String mvp_my_click_yes = "mvp_my_click_4000";
    @JvmField
    @NotNull
    public static final String mvp_my_mvp_open_yes = "mvp_my_open_role_4000";
    @JvmField
    @NotNull
    public static final String mvp_gift_open_role = "mvp_gift_open_role_4000";
    @JvmField
    @NotNull
    public static final String mvp_gift_click_role = "mvp_gift_click_role_4000";
    @JvmField
    @NotNull
    public static final String mvp_contact_4000 = "mvp_contact_4000";
    @JvmField
    @NotNull
    public static final String mvp_gift_toast_appear_3000 = "mvp_gift_toast_appear_3000";
    @JvmField
    @NotNull
    public static final String mvp_my_open_from = "mvp_my_open_from_4000";
    @JvmField
    @NotNull
    public static final String mvp_contact = "mvp_contact_3000";
    @JvmField
    @NotNull
    public static final String mvp_receive_click = "mvp_receive_click_3000";
    @JvmField
    @NotNull
    public static final String mvp_use_click = "mvp_use_click_4000";
    @JvmField
    @NotNull
    public static final String mvp_bullet_chat_click = "mvp_bullet_chat_click_4000";
    @JvmField
    @NotNull
    public static final String mvp_bullet_chat = "mvp_bullet_chat_3000";
    @JvmField
    @NotNull
    public static final String mvp_oneclick_to_get_click = "mvp_oneclick_to_get_click_3000";
    @JvmField
    @NotNull
    public static final String app_open = "app_open_3000";
    @JvmField
    @NotNull
    public static final String choose_login_page = "choose_login_page_3000";
    @JvmField
    @NotNull
    public static final String complete_profile_page = "complete_profile_page_3000";
    @JvmField
    @NotNull
    public static final String select_hoby_page = "select_hoby_page_3000";
    @JvmField
    @NotNull
    public static final String main_page = "main_page_3000";
    @JvmField
    @NotNull
    public static final String live_list_page = "live_list_page_3000";
    @JvmField
    @NotNull
    public static final String enter_live_room = "enter_live_room_4000";
    @JvmField
    @NotNull
    public static final String apply_link_single_click = "apply_link_single_click_4000";
    @JvmField
    @NotNull
    public static final String apply_link_multi_click = "apply_link_multi_click_4000";
    @JvmField
    @NotNull
    public static final String enter_live_room_success = "enter_live_room_success_4000";
    @JvmField
    @NotNull
    public static final String live_tab_click = "live_tab_click_4000";
    @JvmField
    @NotNull
    public static final String live_tab_success = "live_tab_success_4000";
    @JvmField
    @NotNull
    public static final String watch_live_multi_stay = "watch_live_multi_stay_4000";
    @JvmField
    @NotNull
    public static final String watch_live_single_stay = "watch_live_single_stay_4000";
    @JvmField
    @NotNull
    public static final String watch_voice_room_single_stay = "watch_voice_room_single_stay_4000";
    @JvmField
    @NotNull
    public static final String watch_live_switch = "watch_live_switch_4000";
    @JvmField
    @NotNull
    public static final String live_list_refresh = "live_list_refresh_3000";
    @JvmField
    @NotNull
    public static final String live_list_load_more = "live_list_load_more_3000";
    @JvmField
    @NotNull
    public static final String main_video_page = "main_video_page_3000";
    @JvmField
    @NotNull
    public static final String video_play_success = "video_play_success_3000";
    @JvmField
    @NotNull
    public static final String main_video_refresh = "main_video_refresh_3000";
    @JvmField
    @NotNull
    public static final String main_video_load_more = "main_video_load_more_3000";
    @JvmField
    @NotNull
    public static final String video_play_progress = "video_play_progress_4000";
    @JvmField
    @NotNull
    public static final String ugc_page = "ugc_page_3000";
    @JvmField
    @NotNull
    public static final String ugc_list_success = "ugc_list_success_3000";
    @JvmField
    @NotNull
    public static final String ugc_refresh = "ugc_refresh_3000";
    @JvmField
    @NotNull
    public static final String ugc_load_more = "ugc_load_more_3000";
    @JvmField
    @NotNull
    public static final String ugc_follow_click = "ugc_follow_click_3000";
    @JvmField
    @NotNull
    public static final String ugc_latest_click = "ugc_latest_click_3000";
    @JvmField
    @NotNull
    public static final String ugc_hot_click = "ugc_hot_click_3000";
    @JvmField
    @NotNull
    public static final String ugc_nearby_click = "ugc_nearby_click_3000";
    @JvmField
    @NotNull
    public static final String reply_first_msg = "reply_first_msg_4000";
    @JvmField
    @NotNull
    public static final String send_first_msg = "send_first_msg_4000";
    @JvmField
    @NotNull
    public static final String vip_dialog = "vip_dialog_4000";
    @JvmField
    @NotNull
    public static final String vip_switch_tab = "vip_switch_tab_3000";
    @JvmField
    @NotNull
    public static final String vip_load_success = "vip_load_success_3000";
    @JvmField
    @NotNull
    public static final String start_buy_vip = "start_buy_vip_3000";
    @JvmField
    @NotNull
    public static final String start_buy_svip = "start_buy_svip_3000";
    @JvmField
    @NotNull
    public static final String vip_permiss_switch = "vip_permiss_switch_4000";
    @JvmField
    @NotNull
    public static final String recharge_page = "recharge_page_4000";
    @JvmField
    @NotNull
    public static final String recharge_list_success = "recharge_list_success_3000";
    @JvmField
    @NotNull
    public static final String recharge_start_pay = "recharge_start_pay_3000";
    @JvmField
    @NotNull
    public static final String gift_dialog = "gift_dialog_4000";
    @JvmField
    @NotNull
    public static final String gift_dialog_switch_tab = "gift_dialog_switch_tab_3000";
    @JvmField
    @NotNull
    public static final String first_charge_dialog = "first_charge_dialog_3000";
    @JvmField
    @NotNull
    public static final String start_first_charge_click = "start_first_charge_click_3000";
    @JvmField
    @NotNull
    public static final String chat_page = "chat_page_4000";
    @JvmField
    @NotNull
    public static final String user_home_page = "user_home_page_4000";
    @JvmField
    @NotNull
    public static final String notice_permission_dialog = "notice_permission_dialog_3000";
    @JvmField
    @NotNull
    public static final String notice_permission_close = "notice_permission_close_3000";
    @JvmField
    @NotNull
    public static final String notice_permission_open = "notice_permission_open_3000";
    @JvmField
    @NotNull
    public static final String notice_permission_change_open = "notice_permission_change_open_3000";
    @JvmField
    @NotNull
    public static final String notice_list_close_click = "notice_list_close_click_3000";
    @JvmField
    @NotNull
    public static final String ugc_plant_click = "ugc_plant_click_3000";
    @JvmField
    @NotNull
    public static final String plant_page = "plant_page_3000";
    @JvmField
    @NotNull
    public static final String plant_avatar_click = "plant_avatar_click_3000";
    @JvmField
    @NotNull
    public static final String sent_msg_from_plant = "sent_msg_from_plant_3000";
    @JvmField
    @NotNull
    public static final String replay_msg_from_plant = "replay_msg_from_plant_3000";
    @JvmField
    @NotNull
    public static final String planet_surprise_click = "planet_surprise_click_3000";
    @JvmField
    @NotNull
    public static final String sent_msg_from_plant_surprise = "sent_msg_from_plant_surprise_3000";
    @JvmField
    @NotNull
    public static final String replay_msg_from_plant_surprise = "replay_msg_from_plant_surprise_3000";
    @JvmField
    @NotNull
    public static final String h24_be_greeted = "h_24_be_greeted_3000";
    @JvmField
    @NotNull
    public static final String h24_reply_greeted = "h_24_reply_greeted_3000";
    @JvmField
    @NotNull
    public static final String main_home_tab_click = "main_home_tab_click_3000";
    @JvmField
    @NotNull
    public static final String main_ugc_tab_click = "main_ugc_tab_click_3000";
    @JvmField
    @NotNull
    public static final String main_im_tab_click = "main_im_tab_click_3000";
    @JvmField
    @NotNull
    public static final String im_page = "im_page_3000";
    @JvmField
    @NotNull
    public static final String im_top_click = "im_top_click_3000";
    @JvmField
    @NotNull
    public static final String im_friend_tab_click = "im_friend_tab_click_3000";
    @JvmField
    @NotNull
    public static final String im_friend_group_click = "im_friend_group_click_3000";
    @JvmField
    @NotNull
    public static final String ugc_hot_topic_click = "ugc_hot_topic_click_3000";
    @JvmField
    @NotNull
    public static final String ugc_focus_click = "ugc_focus_click_3000";
    @JvmField
    @NotNull
    public static final String ugc_sayhi_click = "ugc_sayhi_click_3000";
    @JvmField
    @NotNull
    public static final String push_video_click = "push_video_click_3000";
    @JvmField
    @NotNull
    public static final String push_ugc_click = "push_ugc_click_3000";
    @JvmField
    @NotNull
    public static final String push_close = "push_close_3000";
    @JvmField
    @NotNull
    public static final String main_video_float_click = "main_video_float_click_3000";
    @JvmField
    @NotNull
    public static final String main_video_float_close = "main_video_float_close_3000";
    @JvmField
    @NotNull
    public static final String ugc_search = "ugc_search_3000";
    @JvmField
    @NotNull
    public static final String ugc_search_multiple = "ugc_search_multiple_3000";
    @JvmField
    @NotNull
    public static final String ugc_search_user = "ugc_search_user_3000";
    @JvmField
    @NotNull
    public static final String ugc_search_voice = "ugc_search_voice_3000";
    @JvmField
    @NotNull
    public static final String ugc_search_topic = "ugc_search_topic_3000";
    @JvmField
    @NotNull
    public static final String ugc_search_address = "ugc_search_address_3000";
    @JvmField
    @NotNull
    public static final String ugc_search_music = "ugc_search_music_3000";
    @JvmField
    @NotNull
    public static final String ugc_filter_sex = "ugc_filter_sex_4000";
    @JvmField
    @NotNull
    public static final String main_video_global = "main_video_global_3000";
    @JvmField
    @NotNull
    public static final String main_video_country = "main_video_country_3000";
    @JvmField
    @NotNull
    public static final String main_video_user_click = "main_video_user_click_3000";
    @JvmField
    @NotNull
    public static final String main_video_follow_click = "main_video_follow_click_3000";
    @JvmField
    @NotNull
    public static final String main_video_chat_click = "main_video_chat_click_3000";
    @JvmField
    @NotNull
    public static final String main_video_gift_click = "main_video_gift_click_3000";
    @JvmField
    @NotNull
    public static final String main_video_music_click = "main_video_music_click_3000";
    @JvmField
    @NotNull
    public static final String main_video_topic_click = "main_video_topic_click_3000";
    @JvmField
    @NotNull
    public static final String main_video_topic_join = "main_video_topic_join_3000";
    @JvmField
    @NotNull
    public static final String main_video_tipic_global = "main_video_tipic_global_3000";
    @JvmField
    @NotNull
    public static final String main_video_tipic_country = "main_video_tipic_country_3000";
    @JvmField
    @NotNull
    public static final String main_video_tipic_latest = "main_video_tipic_latest_3000";
    @JvmField
    @NotNull
    public static final String send_hello_gift = "send_hello_gift_3000";
    @JvmField
    @NotNull
    public static final String g_pay_error_call = "g_pay_error_call_4000";
    @JvmField
    @NotNull
    public static final String g_pay_before_server = "g_pay_before_server_3000";
    @JvmField
    @NotNull
    public static final String g_pay_after_server_success = "g_pay_after_server_success_3000";
    @JvmField
    @NotNull
    public static final String g_pay_after_server_fail = "g_pay_after_server_fail_3000";
    @NotNull
    private static final String[] filterEveryDayEvents = {""};
    @Nullable
    private static Long diff = 0L;
    @NotNull
    private static final List<OnEventTrackListener> gcServerListeners = new ArrayList();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;", "", "onTrackEvent", "", "event", "", "bundle", "Landroid/os/Bundle;", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnEventTrackListener {
        void onTrackEvent(@NotNull String str, @Nullable Bundle bundle);
    }

    private EventTrackingV2Utils() {
    }

    private final boolean isFilterEveryDayEvent(String str) {
        boolean contains;
        if (Intrinsics.areEqual(getToday(), getRegisterDay())) {
            contains = ArraysKt___ArraysKt.contains(filterEveryDayEvents, str);
            if (contains || Intrinsics.areEqual(getToday(), SpUtils.getStr(GCApplication.app(), str))) {
                return true;
            }
            SpUtils.setStr(GCApplication.app(), str, getToday());
            return false;
        }
        return true;
    }

    private final List<String> splitKeyToEvents(Bundle bundle) {
        Set<String> keySet;
        boolean endsWith$default;
        ArrayList arrayList = new ArrayList();
        if (bundle != null && (keySet = bundle.keySet()) != null) {
            for (String str : keySet) {
                if (str != null) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, "_4000", false, 2, null);
                    if (endsWith$default) {
                        Object obj = bundle.get(str);
                        arrayList.add(str + '_' + obj);
                    }
                }
            }
        }
        return arrayList;
    }

    @JvmStatic
    public static final void trackToGCServer(@NotNull String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        for (OnEventTrackListener onEventTrackListener : gcServerListeners) {
            onEventTrackListener.onTrackEvent(event, null);
        }
    }

    public final void addGCServerEventListener(@NotNull OnEventTrackListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        gcServerListeners.add(listener);
    }

    public final void addListener(@Nullable OnEventTrackListener onEventTrackListener) {
        if (mListeners == null) {
            mListeners = new ArrayList();
        }
        List<OnEventTrackListener> list = mListeners;
        if (list != null) {
            list.add(onEventTrackListener);
        }
    }

    @Nullable
    public final List<OnEventTrackListener> getMListeners() {
        return mListeners;
    }

    @NotNull
    public final String getRegisterDay() {
        try {
            Long l10 = diff;
            Date date = new Date((l10 != null ? l10.longValue() : 0L) + registerTime);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            String format = simpleDateFormat.format(date);
            Intrinsics.checkNotNullExpressionValue(format, "result.format(date)");
            return format;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public final long getRegisterTime() {
        return registerTime;
    }

    @NotNull
    public final String getToday() {
        try {
            Long l10 = diff;
            Date date = new Date((l10 != null ? l10.longValue() : 0L) + System.currentTimeMillis());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            String format = simpleDateFormat.format(date);
            Intrinsics.checkNotNullExpressionValue(format, "result.format(date)");
            return format;
        } catch (Exception e10) {
            e10.printStackTrace();
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            String format2 = simpleDateFormat2.format(new Date(System.currentTimeMillis()));
            Intrinsics.checkNotNullExpressionValue(format2, "result.format(Date(System.currentTimeMillis()))");
            return format2;
        }
    }

    public final void removeGCServerEventListener(@NotNull OnEventTrackListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        gcServerListeners.remove(listener);
    }

    public final void removeListener(@Nullable OnEventTrackListener onEventTrackListener) {
        List<OnEventTrackListener> list = mListeners;
        if (list == null || list == null) {
            return;
        }
        list.remove(onEventTrackListener);
    }

    public final void setMListeners(@Nullable List<OnEventTrackListener> list) {
        mListeners = list;
    }

    public final void setRegisterTime(long j10) {
        registerTime = j10;
    }

    public final void setServerDiffTime(long j10) {
        diff = Long.valueOf(j10);
    }

    public final void track(@NotNull String event, @Nullable Bundle bundle) {
        List split$default;
        List split$default2;
        Intrinsics.checkNotNullParameter(event, "event");
        List<OnEventTrackListener> list = mListeners;
        if (list == null || list == null) {
            return;
        }
        for (OnEventTrackListener onEventTrackListener : list) {
            EventTrackingV2Utils eventTrackingV2Utils = INSTANCE;
            List<String> splitKeyToEvents = eventTrackingV2Utils.splitKeyToEvents(bundle);
            if (!splitKeyToEvents.isEmpty()) {
                splitKeyToEvents.add(event);
                for (String str : splitKeyToEvents) {
                    Bundle bundle2 = new Bundle();
                    split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"_4000"}, false, 0, 6, (Object) null);
                    if (split$default.size() > 1) {
                        String str2 = ((String) split$default.get(0)) + "_4000_new_register" + ((String) split$default.get(1));
                        if ((onEventTrackListener instanceof GCApplication) && !INSTANCE.isFilterEveryDayEvent(str2)) {
                            bundle2.putString(str2, "1");
                            onEventTrackListener.onTrackEvent(str2, bundle2);
                        }
                    } else {
                        String str3 = ((String) split$default.get(0)) + "_4000_new_register";
                        if ((onEventTrackListener instanceof GCApplication) && !INSTANCE.isFilterEveryDayEvent(str3)) {
                            bundle2.putString(str3, "1");
                            onEventTrackListener.onTrackEvent(str3, bundle2);
                        }
                    }
                    bundle2.putString(str, "1");
                    if (onEventTrackListener != null) {
                        onEventTrackListener.onTrackEvent(str, bundle2);
                    }
                }
            } else {
                if (bundle != null) {
                    bundle.putString("CONTENT_TYPE", "1");
                }
                split$default2 = StringsKt__StringsKt.split$default((CharSequence) event, new String[]{"_3000"}, false, 0, 6, (Object) null);
                String str4 = ((String) split$default2.get(0)) + "_3000_new_register";
                if ((onEventTrackListener instanceof GCApplication) && !eventTrackingV2Utils.isFilterEveryDayEvent(str4)) {
                    onEventTrackListener.onTrackEvent(str4, bundle);
                }
                if (onEventTrackListener != null) {
                    onEventTrackListener.onTrackEvent(event, bundle);
                }
            }
        }
    }

    public final void track(@NotNull String event, @Nullable String str) {
        Intrinsics.checkNotNullParameter(event, "event");
        Bundle bundle = new Bundle();
        if (str != null) {
            bundle.putString(event, str);
        }
        track(event, bundle);
    }

    public final void track(@NotNull String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Bundle bundle = new Bundle();
        bundle.putString(event, "1");
        track(event, bundle);
    }
}
