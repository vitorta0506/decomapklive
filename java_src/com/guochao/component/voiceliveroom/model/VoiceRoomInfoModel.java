package com.guochao.component.voiceliveroom.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import b7.b;
import com.google.gson.annotations.SerializedName;
import com.guochao.component.liveroom.R$string;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.tencent.xmagic.XmagicConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\bu\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 ±\u00012\u00020\u0001:\u0002±\u0001B\u0089\u0003\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\f\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\b\b\u0002\u0010#\u001a\u00020\u0003\u0012\b\b\u0002\u0010$\u001a\u00020\u0003\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010*\u001a\u00020\u0003¢\u0006\u0002\u0010+J\n\u0010\u0082\u0001\u001a\u00020\u0003HÆ\u0003J\u0012\u0010\u0083\u0001\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\fHÆ\u0003J\n\u0010\u0084\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0013HÆ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0013HÆ\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0013HÆ\u0003J\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0013HÆ\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0003HÆ\u0003J\u0012\u0010\u0093\u0001\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\fHÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\"HÆ\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010&HÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0002\u00105J\u0011\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0002\u00105J\u0011\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0002\u00105J\n\u0010\u009c\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0012\u0010¡\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fHÆ\u0003J\u0012\u0010¢\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\fHÆ\u0003J\u0094\u0003\u0010£\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\f2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f2\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00132\b\b\u0002\u0010\u0019\u001a\u00020\u00132\b\b\u0002\u0010\u001a\u001a\u00020\u00052\b\b\u0002\u0010\u001b\u001a\u00020\u00132\b\b\u0002\u0010\u001c\u001a\u00020\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u001e\u001a\u00020\u00032\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010*\u001a\u00020\u0003HÆ\u0001¢\u0006\u0003\u0010¤\u0001J\n\u0010¥\u0001\u001a\u00020\u0003HÖ\u0001J\u0017\u0010¦\u0001\u001a\u00030§\u00012\n\u0010¨\u0001\u001a\u0005\u0018\u00010©\u0001HÖ\u0003J\n\u0010ª\u0001\u001a\u00020\u0003HÖ\u0001J\n\u0010«\u0001\u001a\u00020\u0005HÖ\u0001J\u001e\u0010¬\u0001\u001a\u00030\u00ad\u00012\b\u0010®\u0001\u001a\u00030¯\u00012\u0007\u0010°\u0001\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0017\u00100\u001a\b\u0012\u0004\u0012\u0002010\f8F¢\u0006\u0006\u001a\u0004\b2\u00103R\u001e\u0010(\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u00108\u001a\u0004\b4\u00105\"\u0004\b6\u00107R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010-\"\u0004\b:\u0010/R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010-\"\u0004\b<\u0010/R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010-\"\u0004\b>\u0010/R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001a\u0010\u0019\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010D\"\u0004\bH\u0010FR\u001a\u0010\u001a\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010-\"\u0004\bJ\u0010/R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010@\"\u0004\bL\u0010BR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010@\"\u0004\bN\u0010BR\u001e\u0010'\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u00108\u001a\u0004\bO\u00105\"\u0004\bP\u00107R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010@\"\u0004\bR\u0010BR\u001a\u0010\u0016\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010@\"\u0004\bT\u0010BR\u001a\u0010\u001e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010@\"\u0004\bV\u0010BR&\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u00103\"\u0004\bX\u0010YR\u001a\u0010$\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010@\"\u0004\b[\u0010BR\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010@\"\u0004\b]\u0010BR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010-\"\u0004\b_\u0010/R\u001e\u0010)\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u00108\u001a\u0004\b`\u00105\"\u0004\ba\u00107R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u001a\u0010*\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010@\"\u0004\bg\u0010BR\u001a\u0010#\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010@\"\u0004\bi\u0010BR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010-\"\u0004\bk\u0010/R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u00103\"\u0004\bq\u0010YR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\br\u00103\"\u0004\bs\u0010YR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bt\u00103\"\u0004\bu\u0010YR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bv\u0010D\"\u0004\bw\u0010FR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bx\u0010-\"\u0004\by\u0010/R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bz\u0010D\"\u0004\b{\u0010FR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b|\u0010-\"\u0004\b}\u0010/R\u0019\u0010~\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u007f\u00103R\u001c\u0010\u001c\u001a\u00020\u0003X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0080\u0001\u0010@\"\u0005\b\u0081\u0001\u0010B¨\u0006²\u0001"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "Landroid/os/Parcelable;", "id", "", Contants.USER_ID, "", "chatGroupId", "roomId", "title", "coverImgUrl", "notice", "tagIds", "", "tagConfs", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;", "tagNames", "level", "experienceValue", "ticket", "", XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID, "backImgUrl", "memberPrice", "freezeStatus", "expireUnfreezeTime", "expireFreezeTime", "freezeReason", "updateTime", "visitorCount", "countryImg", "microCount", "microList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "signInfo", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;", "roleType", "microType", "owner", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "kickEndTime", "banEndTime", "offlineTime", "responseCode", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V", "getBackImgUrl", "()Ljava/lang/String;", "setBackImgUrl", "(Ljava/lang/String;)V", "backgroundImageUrls", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;", "getBackgroundImageUrls", "()Ljava/util/List;", "getBanEndTime", "()Ljava/lang/Long;", "setBanEndTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getChatGroupId", "setChatGroupId", "getCountryImg", "setCountryImg", "getCoverImgUrl", "setCoverImgUrl", "getExperienceValue", "()I", "setExperienceValue", "(I)V", "getExpireFreezeTime", "()J", "setExpireFreezeTime", "(J)V", "getExpireUnfreezeTime", "setExpireUnfreezeTime", "getFreezeReason", "setFreezeReason", "getFreezeStatus", "setFreezeStatus", "getId", "setId", "getKickEndTime", "setKickEndTime", "getLevel", "setLevel", "getMemberPrice", "setMemberPrice", "getMicroCount", "setMicroCount", "getMicroList", "setMicroList", "(Ljava/util/List;)V", "getMicroType", "setMicroType", "getNature", "setNature", "getNotice", "setNotice", "getOfflineTime", "setOfflineTime", "getOwner", "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "setOwner", "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;)V", "getResponseCode", "setResponseCode", "getRoleType", "setRoleType", "getRoomId", "setRoomId", "getSignInfo", "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;", "setSignInfo", "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;)V", "getTagConfs", "setTagConfs", "getTagIds", "setTagIds", "getTagNames", "setTagNames", "getTicket", "setTicket", "getTitle", "setTitle", "getUpdateTime", "setUpdateTime", "getUserId", "setUserId", "userListOnSeat", "getUserListOnSeat", "getVisitorCount", "setVisitorCount", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomInfoModel implements Parcelable {
    public static final int MICRO_TYPE_ALL = 1;
    public static final int MICRO_TYPE_MEMBER = 2;
    public static final int NATURE_TYPE_OPEN = 1;
    public static final int NATURE_TYPE_PRIVATE = 2;
    public static final int TYPE_ADMIN = 10;
    public static final int TYPE_AUDIENCE = 30;
    public static final int TYPE_MEMBER = 20;
    public static final int TYPE_OWNER = 1;
    @Nullable
    private String backImgUrl;
    @Nullable
    private Long banEndTime;
    @SerializedName("imGroupId")
    @Nullable
    private String chatGroupId;
    @Nullable
    private String countryImg;
    @Nullable
    private String coverImgUrl;
    private int experienceValue;
    private long expireFreezeTime;
    private long expireUnfreezeTime;
    @NotNull
    private String freezeReason;
    private int freezeStatus;

    /* renamed from: id  reason: collision with root package name */
    private int f15984id;
    @Nullable
    private Long kickEndTime;
    private int level;
    private int memberPrice;
    private int microCount;
    @SerializedName(alternate = {"microList"}, value = "micros")
    @Nullable
    private List<VoiceRoomUserOnSeatModel> microList;
    private int microType;
    private int nature;
    @Nullable
    private String notice;
    @Nullable
    private Long offlineTime;
    @Nullable
    private VoiceRoomMemberModel owner;
    private int responseCode;
    private int roleType;
    @Nullable
    private String roomId;
    @Nullable
    private VoiceRoomSeatTokenModel signInfo;
    @Nullable
    private List<VoiceRoomClassifyModel> tagConfs;
    @Nullable
    private List<Integer> tagIds;
    @Nullable
    private List<String> tagNames;
    private long ticket;
    @Nullable
    private String title;
    private long updateTime;
    @Nullable
    private String userId;
    private int visitorCount;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<VoiceRoomInfoModel> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Companion;", "", "()V", "MICRO_TYPE_ALL", "", "MICRO_TYPE_MEMBER", "NATURE_TYPE_OPEN", "NATURE_TYPE_PRIVATE", "TYPE_ADMIN", "TYPE_AUDIENCE", "TYPE_MEMBER", "TYPE_OWNER", "formatFreezeTime", "", "context", "Landroid/content/Context;", CrashHianalyticsData.TIME, "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String formatFreezeTime(@NotNull Context context, long j10) {
            Intrinsics.checkNotNullParameter(context, "context");
            long j11 = 60;
            long j12 = ((j10 / 1000) / j11) / j11;
            if (j12 > 24) {
                String string = context.getString(R$string.voice_room_freeze_day, String.valueOf(j12 / 24));
                Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.stri… / 1000 / 60 / 60 / 24}\")");
                return string;
            }
            String string2 = context.getString(R$string.voice_room_freeze_hour, String.valueOf(j12));
            Intrinsics.checkNotNullExpressionValue(string2, "context.getString(R.stri…{time / 1000 / 60 / 60}\")");
            return string2;
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomInfoModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomInfoModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            long j10;
            ArrayList arrayList3;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            int readInt = parcel.readInt();
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt2 = parcel.readInt();
                arrayList = new ArrayList(readInt2);
                for (int i9 = 0; i9 != readInt2; i9++) {
                    arrayList.add(Integer.valueOf(parcel.readInt()));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int readInt3 = parcel.readInt();
                arrayList2 = new ArrayList(readInt3);
                for (int i10 = 0; i10 != readInt3; i10++) {
                    arrayList2.add(VoiceRoomClassifyModel.CREATOR.createFromParcel(parcel));
                }
            }
            ArrayList<String> createStringArrayList = parcel.createStringArrayList();
            int readInt4 = parcel.readInt();
            int readInt5 = parcel.readInt();
            long readLong = parcel.readLong();
            int readInt6 = parcel.readInt();
            String readString7 = parcel.readString();
            int readInt7 = parcel.readInt();
            int readInt8 = parcel.readInt();
            long readLong2 = parcel.readLong();
            long readLong3 = parcel.readLong();
            String readString8 = parcel.readString();
            long readLong4 = parcel.readLong();
            int readInt9 = parcel.readInt();
            String readString9 = parcel.readString();
            int readInt10 = parcel.readInt();
            if (parcel.readInt() == 0) {
                j10 = readLong;
                arrayList3 = null;
            } else {
                int readInt11 = parcel.readInt();
                ArrayList arrayList4 = new ArrayList(readInt11);
                j10 = readLong;
                int i11 = 0;
                while (i11 != readInt11) {
                    arrayList4.add(VoiceRoomUserOnSeatModel.CREATOR.createFromParcel(parcel));
                    i11++;
                    readInt11 = readInt11;
                }
                arrayList3 = arrayList4;
            }
            return new VoiceRoomInfoModel(readInt, readString, readString2, readString3, readString4, readString5, readString6, arrayList, arrayList2, createStringArrayList, readInt4, readInt5, j10, readInt6, readString7, readInt7, readInt8, readLong2, readLong3, readString8, readLong4, readInt9, readString9, readInt10, arrayList3, parcel.readInt() == 0 ? null : VoiceRoomSeatTokenModel.CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readInt(), parcel.readInt() == 0 ? null : VoiceRoomMemberModel.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomInfoModel[] newArray(int i9) {
            return new VoiceRoomInfoModel[i9];
        }
    }

    public VoiceRoomInfoModel() {
        this(0, null, null, null, null, null, null, null, null, null, 0, 0, 0L, 0, null, 0, 0, 0L, 0L, null, 0L, 0, null, 0, null, null, 0, 0, null, null, null, null, 0, -1, 1, null);
    }

    public VoiceRoomInfoModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable List<Integer> list, @Nullable List<VoiceRoomClassifyModel> list2, @Nullable List<String> list3, int i10, int i11, long j10, int i12, @Nullable String str7, int i13, int i14, long j11, long j12, @NotNull String freezeReason, long j13, int i15, @Nullable String str8, int i16, @Nullable List<VoiceRoomUserOnSeatModel> list4, @Nullable VoiceRoomSeatTokenModel voiceRoomSeatTokenModel, int i17, int i18, @Nullable VoiceRoomMemberModel voiceRoomMemberModel, @Nullable Long l10, @Nullable Long l11, @Nullable Long l12, int i19) {
        Intrinsics.checkNotNullParameter(freezeReason, "freezeReason");
        this.f15984id = i9;
        this.userId = str;
        this.chatGroupId = str2;
        this.roomId = str3;
        this.title = str4;
        this.coverImgUrl = str5;
        this.notice = str6;
        this.tagIds = list;
        this.tagConfs = list2;
        this.tagNames = list3;
        this.level = i10;
        this.experienceValue = i11;
        this.ticket = j10;
        this.nature = i12;
        this.backImgUrl = str7;
        this.memberPrice = i13;
        this.freezeStatus = i14;
        this.expireUnfreezeTime = j11;
        this.expireFreezeTime = j12;
        this.freezeReason = freezeReason;
        this.updateTime = j13;
        this.visitorCount = i15;
        this.countryImg = str8;
        this.microCount = i16;
        this.microList = list4;
        this.signInfo = voiceRoomSeatTokenModel;
        this.roleType = i17;
        this.microType = i18;
        this.owner = voiceRoomMemberModel;
        this.kickEndTime = l10;
        this.banEndTime = l11;
        this.offlineTime = l12;
        this.responseCode = i19;
    }

    public final int component1() {
        return this.f15984id;
    }

    @Nullable
    public final List<String> component10() {
        return this.tagNames;
    }

    public final int component11() {
        return this.level;
    }

    public final int component12() {
        return this.experienceValue;
    }

    public final long component13() {
        return this.ticket;
    }

    public final int component14() {
        return this.nature;
    }

    @Nullable
    public final String component15() {
        return this.backImgUrl;
    }

    public final int component16() {
        return this.memberPrice;
    }

    public final int component17() {
        return this.freezeStatus;
    }

    public final long component18() {
        return this.expireUnfreezeTime;
    }

    public final long component19() {
        return this.expireFreezeTime;
    }

    @Nullable
    public final String component2() {
        return this.userId;
    }

    @NotNull
    public final String component20() {
        return this.freezeReason;
    }

    public final long component21() {
        return this.updateTime;
    }

    public final int component22() {
        return this.visitorCount;
    }

    @Nullable
    public final String component23() {
        return this.countryImg;
    }

    public final int component24() {
        return this.microCount;
    }

    @Nullable
    public final List<VoiceRoomUserOnSeatModel> component25() {
        return this.microList;
    }

    @Nullable
    public final VoiceRoomSeatTokenModel component26() {
        return this.signInfo;
    }

    public final int component27() {
        return this.roleType;
    }

    public final int component28() {
        return this.microType;
    }

    @Nullable
    public final VoiceRoomMemberModel component29() {
        return this.owner;
    }

    @Nullable
    public final String component3() {
        return this.chatGroupId;
    }

    @Nullable
    public final Long component30() {
        return this.kickEndTime;
    }

    @Nullable
    public final Long component31() {
        return this.banEndTime;
    }

    @Nullable
    public final Long component32() {
        return this.offlineTime;
    }

    public final int component33() {
        return this.responseCode;
    }

    @Nullable
    public final String component4() {
        return this.roomId;
    }

    @Nullable
    public final String component5() {
        return this.title;
    }

    @Nullable
    public final String component6() {
        return this.coverImgUrl;
    }

    @Nullable
    public final String component7() {
        return this.notice;
    }

    @Nullable
    public final List<Integer> component8() {
        return this.tagIds;
    }

    @Nullable
    public final List<VoiceRoomClassifyModel> component9() {
        return this.tagConfs;
    }

    @NotNull
    public final VoiceRoomInfoModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable List<Integer> list, @Nullable List<VoiceRoomClassifyModel> list2, @Nullable List<String> list3, int i10, int i11, long j10, int i12, @Nullable String str7, int i13, int i14, long j11, long j12, @NotNull String freezeReason, long j13, int i15, @Nullable String str8, int i16, @Nullable List<VoiceRoomUserOnSeatModel> list4, @Nullable VoiceRoomSeatTokenModel voiceRoomSeatTokenModel, int i17, int i18, @Nullable VoiceRoomMemberModel voiceRoomMemberModel, @Nullable Long l10, @Nullable Long l11, @Nullable Long l12, int i19) {
        Intrinsics.checkNotNullParameter(freezeReason, "freezeReason");
        return new VoiceRoomInfoModel(i9, str, str2, str3, str4, str5, str6, list, list2, list3, i10, i11, j10, i12, str7, i13, i14, j11, j12, freezeReason, j13, i15, str8, i16, list4, voiceRoomSeatTokenModel, i17, i18, voiceRoomMemberModel, l10, l11, l12, i19);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomInfoModel) {
            VoiceRoomInfoModel voiceRoomInfoModel = (VoiceRoomInfoModel) obj;
            return this.f15984id == voiceRoomInfoModel.f15984id && Intrinsics.areEqual(this.userId, voiceRoomInfoModel.userId) && Intrinsics.areEqual(this.chatGroupId, voiceRoomInfoModel.chatGroupId) && Intrinsics.areEqual(this.roomId, voiceRoomInfoModel.roomId) && Intrinsics.areEqual(this.title, voiceRoomInfoModel.title) && Intrinsics.areEqual(this.coverImgUrl, voiceRoomInfoModel.coverImgUrl) && Intrinsics.areEqual(this.notice, voiceRoomInfoModel.notice) && Intrinsics.areEqual(this.tagIds, voiceRoomInfoModel.tagIds) && Intrinsics.areEqual(this.tagConfs, voiceRoomInfoModel.tagConfs) && Intrinsics.areEqual(this.tagNames, voiceRoomInfoModel.tagNames) && this.level == voiceRoomInfoModel.level && this.experienceValue == voiceRoomInfoModel.experienceValue && this.ticket == voiceRoomInfoModel.ticket && this.nature == voiceRoomInfoModel.nature && Intrinsics.areEqual(this.backImgUrl, voiceRoomInfoModel.backImgUrl) && this.memberPrice == voiceRoomInfoModel.memberPrice && this.freezeStatus == voiceRoomInfoModel.freezeStatus && this.expireUnfreezeTime == voiceRoomInfoModel.expireUnfreezeTime && this.expireFreezeTime == voiceRoomInfoModel.expireFreezeTime && Intrinsics.areEqual(this.freezeReason, voiceRoomInfoModel.freezeReason) && this.updateTime == voiceRoomInfoModel.updateTime && this.visitorCount == voiceRoomInfoModel.visitorCount && Intrinsics.areEqual(this.countryImg, voiceRoomInfoModel.countryImg) && this.microCount == voiceRoomInfoModel.microCount && Intrinsics.areEqual(this.microList, voiceRoomInfoModel.microList) && Intrinsics.areEqual(this.signInfo, voiceRoomInfoModel.signInfo) && this.roleType == voiceRoomInfoModel.roleType && this.microType == voiceRoomInfoModel.microType && Intrinsics.areEqual(this.owner, voiceRoomInfoModel.owner) && Intrinsics.areEqual(this.kickEndTime, voiceRoomInfoModel.kickEndTime) && Intrinsics.areEqual(this.banEndTime, voiceRoomInfoModel.banEndTime) && Intrinsics.areEqual(this.offlineTime, voiceRoomInfoModel.offlineTime) && this.responseCode == voiceRoomInfoModel.responseCode;
        }
        return false;
    }

    @Nullable
    public final String getBackImgUrl() {
        return this.backImgUrl;
    }

    @NotNull
    public final List<VoiceRoomBackgroundModel> getBackgroundImageUrls() {
        return VoiceRoomBackgroundModelKt.appStatic(this.backImgUrl);
    }

    @Nullable
    public final Long getBanEndTime() {
        return this.banEndTime;
    }

    @Nullable
    public final String getChatGroupId() {
        return this.chatGroupId;
    }

    @Nullable
    public final String getCountryImg() {
        return this.countryImg;
    }

    @Nullable
    public final String getCoverImgUrl() {
        return this.coverImgUrl;
    }

    public final int getExperienceValue() {
        return this.experienceValue;
    }

    public final long getExpireFreezeTime() {
        return this.expireFreezeTime;
    }

    public final long getExpireUnfreezeTime() {
        return this.expireUnfreezeTime;
    }

    @NotNull
    public final String getFreezeReason() {
        return this.freezeReason;
    }

    public final int getFreezeStatus() {
        return this.freezeStatus;
    }

    public final int getId() {
        return this.f15984id;
    }

    @Nullable
    public final Long getKickEndTime() {
        return this.kickEndTime;
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getMemberPrice() {
        return this.memberPrice;
    }

    public final int getMicroCount() {
        return this.microCount;
    }

    @Nullable
    public final List<VoiceRoomUserOnSeatModel> getMicroList() {
        return this.microList;
    }

    public final int getMicroType() {
        return this.microType;
    }

    public final int getNature() {
        return this.nature;
    }

    @Nullable
    public final String getNotice() {
        return this.notice;
    }

    @Nullable
    public final Long getOfflineTime() {
        return this.offlineTime;
    }

    @Nullable
    public final VoiceRoomMemberModel getOwner() {
        return this.owner;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public final int getRoleType() {
        return this.roleType;
    }

    @Nullable
    public final String getRoomId() {
        return this.roomId;
    }

    @Nullable
    public final VoiceRoomSeatTokenModel getSignInfo() {
        return this.signInfo;
    }

    @Nullable
    public final List<VoiceRoomClassifyModel> getTagConfs() {
        return this.tagConfs;
    }

    @Nullable
    public final List<Integer> getTagIds() {
        return this.tagIds;
    }

    @Nullable
    public final List<String> getTagNames() {
        return this.tagNames;
    }

    public final long getTicket() {
        return this.ticket;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    @Nullable
    public final List<VoiceRoomUserOnSeatModel> getUserListOnSeat() {
        List<VoiceRoomUserOnSeatModel> list = this.microList;
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((VoiceRoomUserOnSeatModel) obj).getOnSeat()) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        return null;
    }

    public final int getVisitorCount() {
        return this.visitorCount;
    }

    public int hashCode() {
        int i9 = this.f15984id * 31;
        String str = this.userId;
        int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.chatGroupId;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.roomId;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.title;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.coverImgUrl;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.notice;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        List<Integer> list = this.tagIds;
        int hashCode7 = (hashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        List<VoiceRoomClassifyModel> list2 = this.tagConfs;
        int hashCode8 = (hashCode7 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.tagNames;
        int hashCode9 = (((((((((hashCode8 + (list3 == null ? 0 : list3.hashCode())) * 31) + this.level) * 31) + this.experienceValue) * 31) + b.a(this.ticket)) * 31) + this.nature) * 31;
        String str7 = this.backImgUrl;
        int hashCode10 = (((((((((((((((hashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31) + this.memberPrice) * 31) + this.freezeStatus) * 31) + b.a(this.expireUnfreezeTime)) * 31) + b.a(this.expireFreezeTime)) * 31) + this.freezeReason.hashCode()) * 31) + b.a(this.updateTime)) * 31) + this.visitorCount) * 31;
        String str8 = this.countryImg;
        int hashCode11 = (((hashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31) + this.microCount) * 31;
        List<VoiceRoomUserOnSeatModel> list4 = this.microList;
        int hashCode12 = (hashCode11 + (list4 == null ? 0 : list4.hashCode())) * 31;
        VoiceRoomSeatTokenModel voiceRoomSeatTokenModel = this.signInfo;
        int hashCode13 = (((((hashCode12 + (voiceRoomSeatTokenModel == null ? 0 : voiceRoomSeatTokenModel.hashCode())) * 31) + this.roleType) * 31) + this.microType) * 31;
        VoiceRoomMemberModel voiceRoomMemberModel = this.owner;
        int hashCode14 = (hashCode13 + (voiceRoomMemberModel == null ? 0 : voiceRoomMemberModel.hashCode())) * 31;
        Long l10 = this.kickEndTime;
        int hashCode15 = (hashCode14 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.banEndTime;
        int hashCode16 = (hashCode15 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.offlineTime;
        return ((hashCode16 + (l12 != null ? l12.hashCode() : 0)) * 31) + this.responseCode;
    }

    public final void setBackImgUrl(@Nullable String str) {
        this.backImgUrl = str;
    }

    public final void setBanEndTime(@Nullable Long l10) {
        this.banEndTime = l10;
    }

    public final void setChatGroupId(@Nullable String str) {
        this.chatGroupId = str;
    }

    public final void setCountryImg(@Nullable String str) {
        this.countryImg = str;
    }

    public final void setCoverImgUrl(@Nullable String str) {
        this.coverImgUrl = str;
    }

    public final void setExperienceValue(int i9) {
        this.experienceValue = i9;
    }

    public final void setExpireFreezeTime(long j10) {
        this.expireFreezeTime = j10;
    }

    public final void setExpireUnfreezeTime(long j10) {
        this.expireUnfreezeTime = j10;
    }

    public final void setFreezeReason(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.freezeReason = str;
    }

    public final void setFreezeStatus(int i9) {
        this.freezeStatus = i9;
    }

    public final void setId(int i9) {
        this.f15984id = i9;
    }

    public final void setKickEndTime(@Nullable Long l10) {
        this.kickEndTime = l10;
    }

    public final void setLevel(int i9) {
        this.level = i9;
    }

    public final void setMemberPrice(int i9) {
        this.memberPrice = i9;
    }

    public final void setMicroCount(int i9) {
        this.microCount = i9;
    }

    public final void setMicroList(@Nullable List<VoiceRoomUserOnSeatModel> list) {
        this.microList = list;
    }

    public final void setMicroType(int i9) {
        this.microType = i9;
    }

    public final void setNature(int i9) {
        this.nature = i9;
    }

    public final void setNotice(@Nullable String str) {
        this.notice = str;
    }

    public final void setOfflineTime(@Nullable Long l10) {
        this.offlineTime = l10;
    }

    public final void setOwner(@Nullable VoiceRoomMemberModel voiceRoomMemberModel) {
        this.owner = voiceRoomMemberModel;
    }

    public final void setResponseCode(int i9) {
        this.responseCode = i9;
    }

    public final void setRoleType(int i9) {
        this.roleType = i9;
    }

    public final void setRoomId(@Nullable String str) {
        this.roomId = str;
    }

    public final void setSignInfo(@Nullable VoiceRoomSeatTokenModel voiceRoomSeatTokenModel) {
        this.signInfo = voiceRoomSeatTokenModel;
    }

    public final void setTagConfs(@Nullable List<VoiceRoomClassifyModel> list) {
        this.tagConfs = list;
    }

    public final void setTagIds(@Nullable List<Integer> list) {
        this.tagIds = list;
    }

    public final void setTagNames(@Nullable List<String> list) {
        this.tagNames = list;
    }

    public final void setTicket(long j10) {
        this.ticket = j10;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setUpdateTime(long j10) {
        this.updateTime = j10;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }

    public final void setVisitorCount(int i9) {
        this.visitorCount = i9;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomInfoModel(id=" + this.f15984id + ", userId=" + this.userId + ", chatGroupId=" + this.chatGroupId + ", roomId=" + this.roomId + ", title=" + this.title + ", coverImgUrl=" + this.coverImgUrl + ", notice=" + this.notice + ", tagIds=" + this.tagIds + ", tagConfs=" + this.tagConfs + ", tagNames=" + this.tagNames + ", level=" + this.level + ", experienceValue=" + this.experienceValue + ", ticket=" + this.ticket + ", nature=" + this.nature + ", backImgUrl=" + this.backImgUrl + ", memberPrice=" + this.memberPrice + ", freezeStatus=" + this.freezeStatus + ", expireUnfreezeTime=" + this.expireUnfreezeTime + ", expireFreezeTime=" + this.expireFreezeTime + ", freezeReason=" + this.freezeReason + ", updateTime=" + this.updateTime + ", visitorCount=" + this.visitorCount + ", countryImg=" + this.countryImg + ", microCount=" + this.microCount + ", microList=" + this.microList + ", signInfo=" + this.signInfo + ", roleType=" + this.roleType + ", microType=" + this.microType + ", owner=" + this.owner + ", kickEndTime=" + this.kickEndTime + ", banEndTime=" + this.banEndTime + ", offlineTime=" + this.offlineTime + ", responseCode=" + this.responseCode + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.f15984id);
        out.writeString(this.userId);
        out.writeString(this.chatGroupId);
        out.writeString(this.roomId);
        out.writeString(this.title);
        out.writeString(this.coverImgUrl);
        out.writeString(this.notice);
        List<Integer> list = this.tagIds;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (Integer num : list) {
                out.writeInt(num.intValue());
            }
        }
        List<VoiceRoomClassifyModel> list2 = this.tagConfs;
        if (list2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list2.size());
            for (VoiceRoomClassifyModel voiceRoomClassifyModel : list2) {
                voiceRoomClassifyModel.writeToParcel(out, i9);
            }
        }
        out.writeStringList(this.tagNames);
        out.writeInt(this.level);
        out.writeInt(this.experienceValue);
        out.writeLong(this.ticket);
        out.writeInt(this.nature);
        out.writeString(this.backImgUrl);
        out.writeInt(this.memberPrice);
        out.writeInt(this.freezeStatus);
        out.writeLong(this.expireUnfreezeTime);
        out.writeLong(this.expireFreezeTime);
        out.writeString(this.freezeReason);
        out.writeLong(this.updateTime);
        out.writeInt(this.visitorCount);
        out.writeString(this.countryImg);
        out.writeInt(this.microCount);
        List<VoiceRoomUserOnSeatModel> list3 = this.microList;
        if (list3 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list3.size());
            for (VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel : list3) {
                voiceRoomUserOnSeatModel.writeToParcel(out, i9);
            }
        }
        VoiceRoomSeatTokenModel voiceRoomSeatTokenModel = this.signInfo;
        if (voiceRoomSeatTokenModel == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            voiceRoomSeatTokenModel.writeToParcel(out, i9);
        }
        out.writeInt(this.roleType);
        out.writeInt(this.microType);
        VoiceRoomMemberModel voiceRoomMemberModel = this.owner;
        if (voiceRoomMemberModel == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            voiceRoomMemberModel.writeToParcel(out, i9);
        }
        Long l10 = this.kickEndTime;
        if (l10 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l10.longValue());
        }
        Long l11 = this.banEndTime;
        if (l11 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l11.longValue());
        }
        Long l12 = this.offlineTime;
        if (l12 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l12.longValue());
        }
        out.writeInt(this.responseCode);
    }

    public /* synthetic */ VoiceRoomInfoModel(int i9, String str, String str2, String str3, String str4, String str5, String str6, List list, List list2, List list3, int i10, int i11, long j10, int i12, String str7, int i13, int i14, long j11, long j12, String str8, long j13, int i15, String str9, int i16, List list4, VoiceRoomSeatTokenModel voiceRoomSeatTokenModel, int i17, int i18, VoiceRoomMemberModel voiceRoomMemberModel, Long l10, Long l11, Long l12, int i19, int i20, int i21, DefaultConstructorMarker defaultConstructorMarker) {
        this((i20 & 1) != 0 ? -1 : i9, (i20 & 2) != 0 ? "" : str, (i20 & 4) != 0 ? "" : str2, (i20 & 8) != 0 ? "" : str3, (i20 & 16) != 0 ? "" : str4, (i20 & 32) != 0 ? "" : str5, (i20 & 64) != 0 ? "" : str6, (i20 & 128) != 0 ? null : list, (i20 & 256) != 0 ? null : list2, (i20 & 512) != 0 ? null : list3, (i20 & 1024) != 0 ? 1 : i10, (i20 & 2048) != 0 ? 0 : i11, (i20 & 4096) != 0 ? 0L : j10, (i20 & 8192) != 0 ? 1 : i12, (i20 & 16384) != 0 ? "" : str7, (i20 & 32768) != 0 ? 0 : i13, (i20 & 65536) != 0 ? 1 : i14, (i20 & 131072) != 0 ? 0L : j11, (i20 & 262144) != 0 ? 0L : j12, (i20 & 524288) != 0 ? "" : str8, (i20 & 1048576) != 0 ? 0L : j13, (i20 & 2097152) == 0 ? i15 : 0, (i20 & 4194304) == 0 ? str9 : "", (i20 & 8388608) != 0 ? 8 : i16, (i20 & 16777216) != 0 ? null : list4, (i20 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? null : voiceRoomSeatTokenModel, (i20 & 67108864) != 0 ? 30 : i17, (i20 & 134217728) != 0 ? 2 : i18, (i20 & 268435456) != 0 ? null : voiceRoomMemberModel, (i20 & 536870912) != 0 ? 0L : l10, (i20 & BasicMeasure.EXACTLY) != 0 ? 0L : l11, (i20 & Integer.MIN_VALUE) != 0 ? 0L : l12, (i21 & 1) == 0 ? i19 : 1);
    }
}
