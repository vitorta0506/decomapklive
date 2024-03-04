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
@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0003\b\u0083\u0001\b\u0086\b\u0018\u00002\u00020\u0001:\u0004É\u0001Ê\u0001B·\u0005\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a\u0012\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u000106\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010>\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010@\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001a\u0012\u0010\b\u0002\u0010D\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001a\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020H\u0018\u00010\u001a¢\u0006\u0002\u0010IJ\f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0011\u0010\u0092\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\u0011\u0010\u0093\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010\u0095\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\u0012\u0010\u0096\u0001\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aHÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0012\u0010\u0098\u0001\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aHÆ\u0003J\u0011\u0010\u0099\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\u0011\u0010\u009a\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\u0011\u0010\u009b\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010!HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u00010!HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010\u009f\u0001\u001a\u0004\u0018\u00010%HÆ\u0003¢\u0006\u0002\u0010jJ\f\u0010 \u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010£\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u00010/HÆ\u0003J\u0011\u0010©\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\u0011\u0010ª\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\u0011\u0010«\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\f\u0010¬\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\f\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010®\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\f\u0010¯\u0001\u001a\u0004\u0018\u000106HÆ\u0003J\f\u0010°\u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\f\u0010±\u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\u0011\u0010²\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\f\u0010³\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0011\u0010´\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\f\u0010µ\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\f\u0010¶\u0001\u001a\u0004\u0018\u00010>HÆ\u0003J\f\u0010·\u0001\u001a\u0004\u0018\u00010@HÆ\u0003J\u0011\u0010¸\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\f\u0010¹\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0012\u0010º\u0001\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001aHÆ\u0003J\u0012\u0010»\u0001\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001aHÆ\u0003J\f\u0010¼\u0001\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010½\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010OJ\u0012\u0010¾\u0001\u001a\n\u0012\u0004\u0012\u00020H\u0018\u00010\u001aHÆ\u0003J\f\u0010¿\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010À\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010Á\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010Â\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003JÂ\u0005\u0010Ã\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\b\u0002\u00100\u001a\u0004\u0018\u00010\n2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\n2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\n2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\b2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\n2\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u00010(2\n\b\u0002\u00108\u001a\u0004\u0018\u00010(2\n\b\u0002\u00109\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010>2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010@2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001a2\u0010\b\u0002\u0010D\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001a2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020H\u0018\u00010\u001aHÆ\u0001¢\u0006\u0003\u0010Ä\u0001J\u0015\u0010Å\u0001\u001a\u00020%2\t\u0010Æ\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010Ç\u0001\u001a\u00020\nHÖ\u0001J\n\u0010È\u0001\u001a\u00020\bHÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0018\u0010*\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bN\u0010OR\u001a\u00104\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bQ\u0010OR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bR\u0010MR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010MR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010MR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bU\u0010MR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u0010MR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u0010MR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bX\u0010MR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u0010MR\u001a\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bZ\u0010OR\u001a\u00102\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\b[\u0010OR\u0018\u00103\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010KR\u0018\u0010)\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b]\u0010MR\u001a\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\b^\u0010OR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b_\u0010KR\u001a\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\b`\u0010OR\u001e\u0010D\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\ba\u0010bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bc\u0010dR\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u0010bR\u001e\u0010G\u001a\n\u0012\u0004\u0012\u00020H\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u0010bR\u001a\u0010\u001e\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bg\u0010OR\u001a\u0010\u001f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bh\u0010OR\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bi\u0010bR\u0018\u0010A\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010MR\u001a\u0010$\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010k\u001a\u0004\b$\u0010jR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010MR\u0018\u0010+\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010MR\u0018\u0010=\u001a\u0004\u0018\u00010>8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bl\u0010mR\u0018\u00107\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bn\u0010oR\u0018\u0010:\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bp\u0010MR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bq\u0010rR\u001a\u00109\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bs\u0010OR\u0018\u00105\u001a\u0004\u0018\u0001068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bt\u0010uR\u001a\u00101\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bv\u0010OR\u001e\u0010B\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bw\u0010bR\u0018\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bx\u0010yR\u0018\u0010<\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bz\u0010KR\u0018\u0010&\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b{\u0010KR\u0018\u0010'\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b|\u0010oR\u001a\u0010F\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\b}\u0010OR\u0018\u0010-\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b~\u0010oR\u0019\u0010?\u001a\u0004\u0018\u00010@8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u007f\u0010\u0080\u0001R\u001b\u0010;\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010P\u001a\u0005\b\u0081\u0001\u0010OR\u0019\u0010E\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0082\u0001\u0010KR\u0019\u0010#\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0083\u0001\u0010KR\u0019\u0010,\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0084\u0001\u0010KR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0085\u0001\u0010dR\u001a\u0010.\u001a\u0004\u0018\u00010/8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0019\u00108\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0088\u0001\u0010oR\u0019\u0010\"\u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0089\u0001\u0010yR\u001b\u00100\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010P\u001a\u0005\b\u008a\u0001\u0010OR\u001b\u0010\u001d\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010P\u001a\u0005\b\u008b\u0001\u0010O¨\u0006Ë\u0001"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "", "files", "Lcom/vk/sdk/api/video/dto/VideoVideoFiles;", "trailer", "liveSettings", "Lcom/vk/sdk/api/video/dto/VideoLiveSettings;", "accessKey", "", "addingDate", "", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "canEdit", "canLike", "canRepost", "canSubscribe", "canAddToFaves", "canAdd", "canAttachLink", "isPrivate", "comments", "date", "description", "duration", "image", "", "Lcom/vk/sdk/api/video/dto/VideoVideoImage;", "firstFrame", "width", "height", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", Contants.USER_ID, "title", "isFavorite", "", "player", "processing", "Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "converting", "added", "isSubscribed", "trackCode", "repeat", "type", "Lcom/vk/sdk/api/video/dto/VideoVideoFull$Type;", AdUnitActivity.EXTRA_VIEWS, "localViews", "contentRestricted", "contentRestrictedMessage", Contants.USER_balance, "liveStatus", "Lcom/vk/sdk/api/video/dto/VideoVideoFull$LiveStatus;", "live", "upcoming", "liveStartTime", "liveNotify", "spectators", "platform", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikes;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "isExplicit", "mainArtists", "Lcom/vk/sdk/api/audio/dto/AudioArtist;", "featuredArtists", "subtitle", "releaseDate", "genres", "Lcom/vk/sdk/api/audio/dto/AudioGenre;", "(Lcom/vk/sdk/api/video/dto/VideoVideoFiles;Lcom/vk/sdk/api/video/dto/VideoVideoFiles;Lcom/vk/sdk/api/video/dto/VideoLiveSettings;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/video/dto/VideoVideoFull$Type;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/video/dto/VideoVideoFull$LiveStatus;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V", "getAccessKey", "()Ljava/lang/String;", "getAdded", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getAddingDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getBalance", "getCanAdd", "getCanAddToFaves", "getCanAttachLink", "getCanComment", "getCanEdit", "getCanLike", "getCanRepost", "getCanSubscribe", "getComments", "getContentRestricted", "getContentRestrictedMessage", "getConverting", "getDate", "getDescription", "getDuration", "getFeaturedArtists", "()Ljava/util/List;", "getFiles", "()Lcom/vk/sdk/api/video/dto/VideoVideoFiles;", "getFirstFrame", "getGenres", "getHeight", "getId", "getImage", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikes;", "getLive", "()Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "getLiveNotify", "getLiveSettings", "()Lcom/vk/sdk/api/video/dto/VideoLiveSettings;", "getLiveStartTime", "getLiveStatus", "()Lcom/vk/sdk/api/video/dto/VideoVideoFull$LiveStatus;", "getLocalViews", "getMainArtists", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPlatform", "getPlayer", "getProcessing", "getReleaseDate", "getRepeat", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getSpectators", "getSubtitle", "getTitle", "getTrackCode", "getTrailer", "getType", "()Lcom/vk/sdk/api/video/dto/VideoVideoFull$Type;", "getUpcoming", "getUserId", "getViews", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component5", "component50", "component51", "component52", "component53", "component54", "component55", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/video/dto/VideoVideoFiles;Lcom/vk/sdk/api/video/dto/VideoVideoFiles;Lcom/vk/sdk/api/video/dto/VideoLiveSettings;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/video/dto/VideoVideoFull$Type;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/video/dto/VideoVideoFull$LiveStatus;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "equals", "other", "hashCode", "toString", "LiveStatus", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoVideoFull {
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
    @SerializedName("files")
    @Nullable
    private final VideoVideoFiles files;
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
    private final Integer f36121id;
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
    @SerializedName("live_settings")
    @Nullable
    private final VideoLiveSettings liveSettings;
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
    @SerializedName("trailer")
    @Nullable
    private final VideoVideoFiles trailer;
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

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideoFull$LiveStatus;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "WAITING", "STARTED", "FINISHED", "FAILED", "UPCOMING", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
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

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideoFull$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", ShareConstants.VIDEO_URL, "MUSIC_VIDEO", "MOVIE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
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

    public VideoVideoFull() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 8388607, null);
    }

    public VideoVideoFull(@Nullable VideoVideoFiles videoVideoFiles, @Nullable VideoVideoFiles videoVideoFiles2, @Nullable VideoLiveSettings videoLiveSettings, @Nullable String str, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5, @Nullable BaseBoolInt baseBoolInt6, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable BaseBoolInt baseBoolInt9, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable Integer num4, @Nullable List<VideoVideoImage> list, @Nullable List<VideoVideoImage> list2, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable UserId userId, @Nullable UserId userId2, @Nullable String str3, @Nullable Boolean bool, @Nullable String str4, @Nullable BasePropertyExists basePropertyExists, @Nullable BaseBoolInt baseBoolInt10, @Nullable BaseBoolInt baseBoolInt11, @Nullable BaseBoolInt baseBoolInt12, @Nullable String str5, @Nullable BasePropertyExists basePropertyExists2, @Nullable Type type, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable String str6, @Nullable Integer num11, @Nullable LiveStatus liveStatus, @Nullable BasePropertyExists basePropertyExists3, @Nullable BasePropertyExists basePropertyExists4, @Nullable Integer num12, @Nullable BaseBoolInt baseBoolInt13, @Nullable Integer num13, @Nullable String str7, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable BaseBoolInt baseBoolInt14, @Nullable List<AudioArtist> list3, @Nullable List<AudioArtist> list4, @Nullable String str8, @Nullable Integer num14, @Nullable List<AudioGenre> list5) {
        this.files = videoVideoFiles;
        this.trailer = videoVideoFiles2;
        this.liveSettings = videoLiveSettings;
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
        this.f36121id = num7;
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
    public final VideoVideoFiles component1() {
        return this.files;
    }

    @Nullable
    public final BaseBoolInt component10() {
        return this.canSubscribe;
    }

    @Nullable
    public final BaseBoolInt component11() {
        return this.canAddToFaves;
    }

    @Nullable
    public final BaseBoolInt component12() {
        return this.canAdd;
    }

    @Nullable
    public final BaseBoolInt component13() {
        return this.canAttachLink;
    }

    @Nullable
    public final BaseBoolInt component14() {
        return this.isPrivate;
    }

    @Nullable
    public final Integer component15() {
        return this.comments;
    }

    @Nullable
    public final Integer component16() {
        return this.date;
    }

    @Nullable
    public final String component17() {
        return this.description;
    }

    @Nullable
    public final Integer component18() {
        return this.duration;
    }

    @Nullable
    public final List<VideoVideoImage> component19() {
        return this.image;
    }

    @Nullable
    public final VideoVideoFiles component2() {
        return this.trailer;
    }

    @Nullable
    public final List<VideoVideoImage> component20() {
        return this.firstFrame;
    }

    @Nullable
    public final Integer component21() {
        return this.width;
    }

    @Nullable
    public final Integer component22() {
        return this.height;
    }

    @Nullable
    public final Integer component23() {
        return this.f36121id;
    }

    @Nullable
    public final UserId component24() {
        return this.ownerId;
    }

    @Nullable
    public final UserId component25() {
        return this.userId;
    }

    @Nullable
    public final String component26() {
        return this.title;
    }

    @Nullable
    public final Boolean component27() {
        return this.isFavorite;
    }

    @Nullable
    public final String component28() {
        return this.player;
    }

    @Nullable
    public final BasePropertyExists component29() {
        return this.processing;
    }

    @Nullable
    public final VideoLiveSettings component3() {
        return this.liveSettings;
    }

    @Nullable
    public final BaseBoolInt component30() {
        return this.converting;
    }

    @Nullable
    public final BaseBoolInt component31() {
        return this.added;
    }

    @Nullable
    public final BaseBoolInt component32() {
        return this.isSubscribed;
    }

    @Nullable
    public final String component33() {
        return this.trackCode;
    }

    @Nullable
    public final BasePropertyExists component34() {
        return this.repeat;
    }

    @Nullable
    public final Type component35() {
        return this.type;
    }

    @Nullable
    public final Integer component36() {
        return this.views;
    }

    @Nullable
    public final Integer component37() {
        return this.localViews;
    }

    @Nullable
    public final Integer component38() {
        return this.contentRestricted;
    }

    @Nullable
    public final String component39() {
        return this.contentRestrictedMessage;
    }

    @Nullable
    public final String component4() {
        return this.accessKey;
    }

    @Nullable
    public final Integer component40() {
        return this.balance;
    }

    @Nullable
    public final LiveStatus component41() {
        return this.liveStatus;
    }

    @Nullable
    public final BasePropertyExists component42() {
        return this.live;
    }

    @Nullable
    public final BasePropertyExists component43() {
        return this.upcoming;
    }

    @Nullable
    public final Integer component44() {
        return this.liveStartTime;
    }

    @Nullable
    public final BaseBoolInt component45() {
        return this.liveNotify;
    }

    @Nullable
    public final Integer component46() {
        return this.spectators;
    }

    @Nullable
    public final String component47() {
        return this.platform;
    }

    @Nullable
    public final BaseLikes component48() {
        return this.likes;
    }

    @Nullable
    public final BaseRepostsInfo component49() {
        return this.reposts;
    }

    @Nullable
    public final Integer component5() {
        return this.addingDate;
    }

    @Nullable
    public final BaseBoolInt component50() {
        return this.isExplicit;
    }

    @Nullable
    public final List<AudioArtist> component51() {
        return this.mainArtists;
    }

    @Nullable
    public final List<AudioArtist> component52() {
        return this.featuredArtists;
    }

    @Nullable
    public final String component53() {
        return this.subtitle;
    }

    @Nullable
    public final Integer component54() {
        return this.releaseDate;
    }

    @Nullable
    public final List<AudioGenre> component55() {
        return this.genres;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.canComment;
    }

    @Nullable
    public final BaseBoolInt component7() {
        return this.canEdit;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.canLike;
    }

    @Nullable
    public final BaseBoolInt component9() {
        return this.canRepost;
    }

    @NotNull
    public final VideoVideoFull copy(@Nullable VideoVideoFiles videoVideoFiles, @Nullable VideoVideoFiles videoVideoFiles2, @Nullable VideoLiveSettings videoLiveSettings, @Nullable String str, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseBoolInt baseBoolInt5, @Nullable BaseBoolInt baseBoolInt6, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable BaseBoolInt baseBoolInt9, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable Integer num4, @Nullable List<VideoVideoImage> list, @Nullable List<VideoVideoImage> list2, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable UserId userId, @Nullable UserId userId2, @Nullable String str3, @Nullable Boolean bool, @Nullable String str4, @Nullable BasePropertyExists basePropertyExists, @Nullable BaseBoolInt baseBoolInt10, @Nullable BaseBoolInt baseBoolInt11, @Nullable BaseBoolInt baseBoolInt12, @Nullable String str5, @Nullable BasePropertyExists basePropertyExists2, @Nullable Type type, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable String str6, @Nullable Integer num11, @Nullable LiveStatus liveStatus, @Nullable BasePropertyExists basePropertyExists3, @Nullable BasePropertyExists basePropertyExists4, @Nullable Integer num12, @Nullable BaseBoolInt baseBoolInt13, @Nullable Integer num13, @Nullable String str7, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable BaseBoolInt baseBoolInt14, @Nullable List<AudioArtist> list3, @Nullable List<AudioArtist> list4, @Nullable String str8, @Nullable Integer num14, @Nullable List<AudioGenre> list5) {
        return new VideoVideoFull(videoVideoFiles, videoVideoFiles2, videoLiveSettings, str, num, baseBoolInt, baseBoolInt2, baseBoolInt3, baseBoolInt4, baseBoolInt5, baseBoolInt6, baseBoolInt7, baseBoolInt8, baseBoolInt9, num2, num3, str2, num4, list, list2, num5, num6, num7, userId, userId2, str3, bool, str4, basePropertyExists, baseBoolInt10, baseBoolInt11, baseBoolInt12, str5, basePropertyExists2, type, num8, num9, num10, str6, num11, liveStatus, basePropertyExists3, basePropertyExists4, num12, baseBoolInt13, num13, str7, baseLikes, baseRepostsInfo, baseBoolInt14, list3, list4, str8, num14, list5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoVideoFull) {
            VideoVideoFull videoVideoFull = (VideoVideoFull) obj;
            return Intrinsics.areEqual(this.files, videoVideoFull.files) && Intrinsics.areEqual(this.trailer, videoVideoFull.trailer) && Intrinsics.areEqual(this.liveSettings, videoVideoFull.liveSettings) && Intrinsics.areEqual(this.accessKey, videoVideoFull.accessKey) && Intrinsics.areEqual(this.addingDate, videoVideoFull.addingDate) && this.canComment == videoVideoFull.canComment && this.canEdit == videoVideoFull.canEdit && this.canLike == videoVideoFull.canLike && this.canRepost == videoVideoFull.canRepost && this.canSubscribe == videoVideoFull.canSubscribe && this.canAddToFaves == videoVideoFull.canAddToFaves && this.canAdd == videoVideoFull.canAdd && this.canAttachLink == videoVideoFull.canAttachLink && this.isPrivate == videoVideoFull.isPrivate && Intrinsics.areEqual(this.comments, videoVideoFull.comments) && Intrinsics.areEqual(this.date, videoVideoFull.date) && Intrinsics.areEqual(this.description, videoVideoFull.description) && Intrinsics.areEqual(this.duration, videoVideoFull.duration) && Intrinsics.areEqual(this.image, videoVideoFull.image) && Intrinsics.areEqual(this.firstFrame, videoVideoFull.firstFrame) && Intrinsics.areEqual(this.width, videoVideoFull.width) && Intrinsics.areEqual(this.height, videoVideoFull.height) && Intrinsics.areEqual(this.f36121id, videoVideoFull.f36121id) && Intrinsics.areEqual(this.ownerId, videoVideoFull.ownerId) && Intrinsics.areEqual(this.userId, videoVideoFull.userId) && Intrinsics.areEqual(this.title, videoVideoFull.title) && Intrinsics.areEqual(this.isFavorite, videoVideoFull.isFavorite) && Intrinsics.areEqual(this.player, videoVideoFull.player) && this.processing == videoVideoFull.processing && this.converting == videoVideoFull.converting && this.added == videoVideoFull.added && this.isSubscribed == videoVideoFull.isSubscribed && Intrinsics.areEqual(this.trackCode, videoVideoFull.trackCode) && this.repeat == videoVideoFull.repeat && this.type == videoVideoFull.type && Intrinsics.areEqual(this.views, videoVideoFull.views) && Intrinsics.areEqual(this.localViews, videoVideoFull.localViews) && Intrinsics.areEqual(this.contentRestricted, videoVideoFull.contentRestricted) && Intrinsics.areEqual(this.contentRestrictedMessage, videoVideoFull.contentRestrictedMessage) && Intrinsics.areEqual(this.balance, videoVideoFull.balance) && this.liveStatus == videoVideoFull.liveStatus && this.live == videoVideoFull.live && this.upcoming == videoVideoFull.upcoming && Intrinsics.areEqual(this.liveStartTime, videoVideoFull.liveStartTime) && this.liveNotify == videoVideoFull.liveNotify && Intrinsics.areEqual(this.spectators, videoVideoFull.spectators) && Intrinsics.areEqual(this.platform, videoVideoFull.platform) && Intrinsics.areEqual(this.likes, videoVideoFull.likes) && Intrinsics.areEqual(this.reposts, videoVideoFull.reposts) && this.isExplicit == videoVideoFull.isExplicit && Intrinsics.areEqual(this.mainArtists, videoVideoFull.mainArtists) && Intrinsics.areEqual(this.featuredArtists, videoVideoFull.featuredArtists) && Intrinsics.areEqual(this.subtitle, videoVideoFull.subtitle) && Intrinsics.areEqual(this.releaseDate, videoVideoFull.releaseDate) && Intrinsics.areEqual(this.genres, videoVideoFull.genres);
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
    public final VideoVideoFiles getFiles() {
        return this.files;
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
        return this.f36121id;
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
    public final VideoLiveSettings getLiveSettings() {
        return this.liveSettings;
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
    public final VideoVideoFiles getTrailer() {
        return this.trailer;
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
        VideoVideoFiles videoVideoFiles = this.files;
        int hashCode = (videoVideoFiles == null ? 0 : videoVideoFiles.hashCode()) * 31;
        VideoVideoFiles videoVideoFiles2 = this.trailer;
        int hashCode2 = (hashCode + (videoVideoFiles2 == null ? 0 : videoVideoFiles2.hashCode())) * 31;
        VideoLiveSettings videoLiveSettings = this.liveSettings;
        int hashCode3 = (hashCode2 + (videoLiveSettings == null ? 0 : videoLiveSettings.hashCode())) * 31;
        String str = this.accessKey;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.addingDate;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode6 = (hashCode5 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.canEdit;
        int hashCode7 = (hashCode6 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.canLike;
        int hashCode8 = (hashCode7 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.canRepost;
        int hashCode9 = (hashCode8 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        BaseBoolInt baseBoolInt5 = this.canSubscribe;
        int hashCode10 = (hashCode9 + (baseBoolInt5 == null ? 0 : baseBoolInt5.hashCode())) * 31;
        BaseBoolInt baseBoolInt6 = this.canAddToFaves;
        int hashCode11 = (hashCode10 + (baseBoolInt6 == null ? 0 : baseBoolInt6.hashCode())) * 31;
        BaseBoolInt baseBoolInt7 = this.canAdd;
        int hashCode12 = (hashCode11 + (baseBoolInt7 == null ? 0 : baseBoolInt7.hashCode())) * 31;
        BaseBoolInt baseBoolInt8 = this.canAttachLink;
        int hashCode13 = (hashCode12 + (baseBoolInt8 == null ? 0 : baseBoolInt8.hashCode())) * 31;
        BaseBoolInt baseBoolInt9 = this.isPrivate;
        int hashCode14 = (hashCode13 + (baseBoolInt9 == null ? 0 : baseBoolInt9.hashCode())) * 31;
        Integer num2 = this.comments;
        int hashCode15 = (hashCode14 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.date;
        int hashCode16 = (hashCode15 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.description;
        int hashCode17 = (hashCode16 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num4 = this.duration;
        int hashCode18 = (hashCode17 + (num4 == null ? 0 : num4.hashCode())) * 31;
        List<VideoVideoImage> list = this.image;
        int hashCode19 = (hashCode18 + (list == null ? 0 : list.hashCode())) * 31;
        List<VideoVideoImage> list2 = this.firstFrame;
        int hashCode20 = (hashCode19 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num5 = this.width;
        int hashCode21 = (hashCode20 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.height;
        int hashCode22 = (hashCode21 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.f36121id;
        int hashCode23 = (hashCode22 + (num7 == null ? 0 : num7.hashCode())) * 31;
        UserId userId = this.ownerId;
        int hashCode24 = (hashCode23 + (userId == null ? 0 : userId.hashCode())) * 31;
        UserId userId2 = this.userId;
        int hashCode25 = (hashCode24 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        String str3 = this.title;
        int hashCode26 = (hashCode25 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.isFavorite;
        int hashCode27 = (hashCode26 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.player;
        int hashCode28 = (hashCode27 + (str4 == null ? 0 : str4.hashCode())) * 31;
        BasePropertyExists basePropertyExists = this.processing;
        int hashCode29 = (hashCode28 + (basePropertyExists == null ? 0 : basePropertyExists.hashCode())) * 31;
        BaseBoolInt baseBoolInt10 = this.converting;
        int hashCode30 = (hashCode29 + (baseBoolInt10 == null ? 0 : baseBoolInt10.hashCode())) * 31;
        BaseBoolInt baseBoolInt11 = this.added;
        int hashCode31 = (hashCode30 + (baseBoolInt11 == null ? 0 : baseBoolInt11.hashCode())) * 31;
        BaseBoolInt baseBoolInt12 = this.isSubscribed;
        int hashCode32 = (hashCode31 + (baseBoolInt12 == null ? 0 : baseBoolInt12.hashCode())) * 31;
        String str5 = this.trackCode;
        int hashCode33 = (hashCode32 + (str5 == null ? 0 : str5.hashCode())) * 31;
        BasePropertyExists basePropertyExists2 = this.repeat;
        int hashCode34 = (hashCode33 + (basePropertyExists2 == null ? 0 : basePropertyExists2.hashCode())) * 31;
        Type type = this.type;
        int hashCode35 = (hashCode34 + (type == null ? 0 : type.hashCode())) * 31;
        Integer num8 = this.views;
        int hashCode36 = (hashCode35 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.localViews;
        int hashCode37 = (hashCode36 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.contentRestricted;
        int hashCode38 = (hashCode37 + (num10 == null ? 0 : num10.hashCode())) * 31;
        String str6 = this.contentRestrictedMessage;
        int hashCode39 = (hashCode38 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num11 = this.balance;
        int hashCode40 = (hashCode39 + (num11 == null ? 0 : num11.hashCode())) * 31;
        LiveStatus liveStatus = this.liveStatus;
        int hashCode41 = (hashCode40 + (liveStatus == null ? 0 : liveStatus.hashCode())) * 31;
        BasePropertyExists basePropertyExists3 = this.live;
        int hashCode42 = (hashCode41 + (basePropertyExists3 == null ? 0 : basePropertyExists3.hashCode())) * 31;
        BasePropertyExists basePropertyExists4 = this.upcoming;
        int hashCode43 = (hashCode42 + (basePropertyExists4 == null ? 0 : basePropertyExists4.hashCode())) * 31;
        Integer num12 = this.liveStartTime;
        int hashCode44 = (hashCode43 + (num12 == null ? 0 : num12.hashCode())) * 31;
        BaseBoolInt baseBoolInt13 = this.liveNotify;
        int hashCode45 = (hashCode44 + (baseBoolInt13 == null ? 0 : baseBoolInt13.hashCode())) * 31;
        Integer num13 = this.spectators;
        int hashCode46 = (hashCode45 + (num13 == null ? 0 : num13.hashCode())) * 31;
        String str7 = this.platform;
        int hashCode47 = (hashCode46 + (str7 == null ? 0 : str7.hashCode())) * 31;
        BaseLikes baseLikes = this.likes;
        int hashCode48 = (hashCode47 + (baseLikes == null ? 0 : baseLikes.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode49 = (hashCode48 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        BaseBoolInt baseBoolInt14 = this.isExplicit;
        int hashCode50 = (hashCode49 + (baseBoolInt14 == null ? 0 : baseBoolInt14.hashCode())) * 31;
        List<AudioArtist> list3 = this.mainArtists;
        int hashCode51 = (hashCode50 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<AudioArtist> list4 = this.featuredArtists;
        int hashCode52 = (hashCode51 + (list4 == null ? 0 : list4.hashCode())) * 31;
        String str8 = this.subtitle;
        int hashCode53 = (hashCode52 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Integer num14 = this.releaseDate;
        int hashCode54 = (hashCode53 + (num14 == null ? 0 : num14.hashCode())) * 31;
        List<AudioGenre> list5 = this.genres;
        return hashCode54 + (list5 != null ? list5.hashCode() : 0);
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
        VideoVideoFiles videoVideoFiles = this.files;
        VideoVideoFiles videoVideoFiles2 = this.trailer;
        VideoLiveSettings videoLiveSettings = this.liveSettings;
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
        Integer num7 = this.f36121id;
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
        return "VideoVideoFull(files=" + videoVideoFiles + ", trailer=" + videoVideoFiles2 + ", liveSettings=" + videoLiveSettings + ", accessKey=" + str + ", addingDate=" + num + ", canComment=" + baseBoolInt + ", canEdit=" + baseBoolInt2 + ", canLike=" + baseBoolInt3 + ", canRepost=" + baseBoolInt4 + ", canSubscribe=" + baseBoolInt5 + ", canAddToFaves=" + baseBoolInt6 + ", canAdd=" + baseBoolInt7 + ", canAttachLink=" + baseBoolInt8 + ", isPrivate=" + baseBoolInt9 + ", comments=" + num2 + ", date=" + num3 + ", description=" + str2 + ", duration=" + num4 + ", image=" + list + ", firstFrame=" + list2 + ", width=" + num5 + ", height=" + num6 + ", id=" + num7 + ", ownerId=" + userId + ", userId=" + userId2 + ", title=" + str3 + ", isFavorite=" + bool + ", player=" + str4 + ", processing=" + basePropertyExists + ", converting=" + baseBoolInt10 + ", added=" + baseBoolInt11 + ", isSubscribed=" + baseBoolInt12 + ", trackCode=" + str5 + ", repeat=" + basePropertyExists2 + ", type=" + type + ", views=" + num8 + ", localViews=" + num9 + ", contentRestricted=" + num10 + ", contentRestrictedMessage=" + str6 + ", balance=" + num11 + ", liveStatus=" + liveStatus + ", live=" + basePropertyExists3 + ", upcoming=" + basePropertyExists4 + ", liveStartTime=" + num12 + ", liveNotify=" + baseBoolInt13 + ", spectators=" + num13 + ", platform=" + str7 + ", likes=" + baseLikes + ", reposts=" + baseRepostsInfo + ", isExplicit=" + baseBoolInt14 + ", mainArtists=" + list3 + ", featuredArtists=" + list4 + ", subtitle=" + str8 + ", releaseDate=" + num14 + ", genres=" + list5 + ")";
    }

    public /* synthetic */ VideoVideoFull(VideoVideoFiles videoVideoFiles, VideoVideoFiles videoVideoFiles2, VideoLiveSettings videoLiveSettings, String str, Integer num, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, BaseBoolInt baseBoolInt4, BaseBoolInt baseBoolInt5, BaseBoolInt baseBoolInt6, BaseBoolInt baseBoolInt7, BaseBoolInt baseBoolInt8, BaseBoolInt baseBoolInt9, Integer num2, Integer num3, String str2, Integer num4, List list, List list2, Integer num5, Integer num6, Integer num7, UserId userId, UserId userId2, String str3, Boolean bool, String str4, BasePropertyExists basePropertyExists, BaseBoolInt baseBoolInt10, BaseBoolInt baseBoolInt11, BaseBoolInt baseBoolInt12, String str5, BasePropertyExists basePropertyExists2, Type type, Integer num8, Integer num9, Integer num10, String str6, Integer num11, LiveStatus liveStatus, BasePropertyExists basePropertyExists3, BasePropertyExists basePropertyExists4, Integer num12, BaseBoolInt baseBoolInt13, Integer num13, String str7, BaseLikes baseLikes, BaseRepostsInfo baseRepostsInfo, BaseBoolInt baseBoolInt14, List list3, List list4, String str8, Integer num14, List list5, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : videoVideoFiles, (i9 & 2) != 0 ? null : videoVideoFiles2, (i9 & 4) != 0 ? null : videoLiveSettings, (i9 & 8) != 0 ? null : str, (i9 & 16) != 0 ? null : num, (i9 & 32) != 0 ? null : baseBoolInt, (i9 & 64) != 0 ? null : baseBoolInt2, (i9 & 128) != 0 ? null : baseBoolInt3, (i9 & 256) != 0 ? null : baseBoolInt4, (i9 & 512) != 0 ? null : baseBoolInt5, (i9 & 1024) != 0 ? null : baseBoolInt6, (i9 & 2048) != 0 ? null : baseBoolInt7, (i9 & 4096) != 0 ? null : baseBoolInt8, (i9 & 8192) != 0 ? null : baseBoolInt9, (i9 & 16384) != 0 ? null : num2, (i9 & 32768) != 0 ? null : num3, (i9 & 65536) != 0 ? null : str2, (i9 & 131072) != 0 ? null : num4, (i9 & 262144) != 0 ? null : list, (i9 & 524288) != 0 ? null : list2, (i9 & 1048576) != 0 ? null : num5, (i9 & 2097152) != 0 ? null : num6, (i9 & 4194304) != 0 ? null : num7, (i9 & 8388608) != 0 ? null : userId, (i9 & 16777216) != 0 ? null : userId2, (i9 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? null : str3, (i9 & 67108864) != 0 ? null : bool, (i9 & 134217728) != 0 ? null : str4, (i9 & 268435456) != 0 ? null : basePropertyExists, (i9 & 536870912) != 0 ? null : baseBoolInt10, (i9 & BasicMeasure.EXACTLY) != 0 ? null : baseBoolInt11, (i9 & Integer.MIN_VALUE) != 0 ? null : baseBoolInt12, (i10 & 1) != 0 ? null : str5, (i10 & 2) != 0 ? null : basePropertyExists2, (i10 & 4) != 0 ? null : type, (i10 & 8) != 0 ? null : num8, (i10 & 16) != 0 ? null : num9, (i10 & 32) != 0 ? null : num10, (i10 & 64) != 0 ? null : str6, (i10 & 128) != 0 ? null : num11, (i10 & 256) != 0 ? null : liveStatus, (i10 & 512) != 0 ? null : basePropertyExists3, (i10 & 1024) != 0 ? null : basePropertyExists4, (i10 & 2048) != 0 ? null : num12, (i10 & 4096) != 0 ? null : baseBoolInt13, (i10 & 8192) != 0 ? null : num13, (i10 & 16384) != 0 ? null : str7, (i10 & 32768) != 0 ? null : baseLikes, (i10 & 65536) != 0 ? null : baseRepostsInfo, (i10 & 131072) != 0 ? null : baseBoolInt14, (i10 & 262144) != 0 ? null : list3, (i10 & 524288) != 0 ? null : list4, (i10 & 1048576) != 0 ? null : str8, (i10 & 2097152) != 0 ? null : num14, (i10 & 4194304) != 0 ? null : list5);
    }
}
