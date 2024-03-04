package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper;
import com.facebook.bolts.AppLinks;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginTargetApp;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.huawei.hms.api.FailedBinderCallBack;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b;\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b:\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\f\bÇ\u0002\u0018\u00002\u00020\u0001:\u000eÔ\u0001Õ\u0001Ö\u0001×\u0001Ø\u0001Ù\u0001Ú\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0083\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020~0}0|H\u0002J\u000f\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u00020~0}H\u0002J\u000f\u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u00020~0}H\u0002J\u0013\u0010\u0086\u0001\u001a\u00030\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020~H\u0002J.\u0010\u0089\u0001\u001a\u00020A2\u0010\u0010\u008a\u0001\u001a\u000b\u0012\u0004\u0012\u00020A\u0018\u00010\u008b\u00012\u0007\u0010\u008c\u0001\u001a\u00020A2\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0007J\u0018\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u00012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u0001H\u0007J\u0093\u0001\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0094\u00012\b\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020\u00042\u0010\u0010\u0098\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0099\u00012\u0007\u0010\u009a\u0001\u001a\u00020\u00042\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012\b\u0010\u009d\u0001\u001a\u00030\u009c\u00012\b\u0010\u009e\u0001\u001a\u00030\u009f\u00012\u0007\u0010 \u0001\u001a\u00020\u00042\u0007\u0010¡\u0001\u001a\u00020\u00042\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010£\u0001\u001a\u00030\u009c\u00012\b\u0010¤\u0001\u001a\u00030\u009c\u00012\b\u0010¥\u0001\u001a\u00030\u009c\u0001H\u0007J½\u0001\u0010¦\u0001\u001a\u0005\u0018\u00010\u0094\u00012\u0007\u0010\u0088\u0001\u001a\u00020~2\u0007\u0010\u0097\u0001\u001a\u00020\u00042\u0010\u0010\u0098\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0099\u00012\u0007\u0010\u009a\u0001\u001a\u00020\u00042\b\u0010\u009d\u0001\u001a\u00030\u009c\u00012\b\u0010\u009e\u0001\u001a\u00030\u009f\u00012\u0007\u0010 \u0001\u001a\u00020\u00042\u0007\u0010¡\u0001\u001a\u00020\u00042\b\u0010§\u0001\u001a\u00030\u009c\u00012\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010£\u0001\u001a\u00030\u009c\u00012\b\u0010¨\u0001\u001a\u00030©\u00012\b\u0010¤\u0001\u001a\u00030\u009c\u00012\b\u0010¥\u0001\u001a\u00030\u009c\u00012\t\u0010ª\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010«\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¬\u0001\u001a\u0004\u0018\u00010\u0004H\u0002JD\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u0094\u00012\b\u0010\u0095\u0001\u001a\u00030\u0096\u00012\t\u0010®\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010°\u0001\u001a\u0005\u0018\u00010±\u00012\n\u0010²\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0007J\u0016\u0010³\u0001\u001a\u0005\u0018\u00010\u0094\u00012\b\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0007J.\u0010´\u0001\u001a\u0005\u0018\u00010\u0094\u00012\b\u0010µ\u0001\u001a\u00030\u0094\u00012\n\u0010¶\u0001\u001a\u0005\u0018\u00010\u0090\u00012\n\u0010·\u0001\u001a\u0005\u0018\u00010\u0092\u0001H\u0007JÆ\u0001\u0010¸\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010}2\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020\u00042\u0010\u0010\u0098\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0099\u00012\u0007\u0010\u009a\u0001\u001a\u00020\u00042\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012\b\u0010\u009d\u0001\u001a\u00030\u009c\u00012\b\u0010\u009e\u0001\u001a\u00030\u009f\u00012\u0007\u0010 \u0001\u001a\u00020\u00042\u0007\u0010¡\u0001\u001a\u00020\u00042\b\u0010§\u0001\u001a\u00030\u009c\u00012\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010£\u0001\u001a\u00030\u009c\u00012\b\u0010¤\u0001\u001a\u00030\u009c\u00012\b\u0010¥\u0001\u001a\u00030\u009c\u00012\t\u0010ª\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010«\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010¬\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J\u0019\u0010¹\u0001\u001a\t\u0012\u0004\u0012\u00020A0\u008b\u00012\u0007\u0010\u0088\u0001\u001a\u00020~H\u0002J\u0016\u0010º\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010»\u0001\u001a\u00030\u0094\u0001H\u0007J\u0018\u0010¼\u0001\u001a\u0005\u0018\u00010½\u00012\n\u0010»\u0001\u001a\u0005\u0018\u00010\u0094\u0001H\u0007J\u0016\u0010¾\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010¿\u0001\u001a\u00030\u0094\u0001H\u0007J\u0018\u0010À\u0001\u001a\u0005\u0018\u00010\u0092\u00012\n\u0010Á\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0007J\u001d\u0010Â\u0001\u001a\u00030±\u00012\u0007\u0010¯\u0001\u001a\u00020\u00042\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0007J%\u0010Ã\u0001\u001a\u00030±\u00012\u000f\u0010Ä\u0001\u001a\n\u0012\u0004\u0012\u00020~\u0018\u00010}2\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J\u0012\u0010Å\u0001\u001a\u00020A2\u0007\u0010Æ\u0001\u001a\u00020AH\u0007J\t\u0010Ç\u0001\u001a\u00020AH\u0007J\u0016\u0010È\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010»\u0001\u001a\u00030\u0094\u0001H\u0007J\u0013\u0010É\u0001\u001a\u00020A2\b\u0010»\u0001\u001a\u00030\u0094\u0001H\u0007J\u0016\u0010Ê\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010¿\u0001\u001a\u00030\u0094\u0001H\u0007J\u0014\u0010Ë\u0001\u001a\u00030\u009c\u00012\b\u0010¿\u0001\u001a\u00030\u0094\u0001H\u0007J\u0013\u0010Ì\u0001\u001a\u00030\u009c\u00012\u0007\u0010Í\u0001\u001a\u00020AH\u0007J?\u0010Î\u0001\u001a\u00030Ï\u00012\b\u0010»\u0001\u001a\u00030\u0094\u00012\t\u0010®\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010Í\u0001\u001a\u00020A2\n\u0010Ð\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0007J\n\u0010Ñ\u0001\u001a\u00030Ï\u0001H\u0007J-\u0010Ò\u0001\u001a\u0005\u0018\u00010\u0094\u00012\b\u0010\u0095\u0001\u001a\u00030\u0096\u00012\n\u0010»\u0001\u001a\u0005\u0018\u00010\u0094\u00012\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010~H\u0007J-\u0010Ó\u0001\u001a\u0005\u0018\u00010\u0094\u00012\b\u0010\u0095\u0001\u001a\u00030\u0096\u00012\n\u0010»\u0001\u001a\u0005\u0018\u00010\u0094\u00012\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010~H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00020A0@X\u0082\u0004¢\u0006\u0004\n\u0002\u0010BR\u000e\u0010C\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010[\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\\\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010`\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010a\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010b\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010c\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010d\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010f\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010g\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010h\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020AX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010j\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010l\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010m\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010p\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010s\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010u\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010v\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010w\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010x\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010y\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010z\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R \u0010{\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020~0}0|X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020~0}X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020~0}X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0081\u0001\u001a\u00030\u0082\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Û\u0001"}, d2 = {"Lcom/facebook/internal/NativeProtocol;", "", "()V", "ACTION_APPINVITE_DIALOG", "", "ACTION_CAMERA_EFFECT", "ACTION_FEED_DIALOG", "ACTION_LIKE_DIALOG", "ACTION_MESSAGE_DIALOG", "ACTION_OGACTIONPUBLISH_DIALOG", "ACTION_OGMESSAGEPUBLISH_DIALOG", "ACTION_SHARE_STORY", "AUDIENCE_EVERYONE", "AUDIENCE_FRIENDS", "AUDIENCE_ME", "BRIDGE_ARG_ACTION_ID_STRING", "BRIDGE_ARG_APP_NAME_STRING", "BRIDGE_ARG_ERROR_BUNDLE", "BRIDGE_ARG_ERROR_CODE", "BRIDGE_ARG_ERROR_DESCRIPTION", "BRIDGE_ARG_ERROR_JSON", "BRIDGE_ARG_ERROR_SUBCODE", "BRIDGE_ARG_ERROR_TYPE", "CONTENT_SCHEME", "ERROR_APPLICATION_ERROR", "ERROR_NETWORK_ERROR", "ERROR_PERMISSION_DENIED", "ERROR_PROTOCOL_ERROR", "ERROR_SERVICE_DISABLED", "ERROR_UNKNOWN_ERROR", "ERROR_USER_CANCELED", "EXTRA_ACCESS_TOKEN", "EXTRA_APPLICATION_ID", "EXTRA_APPLICATION_NAME", "EXTRA_AUTHENTICATION_TOKEN", "EXTRA_DATA_ACCESS_EXPIRATION_TIME", "EXTRA_DIALOG_COMPLETE_KEY", "EXTRA_DIALOG_COMPLETION_GESTURE_KEY", "EXTRA_EXPIRES_SECONDS_SINCE_EPOCH", "EXTRA_GET_INSTALL_DATA_PACKAGE", "EXTRA_GRAPH_API_VERSION", "EXTRA_LOGGER_REF", "EXTRA_NONCE", "EXTRA_PERMISSIONS", "EXTRA_PROTOCOL_ACTION", "EXTRA_PROTOCOL_BRIDGE_ARGS", "EXTRA_PROTOCOL_CALL_ID", "EXTRA_PROTOCOL_METHOD_ARGS", "EXTRA_PROTOCOL_METHOD_RESULTS", "EXTRA_PROTOCOL_VERSION", "EXTRA_PROTOCOL_VERSIONS", "EXTRA_TOAST_DURATION_MS", "EXTRA_USER_ID", "FACEBOOK_PROXY_AUTH_ACTIVITY", "FACEBOOK_PROXY_AUTH_APP_ID_KEY", "FACEBOOK_PROXY_AUTH_E2E_KEY", "FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY", "FACEBOOK_SDK_VERSION_KEY", "FACEBOOK_TOKEN_REFRESH_ACTIVITY", "IMAGE_URL_KEY", "IMAGE_USER_GENERATED_KEY", "INTENT_ACTION_PLATFORM_ACTIVITY", "INTENT_ACTION_PLATFORM_SERVICE", "KNOWN_PROTOCOL_VERSIONS", "", "", "[Ljava/lang/Integer;", "MESSAGE_GET_ACCESS_TOKEN_REPLY", "MESSAGE_GET_ACCESS_TOKEN_REQUEST", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST", "MESSAGE_GET_INSTALL_DATA_REPLY", "MESSAGE_GET_INSTALL_DATA_REQUEST", "MESSAGE_GET_LIKE_STATUS_REPLY", "MESSAGE_GET_LIKE_STATUS_REQUEST", "MESSAGE_GET_LOGIN_STATUS_REPLY", "MESSAGE_GET_LOGIN_STATUS_REQUEST", "MESSAGE_GET_PROTOCOL_VERSIONS_REPLY", "MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST", "NO_PROTOCOL_AVAILABLE", "OPEN_GRAPH_CREATE_OBJECT_KEY", "PLATFORM_PROVIDER", "PLATFORM_PROVIDER_VERSIONS", "PLATFORM_PROVIDER_VERSION_COLUMN", "PROTOCOL_VERSION_20121101", "PROTOCOL_VERSION_20130502", "PROTOCOL_VERSION_20130618", "PROTOCOL_VERSION_20131024", "PROTOCOL_VERSION_20131107", "PROTOCOL_VERSION_20140204", "PROTOCOL_VERSION_20140313", "PROTOCOL_VERSION_20140324", "PROTOCOL_VERSION_20140701", "PROTOCOL_VERSION_20141001", "PROTOCOL_VERSION_20141028", "PROTOCOL_VERSION_20141107", "PROTOCOL_VERSION_20141218", "PROTOCOL_VERSION_20150401", "PROTOCOL_VERSION_20150702", "PROTOCOL_VERSION_20160327", "PROTOCOL_VERSION_20161017", "PROTOCOL_VERSION_20170213", "PROTOCOL_VERSION_20170411", "PROTOCOL_VERSION_20170417", "PROTOCOL_VERSION_20171115", "PROTOCOL_VERSION_20210906", "RESULT_ARGS_ACCESS_TOKEN", "RESULT_ARGS_DIALOG_COMPLETE_KEY", "RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY", "RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH", "RESULT_ARGS_GRAPH_DOMAIN", "RESULT_ARGS_PERMISSIONS", "RESULT_ARGS_SIGNED_REQUEST", "STATUS_ERROR_CODE", "STATUS_ERROR_DESCRIPTION", "STATUS_ERROR_JSON", "STATUS_ERROR_SUBCODE", "STATUS_ERROR_TYPE", "TAG", "WEB_DIALOG_ACTION", "WEB_DIALOG_IS_FALLBACK", "WEB_DIALOG_PARAMS", "WEB_DIALOG_URL", "actionToAppInfoMap", "", "", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "effectCameraAppInfoList", "facebookAppInfoList", "protocolVersionsAsyncUpdating", "Ljava/util/concurrent/atomic/AtomicBoolean;", "buildActionToAppInfoMap", "buildEffectCameraAppInfoList", "buildFacebookAppList", "buildPlatformProviderVersionURI", "Landroid/net/Uri;", "appInfo", "computeLatestAvailableVersionFromVersionSpec", "allAvailableFacebookAppVersions", "Ljava/util/TreeSet;", "latestSdkVersion", "versionSpec", "", "createBundleForException", "Landroid/os/Bundle;", com.huawei.hms.push.e.f27721a, "Lcom/facebook/FacebookException;", "createInstagramIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "applicationId", "permissions", "", "e2e", "isRerequest", "", "isForPublish", "defaultAudience", "Lcom/facebook/login/DefaultAudience;", "clientState", "authType", "messengerPageId", "resetMessengerState", "isFamilyLogin", "shouldSkipAccountDedupe", "createNativeAppIntent", "ignoreAppSwitchToLoggedOut", "targetApp", "Lcom/facebook/login/LoginTargetApp;", "nonce", "codeChallenge", "codeChallengeMethod", "createPlatformActivityIntent", FailedBinderCallBack.CALLER_ID, NativeProtocol.WEB_DIALOG_ACTION, "versionResult", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", AppLinks.KEY_NAME_EXTRAS, "createPlatformServiceIntent", "createProtocolResultIntent", "requestIntent", "results", "error", "createProxyAuthIntents", "fetchAllAvailableProtocolVersionsForAppInfo", "getBridgeArgumentsFromIntent", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "getCallIdFromIntent", "Ljava/util/UUID;", "getErrorDataFromResultIntent", "resultIntent", "getExceptionFromErrorData", "errorData", "getLatestAvailableProtocolVersionForAction", "getLatestAvailableProtocolVersionForAppInfoList", "appInfoList", "getLatestAvailableProtocolVersionForService", "minimumVersion", "getLatestKnownVersion", "getMethodArgumentsFromIntent", "getProtocolVersionFromIntent", "getSuccessResultsFromIntent", "isErrorResult", "isVersionCompatibleWithBucketedIntent", "version", "setupProtocolRequestIntent", "", NativeProtocol.WEB_DIALOG_PARAMS, "updateAllAvailableProtocolVersionsAsync", "validateActivityIntent", "validateServiceIntent", "EffectTestAppInfo", "InstagramAppInfo", "KatanaAppInfo", "MessengerAppInfo", "NativeAppInfo", "ProtocolVersionQueryResult", "WakizashiAppInfo", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class NativeProtocol {
    @NotNull
    public static final String ACTION_APPINVITE_DIALOG = "com.facebook.platform.action.request.APPINVITES_DIALOG";
    @NotNull
    public static final String ACTION_CAMERA_EFFECT = "com.facebook.platform.action.request.CAMERA_EFFECT";
    @NotNull
    public static final String ACTION_FEED_DIALOG = "com.facebook.platform.action.request.FEED_DIALOG";
    @NotNull
    public static final String ACTION_LIKE_DIALOG = "com.facebook.platform.action.request.LIKE_DIALOG";
    @NotNull
    public static final String ACTION_MESSAGE_DIALOG = "com.facebook.platform.action.request.MESSAGE_DIALOG";
    @NotNull
    public static final String ACTION_OGACTIONPUBLISH_DIALOG = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    @NotNull
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    @NotNull
    public static final String ACTION_SHARE_STORY = "com.facebook.platform.action.request.SHARE_STORY";
    @NotNull
    public static final String AUDIENCE_EVERYONE = "everyone";
    @NotNull
    public static final String AUDIENCE_FRIENDS = "friends";
    @NotNull
    public static final String AUDIENCE_ME = "only_me";
    @NotNull
    public static final String BRIDGE_ARG_ACTION_ID_STRING = "action_id";
    @NotNull
    public static final String BRIDGE_ARG_APP_NAME_STRING = "app_name";
    @NotNull
    public static final String BRIDGE_ARG_ERROR_BUNDLE = "error";
    @NotNull
    public static final String BRIDGE_ARG_ERROR_CODE = "error_code";
    @NotNull
    public static final String BRIDGE_ARG_ERROR_DESCRIPTION = "error_description";
    @NotNull
    public static final String BRIDGE_ARG_ERROR_JSON = "error_json";
    @NotNull
    public static final String BRIDGE_ARG_ERROR_SUBCODE = "error_subcode";
    @NotNull
    public static final String BRIDGE_ARG_ERROR_TYPE = "error_type";
    @NotNull
    private static final String CONTENT_SCHEME = "content://";
    @NotNull
    public static final String ERROR_APPLICATION_ERROR = "ApplicationError";
    @NotNull
    public static final String ERROR_NETWORK_ERROR = "NetworkError";
    @NotNull
    public static final String ERROR_PERMISSION_DENIED = "PermissionDenied";
    @NotNull
    public static final String ERROR_PROTOCOL_ERROR = "ProtocolError";
    @NotNull
    public static final String ERROR_SERVICE_DISABLED = "ServiceDisabled";
    @NotNull
    public static final String ERROR_UNKNOWN_ERROR = "UnknownError";
    @NotNull
    public static final String ERROR_USER_CANCELED = "UserCanceled";
    @NotNull
    public static final String EXTRA_ACCESS_TOKEN = "com.facebook.platform.extra.ACCESS_TOKEN";
    @NotNull
    public static final String EXTRA_APPLICATION_ID = "com.facebook.platform.extra.APPLICATION_ID";
    @NotNull
    public static final String EXTRA_APPLICATION_NAME = "com.facebook.platform.extra.APPLICATION_NAME";
    @NotNull
    public static final String EXTRA_AUTHENTICATION_TOKEN = "com.facebook.platform.extra.ID_TOKEN";
    @NotNull
    public static final String EXTRA_DATA_ACCESS_EXPIRATION_TIME = "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME";
    @NotNull
    public static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
    @NotNull
    public static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
    @NotNull
    public static final String EXTRA_EXPIRES_SECONDS_SINCE_EPOCH = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
    @NotNull
    public static final String EXTRA_GET_INSTALL_DATA_PACKAGE = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
    @NotNull
    public static final String EXTRA_GRAPH_API_VERSION = "com.facebook.platform.extra.GRAPH_API_VERSION";
    @NotNull
    public static final String EXTRA_LOGGER_REF = "com.facebook.platform.extra.LOGGER_REF";
    @NotNull
    public static final String EXTRA_NONCE = "com.facebook.platform.extra.NONCE";
    @NotNull
    public static final String EXTRA_PERMISSIONS = "com.facebook.platform.extra.PERMISSIONS";
    @NotNull
    public static final String EXTRA_PROTOCOL_ACTION = "com.facebook.platform.protocol.PROTOCOL_ACTION";
    @NotNull
    public static final String EXTRA_PROTOCOL_BRIDGE_ARGS = "com.facebook.platform.protocol.BRIDGE_ARGS";
    @NotNull
    public static final String EXTRA_PROTOCOL_CALL_ID = "com.facebook.platform.protocol.CALL_ID";
    @NotNull
    public static final String EXTRA_PROTOCOL_METHOD_ARGS = "com.facebook.platform.protocol.METHOD_ARGS";
    @NotNull
    public static final String EXTRA_PROTOCOL_METHOD_RESULTS = "com.facebook.platform.protocol.RESULT_ARGS";
    @NotNull
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.platform.protocol.PROTOCOL_VERSION";
    @NotNull
    public static final String EXTRA_PROTOCOL_VERSIONS = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
    @NotNull
    public static final String EXTRA_TOAST_DURATION_MS = "com.facebook.platform.extra.EXTRA_TOAST_DURATION_MS";
    @NotNull
    public static final String EXTRA_USER_ID = "com.facebook.platform.extra.USER_ID";
    @NotNull
    private static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    @NotNull
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    @NotNull
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    @NotNull
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    @NotNull
    public static final String FACEBOOK_SDK_VERSION_KEY = "facebook_sdk_version";
    @NotNull
    private static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    @NotNull
    public static final String IMAGE_URL_KEY = "url";
    @NotNull
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    @NotNull
    public static final NativeProtocol INSTANCE;
    @NotNull
    public static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    @NotNull
    public static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    @NotNull
    private static final Integer[] KNOWN_PROTOCOL_VERSIONS;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 65537;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 65536;
    public static final int MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY = 65545;
    public static final int MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST = 65544;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 65541;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 65540;
    public static final int MESSAGE_GET_LIKE_STATUS_REPLY = 65543;
    public static final int MESSAGE_GET_LIKE_STATUS_REQUEST = 65542;
    public static final int MESSAGE_GET_LOGIN_STATUS_REPLY = 65547;
    public static final int MESSAGE_GET_LOGIN_STATUS_REQUEST = 65546;
    public static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 65539;
    public static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 65538;
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    @NotNull
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    @NotNull
    private static final String PLATFORM_PROVIDER = ".provider.PlatformProvider";
    @NotNull
    private static final String PLATFORM_PROVIDER_VERSIONS = ".provider.PlatformProvider/versions";
    @NotNull
    private static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final int PROTOCOL_VERSION_20121101 = 20121101;
    public static final int PROTOCOL_VERSION_20130502 = 20130502;
    public static final int PROTOCOL_VERSION_20130618 = 20130618;
    public static final int PROTOCOL_VERSION_20131024 = 20131024;
    public static final int PROTOCOL_VERSION_20131107 = 20131107;
    public static final int PROTOCOL_VERSION_20140204 = 20140204;
    public static final int PROTOCOL_VERSION_20140313 = 20140313;
    public static final int PROTOCOL_VERSION_20140324 = 20140324;
    public static final int PROTOCOL_VERSION_20140701 = 20140701;
    public static final int PROTOCOL_VERSION_20141001 = 20141001;
    public static final int PROTOCOL_VERSION_20141028 = 20141028;
    public static final int PROTOCOL_VERSION_20141107 = 20141107;
    public static final int PROTOCOL_VERSION_20141218 = 20141218;
    public static final int PROTOCOL_VERSION_20150401 = 20150401;
    public static final int PROTOCOL_VERSION_20150702 = 20150702;
    public static final int PROTOCOL_VERSION_20160327 = 20160327;
    public static final int PROTOCOL_VERSION_20161017 = 20161017;
    public static final int PROTOCOL_VERSION_20170213 = 20170213;
    public static final int PROTOCOL_VERSION_20170411 = 20170411;
    public static final int PROTOCOL_VERSION_20170417 = 20170417;
    public static final int PROTOCOL_VERSION_20171115 = 20171115;
    public static final int PROTOCOL_VERSION_20210906 = 20210906;
    @NotNull
    public static final String RESULT_ARGS_ACCESS_TOKEN = "access_token";
    @NotNull
    public static final String RESULT_ARGS_DIALOG_COMPLETE_KEY = "didComplete";
    @NotNull
    public static final String RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY = "completionGesture";
    @NotNull
    public static final String RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH = "expires_seconds_since_epoch";
    @NotNull
    public static final String RESULT_ARGS_GRAPH_DOMAIN = "graph_domain";
    @NotNull
    public static final String RESULT_ARGS_PERMISSIONS = "permissions";
    @NotNull
    public static final String RESULT_ARGS_SIGNED_REQUEST = "signed request";
    @NotNull
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    @NotNull
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    @NotNull
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    @NotNull
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    @NotNull
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    @NotNull
    private static final String TAG;
    @NotNull
    public static final String WEB_DIALOG_ACTION = "action";
    @NotNull
    public static final String WEB_DIALOG_IS_FALLBACK = "is_fallback";
    @NotNull
    public static final String WEB_DIALOG_PARAMS = "params";
    @NotNull
    public static final String WEB_DIALOG_URL = "url";
    @NotNull
    private static final Map<String, List<NativeAppInfo>> actionToAppInfoMap;
    @NotNull
    private static final List<NativeAppInfo> effectCameraAppInfoList;
    @NotNull
    private static final List<NativeAppInfo> facebookAppInfoList;
    @NotNull
    private static final AtomicBoolean protocolVersionsAsyncUpdating;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class EffectTestAppInfo extends NativeAppInfo {
        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        public /* bridge */ /* synthetic */ String getLoginActivity() {
            return (String) m144getLoginActivity();
        }

        @Nullable
        /* renamed from: getLoginActivity  reason: collision with other method in class */
        public Void m144getLoginActivity() {
            return null;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getPackage() {
            return "com.facebook.arstudio.player";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$InstagramAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "getResponseType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private static final class InstagramAppInfo extends NativeAppInfo {
        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getLoginActivity() {
            return "com.instagram.platform.AppAuthorizeActivity";
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getPackage() {
            return SharePlatformBean.InstagramPackage;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getResponseType() {
            return ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN_AND_SCOPES;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "isAndroidAPIVersionNotLessThan30", "", "onAvailableVersionsNullOrEmpty", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class KatanaAppInfo extends NativeAppInfo {
        private final boolean isAndroidAPIVersionNotLessThan30() {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            return FacebookSdk.getApplicationContext().getApplicationInfo().targetSdkVersion >= 30;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getLoginActivity() {
            return NativeProtocol.FACEBOOK_PROXY_AUTH_ACTIVITY;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getPackage() {
            return "com.facebook.katana";
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        public void onAvailableVersionsNullOrEmpty() {
            if (isAndroidAPIVersionNotLessThan30()) {
                Log.w(NativeProtocol.access$getTAG$p(), "Apps that target Android API 30+ (Android 11+) cannot call Facebook native apps unless the package visibility needs are declared. Please follow https://developers.facebook.com/docs/android/troubleshooting/#faq_267321845055988 to make the declaration.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class MessengerAppInfo extends NativeAppInfo {
        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        public /* bridge */ /* synthetic */ String getLoginActivity() {
            return (String) m145getLoginActivity();
        }

        @Nullable
        /* renamed from: getLoginActivity  reason: collision with other method in class */
        public Void m145getLoginActivity() {
            return null;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getPackage() {
            return "com.facebook.orca";
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\n\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\b\u0010\r\u001a\u00020\fH&J\b\u0010\u000e\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u0007H\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "()V", "availableVersions", "Ljava/util/TreeSet;", "", "fetchAvailableVersions", "", "force", "", "getAvailableVersions", "getLoginActivity", "", "getPackage", "getResponseType", "onAvailableVersionsNullOrEmpty", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class NativeAppInfo {
        @Nullable
        private TreeSet<Integer> availableVersions;

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
            if (kotlin.jvm.internal.Intrinsics.areEqual(r2 == null ? null : java.lang.Boolean.valueOf(r2.isEmpty()), java.lang.Boolean.FALSE) == false) goto L3;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0033 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0013, B:12:0x0023, B:14:0x0027, B:20:0x0033, B:8:0x000b, B:11:0x001b), top: B:26:0x0003 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final synchronized void fetchAvailableVersions(boolean r2) {
            /*
                r1 = this;
                monitor-enter(r1)
                if (r2 != 0) goto L1b
                java.util.TreeSet<java.lang.Integer> r2 = r1.availableVersions     // Catch: java.lang.Throwable -> L38
                if (r2 == 0) goto L1b
                if (r2 != 0) goto Lb
                r2 = 0
                goto L13
            Lb:
                boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L38
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch: java.lang.Throwable -> L38
            L13:
                java.lang.Boolean r0 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L38
                boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)     // Catch: java.lang.Throwable -> L38
                if (r2 != 0) goto L23
            L1b:
                com.facebook.internal.NativeProtocol r2 = com.facebook.internal.NativeProtocol.INSTANCE     // Catch: java.lang.Throwable -> L38
                java.util.TreeSet r2 = com.facebook.internal.NativeProtocol.access$fetchAllAvailableProtocolVersionsForAppInfo(r2, r1)     // Catch: java.lang.Throwable -> L38
                r1.availableVersions = r2     // Catch: java.lang.Throwable -> L38
            L23:
                java.util.TreeSet<java.lang.Integer> r2 = r1.availableVersions     // Catch: java.lang.Throwable -> L38
                if (r2 == 0) goto L30
                boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L38
                if (r2 == 0) goto L2e
                goto L30
            L2e:
                r2 = 0
                goto L31
            L30:
                r2 = 1
            L31:
                if (r2 == 0) goto L36
                r1.onAvailableVersionsNullOrEmpty()     // Catch: java.lang.Throwable -> L38
            L36:
                monitor-exit(r1)
                return
            L38:
                r2 = move-exception
                monitor-exit(r1)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.NativeAppInfo.fetchAvailableVersions(boolean):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
            if (kotlin.jvm.internal.Intrinsics.areEqual(r0 == null ? null : java.lang.Boolean.valueOf(r0.isEmpty()), java.lang.Boolean.FALSE) == false) goto L11;
         */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.TreeSet<java.lang.Integer> getAvailableVersions() {
            /*
                r2 = this;
                java.util.TreeSet<java.lang.Integer> r0 = r2.availableVersions
                if (r0 == 0) goto L18
                if (r0 != 0) goto L8
                r0 = 0
                goto L10
            L8:
                boolean r0 = r0.isEmpty()
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            L10:
                java.lang.Boolean r1 = java.lang.Boolean.FALSE
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                if (r0 != 0) goto L1c
            L18:
                r0 = 0
                r2.fetchAvailableVersions(r0)
            L1c:
                java.util.TreeSet<java.lang.Integer> r0 = r2.availableVersions
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.NativeAppInfo.getAvailableVersions():java.util.TreeSet");
        }

        @Nullable
        public abstract String getLoginActivity();

        @NotNull
        public abstract String getPackage();

        @NotNull
        public String getResponseType() {
            return ServerProtocol.DIALOG_RESPONSE_TYPE_ID_TOKEN_AND_SIGNED_REQUEST;
        }

        public void onAvailableVersionsNullOrEmpty() {
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "", "()V", "<set-?>", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "appInfo", "getAppInfo", "()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "protocolVersion", "getProtocolVersion", "()I", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ProtocolVersionQueryResult {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private NativeAppInfo appInfo;
        private int protocolVersion;

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\u0004H\u0007¨\u0006\n"}, d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;", "", "()V", "create", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "nativeAppInfo", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "protocolVersion", "", "createEmpty", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @NotNull
            public final ProtocolVersionQueryResult create(@Nullable NativeAppInfo nativeAppInfo, int i9) {
                ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult(null);
                protocolVersionQueryResult.appInfo = nativeAppInfo;
                protocolVersionQueryResult.protocolVersion = i9;
                return protocolVersionQueryResult;
            }

            @JvmStatic
            @NotNull
            public final ProtocolVersionQueryResult createEmpty() {
                ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult(null);
                protocolVersionQueryResult.protocolVersion = -1;
                return protocolVersionQueryResult;
            }
        }

        private ProtocolVersionQueryResult() {
        }

        public /* synthetic */ ProtocolVersionQueryResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public static final ProtocolVersionQueryResult create(@Nullable NativeAppInfo nativeAppInfo, int i9) {
            return Companion.create(nativeAppInfo, i9);
        }

        @JvmStatic
        @NotNull
        public static final ProtocolVersionQueryResult createEmpty() {
            return Companion.createEmpty();
        }

        @Nullable
        public final NativeAppInfo getAppInfo() {
            return this.appInfo;
        }

        public final int getProtocolVersion() {
            return this.protocolVersion;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class WakizashiAppInfo extends NativeAppInfo {
        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getLoginActivity() {
            return NativeProtocol.FACEBOOK_PROXY_AUTH_ACTIVITY;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String getPackage() {
            return RemoteServiceWrapper.RECEIVER_SERVICE_PACKAGE_WAKIZASHI;
        }
    }

    static {
        NativeProtocol nativeProtocol = new NativeProtocol();
        INSTANCE = nativeProtocol;
        String name = NativeProtocol.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "NativeProtocol::class.java.name");
        TAG = name;
        facebookAppInfoList = nativeProtocol.buildFacebookAppList();
        effectCameraAppInfoList = nativeProtocol.buildEffectCameraAppInfoList();
        actionToAppInfoMap = nativeProtocol.buildActionToAppInfoMap();
        protocolVersionsAsyncUpdating = new AtomicBoolean(false);
        KNOWN_PROTOCOL_VERSIONS = new Integer[]{Integer.valueOf((int) PROTOCOL_VERSION_20210906), Integer.valueOf((int) PROTOCOL_VERSION_20171115), Integer.valueOf((int) PROTOCOL_VERSION_20170417), Integer.valueOf((int) PROTOCOL_VERSION_20170411), Integer.valueOf((int) PROTOCOL_VERSION_20170213), Integer.valueOf((int) PROTOCOL_VERSION_20161017), Integer.valueOf((int) PROTOCOL_VERSION_20160327), Integer.valueOf((int) PROTOCOL_VERSION_20150702), Integer.valueOf((int) PROTOCOL_VERSION_20150401), Integer.valueOf((int) PROTOCOL_VERSION_20141218), Integer.valueOf((int) PROTOCOL_VERSION_20141107), Integer.valueOf((int) PROTOCOL_VERSION_20141028), Integer.valueOf((int) PROTOCOL_VERSION_20141001), Integer.valueOf((int) PROTOCOL_VERSION_20140701), Integer.valueOf((int) PROTOCOL_VERSION_20140324), Integer.valueOf((int) PROTOCOL_VERSION_20140313), Integer.valueOf((int) PROTOCOL_VERSION_20140204), Integer.valueOf((int) PROTOCOL_VERSION_20131107), Integer.valueOf((int) PROTOCOL_VERSION_20131024), Integer.valueOf((int) PROTOCOL_VERSION_20130618), Integer.valueOf((int) PROTOCOL_VERSION_20130502), Integer.valueOf((int) PROTOCOL_VERSION_20121101)};
    }

    private NativeProtocol() {
    }

    public static final /* synthetic */ TreeSet access$fetchAllAvailableProtocolVersionsForAppInfo(NativeProtocol nativeProtocol, NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return nativeProtocol.fetchAllAvailableProtocolVersionsForAppInfo(nativeAppInfo);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getTAG$p() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    private final Map<String, List<NativeAppInfo>> buildActionToAppInfoMap() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MessengerAppInfo());
            List<NativeAppInfo> list = facebookAppInfoList;
            hashMap.put(ACTION_OGACTIONPUBLISH_DIALOG, list);
            hashMap.put(ACTION_FEED_DIALOG, list);
            hashMap.put(ACTION_LIKE_DIALOG, list);
            hashMap.put(ACTION_APPINVITE_DIALOG, list);
            hashMap.put(ACTION_MESSAGE_DIALOG, arrayList);
            hashMap.put(ACTION_OGMESSAGEPUBLISH_DIALOG, arrayList);
            hashMap.put(ACTION_CAMERA_EFFECT, effectCameraAppInfoList);
            hashMap.put(ACTION_SHARE_STORY, list);
            return hashMap;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final List<NativeAppInfo> buildEffectCameraAppInfoList() {
        ArrayList arrayListOf;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new EffectTestAppInfo());
            arrayListOf.addAll(buildFacebookAppList());
            return arrayListOf;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final List<NativeAppInfo> buildFacebookAppList() {
        ArrayList arrayListOf;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new KatanaAppInfo(), new WakizashiAppInfo());
            return arrayListOf;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final Uri buildPlatformProviderVersionURI(NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Uri parse = Uri.parse(CONTENT_SCHEME + nativeAppInfo.getPackage() + PLATFORM_PROVIDER_VERSIONS);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(CONTENT_SCHEME + appInfo.getPackage() + PLATFORM_PROVIDER_VERSIONS)");
            return parse;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @JvmStatic
    public static final int computeLatestAvailableVersionFromVersionSpec(@Nullable TreeSet<Integer> treeSet, int i9, @NotNull int[] versionSpec) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullParameter(versionSpec, "versionSpec");
            if (treeSet == null) {
                return -1;
            }
            int length = versionSpec.length - 1;
            Iterator<Integer> descendingIterator = treeSet.descendingIterator();
            int i10 = -1;
            while (descendingIterator.hasNext()) {
                Integer fbAppVersion = descendingIterator.next();
                Intrinsics.checkNotNullExpressionValue(fbAppVersion, "fbAppVersion");
                i10 = Math.max(i10, fbAppVersion.intValue());
                while (length >= 0 && versionSpec[length] > fbAppVersion.intValue()) {
                    length--;
                }
                if (length < 0) {
                    return -1;
                }
                if (versionSpec[length] == fbAppVersion.intValue()) {
                    if (length % 2 == 0) {
                        return Math.min(i10, i9);
                    }
                    return -1;
                }
            }
            return -1;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return 0;
        }
    }

    @JvmStatic
    @Nullable
    public static final Bundle createBundleForException(@Nullable FacebookException facebookException) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class) || facebookException == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString(BRIDGE_ARG_ERROR_DESCRIPTION, facebookException.toString());
            if (facebookException instanceof FacebookOperationCanceledException) {
                bundle.putString(BRIDGE_ARG_ERROR_TYPE, ERROR_USER_CANCELED);
            }
            return bundle;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent createInstagramIntent(@NotNull Context context, @NotNull String applicationId, @NotNull Collection<String> permissions, @NotNull String e2e, boolean z10, boolean z11, @NotNull DefaultAudience defaultAudience, @NotNull String clientState, @NotNull String authType, @Nullable String str, boolean z12, boolean z13, boolean z14) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            Intrinsics.checkNotNullParameter(e2e, "e2e");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(clientState, "clientState");
            Intrinsics.checkNotNullParameter(authType, "authType");
            InstagramAppInfo instagramAppInfo = new InstagramAppInfo();
            return validateActivityIntent(context, INSTANCE.createNativeAppIntent(instagramAppInfo, applicationId, permissions, e2e, z11, defaultAudience, clientState, authType, false, str, z12, LoginTargetApp.INSTAGRAM, z13, z14, "", null, null), instagramAppInfo);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    private final Intent createNativeAppIntent(NativeAppInfo nativeAppInfo, String str, Collection<String> collection, String str2, boolean z10, DefaultAudience defaultAudience, String str3, String str4, boolean z11, String str5, boolean z12, LoginTargetApp loginTargetApp, boolean z13, boolean z14, String str6, String str7, String str8) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            String loginActivity = nativeAppInfo.getLoginActivity();
            if (loginActivity == null) {
                return null;
            }
            Intent putExtra = new Intent().setClassName(nativeAppInfo.getPackage(), loginActivity).putExtra("client_id", str);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent()\n            .setClassName(appInfo.getPackage(), activityName)\n            .putExtra(FACEBOOK_PROXY_AUTH_APP_ID_KEY, applicationId)");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            putExtra.putExtra(FACEBOOK_SDK_VERSION_KEY, FacebookSdk.getSdkVersion());
            Utility utility = Utility.INSTANCE;
            if (!Utility.isNullOrEmpty(collection)) {
                putExtra.putExtra("scope", TextUtils.join(",", collection));
            }
            if (!Utility.isNullOrEmpty(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_STATE, str3);
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, nativeAppInfo.getResponseType());
            putExtra.putExtra("nonce", str6);
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_RETURN_SCOPES, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            if (z10) {
                putExtra.putExtra("default_audience", defaultAudience.getNativeProtocolAudience());
            }
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_LEGACY_OVERRIDE, FacebookSdk.getGraphApiVersion());
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, str4);
            if (z11) {
                putExtra.putExtra(ServerProtocol.DIALOG_PARAM_FAIL_ON_LOGGED_OUT, true);
            }
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_MESSENGER_PAGE_ID, str5);
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_RESET_MESSENGER_STATE, z12);
            if (z13) {
                putExtra.putExtra(ServerProtocol.DIALOG_PARAM_FX_APP, loginTargetApp.toString());
            }
            if (z14) {
                putExtra.putExtra(ServerProtocol.DIALOG_PARAM_SKIP_DEDUPE, true);
            }
            return putExtra;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent createPlatformActivityIntent(@NotNull Context context, @Nullable String str, @Nullable String str2, @Nullable ProtocolVersionQueryResult protocolVersionQueryResult, @Nullable Bundle bundle) {
        NativeAppInfo appInfo;
        Intent validateActivityIntent;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            if (protocolVersionQueryResult == null || (appInfo = protocolVersionQueryResult.getAppInfo()) == null || (validateActivityIntent = validateActivityIntent(context, new Intent().setAction(INTENT_ACTION_PLATFORM_ACTIVITY).setPackage(appInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), appInfo)) == null) {
                return null;
            }
            setupProtocolRequestIntent(validateActivityIntent, str, str2, protocolVersionQueryResult.getProtocolVersion(), bundle);
            return validateActivityIntent;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent createPlatformServiceIntent(@NotNull Context context) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
                Intent validateServiceIntent = validateServiceIntent(context, new Intent(INTENT_ACTION_PLATFORM_SERVICE).setPackage(nativeAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeAppInfo);
                if (validateServiceIntent != null) {
                    return validateServiceIntent;
                }
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent createProtocolResultIntent(@NotNull Intent requestIntent, @Nullable Bundle bundle, @Nullable FacebookException facebookException) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(requestIntent, "requestIntent");
            UUID callIdFromIntent = getCallIdFromIntent(requestIntent);
            if (callIdFromIntent == null) {
                return null;
            }
            Intent intent = new Intent();
            intent.putExtra(EXTRA_PROTOCOL_VERSION, getProtocolVersionFromIntent(requestIntent));
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", callIdFromIntent.toString());
            if (facebookException != null) {
                bundle2.putBundle("error", createBundleForException(facebookException));
            }
            intent.putExtra(EXTRA_PROTOCOL_BRIDGE_ARGS, bundle2);
            if (bundle != null) {
                intent.putExtra(EXTRA_PROTOCOL_METHOD_RESULTS, bundle);
            }
            return intent;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final List<Intent> createProxyAuthIntents(@Nullable Context context, @NotNull String applicationId, @NotNull Collection<String> permissions, @NotNull String e2e, boolean z10, boolean z11, @NotNull DefaultAudience defaultAudience, @NotNull String clientState, @NotNull String authType, boolean z12, @Nullable String str, boolean z13, boolean z14, boolean z15, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            Intrinsics.checkNotNullParameter(e2e, "e2e");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(clientState, "clientState");
            Intrinsics.checkNotNullParameter(authType, "authType");
            List<NativeAppInfo> list = facebookAppInfoList;
            ArrayList arrayList = new ArrayList();
            for (NativeAppInfo nativeAppInfo : list) {
                ArrayList arrayList2 = arrayList;
                Intent createNativeAppIntent = INSTANCE.createNativeAppIntent(nativeAppInfo, applicationId, permissions, e2e, z11, defaultAudience, clientState, authType, z12, str, z13, LoginTargetApp.FACEBOOK, z14, z15, str2, str3, str4);
                if (createNativeAppIntent != null) {
                    arrayList2.add(createNativeAppIntent);
                }
                arrayList = arrayList2;
            }
            return arrayList;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    public static /* synthetic */ List createProxyAuthIntents$default(Context context, String str, Collection collection, String str2, boolean z10, boolean z11, DefaultAudience defaultAudience, String str3, String str4, boolean z12, String str5, boolean z13, boolean z14, boolean z15, String str6, String str7, String str8, int i9, Object obj) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return createProxyAuthIntents(context, str, collection, str2, z10, z11, defaultAudience, str3, str4, z12, str5, z13, z14, z15, str6, str7, (i9 & 65536) != 0 ? "S256" : str8);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0080 A[Catch: all -> 0x008d, TRY_ENTER, TryCatch #5 {all -> 0x008d, blocks: (B:5:0x000d, B:38:0x008c, B:37:0x0089, B:31:0x0080), top: B:47:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0061 A[EXC_TOP_SPLITTER, LOOP:0: B:43:0x0061->B:24:0x0067, LOOP_START, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.TreeSet<java.lang.Integer> fetchAllAvailableProtocolVersionsForAppInfo(com.facebook.internal.NativeProtocol.NativeAppInfo r13) {
        /*
            r12 = this;
            java.lang.String r0 = "version"
            java.lang.String r1 = "Failed to query content resolver."
            boolean r2 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r12)
            r3 = 0
            if (r2 == 0) goto Ld
            return r3
        Ld:
            java.util.TreeSet r2 = new java.util.TreeSet     // Catch: java.lang.Throwable -> L8d
            r2.<init>()     // Catch: java.lang.Throwable -> L8d
            com.facebook.FacebookSdk r4 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> L8d
            android.content.Context r4 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> L8d
            android.content.ContentResolver r5 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L8d
            java.lang.String[] r7 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L8d
            android.net.Uri r6 = r12.buildPlatformProviderVersionURI(r13)     // Catch: java.lang.Throwable -> L8d
            android.content.Context r4 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> L84
            android.content.pm.PackageManager r4 = r4.getPackageManager()     // Catch: java.lang.Throwable -> L84
            java.lang.String r13 = r13.getPackage()     // Catch: java.lang.Throwable -> L84
            java.lang.String r8 = ".provider.PlatformProvider"
            java.lang.String r13 = kotlin.jvm.internal.Intrinsics.stringPlus(r13, r8)     // Catch: java.lang.Throwable -> L84
            r8 = 0
            android.content.pm.ProviderInfo r13 = r4.resolveContentProvider(r13, r8)     // Catch: java.lang.RuntimeException -> L3c java.lang.Throwable -> L84
            goto L43
        L3c:
            r13 = move-exception
            java.lang.String r4 = com.facebook.internal.NativeProtocol.TAG     // Catch: java.lang.Throwable -> L84
            android.util.Log.e(r4, r1, r13)     // Catch: java.lang.Throwable -> L84
            r13 = r3
        L43:
            if (r13 == 0) goto L7c
            r8 = 0
            r9 = 0
            r10 = 0
            android.database.Cursor r13 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.IllegalArgumentException -> L4d java.lang.SecurityException -> L53 java.lang.NullPointerException -> L59 java.lang.Throwable -> L84
            goto L5f
        L4d:
            java.lang.String r13 = com.facebook.internal.NativeProtocol.TAG     // Catch: java.lang.Throwable -> L84
            android.util.Log.e(r13, r1)     // Catch: java.lang.Throwable -> L84
            goto L5e
        L53:
            java.lang.String r13 = com.facebook.internal.NativeProtocol.TAG     // Catch: java.lang.Throwable -> L84
            android.util.Log.e(r13, r1)     // Catch: java.lang.Throwable -> L84
            goto L5e
        L59:
            java.lang.String r13 = com.facebook.internal.NativeProtocol.TAG     // Catch: java.lang.Throwable -> L84
            android.util.Log.e(r13, r1)     // Catch: java.lang.Throwable -> L84
        L5e:
            r13 = r3
        L5f:
            if (r13 == 0) goto L7d
        L61:
            boolean r1 = r13.moveToNext()     // Catch: java.lang.Throwable -> L77
            if (r1 == 0) goto L7d
            int r1 = r13.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L77
            int r1 = r13.getInt(r1)     // Catch: java.lang.Throwable -> L77
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L77
            r2.add(r1)     // Catch: java.lang.Throwable -> L77
            goto L61
        L77:
            r0 = move-exception
            r11 = r0
            r0 = r13
            r13 = r11
            goto L86
        L7c:
            r13 = r3
        L7d:
            if (r13 != 0) goto L80
            goto L83
        L80:
            r13.close()     // Catch: java.lang.Throwable -> L8d
        L83:
            return r2
        L84:
            r13 = move-exception
            r0 = r3
        L86:
            if (r0 != 0) goto L89
            goto L8c
        L89:
            r0.close()     // Catch: java.lang.Throwable -> L8d
        L8c:
            throw r13     // Catch: java.lang.Throwable -> L8d
        L8d:
            r13 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r13, r12)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.fetchAllAvailableProtocolVersionsForAppInfo(com.facebook.internal.NativeProtocol$NativeAppInfo):java.util.TreeSet");
    }

    @JvmStatic
    @Nullable
    public static final Bundle getBridgeArgumentsFromIntent(@NotNull Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent))) {
                return intent.getBundleExtra(EXTRA_PROTOCOL_BRIDGE_ARGS);
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final UUID getCallIdFromIntent(@Nullable Intent intent) {
        String stringExtra;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class) || intent == null) {
            return null;
        }
        try {
            if (isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent))) {
                Bundle bundleExtra = intent.getBundleExtra(EXTRA_PROTOCOL_BRIDGE_ARGS);
                stringExtra = bundleExtra != null ? bundleExtra.getString("action_id") : null;
            } else {
                stringExtra = intent.getStringExtra(EXTRA_PROTOCOL_CALL_ID);
            }
            if (stringExtra != null) {
                try {
                    return UUID.fromString(stringExtra);
                } catch (IllegalArgumentException unused) {
                    return null;
                }
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Bundle getErrorDataFromResultIntent(@NotNull Intent resultIntent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(resultIntent, "resultIntent");
            if (isErrorResult(resultIntent)) {
                Bundle bridgeArgumentsFromIntent = getBridgeArgumentsFromIntent(resultIntent);
                if (bridgeArgumentsFromIntent != null) {
                    return bridgeArgumentsFromIntent.getBundle("error");
                }
                return resultIntent.getExtras();
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final FacebookException getExceptionFromErrorData(@Nullable Bundle bundle) {
        boolean equals;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class) || bundle == null) {
            return null;
        }
        try {
            String string = bundle.getString(BRIDGE_ARG_ERROR_TYPE);
            if (string == null) {
                string = bundle.getString(STATUS_ERROR_TYPE);
            }
            String string2 = bundle.getString(BRIDGE_ARG_ERROR_DESCRIPTION);
            if (string2 == null) {
                string2 = bundle.getString(STATUS_ERROR_DESCRIPTION);
            }
            if (string != null) {
                equals = StringsKt__StringsJVMKt.equals(string, ERROR_USER_CANCELED, true);
                if (equals) {
                    return new FacebookOperationCanceledException(string2);
                }
            }
            return new FacebookException(string2);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final ProtocolVersionQueryResult getLatestAvailableProtocolVersionForAction(@NotNull String action, @NotNull int[] versionSpec) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(versionSpec, "versionSpec");
            List<NativeAppInfo> list = actionToAppInfoMap.get(action);
            if (list == null) {
                list = CollectionsKt__CollectionsKt.emptyList();
            }
            return INSTANCE.getLatestAvailableProtocolVersionForAppInfoList(list, versionSpec);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    private final ProtocolVersionQueryResult getLatestAvailableProtocolVersionForAppInfoList(List<? extends NativeAppInfo> list, int[] iArr) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            updateAllAvailableProtocolVersionsAsync();
            if (list == null) {
                return ProtocolVersionQueryResult.Companion.createEmpty();
            }
            for (NativeAppInfo nativeAppInfo : list) {
                int computeLatestAvailableVersionFromVersionSpec = computeLatestAvailableVersionFromVersionSpec(nativeAppInfo.getAvailableVersions(), getLatestKnownVersion(), iArr);
                if (computeLatestAvailableVersionFromVersionSpec != -1) {
                    return ProtocolVersionQueryResult.Companion.create(nativeAppInfo, computeLatestAvailableVersionFromVersionSpec);
                }
            }
            return ProtocolVersionQueryResult.Companion.createEmpty();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @JvmStatic
    public static final int getLatestAvailableProtocolVersionForService(int i9) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return 0;
        }
        try {
            return INSTANCE.getLatestAvailableProtocolVersionForAppInfoList(facebookAppInfoList, new int[]{i9}).getProtocolVersion();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return 0;
        }
    }

    @JvmStatic
    public static final int getLatestKnownVersion() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return 0;
        }
        try {
            return KNOWN_PROTOCOL_VERSIONS[0].intValue();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return 0;
        }
    }

    @JvmStatic
    @Nullable
    public static final Bundle getMethodArgumentsFromIntent(@NotNull Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (!isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent))) {
                return intent.getExtras();
            }
            return intent.getBundleExtra(EXTRA_PROTOCOL_METHOD_ARGS);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    public static final int getProtocolVersionFromIntent(@NotNull Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return intent.getIntExtra(EXTRA_PROTOCOL_VERSION, 0);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return 0;
        }
    }

    @JvmStatic
    @Nullable
    public static final Bundle getSuccessResultsFromIntent(@NotNull Intent resultIntent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(resultIntent, "resultIntent");
            int protocolVersionFromIntent = getProtocolVersionFromIntent(resultIntent);
            Bundle extras = resultIntent.getExtras();
            if (isVersionCompatibleWithBucketedIntent(protocolVersionFromIntent) && extras != null) {
                return extras.getBundle(EXTRA_PROTOCOL_METHOD_RESULTS);
            }
            return extras;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    public static final boolean isErrorResult(@NotNull Intent resultIntent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(resultIntent, "resultIntent");
            Bundle bridgeArgumentsFromIntent = getBridgeArgumentsFromIntent(resultIntent);
            Boolean valueOf = bridgeArgumentsFromIntent == null ? null : Boolean.valueOf(bridgeArgumentsFromIntent.containsKey("error"));
            if (valueOf == null) {
                return resultIntent.hasExtra(STATUS_ERROR_TYPE);
            }
            return valueOf.booleanValue();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean isVersionCompatibleWithBucketedIntent(int i9) {
        boolean contains;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return false;
        }
        try {
            contains = ArraysKt___ArraysKt.contains(KNOWN_PROTOCOL_VERSIONS, Integer.valueOf(i9));
            return contains && i9 >= 20140701;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return false;
        }
    }

    @JvmStatic
    public static final void setupProtocolRequestIntent(@NotNull Intent intent, @Nullable String str, @Nullable String str2, int i9, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            String applicationId = FacebookSdk.getApplicationId();
            String applicationName = FacebookSdk.getApplicationName();
            intent.putExtra(EXTRA_PROTOCOL_VERSION, i9).putExtra(EXTRA_PROTOCOL_ACTION, str2).putExtra(EXTRA_APPLICATION_ID, applicationId);
            if (isVersionCompatibleWithBucketedIntent(i9)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("action_id", str);
                Utility utility = Utility.INSTANCE;
                Utility.putNonEmptyString(bundle2, "app_name", applicationName);
                intent.putExtra(EXTRA_PROTOCOL_BRIDGE_ARGS, bundle2);
                if (bundle == null) {
                    bundle = new Bundle();
                }
                intent.putExtra(EXTRA_PROTOCOL_METHOD_ARGS, bundle);
                return;
            }
            intent.putExtra(EXTRA_PROTOCOL_CALL_ID, str);
            Utility utility2 = Utility.INSTANCE;
            if (!Utility.isNullOrEmpty(applicationName)) {
                intent.putExtra(EXTRA_APPLICATION_NAME, applicationName);
            }
            if (bundle != null) {
                intent.putExtras(bundle);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
        }
    }

    @JvmStatic
    public static final void updateAllAvailableProtocolVersionsAsync() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return;
        }
        try {
            if (protocolVersionsAsyncUpdating.compareAndSet(false, true)) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        NativeProtocol.m143updateAllAvailableProtocolVersionsAsync$lambda1();
                    }
                });
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateAllAvailableProtocolVersionsAsync$lambda-1  reason: not valid java name */
    public static final void m143updateAllAvailableProtocolVersionsAsync$lambda1() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return;
        }
        try {
            for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
                nativeAppInfo.fetchAvailableVersions(true);
            }
            protocolVersionsAsyncUpdating.set(false);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent validateActivityIntent(@NotNull Context context, @Nullable Intent intent, @Nullable NativeAppInfo nativeAppInfo) {
        ResolveInfo resolveActivity;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null) {
                return null;
            }
            FacebookSignatureValidator facebookSignatureValidator = FacebookSignatureValidator.INSTANCE;
            String str = resolveActivity.activityInfo.packageName;
            Intrinsics.checkNotNullExpressionValue(str, "resolveInfo.activityInfo.packageName");
            if (FacebookSignatureValidator.validateSignature(context, str)) {
                return intent;
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent validateServiceIntent(@NotNull Context context, @Nullable Intent intent, @Nullable NativeAppInfo nativeAppInfo) {
        ResolveInfo resolveService;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null) {
                return null;
            }
            FacebookSignatureValidator facebookSignatureValidator = FacebookSignatureValidator.INSTANCE;
            String str = resolveService.serviceInfo.packageName;
            Intrinsics.checkNotNullExpressionValue(str, "resolveInfo.serviceInfo.packageName");
            if (FacebookSignatureValidator.validateSignature(context, str)) {
                return intent;
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, NativeProtocol.class);
            return null;
        }
    }
}
