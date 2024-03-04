package com.vk.sdk.api.video.dto;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.AccessToken;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.audio.dto.AudioArtist;
import com.vk.sdk.api.audio.dto.AudioGenre;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikes;
import com.vk.sdk.api.base.dto.BasePropertyExists;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b{\b\u0086\b\u0018\u00002\u00020\u0001:\u0004¼\u0001½\u0001B\u0093\u0005\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u000101\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000109\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010;\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010=\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u0015\u0012\u0010\b\u0002\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u0015\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u0015¢\u0006\u0002\u0010DJ\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0011\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0012\u0010\u0089\u0001\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015HÆ\u0003J\u0012\u0010\u008a\u0001\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015HÆ\u0003J\u0011\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0011\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0011\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0011\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0092\u0001\u001a\u0004\u0018\u00010 HÆ\u0003¢\u0006\u0002\u0010cJ\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010#HÆ\u0003J\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009a\u0001\u001a\u0004\u0018\u00010#HÆ\u0003J\f\u0010\u009b\u0001\u001a\u0004\u0018\u00010*HÆ\u0003J\u0011\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0011\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0011\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010 \u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\f\u0010¡\u0001\u001a\u0004\u0018\u000101HÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010#HÆ\u0003J\f\u0010£\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010#HÆ\u0003J\u0011\u0010¥\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010§\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u000109HÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010;HÆ\u0003J\f\u0010«\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0012\u0010¬\u0001\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u0015HÆ\u0003J\u0012\u0010\u00ad\u0001\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u0015HÆ\u0003J\f\u0010®\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¯\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010°\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010JJ\u0012\u0010±\u0001\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u0015HÆ\u0003J\f\u0010²\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010³\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010´\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010µ\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u009e\u0005\u0010¶\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010(\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\n\b\u0002\u00102\u001a\u0004\u0018\u00010#2\n\b\u0002\u00103\u001a\u0004\u0018\u00010#2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u00108\u001a\u0004\u0018\u0001092\n\b\u0002\u0010:\u001a\u0004\u0018\u00010;2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010=\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u00152\u0010\b\u0002\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u00152\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u0015HÆ\u0001¢\u0006\u0003\u0010·\u0001J\u0015\u0010¸\u0001\u001a\u00020 2\t\u0010¹\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010º\u0001\u001a\u00020\u0005HÖ\u0001J\n\u0010»\u0001\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0018\u0010%\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bI\u0010JR\u001a\u0010/\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bL\u0010JR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u0010HR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010HR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010HR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u0010HR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010HR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bR\u0010HR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010HR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010HR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bU\u0010JR\u001a\u0010-\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bV\u0010JR\u0018\u0010.\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u0010FR\u0018\u0010$\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bX\u0010HR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bY\u0010JR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010FR\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\b[\u0010JR\u001e\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010]R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u0010]R\u001e\u0010B\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b_\u0010]R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\b`\u0010JR\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\ba\u0010JR\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bb\u0010]R\u0018\u0010<\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010HR\u001a\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010d\u001a\u0004\b\u001f\u0010cR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010HR\u0018\u0010&\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010HR\u0018\u00108\u001a\u0004\u0018\u0001098\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u0010fR\u0018\u00102\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bg\u0010hR\u0018\u00105\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bi\u0010HR\u001a\u00104\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bj\u0010JR\u0018\u00100\u001a\u0004\u0018\u0001018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bk\u0010lR\u001a\u0010,\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bm\u0010JR\u001e\u0010=\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bn\u0010]R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010pR\u0018\u00107\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bq\u0010FR\u0018\u0010!\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\br\u0010FR\u0018\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bs\u0010hR\u001a\u0010A\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bt\u0010JR\u0018\u0010(\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bu\u0010hR\u0018\u0010:\u001a\u0004\u0018\u00010;8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bv\u0010wR\u001a\u00106\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010K\u001a\u0004\bx\u0010JR\u0018\u0010@\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\by\u0010FR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bz\u0010FR\u0018\u0010'\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b{\u0010FR\u0018\u0010)\u001a\u0004\u0018\u00010*8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b|\u0010}R\u0018\u00103\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b~\u0010hR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u007f\u0010pR\u001b\u0010+\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010K\u001a\u0005\b\u0080\u0001\u0010JR\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010K\u001a\u0005\b\u0081\u0001\u0010J¨\u0006¾\u0001"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideo;", "", "accessKey", "", "addingDate", "", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "canEdit", "canLike", "canRepost", "canSubscribe", "canAddToFaves", "canAdd", "canAttachLink", "isPrivate", "comments", "date", "description", "duration", "image", "", "Lcom/vk/sdk/api/video/dto/VideoVideoImage;", "firstFrame", "width", "height", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", Contants.USER_ID, "title", "isFavorite", "", "player", "processing", "Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "converting", "added", "isSubscribed", "trackCode", "repeat", "type", "Lcom/vk/sdk/api/video/dto/VideoVideo$Type;", AdUnitActivity.EXTRA_VIEWS, "localViews", "contentRestricted", "contentRestrictedMessage", Contants.USER_balance, "liveStatus", "Lcom/vk/sdk/api/video/dto/VideoVideo$LiveStatus;", "live", "upcoming", "liveStartTime", "liveNotify", "spectators", "platform", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikes;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "isExplicit", "mainArtists", "Lcom/vk/sdk/api/audio/dto/AudioArtist;", "featuredArtists", "subtitle", "releaseDate", "genres", "Lcom/vk/sdk/api/audio/dto/AudioGenre;", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/video/dto/VideoVideo$Type;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/video/dto/VideoVideo$LiveStatus;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V", "getAccessKey", "()Ljava/lang/String;", "getAdded", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getAddingDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getBalance", "getCanAdd", "getCanAddToFaves", "getCanAttachLink", "getCanComment", "getCanEdit", "getCanLike", "getCanRepost", "getCanSubscribe", "getComments", "getContentRestricted", "getContentRestrictedMessage", "getConverting", "getDate", "getDescription", "getDuration", "getFeaturedArtists", "()Ljava/util/List;", "getFirstFrame", "getGenres", "getHeight", "getId", "getImage", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikes;", "getLive", "()Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "getLiveNotify", "getLiveStartTime", "getLiveStatus", "()Lcom/vk/sdk/api/video/dto/VideoVideo$LiveStatus;", "getLocalViews", "getMainArtists", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPlatform", "getPlayer", "getProcessing", "getReleaseDate", "getRepeat", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getSpectators", "getSubtitle", "getTitle", "getTrackCode", "getType", "()Lcom/vk/sdk/api/video/dto/VideoVideo$Type;", "getUpcoming", "getUserId", "getViews", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component5", "component50", "component51", "component52", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/video/dto/VideoVideo$Type;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/video/dto/VideoVideo$LiveStatus;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/video/dto/VideoVideo;", "equals", "other", "hashCode", "toString", "LiveStatus", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoVideo {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("added")
    @Nullable
    private final BaseBoolInt added;
    @SerializedName("adding_date")
    @Nullable
    private final Integer addingDate;
    @SerializedName(Contants.USER_balance)
    @Nullable
    private final Integer balance;
    @SerializedName("can_add")
    @Nullable
    private final BaseBoolInt canAdd;
    @SerializedName("can_add_to_faves")
    @Nullable
    private final BaseBoolInt canAddToFaves;
    @SerializedName("can_attach_link")
    @Nullable
    private final BaseBoolInt canAttachLink;
    @SerializedName("can_comment")
    @Nullable
    private final BaseBoolInt canComment;
    @SerializedName("can_edit")
    @Nullable
    private final BaseBoolInt canEdit;
    @SerializedName("can_like")
    @Nullable
    private final BaseBoolInt canLike;
    @SerializedName("can_repost")
    @Nullable
    private final BaseBoolInt canRepost;
    @SerializedName("can_subscribe")
    @Nullable
    private final BaseBoolInt canSubscribe;
    @SerializedName("comments")
    @Nullable
    private final Integer comments;
    @SerializedName("content_restricted")
    @Nullable
    private final Integer contentRestricted;
    @SerializedName("content_restricted_message")
    @Nullable
    private final String contentRestrictedMessage;
    @SerializedName("converting")
    @Nullable
    private final BaseBoolInt converting;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("duration")
    @Nullable
    private final Integer duration;
    @SerializedName("featured_artists")
    @Nullable
    private final List<AudioArtist> featuredArtists;
    @SerializedName("first_frame")
    @Nullable
    private final List<VideoVideoImage> firstFrame;
    @SerializedName("genres")
    @Nullable
    private final List<AudioGenre> genres;
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36119id;
    @SerializedName("image")
    @Nullable
    private final List<VideoVideoImage> image;
    @SerializedName("is_explicit")
    @Nullable
    private final BaseBoolInt isExplicit;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName("is_private")
    @Nullable
    private final BaseBoolInt isPrivate;
    @SerializedName("is_subscribed")
    @Nullable
    private final BaseBoolInt isSubscribed;
    @SerializedName("likes")
    @Nullable
    private final BaseLikes likes;
    @SerializedName("live")
    @Nullable
    private final BasePropertyExists live;
    @SerializedName("live_notify")
    @Nullable
    private final BaseBoolInt liveNotify;
    @SerializedName("live_start_time")
    @Nullable
    private final Integer liveStartTime;
    @SerializedName("live_status")
    @Nullable
    private final LiveStatus liveStatus;
    @SerializedName("local_views")
    @Nullable
    private final Integer localViews;
    @SerializedName("main_artists")
    @Nullable
    private final List<AudioArtist> mainArtists;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("platform")
    @Nullable
    private final String platform;
    @SerializedName("player")
    @Nullable
    private final String player;
    @SerializedName("processing")
    @Nullable
    private final BasePropertyExists processing;
    @SerializedName("release_date")
    @Nullable
    private final Integer releaseDate;
    @SerializedName("repeat")
    @Nullable
    private final BasePropertyExists repeat;
    @SerializedName("reposts")
    @Nullable
    private final BaseRepostsInfo reposts;
    @SerializedName("spectators")
    @Nullable
    private final Integer spectators;
    @SerializedName("subtitle")
    @Nullable
    private final String subtitle;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("track_code")
    @Nullable
    private final String trackCode;
    @SerializedName("type")
    @Nullable
    private final Type type;
    @SerializedName("upcoming")
    @Nullable
    private final BasePropertyExists upcoming;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final Integer views;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideo$LiveStatus;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "WAITING", "STARTED", "FINISHED", "FAILED", "UPCOMING", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum LiveStatus {
        WAITING("waiting"),
        STARTED("started"),
        FINISHED("finished"),
        FAILED("failed"),
        UPCOMING("upcoming");
        
        @NotNull
        private final String value;

        LiveStatus(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideo$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", ShareConstants.VIDEO_URL, "MUSIC_VIDEO", "MOVIE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
        MUSIC_VIDEO("music_video"),
        MOVIE("movie");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public VideoVideo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 1048575, null);
    }

    public VideoVideo(@Nullable String str, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5, @Nullable BaseBoolInt baseBoolInt6, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable BaseBoolInt baseBoolInt9, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable Integer num4, @Nullable List<VideoVideoImage> list, @Nullable List<VideoVideoImage> list2, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable UserId userId, @Nullable UserId userId2, @Nullable String str3, @Nullable Boolean bool, @Nullable String str4, @Nullable BasePropertyExists basePropertyExists, @Nullable BaseBoolInt baseBoolInt10, @Nullable BaseBoolInt baseBoolInt11, @Nullable BaseBoolInt baseBoolInt12, @Nullable String str5, @Nullable BasePropertyExists basePropertyExists2, @Nullable Type type, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable String str6, @Nullable Integer num11, @Nullable LiveStatus liveStatus, @Nullable BasePropertyExists basePropertyExists3, @Nullable BasePropertyExists basePropertyExists4, @Nullable Integer num12, @Nullable BaseBoolInt baseBoolInt13, @Nullable Integer num13, @Nullable String str7, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable BaseBoolInt baseBoolInt14, @Nullable List<AudioArtist> list3, @Nullable List<AudioArtist> list4, @Nullable String str8, @Nullable Integer num14, @Nullable List<AudioGenre> list5) {
        this.accessKey = str;
        this.addingDate = num;
        this.canComment = baseBoolInt;
        this.canEdit = baseBoolInt2;
        this.canLike = baseBoolInt3;
        this.canRepost = baseBoolInt4;
        this.canSubscribe = baseBoolInt5;
        this.canAddToFaves = baseBoolInt6;
        this.canAdd = baseBoolInt7;
        this.canAttachLink = baseBoolInt8;
        this.isPrivate = baseBoolInt9;
        this.comments = num2;
        this.date = num3;
        this.description = str2;
        this.duration = num4;
        this.image = list;
        this.firstFrame = list2;
        this.width = num5;
        this.height = num6;
        this.f36119id = num7;
        this.ownerId = userId;
        this.userId = userId2;
        this.title = str3;
        this.isFavorite = bool;
        this.player = str4;
        this.processing = basePropertyExists;
        this.converting = baseBoolInt10;
        this.added = baseBoolInt11;
        this.isSubscribed = baseBoolInt12;
        this.trackCode = str5;
        this.repeat = basePropertyExists2;
        this.type = type;
        this.views = num8;
        this.localViews = num9;
        this.contentRestricted = num10;
        this.contentRestrictedMessage = str6;
        this.balance = num11;
        this.liveStatus = liveStatus;
        this.live = basePropertyExists3;
        this.upcoming = basePropertyExists4;
        this.liveStartTime = num12;
        this.liveNotify = baseBoolInt13;
        this.spectators = num13;
        this.platform = str7;
        this.likes = baseLikes;
        this.reposts = baseRepostsInfo;
        this.isExplicit = baseBoolInt14;
        this.mainArtists = list3;
        this.featuredArtists = list4;
        this.subtitle = str8;
        this.releaseDate = num14;
        this.genres = list5;
    }

    @Nullable
    public final String component1() {
        return this.accessKey;
    }

    @Nullable
    public final BaseBoolInt component10() {
        return this.canAttachLink;
    }

    @Nullable
    public final BaseBoolInt component11() {
        return this.isPrivate;
    }

    @Nullable
    public final Integer component12() {
        return this.comments;
    }

    @Nullable
    public final Integer component13() {
        return this.date;
    }

    @Nullable
    public final String component14() {
        return this.description;
    }

    @Nullable
    public final Integer component15() {
        return this.duration;
    }

    @Nullable
    public final List<VideoVideoImage> component16() {
        return this.image;
    }

    @Nullable
    public final List<VideoVideoImage> component17() {
        return this.firstFrame;
    }

    @Nullable
    public final Integer component18() {
        return this.width;
    }

    @Nullable
    public final Integer component19() {
        return this.height;
    }

    @Nullable
    public final Integer component2() {
        return this.addingDate;
    }

    @Nullable
    public final Integer component20() {
        return this.f36119id;
    }

    @Nullable
    public final UserId component21() {
        return this.ownerId;
    }

    @Nullable
    public final UserId component22() {
        return this.userId;
    }

    @Nullable
    public final String component23() {
        return this.title;
    }

    @Nullable
    public final Boolean component24() {
        return this.isFavorite;
    }

    @Nullable
    public final String component25() {
        return this.player;
    }

    @Nullable
    public final BasePropertyExists component26() {
        return this.processing;
    }

    @Nullable
    public final BaseBoolInt component27() {
        return this.converting;
    }

    @Nullable
    public final BaseBoolInt component28() {
        return this.added;
    }

    @Nullable
    public final BaseBoolInt component29() {
        return this.isSubscribed;
    }

    @Nullable
    public final BaseBoolInt component3() {
        return this.canComment;
    }

    @Nullable
    public final String component30() {
        return this.trackCode;
    }

    @Nullable
    public final BasePropertyExists component31() {
        return this.repeat;
    }

    @Nullable
    public final Type component32() {
        return this.type;
    }

    @Nullable
    public final Integer component33() {
        return this.views;
    }

    @Nullable
    public final Integer component34() {
        return this.localViews;
    }

    @Nullable
    public final Integer component35() {
        return this.contentRestricted;
    }

    @Nullable
    public final String component36() {
        return this.contentRestrictedMessage;
    }

    @Nullable
    public final Integer component37() {
        return this.balance;
    }

    @Nullable
    public final LiveStatus component38() {
        return this.liveStatus;
    }

    @Nullable
    public final BasePropertyExists component39() {
        return this.live;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.canEdit;
    }

    @Nullable
    public final BasePropertyExists component40() {
        return this.upcoming;
    }

    @Nullable
    public final Integer component41() {
        return this.liveStartTime;
    }

    @Nullable
    public final BaseBoolInt component42() {
        return this.liveNotify;
    }

    @Nullable
    public final Integer component43() {
        return this.spectators;
    }

    @Nullable
    public final String component44() {
        return this.platform;
    }

    @Nullable
    public final BaseLikes component45() {
        return this.likes;
    }

    @Nullable
    public final BaseRepostsInfo component46() {
        return this.reposts;
    }

    @Nullable
    public final BaseBoolInt component47() {
        return this.isExplicit;
    }

    @Nullable
    public final List<AudioArtist> component48() {
        return this.mainArtists;
    }

    @Nullable
    public final List<AudioArtist> component49() {
        return this.featuredArtists;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.canLike;
    }

    @Nullable
    public final String component50() {
        return this.subtitle;
    }

    @Nullable
    public final Integer component51() {
        return this.releaseDate;
    }

    @Nullable
    public final List<AudioGenre> component52() {
        return this.genres;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.canRepost;
    }

    @Nullable
    public final BaseBoolInt component7() {
        return this.canSubscribe;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.canAddToFaves;
    }

    @Nullable
    public final BaseBoolInt component9() {
        return this.canAdd;
    }

    @NotNull
    public final VideoVideo copy(@Nullable String str, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5, @Nullable BaseBoolInt baseBoolInt6, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable BaseBoolInt baseBoolInt9, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable Integer num4, @Nullable List<VideoVideoImage> list, @Nullable List<VideoVideoImage> list2, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable UserId userId, @Nullable UserId userId2, @Nullable String str3, @Nullable Boolean bool, @Nullable String str4, @Nullable BasePropertyExists basePropertyExists, @Nullable BaseBoolInt baseBoolInt10, @Nullable BaseBoolInt baseBoolInt11, @Nullable BaseBoolInt baseBoolInt12, @Nullable String str5, @Nullable BasePropertyExists basePropertyExists2, @Nullable Type type, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable String str6, @Nullable Integer num11, @Nullable LiveStatus liveStatus, @Nullable BasePropertyExists basePropertyExists3, @Nullable BasePropertyExists basePropertyExists4, @Nullable Integer num12, @Nullable BaseBoolInt baseBoolInt13, @Nullable Integer num13, @Nullable String str7, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable BaseBoolInt baseBoolInt14, @Nullable List<AudioArtist> list3, @Nullable List<AudioArtist> list4, @Nullable String str8, @Nullable Integer num14, @Nullable List<AudioGenre> list5) {
        return new VideoVideo(str, num, baseBoolInt, baseBoolInt2, baseBoolInt3, baseBoolInt4, baseBoolInt5, baseBoolInt6, baseBoolInt7, baseBoolInt8, baseBoolInt9, num2, num3, str2, num4, list, list2, num5, num6, num7, userId, userId2, str3, bool, str4, basePropertyExists, baseBoolInt10, baseBoolInt11, baseBoolInt12, str5, basePropertyExists2, type, num8, num9, num10, str6, num11, liveStatus, basePropertyExists3, basePropertyExists4, num12, baseBoolInt13, num13, str7, baseLikes, baseRepostsInfo, baseBoolInt14, list3, list4, str8, num14, list5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoVideo) {
            VideoVideo videoVideo = (VideoVideo) obj;
            return Intrinsics.areEqual(this.accessKey, videoVideo.accessKey) && Intrinsics.areEqual(this.addingDate, videoVideo.addingDate) && this.canComment == videoVideo.canComment && this.canEdit == videoVideo.canEdit && this.canLike == videoVideo.canLike && this.canRepost == videoVideo.canRepost && this.canSubscribe == videoVideo.canSubscribe && this.canAddToFaves == videoVideo.canAddToFaves && this.canAdd == videoVideo.canAdd && this.canAttachLink == videoVideo.canAttachLink && this.isPrivate == videoVideo.isPrivate && Intrinsics.areEqual(this.comments, videoVideo.comments) && Intrinsics.areEqual(this.date, videoVideo.date) && Intrinsics.areEqual(this.description, videoVideo.description) && Intrinsics.areEqual(this.duration, videoVideo.duration) && Intrinsics.areEqual(this.image, videoVideo.image) && Intrinsics.areEqual(this.firstFrame, videoVideo.firstFrame) && Intrinsics.areEqual(this.width, videoVideo.width) && Intrinsics.areEqual(this.height, videoVideo.height) && Intrinsics.areEqual(this.f36119id, videoVideo.f36119id) && Intrinsics.areEqual(this.ownerId, videoVideo.ownerId) && Intrinsics.areEqual(this.userId, videoVideo.userId) && Intrinsics.areEqual(this.title, videoVideo.title) && Intrinsics.areEqual(this.isFavorite, videoVideo.isFavorite) && Intrinsics.areEqual(this.player, videoVideo.player) && this.processing == videoVideo.processing && this.converting == videoVideo.converting && this.added == videoVideo.added && this.isSubscribed == videoVideo.isSubscribed && Intrinsics.areEqual(this.trackCode, videoVideo.trackCode) && this.repeat == videoVideo.repeat && this.type == videoVideo.type && Intrinsics.areEqual(this.views, videoVideo.views) && Intrinsics.areEqual(this.localViews, videoVideo.localViews) && Intrinsics.areEqual(this.contentRestricted, videoVideo.contentRestricted) && Intrinsics.areEqual(this.contentRestrictedMessage, videoVideo.contentRestrictedMessage) && Intrinsics.areEqual(this.balance, videoVideo.balance) && this.liveStatus == videoVideo.liveStatus && this.live == videoVideo.live && this.upcoming == videoVideo.upcoming && Intrinsics.areEqual(this.liveStartTime, videoVideo.liveStartTime) && this.liveNotify == videoVideo.liveNotify && Intrinsics.areEqual(this.spectators, videoVideo.spectators) && Intrinsics.areEqual(this.platform, videoVideo.platform) && Intrinsics.areEqual(this.likes, videoVideo.likes) && Intrinsics.areEqual(this.reposts, videoVideo.reposts) && this.isExplicit == videoVideo.isExplicit && Intrinsics.areEqual(this.mainArtists, videoVideo.mainArtists) && Intrinsics.areEqual(this.featuredArtists, videoVideo.featuredArtists) && Intrinsics.areEqual(this.subtitle, videoVideo.subtitle) && Intrinsics.areEqual(this.releaseDate, videoVideo.releaseDate) && Intrinsics.areEqual(this.genres, videoVideo.genres);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final BaseBoolInt getAdded() {
        return this.added;
    }

    @Nullable
    public final Integer getAddingDate() {
        return this.addingDate;
    }

    @Nullable
    public final Integer getBalance() {
        return this.balance;
    }

    @Nullable
    public final BaseBoolInt getCanAdd() {
        return this.canAdd;
    }

    @Nullable
    public final BaseBoolInt getCanAddToFaves() {
        return this.canAddToFaves;
    }

    @Nullable
    public final BaseBoolInt getCanAttachLink() {
        return this.canAttachLink;
    }

    @Nullable
    public final BaseBoolInt getCanComment() {
        return this.canComment;
    }

    @Nullable
    public final BaseBoolInt getCanEdit() {
        return this.canEdit;
    }

    @Nullable
    public final BaseBoolInt getCanLike() {
        return this.canLike;
    }

    @Nullable
    public final BaseBoolInt getCanRepost() {
        return this.canRepost;
    }

    @Nullable
    public final BaseBoolInt getCanSubscribe() {
        return this.canSubscribe;
    }

    @Nullable
    public final Integer getComments() {
        return this.comments;
    }

    @Nullable
    public final Integer getContentRestricted() {
        return this.contentRestricted;
    }

    @Nullable
    public final String getContentRestrictedMessage() {
        return this.contentRestrictedMessage;
    }

    @Nullable
    public final BaseBoolInt getConverting() {
        return this.converting;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final Integer getDuration() {
        return this.duration;
    }

    @Nullable
    public final List<AudioArtist> getFeaturedArtists() {
        return this.featuredArtists;
    }

    @Nullable
    public final List<VideoVideoImage> getFirstFrame() {
        return this.firstFrame;
    }

    @Nullable
    public final List<AudioGenre> getGenres() {
        return this.genres;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    @Nullable
    public final Integer getId() {
        return this.f36119id;
    }

    @Nullable
    public final List<VideoVideoImage> getImage() {
        return this.image;
    }

    @Nullable
    public final BaseLikes getLikes() {
        return this.likes;
    }

    @Nullable
    public final BasePropertyExists getLive() {
        return this.live;
    }

    @Nullable
    public final BaseBoolInt getLiveNotify() {
        return this.liveNotify;
    }

    @Nullable
    public final Integer getLiveStartTime() {
        return this.liveStartTime;
    }

    @Nullable
    public final LiveStatus getLiveStatus() {
        return this.liveStatus;
    }

    @Nullable
    public final Integer getLocalViews() {
        return this.localViews;
    }

    @Nullable
    public final List<AudioArtist> getMainArtists() {
        return this.mainArtists;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getPlatform() {
        return this.platform;
    }

    @Nullable
    public final String getPlayer() {
        return this.player;
    }

    @Nullable
    public final BasePropertyExists getProcessing() {
        return this.processing;
    }

    @Nullable
    public final Integer getReleaseDate() {
        return this.releaseDate;
    }

    @Nullable
    public final BasePropertyExists getRepeat() {
        return this.repeat;
    }

    @Nullable
    public final BaseRepostsInfo getReposts() {
        return this.reposts;
    }

    @Nullable
    public final Integer getSpectators() {
        return this.spectators;
    }

    @Nullable
    public final String getSubtitle() {
        return this.subtitle;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getTrackCode() {
        return this.trackCode;
    }

    @Nullable
    public final Type getType() {
        return this.type;
    }

    @Nullable
    public final BasePropertyExists getUpcoming() {
        return this.upcoming;
    }

    @Nullable
    public final UserId getUserId() {
        return this.userId;
    }

    @Nullable
    public final Integer getViews() {
        return this.views;
    }

    @Nullable
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.accessKey;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.addingDate;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.canEdit;
        int hashCode4 = (hashCode3 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.canLike;
        int hashCode5 = (hashCode4 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.canRepost;
        int hashCode6 = (hashCode5 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        BaseBoolInt baseBoolInt5 = this.canSubscribe;
        int hashCode7 = (hashCode6 + (baseBoolInt5 == null ? 0 : baseBoolInt5.hashCode())) * 31;
        BaseBoolInt baseBoolInt6 = this.canAddToFaves;
        int hashCode8 = (hashCode7 + (baseBoolInt6 == null ? 0 : baseBoolInt6.hashCode())) * 31;
        BaseBoolInt baseBoolInt7 = this.canAdd;
        int hashCode9 = (hashCode8 + (baseBoolInt7 == null ? 0 : baseBoolInt7.hashCode())) * 31;
        BaseBoolInt baseBoolInt8 = this.canAttachLink;
        int hashCode10 = (hashCode9 + (baseBoolInt8 == null ? 0 : baseBoolInt8.hashCode())) * 31;
        BaseBoolInt baseBoolInt9 = this.isPrivate;
        int hashCode11 = (hashCode10 + (baseBoolInt9 == null ? 0 : baseBoolInt9.hashCode())) * 31;
        Integer num2 = this.comments;
        int hashCode12 = (hashCode11 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.date;
        int hashCode13 = (hashCode12 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.description;
        int hashCode14 = (hashCode13 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num4 = this.duration;
        int hashCode15 = (hashCode14 + (num4 == null ? 0 : num4.hashCode())) * 31;
        List<VideoVideoImage> list = this.image;
        int hashCode16 = (hashCode15 + (list == null ? 0 : list.hashCode())) * 31;
        List<VideoVideoImage> list2 = this.firstFrame;
        int hashCode17 = (hashCode16 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num5 = this.width;
        int hashCode18 = (hashCode17 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.height;
        int hashCode19 = (hashCode18 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.f36119id;
        int hashCode20 = (hashCode19 + (num7 == null ? 0 : num7.hashCode())) * 31;
        UserId userId = this.ownerId;
        int hashCode21 = (hashCode20 + (userId == null ? 0 : userId.hashCode())) * 31;
        UserId userId2 = this.userId;
        int hashCode22 = (hashCode21 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        String str3 = this.title;
        int hashCode23 = (hashCode22 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.isFavorite;
        int hashCode24 = (hashCode23 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.player;
        int hashCode25 = (hashCode24 + (str4 == null ? 0 : str4.hashCode())) * 31;
        BasePropertyExists basePropertyExists = this.processing;
        int hashCode26 = (hashCode25 + (basePropertyExists == null ? 0 : basePropertyExists.hashCode())) * 31;
        BaseBoolInt baseBoolInt10 = this.converting;
        int hashCode27 = (hashCode26 + (baseBoolInt10 == null ? 0 : baseBoolInt10.hashCode())) * 31;
        BaseBoolInt baseBoolInt11 = this.added;
        int hashCode28 = (hashCode27 + (baseBoolInt11 == null ? 0 : baseBoolInt11.hashCode())) * 31;
        BaseBoolInt baseBoolInt12 = this.isSubscribed;
        int hashCode29 = (hashCode28 + (baseBoolInt12 == null ? 0 : baseBoolInt12.hashCode())) * 31;
        String str5 = this.trackCode;
        int hashCode30 = (hashCode29 + (str5 == null ? 0 : str5.hashCode())) * 31;
        BasePropertyExists basePropertyExists2 = this.repeat;
        int hashCode31 = (hashCode30 + (basePropertyExists2 == null ? 0 : basePropertyExists2.hashCode())) * 31;
        Type type = this.type;
        int hashCode32 = (hashCode31 + (type == null ? 0 : type.hashCode())) * 31;
        Integer num8 = this.views;
        int hashCode33 = (hashCode32 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.localViews;
        int hashCode34 = (hashCode33 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.contentRestricted;
        int hashCode35 = (hashCode34 + (num10 == null ? 0 : num10.hashCode())) * 31;
        String str6 = this.contentRestrictedMessage;
        int hashCode36 = (hashCode35 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num11 = this.balance;
        int hashCode37 = (hashCode36 + (num11 == null ? 0 : num11.hashCode())) * 31;
        LiveStatus liveStatus = this.liveStatus;
        int hashCode38 = (hashCode37 + (liveStatus == null ? 0 : liveStatus.hashCode())) * 31;
        BasePropertyExists basePropertyExists3 = this.live;
        int hashCode39 = (hashCode38 + (basePropertyExists3 == null ? 0 : basePropertyExists3.hashCode())) * 31;
        BasePropertyExists basePropertyExists4 = this.upcoming;
        int hashCode40 = (hashCode39 + (basePropertyExists4 == null ? 0 : basePropertyExists4.hashCode())) * 31;
        Integer num12 = this.liveStartTime;
        int hashCode41 = (hashCode40 + (num12 == null ? 0 : num12.hashCode())) * 31;
        BaseBoolInt baseBoolInt13 = this.liveNotify;
        int hashCode42 = (hashCode41 + (baseBoolInt13 == null ? 0 : baseBoolInt13.hashCode())) * 31;
        Integer num13 = this.spectators;
        int hashCode43 = (hashCode42 + (num13 == null ? 0 : num13.hashCode())) * 31;
        String str7 = this.platform;
        int hashCode44 = (hashCode43 + (str7 == null ? 0 : str7.hashCode())) * 31;
        BaseLikes baseLikes = this.likes;
        int hashCode45 = (hashCode44 + (baseLikes == null ? 0 : baseLikes.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode46 = (hashCode45 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        BaseBoolInt baseBoolInt14 = this.isExplicit;
        int hashCode47 = (hashCode46 + (baseBoolInt14 == null ? 0 : baseBoolInt14.hashCode())) * 31;
        List<AudioArtist> list3 = this.mainArtists;
        int hashCode48 = (hashCode47 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<AudioArtist> list4 = this.featuredArtists;
        int hashCode49 = (hashCode48 + (list4 == null ? 0 : list4.hashCode())) * 31;
        String str8 = this.subtitle;
        int hashCode50 = (hashCode49 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Integer num14 = this.releaseDate;
        int hashCode51 = (hashCode50 + (num14 == null ? 0 : num14.hashCode())) * 31;
        List<AudioGenre> list5 = this.genres;
        return hashCode51 + (list5 != null ? list5.hashCode() : 0);
    }

    @Nullable
    public final BaseBoolInt isExplicit() {
        return this.isExplicit;
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @Nullable
    public final BaseBoolInt isPrivate() {
        return this.isPrivate;
    }

    @Nullable
    public final BaseBoolInt isSubscribed() {
        return this.isSubscribed;
    }

    @NotNull
    public String toString() {
        String str = this.accessKey;
        Integer num = this.addingDate;
        BaseBoolInt baseBoolInt = this.canComment;
        BaseBoolInt baseBoolInt2 = this.canEdit;
        BaseBoolInt baseBoolInt3 = this.canLike;
        BaseBoolInt baseBoolInt4 = this.canRepost;
        BaseBoolInt baseBoolInt5 = this.canSubscribe;
        BaseBoolInt baseBoolInt6 = this.canAddToFaves;
        BaseBoolInt baseBoolInt7 = this.canAdd;
        BaseBoolInt baseBoolInt8 = this.canAttachLink;
        BaseBoolInt baseBoolInt9 = this.isPrivate;
        Integer num2 = this.comments;
        Integer num3 = this.date;
        String str2 = this.description;
        Integer num4 = this.duration;
        List<VideoVideoImage> list = this.image;
        List<VideoVideoImage> list2 = this.firstFrame;
        Integer num5 = this.width;
        Integer num6 = this.height;
        Integer num7 = this.f36119id;
        UserId userId = this.ownerId;
        UserId userId2 = this.userId;
        String str3 = this.title;
        Boolean bool = this.isFavorite;
        String str4 = this.player;
        BasePropertyExists basePropertyExists = this.processing;
        BaseBoolInt baseBoolInt10 = this.converting;
        BaseBoolInt baseBoolInt11 = this.added;
        BaseBoolInt baseBoolInt12 = this.isSubscribed;
        String str5 = this.trackCode;
        BasePropertyExists basePropertyExists2 = this.repeat;
        Type type = this.type;
        Integer num8 = this.views;
        Integer num9 = this.localViews;
        Integer num10 = this.contentRestricted;
        String str6 = this.contentRestrictedMessage;
        Integer num11 = this.balance;
        LiveStatus liveStatus = this.liveStatus;
        BasePropertyExists basePropertyExists3 = this.live;
        BasePropertyExists basePropertyExists4 = this.upcoming;
        Integer num12 = this.liveStartTime;
        BaseBoolInt baseBoolInt13 = this.liveNotify;
        Integer num13 = this.spectators;
        String str7 = this.platform;
        BaseLikes baseLikes = this.likes;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        BaseBoolInt baseBoolInt14 = this.isExplicit;
        List<AudioArtist> list3 = this.mainArtists;
        List<AudioArtist> list4 = this.featuredArtists;
        String str8 = this.subtitle;
        Integer num14 = this.releaseDate;
        List<AudioGenre> list5 = this.genres;
        return "VideoVideo(accessKey=" + str + ", addingDate=" + num + ", canComment=" + baseBoolInt + ", canEdit=" + baseBoolInt2 + ", canLike=" + baseBoolInt3 + ", canRepost=" + baseBoolInt4 + ", canSubscribe=" + baseBoolInt5 + ", canAddToFaves=" + baseBoolInt6 + ", canAdd=" + baseBoolInt7 + ", canAttachLink=" + baseBoolInt8 + ", isPrivate=" + baseBoolInt9 + ", comments=" + num2 + ", date=" + num3 + ", description=" + str2 + ", duration=" + num4 + ", image=" + list + ", firstFrame=" + list2 + ", width=" + num5 + ", height=" + num6 + ", id=" + num7 + ", ownerId=" + userId + ", userId=" + userId2 + ", title=" + str3 + ", isFavorite=" + bool + ", player=" + str4 + ", processing=" + basePropertyExists + ", converting=" + baseBoolInt10 + ", added=" + baseBoolInt11 + ", isSubscribed=" + baseBoolInt12 + ", trackCode=" + str5 + ", repeat=" + basePropertyExists2 + ", type=" + type + ", views=" + num8 + ", localViews=" + num9 + ", contentRestricted=" + num10 + ", contentRestrictedMessage=" + str6 + ", balance=" + num11 + ", liveStatus=" + liveStatus + ", live=" + basePropertyExists3 + ", upcoming=" + basePropertyExists4 + ", liveStartTime=" + num12 + ", liveNotify=" + baseBoolInt13 + ", spectators=" + num13 + ", platform=" + str7 + ", likes=" + baseLikes + ", reposts=" + baseRepostsInfo + ", isExplicit=" + baseBoolInt14 + ", mainArtists=" + list3 + ", featuredArtists=" + list4 + ", subtitle=" + str8 + ", releaseDate=" + num14 + ", genres=" + list5 + ")";
    }

    public /* synthetic */ VideoVideo(String str, Integer num, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, BaseBoolInt baseBoolInt4, BaseBoolInt baseBoolInt5, BaseBoolInt baseBoolInt6, BaseBoolInt baseBoolInt7, BaseBoolInt baseBoolInt8, BaseBoolInt baseBoolInt9, Integer num2, Integer num3, String str2, Integer num4, List list, List list2, Integer num5, Integer num6, Integer num7, UserId userId, UserId userId2, String str3, Boolean bool, String str4, BasePropertyExists basePropertyExists, BaseBoolInt baseBoolInt10, BaseBoolInt baseBoolInt11, BaseBoolInt baseBoolInt12, String str5, BasePropertyExists basePropertyExists2, Type type, Integer num8, Integer num9, Integer num10, String str6, Integer num11, LiveStatus liveStatus, BasePropertyExists basePropertyExists3, BasePropertyExists basePropertyExists4, Integer num12, BaseBoolInt baseBoolInt13, Integer num13, String str7, BaseLikes baseLikes, BaseRepostsInfo baseRepostsInfo, BaseBoolInt baseBoolInt14, List list3, List list4, String str8, Integer num14, List list5, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : baseBoolInt, (i9 & 8) != 0 ? null : baseBoolInt2, (i9 & 16) != 0 ? null : baseBoolInt3, (i9 & 32) != 0 ? null : baseBoolInt4, (i9 & 64) != 0 ? null : baseBoolInt5, (i9 & 128) != 0 ? null : baseBoolInt6, (i9 & 256) != 0 ? null : baseBoolInt7, (i9 & 512) != 0 ? null : baseBoolInt8, (i9 & 1024) != 0 ? null : baseBoolInt9, (i9 & 2048) != 0 ? null : num2, (i9 & 4096) != 0 ? null : num3, (i9 & 8192) != 0 ? null : str2, (i9 & 16384) != 0 ? null : num4, (i9 & 32768) != 0 ? null : list, (i9 & 65536) != 0 ? null : list2, (i9 & 131072) != 0 ? null : num5, (i9 & 262144) != 0 ? null : num6, (i9 & 524288) != 0 ? null : num7, (i9 & 1048576) != 0 ? null : userId, (i9 & 2097152) != 0 ? null : userId2, (i9 & 4194304) != 0 ? null : str3, (i9 & 8388608) != 0 ? null : bool, (i9 & 16777216) != 0 ? null : str4, (i9 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? null : basePropertyExists, (i9 & 67108864) != 0 ? null : baseBoolInt10, (i9 & 134217728) != 0 ? null : baseBoolInt11, (i9 & 268435456) != 0 ? null : baseBoolInt12, (i9 & 536870912) != 0 ? null : str5, (i9 & BasicMeasure.EXACTLY) != 0 ? null : basePropertyExists2, (i9 & Integer.MIN_VALUE) != 0 ? null : type, (i10 & 1) != 0 ? null : num8, (i10 & 2) != 0 ? null : num9, (i10 & 4) != 0 ? null : num10, (i10 & 8) != 0 ? null : str6, (i10 & 16) != 0 ? null : num11, (i10 & 32) != 0 ? null : liveStatus, (i10 & 64) != 0 ? null : basePropertyExists3, (i10 & 128) != 0 ? null : basePropertyExists4, (i10 & 256) != 0 ? null : num12, (i10 & 512) != 0 ? null : baseBoolInt13, (i10 & 1024) != 0 ? null : num13, (i10 & 2048) != 0 ? null : str7, (i10 & 4096) != 0 ? null : baseLikes, (i10 & 8192) != 0 ? null : baseRepostsInfo, (i10 & 16384) != 0 ? null : baseBoolInt14, (i10 & 32768) != 0 ? null : list3, (i10 & 65536) != 0 ? null : list4, (i10 & 131072) != 0 ? null : str8, (i10 & 262144) != 0 ? null : num14, (i10 & 524288) != 0 ? null : list5);
    }
}
