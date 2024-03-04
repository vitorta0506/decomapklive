package com.vk.sdk.api.classifieds.dto;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseGeoCoordinates;
import com.vk.sdk.api.base.dto.BaseImage;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import com.vk.sdk.api.base.dto.BaseLinkProductStatus;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.market.dto.MarketPrice;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bq\b\u0086\b\u0018\u00002\u00020\u0001:\u0002±\u0001B\u009f\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u001a\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-\u0012\u0010\b\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001a\u0012\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001a\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000107\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010<\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u001a\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A¢\u0006\u0002\u0010BJ\t\u0010\u007f\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010WJ\f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0012\u0010\u0086\u0001\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aHÆ\u0003J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\f\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010WJ\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010$HÆ\u0003J\u0012\u0010\u008f\u0001\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u001aHÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010WJ\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010-HÆ\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0006HÆ\u0003J\u0012\u0010\u0096\u0001\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001aHÆ\u0003J\u0012\u0010\u0097\u0001\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001aHÆ\u0003J\u0011\u0010\u0098\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010cJ\u0011\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010WJ\u0011\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010WJ\f\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u000107HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\n\u0010 \u0001\u001a\u00020\bHÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010<HÆ\u0003J\u0011\u0010£\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010cJ\u0012\u0010¤\u0001\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u001aHÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010AHÆ\u0003J\n\u0010¦\u0001\u001a\u00020\nHÆ\u0003J\u0011\u0010§\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010cJ\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J´\u0004\u0010«\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u001a2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\u0010\b\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001a2\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001a2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\f2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00106\u001a\u0004\u0018\u0001072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010;\u001a\u0004\u0018\u00010<2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u001a2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010AHÆ\u0001¢\u0006\u0003\u0010¬\u0001J\u0015\u0010\u00ad\u0001\u001a\u00020\f2\t\u0010®\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010¯\u0001\u001a\u00020\u0003HÖ\u0001J\n\u0010°\u0001\u001a\u00020\u0006HÖ\u0001R\u0018\u0010'\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0018\u0010)\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010FR\u001e\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u0018\u00106\u001a\u0004\u0018\u0001078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u0018\u00104\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010FR\u001e\u00100\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010IR\u0018\u0010 \u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u0010FR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010FR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bR\u0010SR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010FR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bU\u0010FR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010X\u001a\u0004\bV\u0010WR\u0018\u0010+\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u0010FR\u001a\u00102\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010X\u001a\u0004\bZ\u0010WR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b[\u0010\\R\u0018\u0010#\u001a\u0004\u0018\u00010$8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b]\u0010^R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b_\u0010FR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b`\u0010aR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bb\u0010aR\u001a\u0010=\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010d\u001a\u0004\b=\u0010cR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010d\u001a\u0004\b\u000b\u0010cR\u001a\u00101\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010d\u001a\u0004\b1\u0010cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u0010FR\u001e\u0010.\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u0010IR\u0018\u0010;\u001a\u0004\u0018\u00010<8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bg\u0010hR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bi\u0010jR\u0018\u0010@\u001a\u0004\u0018\u00010A8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bk\u0010lR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bm\u0010FR\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bn\u0010IR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010pR\u001a\u0010\"\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010X\u001a\u0004\bq\u0010WR\u001a\u0010*\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010X\u001a\u0004\br\u0010WR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bs\u0010FR\u0018\u00105\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bt\u0010FR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bu\u0010vR\u0018\u0010,\u001a\u0004\u0018\u00010-8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bw\u0010xR\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\by\u0010FR\u001e\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bz\u0010IR\u0018\u0010:\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b{\u0010FR\u001a\u00103\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010X\u001a\u0004\b|\u0010WR\u0018\u00108\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b}\u0010FR\u0018\u00109\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b~\u0010F¨\u0006²\u0001"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended;", "", "internalOwnerId", "", "internalId", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", InAppPurchaseMetaData.KEY_PRICE, "Lcom/vk/sdk/api/market/dto/MarketPrice;", "isOwner", "", "description", "geo", "Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;", "locationText", "distance", "city", "status", "Lcom/vk/sdk/api/base/dto/BaseLinkProductStatus;", "blockMode", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended$BlockMode;", "detailsUrl", "actionUrl", "photos", "", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemPhoto;", "photoTotalCountDescription", "commercialProfileButton", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "rootCategory", "category", "subCategory", "publishedDate", "group", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "attributes", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemAttribute;", "actionProperties", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionProperties;", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "radiusMeters", "distanceText", "statusInfo", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemStatusInfo;", "menuActions", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionButton;", "buttonActions", "isUserBlacklisted", "favoriteCounter", AdUnitActivity.EXTRA_VIEWS, "blockTypeText", "shareUrl", "author", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemVkAuthor;", "youlaOwnerName", "youlaUserId", "title", "onClickOptions", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemOnClickOptions;", "isFavorite", "thumb", "Lcom/vk/sdk/api/base/dto/BaseImage;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "(IILjava/lang/String;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkProductStatus;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended$BlockMode;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;Ljava/util/List;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionProperties;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemStatusInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemVkAuthor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemOnClickOptions;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)V", "getActionProperties", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionProperties;", "getActionUrl", "()Ljava/lang/String;", "getAddress", "getAttributes", "()Ljava/util/List;", "getAuthor", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemVkAuthor;", "getBlockMode", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended$BlockMode;", "getBlockTypeText", "getButtonActions", "getCategory", "getCity", "getCommercialProfileButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getDescription", "getDetailsUrl", "getDistance", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDistanceText", "getFavoriteCounter", "getGeo", "()Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;", "getGroup", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "getId", "getInternalId", "()I", "getInternalOwnerId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLocationText", "getMenuActions", "getOnClickOptions", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemOnClickOptions;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getPhotoTotalCountDescription", "getPhotos", "getPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "getPublishedDate", "getRadiusMeters", "getRootCategory", "getShareUrl", "getStatus", "()Lcom/vk/sdk/api/base/dto/BaseLinkProductStatus;", "getStatusInfo", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemStatusInfo;", "getSubCategory", "getThumb", "getTitle", "getViews", "getYoulaOwnerName", "getYoulaUserId", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component44", "component5", "component6", "component7", "component8", "component9", "copy", "(IILjava/lang/String;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkProductStatus;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended$BlockMode;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;Ljava/util/List;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionProperties;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemStatusInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemVkAuthor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemOnClickOptions;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended;", "equals", "other", "hashCode", "toString", "BlockMode", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemExtended {
    @SerializedName(ShareConstants.WEB_DIALOG_PARAM_ACTION_PROPERTIES)
    @Nullable
    private final ClassifiedsYoulaItemActionProperties actionProperties;
    @SerializedName("action_url")
    @Nullable
    private final String actionUrl;
    @SerializedName(IntegrityManager.INTEGRITY_TYPE_ADDRESS)
    @Nullable
    private final String address;
    @SerializedName("attributes")
    @Nullable
    private final List<ClassifiedsYoulaItemAttribute> attributes;
    @SerializedName("author")
    @Nullable
    private final ClassifiedsYoulaItemVkAuthor author;
    @SerializedName("block_mode")
    @Nullable
    private final BlockMode blockMode;
    @SerializedName("block_type_text")
    @Nullable
    private final String blockTypeText;
    @SerializedName("button_actions")
    @Nullable
    private final List<ClassifiedsYoulaItemActionButton> buttonActions;
    @SerializedName("category")
    @Nullable
    private final String category;
    @SerializedName("city")
    @Nullable
    private final String city;
    @SerializedName("commercial_profile_button")
    @Nullable
    private final BaseLinkButton commercialProfileButton;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("details_url")
    @Nullable
    private final String detailsUrl;
    @SerializedName("distance")
    @Nullable
    private final Integer distance;
    @SerializedName("distance_text")
    @Nullable
    private final String distanceText;
    @SerializedName("favorite_counter")
    @Nullable
    private final Integer favoriteCounter;
    @SerializedName("geo")
    @Nullable
    private final BaseGeoCoordinates geo;
    @SerializedName("group")
    @Nullable
    private final GroupsGroupFull group;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35755id;
    @SerializedName("internal_id")
    private final int internalId;
    @SerializedName("internal_owner_id")
    private final int internalOwnerId;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName("is_owner")
    @Nullable
    private final Boolean isOwner;
    @SerializedName("is_user_blacklisted")
    @Nullable
    private final Boolean isUserBlacklisted;
    @SerializedName("location_text")
    @Nullable
    private final String locationText;
    @SerializedName("menu_actions")
    @Nullable
    private final List<ClassifiedsYoulaItemActionButton> menuActions;
    @SerializedName("on_click_options")
    @Nullable
    private final ClassifiedsYoulaItemOnClickOptions onClickOptions;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("photo_total_count_description")
    @Nullable
    private final String photoTotalCountDescription;
    @SerializedName("photos")
    @Nullable
    private final List<ClassifiedsYoulaItemPhoto> photos;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @NotNull
    private final MarketPrice price;
    @SerializedName("published_date")
    @Nullable
    private final Integer publishedDate;
    @SerializedName("radius_meters")
    @Nullable
    private final Integer radiusMeters;
    @SerializedName("root_category")
    @Nullable
    private final String rootCategory;
    @SerializedName("share_url")
    @Nullable
    private final String shareUrl;
    @SerializedName("status")
    @Nullable
    private final BaseLinkProductStatus status;
    @SerializedName("status_info")
    @Nullable
    private final ClassifiedsYoulaItemStatusInfo statusInfo;
    @SerializedName("sub_category")
    @Nullable
    private final String subCategory;
    @SerializedName("thumb")
    @Nullable
    private final List<BaseImage> thumb;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final Integer views;
    @SerializedName("youla_owner_name")
    @Nullable
    private final String youlaOwnerName;
    @SerializedName("youla_user_id")
    @Nullable
    private final String youlaUserId;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemExtended$BlockMode;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NO_BLOCK", "BLOCKED", "REJECTED", "VK_BLOCKED", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum BlockMode {
        NO_BLOCK(0),
        BLOCKED(1),
        REJECTED(2),
        VK_BLOCKED(3);
        
        private final int value;

        BlockMode(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public ClassifiedsYoulaItemExtended(int i9, int i10, @NotNull String id2, @NotNull UserId ownerId, @NotNull MarketPrice price, @Nullable Boolean bool, @Nullable String str, @Nullable BaseGeoCoordinates baseGeoCoordinates, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable BaseLinkProductStatus baseLinkProductStatus, @Nullable BlockMode blockMode, @Nullable String str4, @Nullable String str5, @Nullable List<ClassifiedsYoulaItemPhoto> list, @Nullable String str6, @Nullable BaseLinkButton baseLinkButton, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable Integer num2, @Nullable GroupsGroupFull groupsGroupFull, @Nullable List<ClassifiedsYoulaItemAttribute> list2, @Nullable ClassifiedsYoulaItemActionProperties classifiedsYoulaItemActionProperties, @Nullable String str10, @Nullable Integer num3, @Nullable String str11, @Nullable ClassifiedsYoulaItemStatusInfo classifiedsYoulaItemStatusInfo, @Nullable List<ClassifiedsYoulaItemActionButton> list3, @Nullable List<ClassifiedsYoulaItemActionButton> list4, @Nullable Boolean bool2, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str12, @Nullable String str13, @Nullable ClassifiedsYoulaItemVkAuthor classifiedsYoulaItemVkAuthor, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable ClassifiedsYoulaItemOnClickOptions classifiedsYoulaItemOnClickOptions, @Nullable Boolean bool3, @Nullable List<BaseImage> list5, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        this.internalOwnerId = i9;
        this.internalId = i10;
        this.f35755id = id2;
        this.ownerId = ownerId;
        this.price = price;
        this.isOwner = bool;
        this.description = str;
        this.geo = baseGeoCoordinates;
        this.locationText = str2;
        this.distance = num;
        this.city = str3;
        this.status = baseLinkProductStatus;
        this.blockMode = blockMode;
        this.detailsUrl = str4;
        this.actionUrl = str5;
        this.photos = list;
        this.photoTotalCountDescription = str6;
        this.commercialProfileButton = baseLinkButton;
        this.rootCategory = str7;
        this.category = str8;
        this.subCategory = str9;
        this.publishedDate = num2;
        this.group = groupsGroupFull;
        this.attributes = list2;
        this.actionProperties = classifiedsYoulaItemActionProperties;
        this.address = str10;
        this.radiusMeters = num3;
        this.distanceText = str11;
        this.statusInfo = classifiedsYoulaItemStatusInfo;
        this.menuActions = list3;
        this.buttonActions = list4;
        this.isUserBlacklisted = bool2;
        this.favoriteCounter = num4;
        this.views = num5;
        this.blockTypeText = str12;
        this.shareUrl = str13;
        this.author = classifiedsYoulaItemVkAuthor;
        this.youlaOwnerName = str14;
        this.youlaUserId = str15;
        this.title = str16;
        this.onClickOptions = classifiedsYoulaItemOnClickOptions;
        this.isFavorite = bool3;
        this.thumb = list5;
        this.photo = photosPhoto;
    }

    public final int component1() {
        return this.internalOwnerId;
    }

    @Nullable
    public final Integer component10() {
        return this.distance;
    }

    @Nullable
    public final String component11() {
        return this.city;
    }

    @Nullable
    public final BaseLinkProductStatus component12() {
        return this.status;
    }

    @Nullable
    public final BlockMode component13() {
        return this.blockMode;
    }

    @Nullable
    public final String component14() {
        return this.detailsUrl;
    }

    @Nullable
    public final String component15() {
        return this.actionUrl;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemPhoto> component16() {
        return this.photos;
    }

    @Nullable
    public final String component17() {
        return this.photoTotalCountDescription;
    }

    @Nullable
    public final BaseLinkButton component18() {
        return this.commercialProfileButton;
    }

    @Nullable
    public final String component19() {
        return this.rootCategory;
    }

    public final int component2() {
        return this.internalId;
    }

    @Nullable
    public final String component20() {
        return this.category;
    }

    @Nullable
    public final String component21() {
        return this.subCategory;
    }

    @Nullable
    public final Integer component22() {
        return this.publishedDate;
    }

    @Nullable
    public final GroupsGroupFull component23() {
        return this.group;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemAttribute> component24() {
        return this.attributes;
    }

    @Nullable
    public final ClassifiedsYoulaItemActionProperties component25() {
        return this.actionProperties;
    }

    @Nullable
    public final String component26() {
        return this.address;
    }

    @Nullable
    public final Integer component27() {
        return this.radiusMeters;
    }

    @Nullable
    public final String component28() {
        return this.distanceText;
    }

    @Nullable
    public final ClassifiedsYoulaItemStatusInfo component29() {
        return this.statusInfo;
    }

    @NotNull
    public final String component3() {
        return this.f35755id;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemActionButton> component30() {
        return this.menuActions;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemActionButton> component31() {
        return this.buttonActions;
    }

    @Nullable
    public final Boolean component32() {
        return this.isUserBlacklisted;
    }

    @Nullable
    public final Integer component33() {
        return this.favoriteCounter;
    }

    @Nullable
    public final Integer component34() {
        return this.views;
    }

    @Nullable
    public final String component35() {
        return this.blockTypeText;
    }

    @Nullable
    public final String component36() {
        return this.shareUrl;
    }

    @Nullable
    public final ClassifiedsYoulaItemVkAuthor component37() {
        return this.author;
    }

    @Nullable
    public final String component38() {
        return this.youlaOwnerName;
    }

    @Nullable
    public final String component39() {
        return this.youlaUserId;
    }

    @NotNull
    public final UserId component4() {
        return this.ownerId;
    }

    @Nullable
    public final String component40() {
        return this.title;
    }

    @Nullable
    public final ClassifiedsYoulaItemOnClickOptions component41() {
        return this.onClickOptions;
    }

    @Nullable
    public final Boolean component42() {
        return this.isFavorite;
    }

    @Nullable
    public final List<BaseImage> component43() {
        return this.thumb;
    }

    @Nullable
    public final PhotosPhoto component44() {
        return this.photo;
    }

    @NotNull
    public final MarketPrice component5() {
        return this.price;
    }

    @Nullable
    public final Boolean component6() {
        return this.isOwner;
    }

    @Nullable
    public final String component7() {
        return this.description;
    }

    @Nullable
    public final BaseGeoCoordinates component8() {
        return this.geo;
    }

    @Nullable
    public final String component9() {
        return this.locationText;
    }

    @NotNull
    public final ClassifiedsYoulaItemExtended copy(int i9, int i10, @NotNull String id2, @NotNull UserId ownerId, @NotNull MarketPrice price, @Nullable Boolean bool, @Nullable String str, @Nullable BaseGeoCoordinates baseGeoCoordinates, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable BaseLinkProductStatus baseLinkProductStatus, @Nullable BlockMode blockMode, @Nullable String str4, @Nullable String str5, @Nullable List<ClassifiedsYoulaItemPhoto> list, @Nullable String str6, @Nullable BaseLinkButton baseLinkButton, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable Integer num2, @Nullable GroupsGroupFull groupsGroupFull, @Nullable List<ClassifiedsYoulaItemAttribute> list2, @Nullable ClassifiedsYoulaItemActionProperties classifiedsYoulaItemActionProperties, @Nullable String str10, @Nullable Integer num3, @Nullable String str11, @Nullable ClassifiedsYoulaItemStatusInfo classifiedsYoulaItemStatusInfo, @Nullable List<ClassifiedsYoulaItemActionButton> list3, @Nullable List<ClassifiedsYoulaItemActionButton> list4, @Nullable Boolean bool2, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str12, @Nullable String str13, @Nullable ClassifiedsYoulaItemVkAuthor classifiedsYoulaItemVkAuthor, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable ClassifiedsYoulaItemOnClickOptions classifiedsYoulaItemOnClickOptions, @Nullable Boolean bool3, @Nullable List<BaseImage> list5, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        return new ClassifiedsYoulaItemExtended(i9, i10, id2, ownerId, price, bool, str, baseGeoCoordinates, str2, num, str3, baseLinkProductStatus, blockMode, str4, str5, list, str6, baseLinkButton, str7, str8, str9, num2, groupsGroupFull, list2, classifiedsYoulaItemActionProperties, str10, num3, str11, classifiedsYoulaItemStatusInfo, list3, list4, bool2, num4, num5, str12, str13, classifiedsYoulaItemVkAuthor, str14, str15, str16, classifiedsYoulaItemOnClickOptions, bool3, list5, photosPhoto);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaItemExtended) {
            ClassifiedsYoulaItemExtended classifiedsYoulaItemExtended = (ClassifiedsYoulaItemExtended) obj;
            return this.internalOwnerId == classifiedsYoulaItemExtended.internalOwnerId && this.internalId == classifiedsYoulaItemExtended.internalId && Intrinsics.areEqual(this.f35755id, classifiedsYoulaItemExtended.f35755id) && Intrinsics.areEqual(this.ownerId, classifiedsYoulaItemExtended.ownerId) && Intrinsics.areEqual(this.price, classifiedsYoulaItemExtended.price) && Intrinsics.areEqual(this.isOwner, classifiedsYoulaItemExtended.isOwner) && Intrinsics.areEqual(this.description, classifiedsYoulaItemExtended.description) && Intrinsics.areEqual(this.geo, classifiedsYoulaItemExtended.geo) && Intrinsics.areEqual(this.locationText, classifiedsYoulaItemExtended.locationText) && Intrinsics.areEqual(this.distance, classifiedsYoulaItemExtended.distance) && Intrinsics.areEqual(this.city, classifiedsYoulaItemExtended.city) && this.status == classifiedsYoulaItemExtended.status && this.blockMode == classifiedsYoulaItemExtended.blockMode && Intrinsics.areEqual(this.detailsUrl, classifiedsYoulaItemExtended.detailsUrl) && Intrinsics.areEqual(this.actionUrl, classifiedsYoulaItemExtended.actionUrl) && Intrinsics.areEqual(this.photos, classifiedsYoulaItemExtended.photos) && Intrinsics.areEqual(this.photoTotalCountDescription, classifiedsYoulaItemExtended.photoTotalCountDescription) && Intrinsics.areEqual(this.commercialProfileButton, classifiedsYoulaItemExtended.commercialProfileButton) && Intrinsics.areEqual(this.rootCategory, classifiedsYoulaItemExtended.rootCategory) && Intrinsics.areEqual(this.category, classifiedsYoulaItemExtended.category) && Intrinsics.areEqual(this.subCategory, classifiedsYoulaItemExtended.subCategory) && Intrinsics.areEqual(this.publishedDate, classifiedsYoulaItemExtended.publishedDate) && Intrinsics.areEqual(this.group, classifiedsYoulaItemExtended.group) && Intrinsics.areEqual(this.attributes, classifiedsYoulaItemExtended.attributes) && Intrinsics.areEqual(this.actionProperties, classifiedsYoulaItemExtended.actionProperties) && Intrinsics.areEqual(this.address, classifiedsYoulaItemExtended.address) && Intrinsics.areEqual(this.radiusMeters, classifiedsYoulaItemExtended.radiusMeters) && Intrinsics.areEqual(this.distanceText, classifiedsYoulaItemExtended.distanceText) && Intrinsics.areEqual(this.statusInfo, classifiedsYoulaItemExtended.statusInfo) && Intrinsics.areEqual(this.menuActions, classifiedsYoulaItemExtended.menuActions) && Intrinsics.areEqual(this.buttonActions, classifiedsYoulaItemExtended.buttonActions) && Intrinsics.areEqual(this.isUserBlacklisted, classifiedsYoulaItemExtended.isUserBlacklisted) && Intrinsics.areEqual(this.favoriteCounter, classifiedsYoulaItemExtended.favoriteCounter) && Intrinsics.areEqual(this.views, classifiedsYoulaItemExtended.views) && Intrinsics.areEqual(this.blockTypeText, classifiedsYoulaItemExtended.blockTypeText) && Intrinsics.areEqual(this.shareUrl, classifiedsYoulaItemExtended.shareUrl) && Intrinsics.areEqual(this.author, classifiedsYoulaItemExtended.author) && Intrinsics.areEqual(this.youlaOwnerName, classifiedsYoulaItemExtended.youlaOwnerName) && Intrinsics.areEqual(this.youlaUserId, classifiedsYoulaItemExtended.youlaUserId) && Intrinsics.areEqual(this.title, classifiedsYoulaItemExtended.title) && Intrinsics.areEqual(this.onClickOptions, classifiedsYoulaItemExtended.onClickOptions) && Intrinsics.areEqual(this.isFavorite, classifiedsYoulaItemExtended.isFavorite) && Intrinsics.areEqual(this.thumb, classifiedsYoulaItemExtended.thumb) && Intrinsics.areEqual(this.photo, classifiedsYoulaItemExtended.photo);
        }
        return false;
    }

    @Nullable
    public final ClassifiedsYoulaItemActionProperties getActionProperties() {
        return this.actionProperties;
    }

    @Nullable
    public final String getActionUrl() {
        return this.actionUrl;
    }

    @Nullable
    public final String getAddress() {
        return this.address;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemAttribute> getAttributes() {
        return this.attributes;
    }

    @Nullable
    public final ClassifiedsYoulaItemVkAuthor getAuthor() {
        return this.author;
    }

    @Nullable
    public final BlockMode getBlockMode() {
        return this.blockMode;
    }

    @Nullable
    public final String getBlockTypeText() {
        return this.blockTypeText;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemActionButton> getButtonActions() {
        return this.buttonActions;
    }

    @Nullable
    public final String getCategory() {
        return this.category;
    }

    @Nullable
    public final String getCity() {
        return this.city;
    }

    @Nullable
    public final BaseLinkButton getCommercialProfileButton() {
        return this.commercialProfileButton;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getDetailsUrl() {
        return this.detailsUrl;
    }

    @Nullable
    public final Integer getDistance() {
        return this.distance;
    }

    @Nullable
    public final String getDistanceText() {
        return this.distanceText;
    }

    @Nullable
    public final Integer getFavoriteCounter() {
        return this.favoriteCounter;
    }

    @Nullable
    public final BaseGeoCoordinates getGeo() {
        return this.geo;
    }

    @Nullable
    public final GroupsGroupFull getGroup() {
        return this.group;
    }

    @NotNull
    public final String getId() {
        return this.f35755id;
    }

    public final int getInternalId() {
        return this.internalId;
    }

    public final int getInternalOwnerId() {
        return this.internalOwnerId;
    }

    @Nullable
    public final String getLocationText() {
        return this.locationText;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemActionButton> getMenuActions() {
        return this.menuActions;
    }

    @Nullable
    public final ClassifiedsYoulaItemOnClickOptions getOnClickOptions() {
        return this.onClickOptions;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getPhotoTotalCountDescription() {
        return this.photoTotalCountDescription;
    }

    @Nullable
    public final List<ClassifiedsYoulaItemPhoto> getPhotos() {
        return this.photos;
    }

    @NotNull
    public final MarketPrice getPrice() {
        return this.price;
    }

    @Nullable
    public final Integer getPublishedDate() {
        return this.publishedDate;
    }

    @Nullable
    public final Integer getRadiusMeters() {
        return this.radiusMeters;
    }

    @Nullable
    public final String getRootCategory() {
        return this.rootCategory;
    }

    @Nullable
    public final String getShareUrl() {
        return this.shareUrl;
    }

    @Nullable
    public final BaseLinkProductStatus getStatus() {
        return this.status;
    }

    @Nullable
    public final ClassifiedsYoulaItemStatusInfo getStatusInfo() {
        return this.statusInfo;
    }

    @Nullable
    public final String getSubCategory() {
        return this.subCategory;
    }

    @Nullable
    public final List<BaseImage> getThumb() {
        return this.thumb;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final Integer getViews() {
        return this.views;
    }

    @Nullable
    public final String getYoulaOwnerName() {
        return this.youlaOwnerName;
    }

    @Nullable
    public final String getYoulaUserId() {
        return this.youlaUserId;
    }

    public int hashCode() {
        int hashCode = ((((((((this.internalOwnerId * 31) + this.internalId) * 31) + this.f35755id.hashCode()) * 31) + this.ownerId.hashCode()) * 31) + this.price.hashCode()) * 31;
        Boolean bool = this.isOwner;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.description;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        BaseGeoCoordinates baseGeoCoordinates = this.geo;
        int hashCode4 = (hashCode3 + (baseGeoCoordinates == null ? 0 : baseGeoCoordinates.hashCode())) * 31;
        String str2 = this.locationText;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.distance;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.city;
        int hashCode7 = (hashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        BaseLinkProductStatus baseLinkProductStatus = this.status;
        int hashCode8 = (hashCode7 + (baseLinkProductStatus == null ? 0 : baseLinkProductStatus.hashCode())) * 31;
        BlockMode blockMode = this.blockMode;
        int hashCode9 = (hashCode8 + (blockMode == null ? 0 : blockMode.hashCode())) * 31;
        String str4 = this.detailsUrl;
        int hashCode10 = (hashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.actionUrl;
        int hashCode11 = (hashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<ClassifiedsYoulaItemPhoto> list = this.photos;
        int hashCode12 = (hashCode11 + (list == null ? 0 : list.hashCode())) * 31;
        String str6 = this.photoTotalCountDescription;
        int hashCode13 = (hashCode12 + (str6 == null ? 0 : str6.hashCode())) * 31;
        BaseLinkButton baseLinkButton = this.commercialProfileButton;
        int hashCode14 = (hashCode13 + (baseLinkButton == null ? 0 : baseLinkButton.hashCode())) * 31;
        String str7 = this.rootCategory;
        int hashCode15 = (hashCode14 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.category;
        int hashCode16 = (hashCode15 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.subCategory;
        int hashCode17 = (hashCode16 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Integer num2 = this.publishedDate;
        int hashCode18 = (hashCode17 + (num2 == null ? 0 : num2.hashCode())) * 31;
        GroupsGroupFull groupsGroupFull = this.group;
        int hashCode19 = (hashCode18 + (groupsGroupFull == null ? 0 : groupsGroupFull.hashCode())) * 31;
        List<ClassifiedsYoulaItemAttribute> list2 = this.attributes;
        int hashCode20 = (hashCode19 + (list2 == null ? 0 : list2.hashCode())) * 31;
        ClassifiedsYoulaItemActionProperties classifiedsYoulaItemActionProperties = this.actionProperties;
        int hashCode21 = (hashCode20 + (classifiedsYoulaItemActionProperties == null ? 0 : classifiedsYoulaItemActionProperties.hashCode())) * 31;
        String str10 = this.address;
        int hashCode22 = (hashCode21 + (str10 == null ? 0 : str10.hashCode())) * 31;
        Integer num3 = this.radiusMeters;
        int hashCode23 = (hashCode22 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str11 = this.distanceText;
        int hashCode24 = (hashCode23 + (str11 == null ? 0 : str11.hashCode())) * 31;
        ClassifiedsYoulaItemStatusInfo classifiedsYoulaItemStatusInfo = this.statusInfo;
        int hashCode25 = (hashCode24 + (classifiedsYoulaItemStatusInfo == null ? 0 : classifiedsYoulaItemStatusInfo.hashCode())) * 31;
        List<ClassifiedsYoulaItemActionButton> list3 = this.menuActions;
        int hashCode26 = (hashCode25 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<ClassifiedsYoulaItemActionButton> list4 = this.buttonActions;
        int hashCode27 = (hashCode26 + (list4 == null ? 0 : list4.hashCode())) * 31;
        Boolean bool2 = this.isUserBlacklisted;
        int hashCode28 = (hashCode27 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num4 = this.favoriteCounter;
        int hashCode29 = (hashCode28 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.views;
        int hashCode30 = (hashCode29 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str12 = this.blockTypeText;
        int hashCode31 = (hashCode30 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.shareUrl;
        int hashCode32 = (hashCode31 + (str13 == null ? 0 : str13.hashCode())) * 31;
        ClassifiedsYoulaItemVkAuthor classifiedsYoulaItemVkAuthor = this.author;
        int hashCode33 = (hashCode32 + (classifiedsYoulaItemVkAuthor == null ? 0 : classifiedsYoulaItemVkAuthor.hashCode())) * 31;
        String str14 = this.youlaOwnerName;
        int hashCode34 = (hashCode33 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.youlaUserId;
        int hashCode35 = (hashCode34 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.title;
        int hashCode36 = (hashCode35 + (str16 == null ? 0 : str16.hashCode())) * 31;
        ClassifiedsYoulaItemOnClickOptions classifiedsYoulaItemOnClickOptions = this.onClickOptions;
        int hashCode37 = (hashCode36 + (classifiedsYoulaItemOnClickOptions == null ? 0 : classifiedsYoulaItemOnClickOptions.hashCode())) * 31;
        Boolean bool3 = this.isFavorite;
        int hashCode38 = (hashCode37 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        List<BaseImage> list5 = this.thumb;
        int hashCode39 = (hashCode38 + (list5 == null ? 0 : list5.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        return hashCode39 + (photosPhoto != null ? photosPhoto.hashCode() : 0);
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @Nullable
    public final Boolean isOwner() {
        return this.isOwner;
    }

    @Nullable
    public final Boolean isUserBlacklisted() {
        return this.isUserBlacklisted;
    }

    @NotNull
    public String toString() {
        int i9 = this.internalOwnerId;
        int i10 = this.internalId;
        String str = this.f35755id;
        UserId userId = this.ownerId;
        MarketPrice marketPrice = this.price;
        Boolean bool = this.isOwner;
        String str2 = this.description;
        BaseGeoCoordinates baseGeoCoordinates = this.geo;
        String str3 = this.locationText;
        Integer num = this.distance;
        String str4 = this.city;
        BaseLinkProductStatus baseLinkProductStatus = this.status;
        BlockMode blockMode = this.blockMode;
        String str5 = this.detailsUrl;
        String str6 = this.actionUrl;
        List<ClassifiedsYoulaItemPhoto> list = this.photos;
        String str7 = this.photoTotalCountDescription;
        BaseLinkButton baseLinkButton = this.commercialProfileButton;
        String str8 = this.rootCategory;
        String str9 = this.category;
        String str10 = this.subCategory;
        Integer num2 = this.publishedDate;
        GroupsGroupFull groupsGroupFull = this.group;
        List<ClassifiedsYoulaItemAttribute> list2 = this.attributes;
        ClassifiedsYoulaItemActionProperties classifiedsYoulaItemActionProperties = this.actionProperties;
        String str11 = this.address;
        Integer num3 = this.radiusMeters;
        String str12 = this.distanceText;
        ClassifiedsYoulaItemStatusInfo classifiedsYoulaItemStatusInfo = this.statusInfo;
        List<ClassifiedsYoulaItemActionButton> list3 = this.menuActions;
        List<ClassifiedsYoulaItemActionButton> list4 = this.buttonActions;
        Boolean bool2 = this.isUserBlacklisted;
        Integer num4 = this.favoriteCounter;
        Integer num5 = this.views;
        String str13 = this.blockTypeText;
        String str14 = this.shareUrl;
        ClassifiedsYoulaItemVkAuthor classifiedsYoulaItemVkAuthor = this.author;
        String str15 = this.youlaOwnerName;
        String str16 = this.youlaUserId;
        String str17 = this.title;
        ClassifiedsYoulaItemOnClickOptions classifiedsYoulaItemOnClickOptions = this.onClickOptions;
        Boolean bool3 = this.isFavorite;
        List<BaseImage> list5 = this.thumb;
        PhotosPhoto photosPhoto = this.photo;
        return "ClassifiedsYoulaItemExtended(internalOwnerId=" + i9 + ", internalId=" + i10 + ", id=" + str + ", ownerId=" + userId + ", price=" + marketPrice + ", isOwner=" + bool + ", description=" + str2 + ", geo=" + baseGeoCoordinates + ", locationText=" + str3 + ", distance=" + num + ", city=" + str4 + ", status=" + baseLinkProductStatus + ", blockMode=" + blockMode + ", detailsUrl=" + str5 + ", actionUrl=" + str6 + ", photos=" + list + ", photoTotalCountDescription=" + str7 + ", commercialProfileButton=" + baseLinkButton + ", rootCategory=" + str8 + ", category=" + str9 + ", subCategory=" + str10 + ", publishedDate=" + num2 + ", group=" + groupsGroupFull + ", attributes=" + list2 + ", actionProperties=" + classifiedsYoulaItemActionProperties + ", address=" + str11 + ", radiusMeters=" + num3 + ", distanceText=" + str12 + ", statusInfo=" + classifiedsYoulaItemStatusInfo + ", menuActions=" + list3 + ", buttonActions=" + list4 + ", isUserBlacklisted=" + bool2 + ", favoriteCounter=" + num4 + ", views=" + num5 + ", blockTypeText=" + str13 + ", shareUrl=" + str14 + ", author=" + classifiedsYoulaItemVkAuthor + ", youlaOwnerName=" + str15 + ", youlaUserId=" + str16 + ", title=" + str17 + ", onClickOptions=" + classifiedsYoulaItemOnClickOptions + ", isFavorite=" + bool3 + ", thumb=" + list5 + ", photo=" + photosPhoto + ")";
    }

    public /* synthetic */ ClassifiedsYoulaItemExtended(int i9, int i10, String str, UserId userId, MarketPrice marketPrice, Boolean bool, String str2, BaseGeoCoordinates baseGeoCoordinates, String str3, Integer num, String str4, BaseLinkProductStatus baseLinkProductStatus, BlockMode blockMode, String str5, String str6, List list, String str7, BaseLinkButton baseLinkButton, String str8, String str9, String str10, Integer num2, GroupsGroupFull groupsGroupFull, List list2, ClassifiedsYoulaItemActionProperties classifiedsYoulaItemActionProperties, String str11, Integer num3, String str12, ClassifiedsYoulaItemStatusInfo classifiedsYoulaItemStatusInfo, List list3, List list4, Boolean bool2, Integer num4, Integer num5, String str13, String str14, ClassifiedsYoulaItemVkAuthor classifiedsYoulaItemVkAuthor, String str15, String str16, String str17, ClassifiedsYoulaItemOnClickOptions classifiedsYoulaItemOnClickOptions, Boolean bool3, List list5, PhotosPhoto photosPhoto, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, str, userId, marketPrice, (i11 & 32) != 0 ? null : bool, (i11 & 64) != 0 ? null : str2, (i11 & 128) != 0 ? null : baseGeoCoordinates, (i11 & 256) != 0 ? null : str3, (i11 & 512) != 0 ? null : num, (i11 & 1024) != 0 ? null : str4, (i11 & 2048) != 0 ? null : baseLinkProductStatus, (i11 & 4096) != 0 ? null : blockMode, (i11 & 8192) != 0 ? null : str5, (i11 & 16384) != 0 ? null : str6, (32768 & i11) != 0 ? null : list, (65536 & i11) != 0 ? null : str7, (131072 & i11) != 0 ? null : baseLinkButton, (262144 & i11) != 0 ? null : str8, (524288 & i11) != 0 ? null : str9, (1048576 & i11) != 0 ? null : str10, (2097152 & i11) != 0 ? null : num2, (4194304 & i11) != 0 ? null : groupsGroupFull, (8388608 & i11) != 0 ? null : list2, (16777216 & i11) != 0 ? null : classifiedsYoulaItemActionProperties, (33554432 & i11) != 0 ? null : str11, (67108864 & i11) != 0 ? null : num3, (134217728 & i11) != 0 ? null : str12, (268435456 & i11) != 0 ? null : classifiedsYoulaItemStatusInfo, (536870912 & i11) != 0 ? null : list3, (1073741824 & i11) != 0 ? null : list4, (i11 & Integer.MIN_VALUE) != 0 ? null : bool2, (i12 & 1) != 0 ? null : num4, (i12 & 2) != 0 ? null : num5, (i12 & 4) != 0 ? null : str13, (i12 & 8) != 0 ? null : str14, (i12 & 16) != 0 ? null : classifiedsYoulaItemVkAuthor, (i12 & 32) != 0 ? null : str15, (i12 & 64) != 0 ? null : str16, (i12 & 128) != 0 ? null : str17, (i12 & 256) != 0 ? null : classifiedsYoulaItemOnClickOptions, (i12 & 512) != 0 ? null : bool3, (i12 & 1024) != 0 ? null : list5, (i12 & 2048) != 0 ? null : photosPhoto);
    }
}
