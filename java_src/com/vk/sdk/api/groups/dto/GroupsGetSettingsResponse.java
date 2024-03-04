package com.vk.sdk.api.groups.dto;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bo\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bã\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u000f\u0012\u0016\b\u0002\u0010$\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0012\u0018\u00010\u0012\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u0012\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u0012\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000109\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010;\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010?J\t\u0010}\u001a\u00020\u0003HÆ\u0003J\t\u0010~\u001a\u00020\u000fHÆ\u0003J\u000f\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020\b0\u0012HÆ\u0003J\n\u0010\u0080\u0001\u001a\u00020\u0014HÆ\u0003J\n\u0010\u0081\u0001\u001a\u00020\bHÆ\u0003J\n\u0010\u0082\u0001\u001a\u00020\u0017HÆ\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0019HÆ\u0003J\n\u0010\u0084\u0001\u001a\u00020\u001bHÆ\u0003J\n\u0010\u0085\u0001\u001a\u00020\u001dHÆ\u0003J\f\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0005HÆ\u0003J\u0011\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010UJ\f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0018\u0010\u008c\u0001\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0012\u0018\u00010\u0012HÆ\u0003J\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010&HÆ\u0003J\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010&HÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010)HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0011\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010UJ\u0011\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010UJ\n\u0010\u0093\u0001\u001a\u00020\u0005HÆ\u0003J\u0012\u0010\u0094\u0001\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u0012HÆ\u0003J\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010UJ\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010UJ\u0011\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010UJ\u0011\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010UJ\u0012\u0010\u009c\u0001\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u0012HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u000109HÆ\u0003J\n\u0010\u009e\u0001\u001a\u00020\bHÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010;HÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\n\u0010£\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010¤\u0001\u001a\u00020\bHÆ\u0003J\n\u0010¥\u0001\u001a\u00020\bHÆ\u0003J\n\u0010¦\u0001\u001a\u00020\rHÆ\u0003J\n\u0010§\u0001\u001a\u00020\u000fHÆ\u0003J\u0090\u0004\u0010¨\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\b2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u000f2\u0016\b\u0002\u0010$\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0012\u0018\u00010\u00122\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u00122\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\b2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\b2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00102\u001a\u0004\u0018\u00010\b2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00122\n\b\u0002\u00108\u001a\u0004\u0018\u0001092\n\b\u0002\u0010:\u001a\u0004\u0018\u00010;2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0003\u0010©\u0001J\u0016\u0010ª\u0001\u001a\u00030«\u00012\t\u0010¬\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010\u00ad\u0001\u001a\u00020\u0005HÖ\u0001J\n\u0010®\u0001\u001a\u00020\bHÖ\u0001R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u0018\u0010 \u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0018\u0010(\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010GR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010CR\u0018\u0010\"\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u0016\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010GR\u0016\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010CR\u0016\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u0010CR\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010RR\u0018\u0010>\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010CR\u001a\u0010+\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010V\u001a\u0004\bT\u0010UR\u0018\u0010*\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u0010MR\u001a\u00104\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010V\u001a\u0004\bX\u0010UR\u0018\u0010#\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u0010MR\u0018\u0010%\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010[R\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010MR\u0016\u0010\u0010\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b]\u0010MR\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u0010_R\u0018\u0010=\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b`\u0010CR\u0016\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\ba\u0010bR\u001a\u0010,\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010V\u001a\u0004\bc\u0010UR\u001e\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bd\u0010_R\u0018\u0010/\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u0010CR\u0018\u00100\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u0010CR\u001a\u00101\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010V\u001a\u0004\bg\u0010UR\u001a\u0010!\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010V\u001a\u0004\bh\u0010UR\u0018\u00102\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bi\u0010CR\u0018\u0010'\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bj\u0010[R$\u0010$\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0012\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bk\u0010_R\u001a\u00103\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010V\u001a\u0004\bl\u0010UR\u001a\u00105\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010V\u001a\u0004\bm\u0010UR\u001e\u00106\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bn\u0010_R\u0018\u00108\u001a\u0004\u0018\u0001098\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010pR\u0016\u0010\u0015\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bq\u0010CR\u0016\u0010\u0016\u001a\u00020\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\br\u0010sR\u0018\u0010:\u001a\u0004\u0018\u00010;8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bt\u0010uR\u0016\u0010\u0018\u001a\u00020\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bv\u0010wR\u0016\u0010\u001a\u001a\u00020\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bx\u0010yR\u0018\u0010<\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bz\u0010CR\u0016\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b{\u0010|¨\u0006¯\u0001"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;", "", "audio", "Lcom/vk/sdk/api/groups/dto/GroupsGroupAudio;", "articles", "", "cityId", "cityName", "", "countryId", "countryName", "description", "docs", "Lcom/vk/sdk/api/groups/dto/GroupsGroupDocs;", "obsceneFilter", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "obsceneStopwords", "obsceneWords", "", "photos", "Lcom/vk/sdk/api/groups/dto/GroupsGroupPhotos;", "title", "topics", "Lcom/vk/sdk/api/groups/dto/GroupsGroupTopics;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/groups/dto/GroupsGroupVideo;", "wall", "Lcom/vk/sdk/api/groups/dto/GroupsGroupWall;", "wiki", "Lcom/vk/sdk/api/groups/dto/GroupsGroupWiki;", "access", "Lcom/vk/sdk/api/groups/dto/GroupsGroupAccess;", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "recognizePhoto", "contacts", "links", "sectionsList", "mainSection", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;", "secondarySection", "ageLimits", "Lcom/vk/sdk/api/groups/dto/GroupsGroupAgeLimits;", "events", "eventGroupId", "publicCategory", "publicCategoryList", "Lcom/vk/sdk/api/groups/dto/GroupsGroupPublicCategoryList;", "publicDate", "publicDateLabel", "publicSubcategory", "rss", "startDate", "finishDate", "subject", "subjectList", "Lcom/vk/sdk/api/groups/dto/GroupsSubjectItem;", "suggestedPrivacy", "Lcom/vk/sdk/api/groups/dto/GroupsGroupSuggestedPrivacy;", "twitter", "Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter;", "website", "phone", "email", "(Lcom/vk/sdk/api/groups/dto/GroupsGroupAudio;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupDocs;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGroupPhotos;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupTopics;Lcom/vk/sdk/api/groups/dto/GroupsGroupVideo;Lcom/vk/sdk/api/groups/dto/GroupsGroupWall;Lcom/vk/sdk/api/groups/dto/GroupsGroupWiki;Lcom/vk/sdk/api/groups/dto/GroupsGroupAccess;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/groups/dto/GroupsGroupAgeLimits;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGroupSuggestedPrivacy;Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccess", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupAccess;", "getAddress", "()Ljava/lang/String;", "getAgeLimits", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupAgeLimits;", "getArticles", "()I", "getAudio", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupAudio;", "getCityId", "getCityName", "getContacts", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCountryId", "getCountryName", "getDescription", "getDocs", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupDocs;", "getEmail", "getEventGroupId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEvents", "getFinishDate", "getLinks", "getMainSection", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;", "getObsceneFilter", "getObsceneStopwords", "getObsceneWords", "()Ljava/util/List;", "getPhone", "getPhotos", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupPhotos;", "getPublicCategory", "getPublicCategoryList", "getPublicDate", "getPublicDateLabel", "getPublicSubcategory", "getRecognizePhoto", "getRss", "getSecondarySection", "getSectionsList", "getStartDate", "getSubject", "getSubjectList", "getSuggestedPrivacy", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupSuggestedPrivacy;", "getTitle", "getTopics", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupTopics;", "getTwitter", "()Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter;", "getVideo", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupVideo;", "getWall", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupWall;", "getWebsite", "getWiki", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupWiki;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/groups/dto/GroupsGroupAudio;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupDocs;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGroupPhotos;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupTopics;Lcom/vk/sdk/api/groups/dto/GroupsGroupVideo;Lcom/vk/sdk/api/groups/dto/GroupsGroupWall;Lcom/vk/sdk/api/groups/dto/GroupsGroupWiki;Lcom/vk/sdk/api/groups/dto/GroupsGroupAccess;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/groups/dto/GroupsGroupAgeLimits;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGroupSuggestedPrivacy;Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGetSettingsResponse {
    @SerializedName("access")
    @Nullable
    private final GroupsGroupAccess access;
    @SerializedName(IntegrityManager.INTEGRITY_TYPE_ADDRESS)
    @Nullable
    private final String address;
    @SerializedName("age_limits")
    @Nullable
    private final GroupsGroupAgeLimits ageLimits;
    @SerializedName("articles")
    private final int articles;
    @SerializedName("audio")
    @NotNull
    private final GroupsGroupAudio audio;
    @SerializedName("city_id")
    private final int cityId;
    @SerializedName("city_name")
    @NotNull
    private final String cityName;
    @SerializedName("contacts")
    @Nullable
    private final BaseBoolInt contacts;
    @SerializedName("country_id")
    private final int countryId;
    @SerializedName("country_name")
    @NotNull
    private final String countryName;
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("docs")
    @NotNull
    private final GroupsGroupDocs docs;
    @SerializedName("email")
    @Nullable
    private final String email;
    @SerializedName("event_group_id")
    @Nullable
    private final Integer eventGroupId;
    @SerializedName("events")
    @Nullable
    private final BaseBoolInt events;
    @SerializedName("finish_date")
    @Nullable
    private final Integer finishDate;
    @SerializedName("links")
    @Nullable
    private final BaseBoolInt links;
    @SerializedName("main_section")
    @Nullable
    private final GroupsGroupFullSection mainSection;
    @SerializedName("obscene_filter")
    @NotNull
    private final BaseBoolInt obsceneFilter;
    @SerializedName("obscene_stopwords")
    @NotNull
    private final BaseBoolInt obsceneStopwords;
    @SerializedName("obscene_words")
    @NotNull
    private final List<String> obsceneWords;
    @SerializedName("phone")
    @Nullable
    private final String phone;
    @SerializedName("photos")
    @NotNull
    private final GroupsGroupPhotos photos;
    @SerializedName("public_category")
    @Nullable
    private final Integer publicCategory;
    @SerializedName("public_category_list")
    @Nullable
    private final List<GroupsGroupPublicCategoryList> publicCategoryList;
    @SerializedName("public_date")
    @Nullable
    private final String publicDate;
    @SerializedName("public_date_label")
    @Nullable
    private final String publicDateLabel;
    @SerializedName("public_subcategory")
    @Nullable
    private final Integer publicSubcategory;
    @SerializedName("recognize_photo")
    @Nullable
    private final Integer recognizePhoto;
    @SerializedName("rss")
    @Nullable
    private final String rss;
    @SerializedName("secondary_section")
    @Nullable
    private final GroupsGroupFullSection secondarySection;
    @SerializedName("sections_list")
    @Nullable
    private final List<List<Integer>> sectionsList;
    @SerializedName("start_date")
    @Nullable
    private final Integer startDate;
    @SerializedName("subject")
    @Nullable
    private final Integer subject;
    @SerializedName("subject_list")
    @Nullable
    private final List<GroupsSubjectItem> subjectList;
    @SerializedName("suggested_privacy")
    @Nullable
    private final GroupsGroupSuggestedPrivacy suggestedPrivacy;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("topics")
    @NotNull
    private final GroupsGroupTopics topics;
    @SerializedName("twitter")
    @Nullable
    private final GroupsSettingsTwitter twitter;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @NotNull
    private final GroupsGroupVideo video;
    @SerializedName("wall")
    @NotNull
    private final GroupsGroupWall wall;
    @SerializedName("website")
    @Nullable
    private final String website;
    @SerializedName("wiki")
    @NotNull
    private final GroupsGroupWiki wiki;

    /* JADX WARN: Multi-variable type inference failed */
    public GroupsGetSettingsResponse(@NotNull GroupsGroupAudio audio, int i9, int i10, @NotNull String cityName, int i11, @NotNull String countryName, @NotNull String description, @NotNull GroupsGroupDocs docs, @NotNull BaseBoolInt obsceneFilter, @NotNull BaseBoolInt obsceneStopwords, @NotNull List<String> obsceneWords, @NotNull GroupsGroupPhotos photos, @NotNull String title, @NotNull GroupsGroupTopics topics, @NotNull GroupsGroupVideo video, @NotNull GroupsGroupWall wall, @NotNull GroupsGroupWiki wiki, @Nullable GroupsGroupAccess groupsGroupAccess, @Nullable String str, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable List<? extends List<Integer>> list, @Nullable GroupsGroupFullSection groupsGroupFullSection, @Nullable GroupsGroupFullSection groupsGroupFullSection2, @Nullable GroupsGroupAgeLimits groupsGroupAgeLimits, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<GroupsGroupPublicCategoryList> list2, @Nullable String str2, @Nullable String str3, @Nullable Integer num4, @Nullable String str4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable List<GroupsSubjectItem> list3, @Nullable GroupsGroupSuggestedPrivacy groupsGroupSuggestedPrivacy, @Nullable GroupsSettingsTwitter groupsSettingsTwitter, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        Intrinsics.checkNotNullParameter(cityName, "cityName");
        Intrinsics.checkNotNullParameter(countryName, "countryName");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(docs, "docs");
        Intrinsics.checkNotNullParameter(obsceneFilter, "obsceneFilter");
        Intrinsics.checkNotNullParameter(obsceneStopwords, "obsceneStopwords");
        Intrinsics.checkNotNullParameter(obsceneWords, "obsceneWords");
        Intrinsics.checkNotNullParameter(photos, "photos");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(topics, "topics");
        Intrinsics.checkNotNullParameter(video, "video");
        Intrinsics.checkNotNullParameter(wall, "wall");
        Intrinsics.checkNotNullParameter(wiki, "wiki");
        this.audio = audio;
        this.articles = i9;
        this.cityId = i10;
        this.cityName = cityName;
        this.countryId = i11;
        this.countryName = countryName;
        this.description = description;
        this.docs = docs;
        this.obsceneFilter = obsceneFilter;
        this.obsceneStopwords = obsceneStopwords;
        this.obsceneWords = obsceneWords;
        this.photos = photos;
        this.title = title;
        this.topics = topics;
        this.video = video;
        this.wall = wall;
        this.wiki = wiki;
        this.access = groupsGroupAccess;
        this.address = str;
        this.recognizePhoto = num;
        this.contacts = baseBoolInt;
        this.links = baseBoolInt2;
        this.sectionsList = list;
        this.mainSection = groupsGroupFullSection;
        this.secondarySection = groupsGroupFullSection2;
        this.ageLimits = groupsGroupAgeLimits;
        this.events = baseBoolInt3;
        this.eventGroupId = num2;
        this.publicCategory = num3;
        this.publicCategoryList = list2;
        this.publicDate = str2;
        this.publicDateLabel = str3;
        this.publicSubcategory = num4;
        this.rss = str4;
        this.startDate = num5;
        this.finishDate = num6;
        this.subject = num7;
        this.subjectList = list3;
        this.suggestedPrivacy = groupsGroupSuggestedPrivacy;
        this.twitter = groupsSettingsTwitter;
        this.website = str5;
        this.phone = str6;
        this.email = str7;
    }

    @NotNull
    public final GroupsGroupAudio component1() {
        return this.audio;
    }

    @NotNull
    public final BaseBoolInt component10() {
        return this.obsceneStopwords;
    }

    @NotNull
    public final List<String> component11() {
        return this.obsceneWords;
    }

    @NotNull
    public final GroupsGroupPhotos component12() {
        return this.photos;
    }

    @NotNull
    public final String component13() {
        return this.title;
    }

    @NotNull
    public final GroupsGroupTopics component14() {
        return this.topics;
    }

    @NotNull
    public final GroupsGroupVideo component15() {
        return this.video;
    }

    @NotNull
    public final GroupsGroupWall component16() {
        return this.wall;
    }

    @NotNull
    public final GroupsGroupWiki component17() {
        return this.wiki;
    }

    @Nullable
    public final GroupsGroupAccess component18() {
        return this.access;
    }

    @Nullable
    public final String component19() {
        return this.address;
    }

    public final int component2() {
        return this.articles;
    }

    @Nullable
    public final Integer component20() {
        return this.recognizePhoto;
    }

    @Nullable
    public final BaseBoolInt component21() {
        return this.contacts;
    }

    @Nullable
    public final BaseBoolInt component22() {
        return this.links;
    }

    @Nullable
    public final List<List<Integer>> component23() {
        return this.sectionsList;
    }

    @Nullable
    public final GroupsGroupFullSection component24() {
        return this.mainSection;
    }

    @Nullable
    public final GroupsGroupFullSection component25() {
        return this.secondarySection;
    }

    @Nullable
    public final GroupsGroupAgeLimits component26() {
        return this.ageLimits;
    }

    @Nullable
    public final BaseBoolInt component27() {
        return this.events;
    }

    @Nullable
    public final Integer component28() {
        return this.eventGroupId;
    }

    @Nullable
    public final Integer component29() {
        return this.publicCategory;
    }

    public final int component3() {
        return this.cityId;
    }

    @Nullable
    public final List<GroupsGroupPublicCategoryList> component30() {
        return this.publicCategoryList;
    }

    @Nullable
    public final String component31() {
        return this.publicDate;
    }

    @Nullable
    public final String component32() {
        return this.publicDateLabel;
    }

    @Nullable
    public final Integer component33() {
        return this.publicSubcategory;
    }

    @Nullable
    public final String component34() {
        return this.rss;
    }

    @Nullable
    public final Integer component35() {
        return this.startDate;
    }

    @Nullable
    public final Integer component36() {
        return this.finishDate;
    }

    @Nullable
    public final Integer component37() {
        return this.subject;
    }

    @Nullable
    public final List<GroupsSubjectItem> component38() {
        return this.subjectList;
    }

    @Nullable
    public final GroupsGroupSuggestedPrivacy component39() {
        return this.suggestedPrivacy;
    }

    @NotNull
    public final String component4() {
        return this.cityName;
    }

    @Nullable
    public final GroupsSettingsTwitter component40() {
        return this.twitter;
    }

    @Nullable
    public final String component41() {
        return this.website;
    }

    @Nullable
    public final String component42() {
        return this.phone;
    }

    @Nullable
    public final String component43() {
        return this.email;
    }

    public final int component5() {
        return this.countryId;
    }

    @NotNull
    public final String component6() {
        return this.countryName;
    }

    @NotNull
    public final String component7() {
        return this.description;
    }

    @NotNull
    public final GroupsGroupDocs component8() {
        return this.docs;
    }

    @NotNull
    public final BaseBoolInt component9() {
        return this.obsceneFilter;
    }

    @NotNull
    public final GroupsGetSettingsResponse copy(@NotNull GroupsGroupAudio audio, int i9, int i10, @NotNull String cityName, int i11, @NotNull String countryName, @NotNull String description, @NotNull GroupsGroupDocs docs, @NotNull BaseBoolInt obsceneFilter, @NotNull BaseBoolInt obsceneStopwords, @NotNull List<String> obsceneWords, @NotNull GroupsGroupPhotos photos, @NotNull String title, @NotNull GroupsGroupTopics topics, @NotNull GroupsGroupVideo video, @NotNull GroupsGroupWall wall, @NotNull GroupsGroupWiki wiki, @Nullable GroupsGroupAccess groupsGroupAccess, @Nullable String str, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable List<? extends List<Integer>> list, @Nullable GroupsGroupFullSection groupsGroupFullSection, @Nullable GroupsGroupFullSection groupsGroupFullSection2, @Nullable GroupsGroupAgeLimits groupsGroupAgeLimits, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<GroupsGroupPublicCategoryList> list2, @Nullable String str2, @Nullable String str3, @Nullable Integer num4, @Nullable String str4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable List<GroupsSubjectItem> list3, @Nullable GroupsGroupSuggestedPrivacy groupsGroupSuggestedPrivacy, @Nullable GroupsSettingsTwitter groupsSettingsTwitter, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        Intrinsics.checkNotNullParameter(cityName, "cityName");
        Intrinsics.checkNotNullParameter(countryName, "countryName");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(docs, "docs");
        Intrinsics.checkNotNullParameter(obsceneFilter, "obsceneFilter");
        Intrinsics.checkNotNullParameter(obsceneStopwords, "obsceneStopwords");
        Intrinsics.checkNotNullParameter(obsceneWords, "obsceneWords");
        Intrinsics.checkNotNullParameter(photos, "photos");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(topics, "topics");
        Intrinsics.checkNotNullParameter(video, "video");
        Intrinsics.checkNotNullParameter(wall, "wall");
        Intrinsics.checkNotNullParameter(wiki, "wiki");
        return new GroupsGetSettingsResponse(audio, i9, i10, cityName, i11, countryName, description, docs, obsceneFilter, obsceneStopwords, obsceneWords, photos, title, topics, video, wall, wiki, groupsGroupAccess, str, num, baseBoolInt, baseBoolInt2, list, groupsGroupFullSection, groupsGroupFullSection2, groupsGroupAgeLimits, baseBoolInt3, num2, num3, list2, str2, str3, num4, str4, num5, num6, num7, list3, groupsGroupSuggestedPrivacy, groupsSettingsTwitter, str5, str6, str7);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGetSettingsResponse) {
            GroupsGetSettingsResponse groupsGetSettingsResponse = (GroupsGetSettingsResponse) obj;
            return this.audio == groupsGetSettingsResponse.audio && this.articles == groupsGetSettingsResponse.articles && this.cityId == groupsGetSettingsResponse.cityId && Intrinsics.areEqual(this.cityName, groupsGetSettingsResponse.cityName) && this.countryId == groupsGetSettingsResponse.countryId && Intrinsics.areEqual(this.countryName, groupsGetSettingsResponse.countryName) && Intrinsics.areEqual(this.description, groupsGetSettingsResponse.description) && this.docs == groupsGetSettingsResponse.docs && this.obsceneFilter == groupsGetSettingsResponse.obsceneFilter && this.obsceneStopwords == groupsGetSettingsResponse.obsceneStopwords && Intrinsics.areEqual(this.obsceneWords, groupsGetSettingsResponse.obsceneWords) && this.photos == groupsGetSettingsResponse.photos && Intrinsics.areEqual(this.title, groupsGetSettingsResponse.title) && this.topics == groupsGetSettingsResponse.topics && this.video == groupsGetSettingsResponse.video && this.wall == groupsGetSettingsResponse.wall && this.wiki == groupsGetSettingsResponse.wiki && this.access == groupsGetSettingsResponse.access && Intrinsics.areEqual(this.address, groupsGetSettingsResponse.address) && Intrinsics.areEqual(this.recognizePhoto, groupsGetSettingsResponse.recognizePhoto) && this.contacts == groupsGetSettingsResponse.contacts && this.links == groupsGetSettingsResponse.links && Intrinsics.areEqual(this.sectionsList, groupsGetSettingsResponse.sectionsList) && this.mainSection == groupsGetSettingsResponse.mainSection && this.secondarySection == groupsGetSettingsResponse.secondarySection && this.ageLimits == groupsGetSettingsResponse.ageLimits && this.events == groupsGetSettingsResponse.events && Intrinsics.areEqual(this.eventGroupId, groupsGetSettingsResponse.eventGroupId) && Intrinsics.areEqual(this.publicCategory, groupsGetSettingsResponse.publicCategory) && Intrinsics.areEqual(this.publicCategoryList, groupsGetSettingsResponse.publicCategoryList) && Intrinsics.areEqual(this.publicDate, groupsGetSettingsResponse.publicDate) && Intrinsics.areEqual(this.publicDateLabel, groupsGetSettingsResponse.publicDateLabel) && Intrinsics.areEqual(this.publicSubcategory, groupsGetSettingsResponse.publicSubcategory) && Intrinsics.areEqual(this.rss, groupsGetSettingsResponse.rss) && Intrinsics.areEqual(this.startDate, groupsGetSettingsResponse.startDate) && Intrinsics.areEqual(this.finishDate, groupsGetSettingsResponse.finishDate) && Intrinsics.areEqual(this.subject, groupsGetSettingsResponse.subject) && Intrinsics.areEqual(this.subjectList, groupsGetSettingsResponse.subjectList) && this.suggestedPrivacy == groupsGetSettingsResponse.suggestedPrivacy && Intrinsics.areEqual(this.twitter, groupsGetSettingsResponse.twitter) && Intrinsics.areEqual(this.website, groupsGetSettingsResponse.website) && Intrinsics.areEqual(this.phone, groupsGetSettingsResponse.phone) && Intrinsics.areEqual(this.email, groupsGetSettingsResponse.email);
        }
        return false;
    }

    @Nullable
    public final GroupsGroupAccess getAccess() {
        return this.access;
    }

    @Nullable
    public final String getAddress() {
        return this.address;
    }

    @Nullable
    public final GroupsGroupAgeLimits getAgeLimits() {
        return this.ageLimits;
    }

    public final int getArticles() {
        return this.articles;
    }

    @NotNull
    public final GroupsGroupAudio getAudio() {
        return this.audio;
    }

    public final int getCityId() {
        return this.cityId;
    }

    @NotNull
    public final String getCityName() {
        return this.cityName;
    }

    @Nullable
    public final BaseBoolInt getContacts() {
        return this.contacts;
    }

    public final int getCountryId() {
        return this.countryId;
    }

    @NotNull
    public final String getCountryName() {
        return this.countryName;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final GroupsGroupDocs getDocs() {
        return this.docs;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final Integer getEventGroupId() {
        return this.eventGroupId;
    }

    @Nullable
    public final BaseBoolInt getEvents() {
        return this.events;
    }

    @Nullable
    public final Integer getFinishDate() {
        return this.finishDate;
    }

    @Nullable
    public final BaseBoolInt getLinks() {
        return this.links;
    }

    @Nullable
    public final GroupsGroupFullSection getMainSection() {
        return this.mainSection;
    }

    @NotNull
    public final BaseBoolInt getObsceneFilter() {
        return this.obsceneFilter;
    }

    @NotNull
    public final BaseBoolInt getObsceneStopwords() {
        return this.obsceneStopwords;
    }

    @NotNull
    public final List<String> getObsceneWords() {
        return this.obsceneWords;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @NotNull
    public final GroupsGroupPhotos getPhotos() {
        return this.photos;
    }

    @Nullable
    public final Integer getPublicCategory() {
        return this.publicCategory;
    }

    @Nullable
    public final List<GroupsGroupPublicCategoryList> getPublicCategoryList() {
        return this.publicCategoryList;
    }

    @Nullable
    public final String getPublicDate() {
        return this.publicDate;
    }

    @Nullable
    public final String getPublicDateLabel() {
        return this.publicDateLabel;
    }

    @Nullable
    public final Integer getPublicSubcategory() {
        return this.publicSubcategory;
    }

    @Nullable
    public final Integer getRecognizePhoto() {
        return this.recognizePhoto;
    }

    @Nullable
    public final String getRss() {
        return this.rss;
    }

    @Nullable
    public final GroupsGroupFullSection getSecondarySection() {
        return this.secondarySection;
    }

    @Nullable
    public final List<List<Integer>> getSectionsList() {
        return this.sectionsList;
    }

    @Nullable
    public final Integer getStartDate() {
        return this.startDate;
    }

    @Nullable
    public final Integer getSubject() {
        return this.subject;
    }

    @Nullable
    public final List<GroupsSubjectItem> getSubjectList() {
        return this.subjectList;
    }

    @Nullable
    public final GroupsGroupSuggestedPrivacy getSuggestedPrivacy() {
        return this.suggestedPrivacy;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final GroupsGroupTopics getTopics() {
        return this.topics;
    }

    @Nullable
    public final GroupsSettingsTwitter getTwitter() {
        return this.twitter;
    }

    @NotNull
    public final GroupsGroupVideo getVideo() {
        return this.video;
    }

    @NotNull
    public final GroupsGroupWall getWall() {
        return this.wall;
    }

    @Nullable
    public final String getWebsite() {
        return this.website;
    }

    @NotNull
    public final GroupsGroupWiki getWiki() {
        return this.wiki;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((((((((((((((((this.audio.hashCode() * 31) + this.articles) * 31) + this.cityId) * 31) + this.cityName.hashCode()) * 31) + this.countryId) * 31) + this.countryName.hashCode()) * 31) + this.description.hashCode()) * 31) + this.docs.hashCode()) * 31) + this.obsceneFilter.hashCode()) * 31) + this.obsceneStopwords.hashCode()) * 31) + this.obsceneWords.hashCode()) * 31) + this.photos.hashCode()) * 31) + this.title.hashCode()) * 31) + this.topics.hashCode()) * 31) + this.video.hashCode()) * 31) + this.wall.hashCode()) * 31) + this.wiki.hashCode()) * 31;
        GroupsGroupAccess groupsGroupAccess = this.access;
        int hashCode2 = (hashCode + (groupsGroupAccess == null ? 0 : groupsGroupAccess.hashCode())) * 31;
        String str = this.address;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.recognizePhoto;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.contacts;
        int hashCode5 = (hashCode4 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.links;
        int hashCode6 = (hashCode5 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        List<List<Integer>> list = this.sectionsList;
        int hashCode7 = (hashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        GroupsGroupFullSection groupsGroupFullSection = this.mainSection;
        int hashCode8 = (hashCode7 + (groupsGroupFullSection == null ? 0 : groupsGroupFullSection.hashCode())) * 31;
        GroupsGroupFullSection groupsGroupFullSection2 = this.secondarySection;
        int hashCode9 = (hashCode8 + (groupsGroupFullSection2 == null ? 0 : groupsGroupFullSection2.hashCode())) * 31;
        GroupsGroupAgeLimits groupsGroupAgeLimits = this.ageLimits;
        int hashCode10 = (hashCode9 + (groupsGroupAgeLimits == null ? 0 : groupsGroupAgeLimits.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.events;
        int hashCode11 = (hashCode10 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        Integer num2 = this.eventGroupId;
        int hashCode12 = (hashCode11 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.publicCategory;
        int hashCode13 = (hashCode12 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<GroupsGroupPublicCategoryList> list2 = this.publicCategoryList;
        int hashCode14 = (hashCode13 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str2 = this.publicDate;
        int hashCode15 = (hashCode14 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.publicDateLabel;
        int hashCode16 = (hashCode15 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num4 = this.publicSubcategory;
        int hashCode17 = (hashCode16 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str4 = this.rss;
        int hashCode18 = (hashCode17 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num5 = this.startDate;
        int hashCode19 = (hashCode18 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.finishDate;
        int hashCode20 = (hashCode19 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.subject;
        int hashCode21 = (hashCode20 + (num7 == null ? 0 : num7.hashCode())) * 31;
        List<GroupsSubjectItem> list3 = this.subjectList;
        int hashCode22 = (hashCode21 + (list3 == null ? 0 : list3.hashCode())) * 31;
        GroupsGroupSuggestedPrivacy groupsGroupSuggestedPrivacy = this.suggestedPrivacy;
        int hashCode23 = (hashCode22 + (groupsGroupSuggestedPrivacy == null ? 0 : groupsGroupSuggestedPrivacy.hashCode())) * 31;
        GroupsSettingsTwitter groupsSettingsTwitter = this.twitter;
        int hashCode24 = (hashCode23 + (groupsSettingsTwitter == null ? 0 : groupsSettingsTwitter.hashCode())) * 31;
        String str5 = this.website;
        int hashCode25 = (hashCode24 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.phone;
        int hashCode26 = (hashCode25 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.email;
        return hashCode26 + (str7 != null ? str7.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        GroupsGroupAudio groupsGroupAudio = this.audio;
        int i9 = this.articles;
        int i10 = this.cityId;
        String str = this.cityName;
        int i11 = this.countryId;
        String str2 = this.countryName;
        String str3 = this.description;
        GroupsGroupDocs groupsGroupDocs = this.docs;
        BaseBoolInt baseBoolInt = this.obsceneFilter;
        BaseBoolInt baseBoolInt2 = this.obsceneStopwords;
        List<String> list = this.obsceneWords;
        GroupsGroupPhotos groupsGroupPhotos = this.photos;
        String str4 = this.title;
        GroupsGroupTopics groupsGroupTopics = this.topics;
        GroupsGroupVideo groupsGroupVideo = this.video;
        GroupsGroupWall groupsGroupWall = this.wall;
        GroupsGroupWiki groupsGroupWiki = this.wiki;
        GroupsGroupAccess groupsGroupAccess = this.access;
        String str5 = this.address;
        Integer num = this.recognizePhoto;
        BaseBoolInt baseBoolInt3 = this.contacts;
        BaseBoolInt baseBoolInt4 = this.links;
        List<List<Integer>> list2 = this.sectionsList;
        GroupsGroupFullSection groupsGroupFullSection = this.mainSection;
        GroupsGroupFullSection groupsGroupFullSection2 = this.secondarySection;
        GroupsGroupAgeLimits groupsGroupAgeLimits = this.ageLimits;
        BaseBoolInt baseBoolInt5 = this.events;
        Integer num2 = this.eventGroupId;
        Integer num3 = this.publicCategory;
        List<GroupsGroupPublicCategoryList> list3 = this.publicCategoryList;
        String str6 = this.publicDate;
        String str7 = this.publicDateLabel;
        Integer num4 = this.publicSubcategory;
        String str8 = this.rss;
        Integer num5 = this.startDate;
        Integer num6 = this.finishDate;
        Integer num7 = this.subject;
        List<GroupsSubjectItem> list4 = this.subjectList;
        GroupsGroupSuggestedPrivacy groupsGroupSuggestedPrivacy = this.suggestedPrivacy;
        GroupsSettingsTwitter groupsSettingsTwitter = this.twitter;
        String str9 = this.website;
        String str10 = this.phone;
        String str11 = this.email;
        return "GroupsGetSettingsResponse(audio=" + groupsGroupAudio + ", articles=" + i9 + ", cityId=" + i10 + ", cityName=" + str + ", countryId=" + i11 + ", countryName=" + str2 + ", description=" + str3 + ", docs=" + groupsGroupDocs + ", obsceneFilter=" + baseBoolInt + ", obsceneStopwords=" + baseBoolInt2 + ", obsceneWords=" + list + ", photos=" + groupsGroupPhotos + ", title=" + str4 + ", topics=" + groupsGroupTopics + ", video=" + groupsGroupVideo + ", wall=" + groupsGroupWall + ", wiki=" + groupsGroupWiki + ", access=" + groupsGroupAccess + ", address=" + str5 + ", recognizePhoto=" + num + ", contacts=" + baseBoolInt3 + ", links=" + baseBoolInt4 + ", sectionsList=" + list2 + ", mainSection=" + groupsGroupFullSection + ", secondarySection=" + groupsGroupFullSection2 + ", ageLimits=" + groupsGroupAgeLimits + ", events=" + baseBoolInt5 + ", eventGroupId=" + num2 + ", publicCategory=" + num3 + ", publicCategoryList=" + list3 + ", publicDate=" + str6 + ", publicDateLabel=" + str7 + ", publicSubcategory=" + num4 + ", rss=" + str8 + ", startDate=" + num5 + ", finishDate=" + num6 + ", subject=" + num7 + ", subjectList=" + list4 + ", suggestedPrivacy=" + groupsGroupSuggestedPrivacy + ", twitter=" + groupsSettingsTwitter + ", website=" + str9 + ", phone=" + str10 + ", email=" + str11 + ")";
    }

    public /* synthetic */ GroupsGetSettingsResponse(GroupsGroupAudio groupsGroupAudio, int i9, int i10, String str, int i11, String str2, String str3, GroupsGroupDocs groupsGroupDocs, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, List list, GroupsGroupPhotos groupsGroupPhotos, String str4, GroupsGroupTopics groupsGroupTopics, GroupsGroupVideo groupsGroupVideo, GroupsGroupWall groupsGroupWall, GroupsGroupWiki groupsGroupWiki, GroupsGroupAccess groupsGroupAccess, String str5, Integer num, BaseBoolInt baseBoolInt3, BaseBoolInt baseBoolInt4, List list2, GroupsGroupFullSection groupsGroupFullSection, GroupsGroupFullSection groupsGroupFullSection2, GroupsGroupAgeLimits groupsGroupAgeLimits, BaseBoolInt baseBoolInt5, Integer num2, Integer num3, List list3, String str6, String str7, Integer num4, String str8, Integer num5, Integer num6, Integer num7, List list4, GroupsGroupSuggestedPrivacy groupsGroupSuggestedPrivacy, GroupsSettingsTwitter groupsSettingsTwitter, String str9, String str10, String str11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(groupsGroupAudio, i9, i10, str, i11, str2, str3, groupsGroupDocs, baseBoolInt, baseBoolInt2, list, groupsGroupPhotos, str4, groupsGroupTopics, groupsGroupVideo, groupsGroupWall, groupsGroupWiki, (i12 & 131072) != 0 ? null : groupsGroupAccess, (i12 & 262144) != 0 ? null : str5, (i12 & 524288) != 0 ? null : num, (i12 & 1048576) != 0 ? null : baseBoolInt3, (i12 & 2097152) != 0 ? null : baseBoolInt4, (i12 & 4194304) != 0 ? null : list2, (i12 & 8388608) != 0 ? null : groupsGroupFullSection, (i12 & 16777216) != 0 ? null : groupsGroupFullSection2, (i12 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? null : groupsGroupAgeLimits, (i12 & 67108864) != 0 ? null : baseBoolInt5, (i12 & 134217728) != 0 ? null : num2, (i12 & 268435456) != 0 ? null : num3, (i12 & 536870912) != 0 ? null : list3, (i12 & BasicMeasure.EXACTLY) != 0 ? null : str6, (i12 & Integer.MIN_VALUE) != 0 ? null : str7, (i13 & 1) != 0 ? null : num4, (i13 & 2) != 0 ? null : str8, (i13 & 4) != 0 ? null : num5, (i13 & 8) != 0 ? null : num6, (i13 & 16) != 0 ? null : num7, (i13 & 32) != 0 ? null : list4, (i13 & 64) != 0 ? null : groupsGroupSuggestedPrivacy, (i13 & 128) != 0 ? null : groupsSettingsTwitter, (i13 & 256) != 0 ? null : str9, (i13 & 512) != 0 ? null : str10, (i13 & 1024) != 0 ? null : str11);
    }
}
