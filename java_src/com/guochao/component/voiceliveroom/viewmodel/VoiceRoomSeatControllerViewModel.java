package com.guochao.component.voiceliveroom.viewmodel;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelKt;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.VoiceRoomMessageDispatcher;
import com.guochao.component.voiceliveroom.helper.VoiceRoomGCIMMessageHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomCreateRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberFeeConf;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomViewerListModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomViewerModel;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import com.guochao.faceshow.aaspring.beans.EventMainActivityDestroy;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.Contants;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000¤\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u00012\u00020\u0002:\u0002¨\u0001B\t¢\u0006\u0006\b¦\u0001\u0010§\u0001J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u001a\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\r\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u001c\u0010\u0011\u001a\u00020\t2\b\b\u0002\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u0003H\u0002J\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003J$\u0010\u001f\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ$\u0010 \u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ\u000e\u0010!\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0019J\u001a\u0010&\u001a\u00020\t2\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u0007J \u0010(\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u00032\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ \u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u00032\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ \u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u00032\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001dJ\u0018\u0010.\u001a\u00020\t2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010\u001dJ\u0010\u00101\u001a\u00020\t2\u0006\u00100\u001a\u00020/H\u0007J\b\u00102\u001a\u00020\tH\u0014J\u0010\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u000203H\u0016J\u0006\u00106\u001a\u00020\tJ<\u0010=\u001a\u00020\t2\u0006\u00108\u001a\u0002072\"\u0010<\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0:\u0012\u0006\u0012\u0004\u0018\u00010;09ø\u0001\u0000¢\u0006\u0004\b=\u0010>J\u000e\u0010@\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u0003J\u000e\u0010B\u001a\u00020\t2\u0006\u00108\u001a\u00020AJ\u000e\u0010D\u001a\u00020\t2\u0006\u00108\u001a\u00020CJ\u000e\u0010F\u001a\u00020\t2\u0006\u00108\u001a\u00020EJ\u000e\u0010H\u001a\u00020\t2\u0006\u00104\u001a\u00020GJ\u000e\u0010J\u001a\u00020\t2\u0006\u00104\u001a\u00020IJ\u000e\u0010L\u001a\u00020\t2\u0006\u00108\u001a\u00020KJ\u000e\u0010N\u001a\u00020\t2\u0006\u00108\u001a\u00020MJ\u000e\u0010P\u001a\u00020\t2\u0006\u00108\u001a\u00020OJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u00108\u001a\u00020QJ\u000e\u0010S\u001a\u00020\t2\u0006\u00108\u001a\u00020RJ\u000e\u0010U\u001a\u00020\t2\u0006\u00108\u001a\u00020TJ\u000e\u0010W\u001a\u00020\t2\u0006\u00108\u001a\u00020VJ\u000e\u0010Y\u001a\u00020\t2\u0006\u00108\u001a\u00020XJ\u000e\u0010[\u001a\u00020\t2\u0006\u00108\u001a\u00020ZJ\u000e\u0010]\u001a\u00020\t2\u0006\u00108\u001a\u00020\\JB\u0010_\u001a\u00020\t2\u0006\u00108\u001a\u00020\u00192(\u0010<\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030^\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0:\u0012\u0006\u0012\u0004\u0018\u00010;09ø\u0001\u0000¢\u0006\u0004\b_\u0010`J\u0006\u0010a\u001a\u00020\tJ\u0006\u0010b\u001a\u00020\tJ\u0006\u0010%\u001a\u00020\tJ\u000e\u0010d\u001a\u00020\t2\u0006\u00104\u001a\u00020cJ\u000e\u0010f\u001a\u00020\t2\u0006\u00104\u001a\u00020eJ\u000e\u0010h\u001a\u00020\t2\u0006\u00104\u001a\u00020gJ\u000e\u0010j\u001a\u00020\t2\u0006\u00104\u001a\u00020iR\u001c\u0010l\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\u001f\u0010o\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050n8\u0006¢\u0006\f\n\u0004\bo\u0010p\u001a\u0004\bq\u0010rR\u001a\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00070s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bt\u0010uR\u001a\u0010v\u001a\b\u0012\u0004\u0012\u00020\u00070k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010mR\u001d\u0010w\u001a\b\u0012\u0004\u0012\u00020\u00070n8\u0006¢\u0006\f\n\u0004\bw\u0010p\u001a\u0004\bx\u0010rR\u0014\u0010z\u001a\u00020y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bz\u0010{R \u0010~\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020}0|0k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010mR$\u0010\u007f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020}0|0n8\u0006¢\u0006\r\n\u0004\b\u007f\u0010p\u001a\u0005\b\u0080\u0001\u0010rR\u0018\u0010\u0082\u0001\u001a\u00030\u0081\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001c\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030k8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010mR\u0019\u0010\u0085\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R)\u0010\u0087\u0001\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001R)\u0010\u008d\u0001\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008d\u0001\u0010\u0086\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001c\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070k8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0092\u0001\u0010mR!\u0010\u0093\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070k8\u0006¢\u0006\u000f\n\u0005\b\u0093\u0001\u0010m\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R \u0010\u0096\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030n8\u0006¢\u0006\u000e\n\u0005\b\u0096\u0001\u0010p\u001a\u0005\b\u0097\u0001\u0010rR0\u0010\u0099\u0001\u001a\t\u0018\u00010\u0098\u0001R\u00020\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0099\u0001\u0010\u009a\u0001\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R,\u0010 \u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b \u0001\u0010¡\u0001\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0006\b¤\u0001\u0010¥\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006©\u0001"}, d2 = {"Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "", "findSelf", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "voiceRoomInfoModel", "", "removeSelf", "", "checkIfEnterTRTCRoomAsAudience", "", Contants.USER_ID, "removeSeatValueOnUserId", "getSeatIndexForUserId", "isAddd", AnimatedPasterJsonConfig.CONFIG_COUNT, "viewerCountChange", "roomId", "chatGroupId", "loadRoomDetailInfoAndAddGroup", "seatIndex", "addSelfToSeat", "takeSeat", "leaveSeat", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "findUserOnSeat", "lockSeat", "unLockSeat", "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;", "gcValueCallback", "closeMicro", "openMicro", "removeSeatValueOnSeatIndex", "userOnSeatModel", "addUserOnSeat", "size", "refresh", "loadViewerList", "microType", "changeMicMode", "mode", "changeRoomPrivateMode", "fee", "changeRoomFee", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;", "getRoomFeeConf", "Lcom/guochao/faceshow/aaspring/beans/EventMainActivityDestroy;", "event", "mainActivityDestroy", "onCleared", "Lo7/a;", "gcimMessage", "dispatchGCIMMessage", "audioSwitchClick", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", NotificationCompat.CATEGORY_CALL, "saveVoiceRoomSetting", "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lkotlin/jvm/functions/Function2;)V", "roleType", "setRoleType", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;", "userEnterRoom", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;", "userLeaveRoom", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;", "userSwitchSeat", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;", "feeChange", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;", "roomModeChanged", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;", "updateFirstViewerData", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;", "reSet", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;", "freeze", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;", "unlockSeat", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;", "cmdCloseMicro", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;", "cmdOpenMicro", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;", "seatListRefresh", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;", "roomInfoRefresh", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;", "roomInfoChange", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "kickUser", "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Lkotlin/jvm/functions/Function2;)V", "checkLeaveRoom", "destroyCurrentRoom", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;", "checkKickUser", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;", "checkAdminUser", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;", "checkRemoveAdminUser", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;", "checkRemoveMember", "Landroidx/lifecycle/MutableLiveData;", "_roomInfo", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/LiveData;", "roomInfo", "Landroidx/lifecycle/LiveData;", "getRoomInfo", "()Landroidx/lifecycle/LiveData;", "Landroidx/lifecycle/Observer;", "audioObserver", "Landroidx/lifecycle/Observer;", "_audioSwitch", "audioSwitch", "getAudioSwitch", "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;", "messageHelper", "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;", "_viewerList", "viewerList", "getViewerList", "Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;", "gcimMessageDispatcher", "Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;", "_viewerCount", "isViewerLoad", "Z", "viewerPage", "I", "getViewerPage", "()I", "setViewerPage", "(I)V", "viewerIsLoading", "getViewerIsLoading", "()Z", "setViewerIsLoading", "(Z)V", "_viewerHasMore", "viewerHasMore", "getViewerHasMore", "()Landroidx/lifecycle/MutableLiveData;", "viewerCount", "getViewerCount", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;", "addGroupTask", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;", "getAddGroupTask", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;", "setAddGroupTask", "(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;)V", "Lkotlinx/coroutines/Job;", "lastDetailTask", "Lkotlinx/coroutines/Job;", "getLastDetailTask", "()Lkotlinx/coroutines/Job;", "setLastDetailTask", "(Lkotlinx/coroutines/Job;)V", "<init>", "()V", "AddGroupTask", "component_liveroom_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel extends TRTCVoiceRoomSeatControllerViewModel implements GCIMMessageDispatcher {
    @NotNull
    private final MutableLiveData<Boolean> _audioSwitch;
    @NotNull
    private final MutableLiveData<VoiceRoomInfoModel> _roomInfo;
    @NotNull
    private final MutableLiveData<Integer> _viewerCount;
    @NotNull
    private final MutableLiveData<Boolean> _viewerHasMore;
    @NotNull
    private final MutableLiveData<List<VoiceRoomViewerModel>> _viewerList;
    @Nullable
    private AddGroupTask addGroupTask;
    @NotNull
    private final Observer<Boolean> audioObserver;
    @NotNull
    private final LiveData<Boolean> audioSwitch;
    @NotNull
    private final VoiceRoomMessageDispatcher gcimMessageDispatcher;
    private boolean isViewerLoad;
    @Nullable
    private Job lastDetailTask;
    @NotNull
    private final VoiceRoomGCIMMessageHelper messageHelper;
    @NotNull
    private final LiveData<VoiceRoomInfoModel> roomInfo;
    @NotNull
    private final LiveData<Integer> viewerCount;
    @NotNull
    private final MutableLiveData<Boolean> viewerHasMore;
    private boolean viewerIsLoading;
    @NotNull
    private final LiveData<List<VoiceRoomViewerModel>> viewerList;
    private int viewerPage;

    public VoiceRoomSeatControllerViewModel() {
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = new MutableLiveData<>();
        this._roomInfo = mutableLiveData;
        this.roomInfo = mutableLiveData;
        Observer<Boolean> observer = new Observer() { // from class: com.guochao.component.voiceliveroom.viewmodel.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomSeatControllerViewModel.m330audioObserver$lambda0(VoiceRoomSeatControllerViewModel.this, (Boolean) obj);
            }
        };
        this.audioObserver = observer;
        Boolean bool = Boolean.TRUE;
        MutableLiveData<Boolean> mutableLiveData2 = new MutableLiveData<>(bool);
        mutableLiveData2.observeForever(observer);
        this._audioSwitch = mutableLiveData2;
        this.audioSwitch = mutableLiveData2;
        this.messageHelper = new VoiceRoomGCIMMessageHelper(this);
        MutableLiveData<List<VoiceRoomViewerModel>> mutableLiveData3 = new MutableLiveData<>(new ArrayList());
        this._viewerList = mutableLiveData3;
        this.viewerList = mutableLiveData3;
        VoiceRoomMessageDispatcher voiceRoomMessageDispatcher = new VoiceRoomMessageDispatcher();
        voiceRoomMessageDispatcher.registerDispatcher(this);
        this.gcimMessageDispatcher = voiceRoomMessageDispatcher;
        MutableLiveData<Integer> mutableLiveData4 = new MutableLiveData<>(0);
        this._viewerCount = mutableLiveData4;
        this.viewerPage = 1;
        MutableLiveData<Boolean> mutableLiveData5 = new MutableLiveData<>(bool);
        this._viewerHasMore = mutableLiveData5;
        this.viewerHasMore = mutableLiveData5;
        this.viewerCount = mutableLiveData4;
        EventBus.getDefault().register(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: audioObserver$lambda-0  reason: not valid java name */
    public static final void m330audioObserver$lambda0(VoiceRoomSeatControllerViewModel this$0, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getTrtcCloud().muteAllRemoteAudio(!bool.booleanValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void changeMicMode$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, int i9, GCValueCallback gCValueCallback, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            gCValueCallback = null;
        }
        voiceRoomSeatControllerViewModel.changeMicMode(i9, gCValueCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void changeRoomFee$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, int i9, GCValueCallback gCValueCallback, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            gCValueCallback = null;
        }
        voiceRoomSeatControllerViewModel.changeRoomFee(i9, gCValueCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void changeRoomPrivateMode$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, int i9, GCValueCallback gCValueCallback, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            gCValueCallback = null;
        }
        voiceRoomSeatControllerViewModel.changeRoomPrivateMode(i9, gCValueCallback);
    }

    private final void checkIfEnterTRTCRoomAsAudience(VoiceRoomInfoModel voiceRoomInfoModel, boolean z10) {
        Object obj;
        List<VoiceRoomUserOnSeatModel> mutableList;
        List<VoiceRoomUserOnSeatModel> microList = voiceRoomInfoModel.getMicroList();
        if (microList == null) {
            return;
        }
        Iterator<T> it = microList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((VoiceRoomUserOnSeatModel) obj).getOnSeat()) {
                break;
            }
        }
        boolean z11 = obj != null;
        if (z10) {
            Iterator<VoiceRoomUserOnSeatModel> it2 = microList.iterator();
            int i9 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i9 = -1;
                    break;
                }
                VoiceRoomUserOnSeatModel next = it2.next();
                String userId = next.getUserId();
                UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                if (Intrinsics.areEqual(userId, current != null ? current.getUserId() : null) && next.getOnSeat()) {
                    break;
                }
                i9++;
            }
            if (i9 >= 0) {
                leaveSeat(microList.get(i9).getSeatIndex());
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) microList);
                mutableList.remove(i9);
                voiceRoomInfoModel.setMicroList(mutableList);
            }
        }
        if (z11 && getLastSeatIndex() == -1) {
            String roomId = voiceRoomInfoModel.getRoomId();
            if (roomId == null) {
                roomId = "";
            }
            enterTRTCRoom(roomId, voiceRoomInfoModel.getSignInfo(), false, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void checkIfEnterTRTCRoomAsAudience$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, VoiceRoomInfoModel voiceRoomInfoModel, boolean z10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            z10 = true;
        }
        voiceRoomSeatControllerViewModel.checkIfEnterTRTCRoomAsAudience(voiceRoomInfoModel, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void closeMicro$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, String str, GCValueCallback gCValueCallback, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            str = current != null ? current.getUserId() : null;
        }
        if ((i9 & 2) != 0) {
            gCValueCallback = null;
        }
        voiceRoomSeatControllerViewModel.closeMicro(str, gCValueCallback);
    }

    private final int findSelf() {
        List<VoiceRoomUserOnSeatModel> microList;
        Object obj;
        Object obj2;
        boolean z10;
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        int microCount = value != null ? value.getMicroCount() : 8;
        VoiceRoomInfoModel value2 = this._roomInfo.getValue();
        if (value2 == null || (microList = value2.getMicroList()) == null) {
            return 1;
        }
        Iterator<T> it = microList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            String userId = ((VoiceRoomUserOnSeatModel) obj).getUserId();
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            if (Intrinsics.areEqual(userId, current != null ? current.getUserId() : null)) {
                break;
            }
        }
        if (((VoiceRoomUserOnSeatModel) obj) != null) {
            return -2;
        }
        if (1 <= microCount) {
            int i9 = 1;
            while (true) {
                Iterator<T> it2 = microList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it2.next();
                    if (((VoiceRoomUserOnSeatModel) obj2).getSeatIndex() == i9) {
                        z10 = true;
                        continue;
                    } else {
                        z10 = false;
                        continue;
                    }
                    if (z10) {
                        break;
                    }
                }
                VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = (VoiceRoomUserOnSeatModel) obj2;
                if (voiceRoomUserOnSeatModel == null || !voiceRoomUserOnSeatModel.getOnSeat()) {
                    break;
                } else if (i9 == microCount) {
                    return -1;
                } else {
                    i9++;
                }
            }
            return i9;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void getRoomFeeConf$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, GCValueCallback gCValueCallback, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            gCValueCallback = null;
        }
        voiceRoomSeatControllerViewModel.getRoomFeeConf(gCValueCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSeatIndexForUserId(String str) {
        List<VoiceRoomUserOnSeatModel> microList;
        Object obj;
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        if (value != null && (microList = value.getMicroList()) != null) {
            Iterator<T> it = microList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((VoiceRoomUserOnSeatModel) obj).getUserId(), str)) {
                    break;
                }
            }
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = (VoiceRoomUserOnSeatModel) obj;
            if (voiceRoomUserOnSeatModel != null) {
                return voiceRoomUserOnSeatModel.getSeatIndex();
            }
        }
        return -1;
    }

    public static /* synthetic */ void loadViewerList$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, int i9, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = 20;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        voiceRoomSeatControllerViewModel.loadViewerList(i9, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void openMicro$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, String str, GCValueCallback gCValueCallback, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            str = current != null ? current.getUserId() : null;
        }
        if ((i9 & 2) != 0) {
            gCValueCallback = null;
        }
        voiceRoomSeatControllerViewModel.openMicro(str, gCValueCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
        r5 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void removeSeatValueOnUserId(java.lang.String r46) {
        /*
            r45 = this;
            r0 = r45
            r1 = r46
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r2 = r0._roomInfo
            java.lang.Object r3 = r2.getValue()
            r4 = r3
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r4 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r4
            r3 = 0
            if (r4 == 0) goto La9
            java.util.List r5 = r4.getMicroList()
            if (r5 == 0) goto L65
            java.util.List r5 = kotlin.collections.CollectionsKt.toMutableList(r5)
            if (r5 == 0) goto L65
            java.util.Iterator r6 = r5.iterator()
            r7 = 0
            r8 = 0
        L22:
            boolean r9 = r6.hasNext()
            r10 = -1
            if (r9 == 0) goto L3d
            java.lang.Object r9 = r6.next()
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r9 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r9
            java.lang.String r9 = r9.getUserId()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r1)
            if (r9 == 0) goto L3a
            goto L3e
        L3a:
            int r8 = r8 + 1
            goto L22
        L3d:
            r8 = -1
        L3e:
            if (r8 < 0) goto L64
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel$Companion r6 = com.guochao.faceshow.session.viewmodel.UserSessionViewModel.Companion
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel r6 = r6.instance()
            com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel r6 = r6.current()
            com.guochao.faceshow.session.model.UserSessionModel r6 = (com.guochao.faceshow.session.model.UserSessionModel) r6
            if (r6 == 0) goto L53
            java.lang.String r6 = r6.getUserId()
            goto L54
        L53:
            r6 = r3
        L54:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r6)
            if (r1 == 0) goto L61
            java.lang.String r1 = r45.getLastRoomId()
            r0.enterTRTCRoom(r1, r3, r7, r10)
        L61:
            r5.remove(r8)
        L64:
            r3 = r5
        L65:
            r4.setMicroList(r3)
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r25 = 0
            r27 = 0
            r28 = 0
            r30 = 0
            r31 = 0
            r32 = 0
            r33 = 0
            r34 = 0
            r35 = 0
            r36 = 0
            r37 = 0
            r38 = 0
            r39 = 0
            r40 = 0
            r41 = 0
            r42 = -1
            r43 = 1
            r44 = 0
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r3 = com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel.copy$default(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r19, r20, r21, r22, r23, r25, r27, r28, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44)
        La9:
            r2.setValue(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.removeSeatValueOnUserId(java.lang.String):void");
    }

    private final void viewerCountChange(boolean z10, int i9) {
        if (z10) {
            MutableLiveData<Integer> mutableLiveData = this._viewerCount;
            Integer value = mutableLiveData.getValue();
            mutableLiveData.setValue(value != null ? Integer.valueOf(value.intValue() + i9) : null);
            return;
        }
        Integer value2 = this._viewerCount.getValue();
        if (value2 == null || value2.intValue() < i9) {
            return;
        }
        MutableLiveData<Integer> mutableLiveData2 = this._viewerCount;
        Integer value3 = mutableLiveData2.getValue();
        mutableLiveData2.setValue(value3 != null ? Integer.valueOf(value3.intValue() - i9) : null);
    }

    static /* synthetic */ void viewerCountChange$default(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, boolean z10, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            i9 = 1;
        }
        voiceRoomSeatControllerViewModel.viewerCountChange(z10, i9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r2 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r2);
     */
    @Override // com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addSelfToSeat(int r26) {
        /*
            r25 = this;
            r0 = r25
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r0._roomInfo
            java.lang.Object r1 = r1.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r1 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r1
            if (r1 != 0) goto Ld
            return
        Ld:
            java.util.List r2 = r1.getMicroList()
            r3 = 0
            if (r2 == 0) goto Lb1
            java.util.List r2 = kotlin.collections.CollectionsKt.toMutableList(r2)
            if (r2 == 0) goto Lb1
            java.util.Iterator r4 = r2.iterator()
        L1e:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L4a
            java.lang.Object r5 = r4.next()
            r6 = r5
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r6 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r6
            java.lang.String r6 = r6.getUserId()
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel$Companion r7 = com.guochao.faceshow.session.viewmodel.UserSessionViewModel.Companion
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel r7 = r7.instance()
            com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel r7 = r7.current()
            com.guochao.faceshow.session.model.UserSessionModel r7 = (com.guochao.faceshow.session.model.UserSessionModel) r7
            if (r7 == 0) goto L42
            java.lang.String r7 = r7.getUserId()
            goto L43
        L42:
            r7 = r3
        L43:
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)
            if (r6 == 0) goto L1e
            goto L4b
        L4a:
            r5 = r3
        L4b:
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r5 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r5
            if (r5 != 0) goto Lac
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r4 = new com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel
            r8 = 2
            r9 = 0
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel$Companion r5 = com.guochao.faceshow.session.viewmodel.UserSessionViewModel.Companion
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel r6 = r5.instance()
            com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel r6 = r6.current()
            com.guochao.faceshow.session.model.UserSessionModel r6 = (com.guochao.faceshow.session.model.UserSessionModel) r6
            if (r6 == 0) goto L67
            java.lang.String r6 = r6.getUserId()
            r10 = r6
            goto L68
        L67:
            r10 = r3
        L68:
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel r6 = r5.instance()
            com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel r6 = r6.current()
            com.guochao.faceshow.session.model.UserSessionModel r6 = (com.guochao.faceshow.session.model.UserSessionModel) r6
            if (r6 == 0) goto L7a
            java.lang.String r6 = r6.getNickName()
            r11 = r6
            goto L7b
        L7a:
            r11 = r3
        L7b:
            r12 = 0
            r13 = 0
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel r5 = r5.instance()
            com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel r5 = r5.current()
            com.guochao.faceshow.session.model.UserSessionModel r5 = (com.guochao.faceshow.session.model.UserSessionModel) r5
            if (r5 == 0) goto L8d
            java.lang.String r3 = r5.getUserSmallAvatar()
        L8d:
            r14 = r3
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 65380(0xff64, float:9.1617E-41)
            r24 = 0
            r6 = r4
            r7 = r26
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24)
            r2.add(r4)
            goto Lb0
        Lac:
            r3 = 2
            r5.setSeatStatus(r3)
        Lb0:
            r3 = r2
        Lb1:
            r1.setMicroList(r3)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r2 = r0._roomInfo
            r2.setValue(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.addSelfToSeat(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addUserOnSeat(@org.jetbrains.annotations.NotNull com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r47) {
        /*
            r46 = this;
            r0 = r46
            r1 = r47
            java.lang.String r2 = "userOnSeatModel"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r2 = r0._roomInfo
            java.lang.Object r2 = r2.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r2 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r2
            if (r2 == 0) goto L8b
            java.util.List r3 = r2.getMicroList()
            if (r3 != 0) goto L21
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r2.setMicroList(r3)
        L21:
            java.util.List r3 = r2.getMicroList()
            r4 = 0
            if (r3 == 0) goto L32
            java.util.List r3 = kotlin.collections.CollectionsKt.toMutableList(r3)
            if (r3 == 0) goto L32
            r3.add(r1)
            goto L33
        L32:
            r3 = r4
        L33:
            r2.setMicroList(r3)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r0._roomInfo
            java.lang.Object r2 = r1.getValue()
            r5 = r2
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r5 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r5
            if (r5 == 0) goto L88
            java.lang.String r2 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r2)
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r26 = 0
            r28 = 0
            r29 = 0
            r31 = 0
            r32 = 0
            r33 = 0
            r34 = 0
            r35 = 0
            r36 = 0
            r37 = 0
            r38 = 0
            r39 = 0
            r40 = 0
            r41 = 0
            r42 = 0
            r43 = -1
            r44 = 1
            r45 = 0
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r4 = com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel.copy$default(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r20, r21, r22, r23, r24, r26, r28, r29, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45)
        L88:
            r1.setValue(r4)
        L8b:
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r0._roomInfo
            java.lang.Object r1 = r1.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r1 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r1
            if (r1 == 0) goto L99
            r2 = 0
            r0.checkIfEnterTRTCRoomAsAudience(r1, r2)
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.addUserOnSeat(com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel):void");
    }

    public final void audioSwitchClick() {
        MutableLiveData<Boolean> mutableLiveData = this._audioSwitch;
        Boolean value = mutableLiveData.getValue();
        if (value == null) {
            value = Boolean.TRUE;
        }
        mutableLiveData.setValue(Boolean.valueOf(!value.booleanValue()));
    }

    public final void changeMicMode(int i9, @Nullable GCValueCallback<Integer> gCValueCallback) {
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        VoiceRoomInfoModel value = mutableLiveData.getValue();
        mutableLiveData.setValue(value != null ? value.copy((r55 & 1) != 0 ? value.f15984id : 0, (r55 & 2) != 0 ? value.userId : null, (r55 & 4) != 0 ? value.chatGroupId : null, (r55 & 8) != 0 ? value.roomId : null, (r55 & 16) != 0 ? value.title : null, (r55 & 32) != 0 ? value.coverImgUrl : null, (r55 & 64) != 0 ? value.notice : null, (r55 & 128) != 0 ? value.tagIds : null, (r55 & 256) != 0 ? value.tagConfs : null, (r55 & 512) != 0 ? value.tagNames : null, (r55 & 1024) != 0 ? value.level : 0, (r55 & 2048) != 0 ? value.experienceValue : 0, (r55 & 4096) != 0 ? value.ticket : 0L, (r55 & 8192) != 0 ? value.nature : 0, (r55 & 16384) != 0 ? value.backImgUrl : null, (r55 & 32768) != 0 ? value.memberPrice : 0, (r55 & 65536) != 0 ? value.freezeStatus : 0, (r55 & 131072) != 0 ? value.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? value.expireFreezeTime : 0L, (r55 & 524288) != 0 ? value.freezeReason : null, (1048576 & r55) != 0 ? value.updateTime : 0L, (r55 & 2097152) != 0 ? value.visitorCount : 0, (4194304 & r55) != 0 ? value.countryImg : null, (r55 & 8388608) != 0 ? value.microCount : 0, (r55 & 16777216) != 0 ? value.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? value.signInfo : null, (r55 & 67108864) != 0 ? value.roleType : 0, (r55 & 134217728) != 0 ? value.microType : i9, (r55 & 268435456) != 0 ? value.owner : null, (r55 & 536870912) != 0 ? value.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? value.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? value.offlineTime : null, (r56 & 1) != 0 ? value.responseCode : 0) : null);
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$changeMicMode$1(this, i9, gCValueCallback, null), 2, null);
    }

    public final void changeRoomFee(int i9, @Nullable GCValueCallback<Boolean> gCValueCallback) {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$changeRoomFee$1(this, i9, gCValueCallback, null), 2, null);
    }

    public final void changeRoomPrivateMode(int i9, @Nullable GCValueCallback<Integer> gCValueCallback) {
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        VoiceRoomInfoModel value = mutableLiveData.getValue();
        mutableLiveData.setValue(value != null ? value.copy((r55 & 1) != 0 ? value.f15984id : 0, (r55 & 2) != 0 ? value.userId : null, (r55 & 4) != 0 ? value.chatGroupId : null, (r55 & 8) != 0 ? value.roomId : null, (r55 & 16) != 0 ? value.title : null, (r55 & 32) != 0 ? value.coverImgUrl : null, (r55 & 64) != 0 ? value.notice : null, (r55 & 128) != 0 ? value.tagIds : null, (r55 & 256) != 0 ? value.tagConfs : null, (r55 & 512) != 0 ? value.tagNames : null, (r55 & 1024) != 0 ? value.level : 0, (r55 & 2048) != 0 ? value.experienceValue : 0, (r55 & 4096) != 0 ? value.ticket : 0L, (r55 & 8192) != 0 ? value.nature : i9, (r55 & 16384) != 0 ? value.backImgUrl : null, (r55 & 32768) != 0 ? value.memberPrice : 0, (r55 & 65536) != 0 ? value.freezeStatus : 0, (r55 & 131072) != 0 ? value.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? value.expireFreezeTime : 0L, (r55 & 524288) != 0 ? value.freezeReason : null, (1048576 & r55) != 0 ? value.updateTime : 0L, (r55 & 2097152) != 0 ? value.visitorCount : 0, (4194304 & r55) != 0 ? value.countryImg : null, (r55 & 8388608) != 0 ? value.microCount : 0, (r55 & 16777216) != 0 ? value.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? value.signInfo : null, (r55 & 67108864) != 0 ? value.roleType : 0, (r55 & 134217728) != 0 ? value.microType : 0, (r55 & 268435456) != 0 ? value.owner : null, (r55 & 536870912) != 0 ? value.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? value.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? value.offlineTime : null, (r56 & 1) != 0 ? value.responseCode : 0) : null);
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$changeRoomPrivateMode$1(this, i9, gCValueCallback, null), 2, null);
    }

    public final void checkAdminUser(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDAddAdminMessageModel gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        if (Objects.equals(gcimMessage.getRoomId(), getLastRoomId())) {
            String userId = gcimMessage.getUserId();
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            VoiceRoomInfoModel voiceRoomInfoModel = null;
            if (Objects.equals(userId, current != null ? current.getUserId() : null)) {
                MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
                VoiceRoomInfoModel value = mutableLiveData.getValue();
                if (value != null) {
                    value.setRoleType(10);
                    voiceRoomInfoModel = value;
                }
                mutableLiveData.setValue(voiceRoomInfoModel);
                setLastRoleType(10);
            }
        }
    }

    public final void checkKickUser(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDKickMessageModel gcimMessage) {
        Object obj;
        List<VoiceRoomViewerModel> mutableList;
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        List<VoiceRoomViewerModel> list = null;
        if (Objects.equals(gcimMessage.getRoomId(), getLastRoomId())) {
            String toUserId = gcimMessage.getToUserId();
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            if (Objects.equals(toUserId, current != null ? current.getUserId() : null)) {
                MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
                VoiceRoomInfoModel value = mutableLiveData.getValue();
                if (value != null) {
                    value.setKickEndTime(Long.valueOf(System.currentTimeMillis() + 1440000));
                } else {
                    value = null;
                }
                mutableLiveData.setValue(value);
                leaveSeat(-1);
            }
        }
        MutableLiveData<List<VoiceRoomViewerModel>> mutableLiveData2 = this._viewerList;
        List<VoiceRoomViewerModel> value2 = mutableLiveData2.getValue();
        if (value2 != null) {
            Iterator<T> it = value2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((VoiceRoomViewerModel) obj).getUserId(), gcimMessage.getToUserId())) {
                    break;
                }
            }
            VoiceRoomViewerModel voiceRoomViewerModel = (VoiceRoomViewerModel) obj;
            if (voiceRoomViewerModel != null) {
                viewerCountChange$default(this, false, 0, 2, null);
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) value2);
                mutableList.remove(voiceRoomViewerModel);
                list = mutableList;
            } else {
                list = value2;
            }
        }
        mutableLiveData2.setValue(list);
    }

    public final void checkLeaveRoom() {
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        boolean z10 = true;
        if ((value == null || value.getRoleType() != 1) ? false : false) {
            BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$checkLeaveRoom$1(this, null), 2, null);
        }
    }

    public final void checkRemoveAdminUser(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveAdminMessageModel gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        if (Objects.equals(gcimMessage.getRoomId(), getLastRoomId())) {
            String userId = gcimMessage.getUserId();
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            VoiceRoomInfoModel voiceRoomInfoModel = null;
            if (Objects.equals(userId, current != null ? current.getUserId() : null)) {
                MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
                VoiceRoomInfoModel value = mutableLiveData.getValue();
                if (value != null) {
                    value.setRoleType(20);
                    voiceRoomInfoModel = value;
                }
                mutableLiveData.setValue(voiceRoomInfoModel);
                setLastRoleType(20);
            }
        }
    }

    public final void checkRemoveMember(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveMemberMessageModel gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        if (Objects.equals(gcimMessage.getRoomId(), getLastRoomId())) {
            String userId = gcimMessage.getUserId();
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            VoiceRoomInfoModel voiceRoomInfoModel = null;
            if (Objects.equals(userId, current != null ? current.getUserId() : null)) {
                MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
                VoiceRoomInfoModel value = mutableLiveData.getValue();
                if (value != null) {
                    value.setRoleType(30);
                    voiceRoomInfoModel = value;
                }
                mutableLiveData.setValue(voiceRoomInfoModel);
                setLastRoleType(30);
            }
        }
    }

    public final void closeMicro(@Nullable String str, @Nullable GCValueCallback<Integer> gCValueCallback) {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new VoiceRoomSeatControllerViewModel$closeMicro$1(this, str, gCValueCallback, null), 3, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        r2 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void cmdCloseMicro(@org.jetbrains.annotations.NotNull com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel.VoiceRoomCMDCloseMicroMessageModel r8) {
        /*
            r7 = this;
            java.lang.String r0 = "model"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r0 = r7._roomInfo
            java.lang.Object r0 = r0.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r0 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r0
            if (r0 != 0) goto L10
            return
        L10:
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r7._roomInfo
            java.util.List r2 = r0.getMicroList()
            if (r2 == 0) goto L3d
            java.util.List r2 = kotlin.collections.CollectionsKt.toMutableList(r2)
            if (r2 == 0) goto L3d
            java.util.Iterator r3 = r2.iterator()
        L22:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L3e
            java.lang.Object r4 = r3.next()
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r4 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r4
            int r5 = r4.getSeatIndex()
            int r6 = r8.getIndex()
            if (r5 != r6) goto L22
            r5 = 4
            r4.setSeatStatus(r5)
            goto L22
        L3d:
            r2 = 0
        L3e:
            r0.setMicroList(r2)
            r1.setValue(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.cmdCloseMicro(com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        r2 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void cmdOpenMicro(@org.jetbrains.annotations.NotNull com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel.VoiceRoomCMDOpenMicroMessageModel r8) {
        /*
            r7 = this;
            java.lang.String r0 = "model"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r0 = r7._roomInfo
            java.lang.Object r0 = r0.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r0 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r0
            if (r0 != 0) goto L10
            return
        L10:
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r7._roomInfo
            java.util.List r2 = r0.getMicroList()
            if (r2 == 0) goto L3d
            java.util.List r2 = kotlin.collections.CollectionsKt.toMutableList(r2)
            if (r2 == 0) goto L3d
            java.util.Iterator r3 = r2.iterator()
        L22:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L3e
            java.lang.Object r4 = r3.next()
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r4 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r4
            int r5 = r4.getSeatIndex()
            int r6 = r8.getIndex()
            if (r5 != r6) goto L22
            r5 = 2
            r4.setSeatStatus(r5)
            goto L22
        L3d:
            r2 = 0
        L3e:
            r0.setMicroList(r2)
            r1.setValue(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.cmdOpenMicro(com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel):void");
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [T, java.lang.String] */
    public final void destroyCurrentRoom() {
        this._roomInfo.setValue(null);
        Job job = this.lastDetailTask;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.lastDetailTask = null;
        AddGroupTask addGroupTask = this.addGroupTask;
        if (addGroupTask != null) {
            addGroupTask.cancel();
        }
        this.addGroupTask = null;
        this._viewerList.setValue(new ArrayList());
        this._viewerCount.setValue(0);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = getLastRoomId();
        BuildersKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new VoiceRoomSeatControllerViewModel$destroyCurrentRoom$1(this, objectRef, null), 2, null);
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new VoiceRoomSeatControllerViewModel$destroyCurrentRoom$2(this, null), 3, null);
        if (getLastSeatIndex() > 0) {
            leaveSeat(getLastSeatIndex());
        }
        setLastRoomId("");
        clearData();
        if (isInTRTCRoom()) {
            getTrtcCloud().exitRoom();
        }
        setInTRTCRoom(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher
    public boolean dispatchGCIMMessage(@NotNull o7.a gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        return this.messageHelper.dispatchGCIMMessage(gcimMessage);
    }

    public final void feeChange(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDFeeChangeMessageModel gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        if (value == null) {
            return;
        }
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        value.setMemberPrice(gcimMessage.getFee());
        mutableLiveData.setValue(value);
    }

    @Nullable
    public final VoiceRoomUserOnSeatModel findUserOnSeat(@Nullable String str) {
        List<VoiceRoomUserOnSeatModel> microList;
        boolean z10;
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        Object obj = null;
        if (value == null || (microList = value.getMicroList()) == null) {
            return null;
        }
        Iterator<T> it = microList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = (VoiceRoomUserOnSeatModel) next;
            if (Intrinsics.areEqual(voiceRoomUserOnSeatModel.getUserId(), str) && voiceRoomUserOnSeatModel.getOnSeat()) {
                z10 = true;
                continue;
            } else {
                z10 = false;
                continue;
            }
            if (z10) {
                obj = next;
                break;
            }
        }
        return (VoiceRoomUserOnSeatModel) obj;
    }

    public final void freeze(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDFreeze model) {
        Intrinsics.checkNotNullParameter(model, "model");
        if (Intrinsics.areEqual(getLastRoomId(), model.getRoomId())) {
            VoiceRoomInfoModel voiceRoomInfoModel = null;
            BaseVoiceRoomSeatControllerViewModel.leaveSeat$default(this, 0, 1, null);
            MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
            VoiceRoomInfoModel value = mutableLiveData.getValue();
            if (value != null) {
                value.setMicroList(new ArrayList());
                voiceRoomInfoModel = value;
            }
            mutableLiveData.setValue(voiceRoomInfoModel);
            this._viewerList.setValue(new ArrayList());
        }
    }

    @Nullable
    public final AddGroupTask getAddGroupTask() {
        return this.addGroupTask;
    }

    @NotNull
    public final LiveData<Boolean> getAudioSwitch() {
        return this.audioSwitch;
    }

    @Nullable
    public final Job getLastDetailTask() {
        return this.lastDetailTask;
    }

    public final void getRoomFeeConf(@Nullable GCValueCallback<VoiceRoomMemberFeeConf> gCValueCallback) {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$getRoomFeeConf$1(this, gCValueCallback, null), 2, null);
    }

    @NotNull
    public final LiveData<VoiceRoomInfoModel> getRoomInfo() {
        return this.roomInfo;
    }

    @NotNull
    public final LiveData<Integer> getViewerCount() {
        return this.viewerCount;
    }

    @NotNull
    public final MutableLiveData<Boolean> getViewerHasMore() {
        return this.viewerHasMore;
    }

    public final boolean getViewerIsLoading() {
        return this.viewerIsLoading;
    }

    @NotNull
    public final LiveData<List<VoiceRoomViewerModel>> getViewerList() {
        return this.viewerList;
    }

    public final int getViewerPage() {
        return this.viewerPage;
    }

    public final void kickUser(@NotNull VoiceRoomUserOnSeatModel model, @NotNull Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$kickUser$1(this, model, call, null), 2, null);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, java.lang.String] */
    @Override // com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel, com.guochao.component.voiceliveroom.viewmodel.BaseVoiceRoomSeatControllerViewModel
    public void leaveSeat(int i9) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = getLastRoomId();
        BuildersKt.launch$default(GlobalScope.INSTANCE, null, null, new VoiceRoomSeatControllerViewModel$leaveSeat$1(i9, this, objectRef, null), 3, null);
    }

    public final void loadRoomDetailInfoAndAddGroup(@NotNull String roomId, @NotNull String chatGroupId) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(chatGroupId, "chatGroupId");
        this.lastDetailTask = BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1(this, roomId, chatGroupId, null), 2, null);
    }

    public final void loadViewerList(int i9, boolean z10) {
        List<VoiceRoomViewerModel> emptyList;
        if (z10) {
            this.isViewerLoad = false;
            this.viewerPage = 1;
            MutableLiveData<List<VoiceRoomViewerModel>> mutableLiveData = this._viewerList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            mutableLiveData.setValue(emptyList);
            this.viewerIsLoading = false;
        }
        if ((!Intrinsics.areEqual(this._viewerHasMore.getValue(), Boolean.FALSE) || this.viewerPage == 1) && !this.viewerIsLoading) {
            BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$loadViewerList$1(this, i9, z10, null), 2, null);
        }
    }

    public final void lockSeat(int i9) {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new VoiceRoomSeatControllerViewModel$lockSeat$1(this, i9, null), 3, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void mainActivityDestroy(@NotNull EventMainActivityDestroy event) {
        Intrinsics.checkNotNullParameter(event, "event");
        destroyCurrentRoom();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel, com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel, androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        EventBus.getDefault().unregister(this);
        this._audioSwitch.removeObserver(this.audioObserver);
        this.gcimMessageDispatcher.unregisterDispatcher(this);
    }

    public final void openMicro(@Nullable String str, @Nullable GCValueCallback<Integer> gCValueCallback) {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new VoiceRoomSeatControllerViewModel$openMicro$1(this, str, gCValueCallback, null), 3, null);
    }

    public final void reSet(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDReset model) {
        Intrinsics.checkNotNullParameter(model, "model");
        if (Intrinsics.areEqual(getLastRoomId(), model.getRoomId())) {
            VoiceRoomInfoModel voiceRoomInfoModel = null;
            BaseVoiceRoomSeatControllerViewModel.leaveSeat$default(this, 0, 1, null);
            MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
            VoiceRoomInfoModel value = mutableLiveData.getValue();
            if (value != null) {
                value.setMicroList(new ArrayList());
                voiceRoomInfoModel = value;
            }
            mutableLiveData.setValue(voiceRoomInfoModel);
        }
    }

    public final void refresh() {
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        mutableLiveData.setValue(mutableLiveData.getValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
        r4 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void removeSeatValueOnSeatIndex(int r45) {
        /*
            r44 = this;
            r0 = r44
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r0._roomInfo
            java.lang.Object r2 = r1.getValue()
            r3 = r2
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r3 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r3
            r2 = 0
            if (r3 == 0) goto Lb3
            java.util.List r4 = r3.getMicroList()
            if (r4 == 0) goto L70
            java.util.List r4 = kotlin.collections.CollectionsKt.toMutableList(r4)
            if (r4 == 0) goto L70
            java.util.Iterator r5 = r4.iterator()
            r6 = 0
            r7 = 0
        L20:
            boolean r8 = r5.hasNext()
            r9 = -1
            if (r8 == 0) goto L3e
            java.lang.Object r8 = r5.next()
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r8 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r8
            int r8 = r8.getSeatIndex()
            r10 = r45
            if (r8 != r10) goto L37
            r8 = 1
            goto L38
        L37:
            r8 = 0
        L38:
            if (r8 == 0) goto L3b
            goto L3f
        L3b:
            int r7 = r7 + 1
            goto L20
        L3e:
            r7 = -1
        L3f:
            if (r7 < 0) goto L6f
            java.lang.Object r5 = r4.get(r7)
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r5 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r5
            java.lang.String r5 = r5.getUserId()
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel$Companion r8 = com.guochao.faceshow.session.viewmodel.UserSessionViewModel.Companion
            com.guochao.faceshow.session.viewmodel.UserSessionViewModel r8 = r8.instance()
            com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel r8 = r8.current()
            com.guochao.faceshow.session.model.UserSessionModel r8 = (com.guochao.faceshow.session.model.UserSessionModel) r8
            if (r8 == 0) goto L5e
            java.lang.String r8 = r8.getUserId()
            goto L5f
        L5e:
            r8 = r2
        L5f:
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r8)
            if (r5 == 0) goto L6c
            java.lang.String r5 = r44.getLastRoomId()
            r0.enterTRTCRoom(r5, r2, r6, r9)
        L6c:
            r4.remove(r7)
        L6f:
            r2 = r4
        L70:
            r3.setMicroList(r2)
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r24 = 0
            r26 = 0
            r27 = 0
            r29 = 0
            r30 = 0
            r31 = 0
            r32 = 0
            r33 = 0
            r34 = 0
            r35 = 0
            r36 = 0
            r37 = 0
            r38 = 0
            r39 = 0
            r40 = 0
            r41 = -1
            r42 = 1
            r43 = 0
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r2 = com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel.copy$default(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r18, r19, r20, r21, r22, r24, r26, r27, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43)
        Lb3:
            r1.setValue(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.removeSeatValueOnSeatIndex(int):void");
    }

    public final void roomInfoChange(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDRoomSettingChangeMessageModel model) {
        VoiceRoomInfoModel copy;
        Intrinsics.checkNotNullParameter(model, "model");
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        if (value == null) {
            return;
        }
        if (Intrinsics.areEqual(value.getTitle(), model.getTitle()) && Intrinsics.areEqual(value.getBackImgUrl(), model.getBackImgUrl()) && Intrinsics.areEqual(model.getCoverImgUrl(), value.getCoverImgUrl()) && Intrinsics.areEqual(model.getTagIds(), value.getTagIds())) {
            return;
        }
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        copy = value.copy((r55 & 1) != 0 ? value.f15984id : 0, (r55 & 2) != 0 ? value.userId : null, (r55 & 4) != 0 ? value.chatGroupId : null, (r55 & 8) != 0 ? value.roomId : null, (r55 & 16) != 0 ? value.title : model.getTitle(), (r55 & 32) != 0 ? value.coverImgUrl : model.getCoverImgUrl(), (r55 & 64) != 0 ? value.notice : null, (r55 & 128) != 0 ? value.tagIds : model.getTagIds(), (r55 & 256) != 0 ? value.tagConfs : null, (r55 & 512) != 0 ? value.tagNames : null, (r55 & 1024) != 0 ? value.level : 0, (r55 & 2048) != 0 ? value.experienceValue : 0, (r55 & 4096) != 0 ? value.ticket : 0L, (r55 & 8192) != 0 ? value.nature : 0, (r55 & 16384) != 0 ? value.backImgUrl : model.getBackImgUrl(), (r55 & 32768) != 0 ? value.memberPrice : 0, (r55 & 65536) != 0 ? value.freezeStatus : 0, (r55 & 131072) != 0 ? value.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? value.expireFreezeTime : 0L, (r55 & 524288) != 0 ? value.freezeReason : null, (1048576 & r55) != 0 ? value.updateTime : 0L, (r55 & 2097152) != 0 ? value.visitorCount : 0, (4194304 & r55) != 0 ? value.countryImg : null, (r55 & 8388608) != 0 ? value.microCount : 0, (r55 & 16777216) != 0 ? value.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? value.signInfo : null, (r55 & 67108864) != 0 ? value.roleType : 0, (r55 & 134217728) != 0 ? value.microType : 0, (r55 & 268435456) != 0 ? value.owner : null, (r55 & 536870912) != 0 ? value.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? value.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? value.offlineTime : null, (r56 & 1) != 0 ? value.responseCode : 0);
        mutableLiveData.setValue(copy);
    }

    public final void roomInfoRefresh(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDVoiceRoomInfoMessageModel model) {
        VoiceRoomInfoModel copy;
        Intrinsics.checkNotNullParameter(model, "model");
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        if (value != null && Intrinsics.areEqual(value.getRoomId(), model.getRoomId())) {
            if (Intrinsics.areEqual(value.getTitle(), model.getTitle()) && Intrinsics.areEqual(value.getBackImgUrl(), model.getBackImgUrl()) && Intrinsics.areEqual(model.getCoverImgUrl(), value.getCoverImgUrl()) && Intrinsics.areEqual(model.getTagIds(), value.getTagIds()) && Intrinsics.areEqual(model.getNotice(), value.getNotice())) {
                return;
            }
            MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
            copy = value.copy((r55 & 1) != 0 ? value.f15984id : 0, (r55 & 2) != 0 ? value.userId : null, (r55 & 4) != 0 ? value.chatGroupId : null, (r55 & 8) != 0 ? value.roomId : null, (r55 & 16) != 0 ? value.title : model.getTitle(), (r55 & 32) != 0 ? value.coverImgUrl : model.getCoverImgUrl(), (r55 & 64) != 0 ? value.notice : model.getNotice(), (r55 & 128) != 0 ? value.tagIds : model.getTagIds(), (r55 & 256) != 0 ? value.tagConfs : null, (r55 & 512) != 0 ? value.tagNames : null, (r55 & 1024) != 0 ? value.level : 0, (r55 & 2048) != 0 ? value.experienceValue : 0, (r55 & 4096) != 0 ? value.ticket : 0L, (r55 & 8192) != 0 ? value.nature : 0, (r55 & 16384) != 0 ? value.backImgUrl : model.getBackImgUrl(), (r55 & 32768) != 0 ? value.memberPrice : 0, (r55 & 65536) != 0 ? value.freezeStatus : 0, (r55 & 131072) != 0 ? value.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? value.expireFreezeTime : 0L, (r55 & 524288) != 0 ? value.freezeReason : null, (1048576 & r55) != 0 ? value.updateTime : 0L, (r55 & 2097152) != 0 ? value.visitorCount : 0, (4194304 & r55) != 0 ? value.countryImg : null, (r55 & 8388608) != 0 ? value.microCount : 0, (r55 & 16777216) != 0 ? value.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? value.signInfo : null, (r55 & 67108864) != 0 ? value.roleType : 0, (r55 & 134217728) != 0 ? value.microType : 0, (r55 & 268435456) != 0 ? value.owner : null, (r55 & 536870912) != 0 ? value.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? value.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? value.offlineTime : null, (r56 & 1) != 0 ? value.responseCode : 0);
            mutableLiveData.setValue(copy);
        }
    }

    public final void roomModeChanged(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDSeatModeMessageModel gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        VoiceRoomInfoModel value = this._roomInfo.getValue();
        if (value == null) {
            return;
        }
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        value.setMicroType(gcimMessage.getMiroType());
        mutableLiveData.setValue(value);
    }

    public final void saveVoiceRoomSetting(@NotNull VoiceRoomCreateRoomModel model, @NotNull Function2<? super Integer, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1(model, this, call, null), 2, null);
    }

    public final void seatListRefresh(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDSeatListMessageModel model) {
        VoiceRoomInfoModel value;
        Intrinsics.checkNotNullParameter(model, "model");
        VoiceRoomInfoModel value2 = this._roomInfo.getValue();
        if (value2 == null) {
            return;
        }
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        if (Intrinsics.areEqual((mutableLiveData == null || (value = mutableLiveData.getValue()) == null) ? null : value.getRoomId(), model.getRoomId())) {
            MutableLiveData<VoiceRoomInfoModel> mutableLiveData2 = this._roomInfo;
            value2.setMicroList(model.getList());
            mutableLiveData2.setValue(value2);
        }
    }

    public final void setAddGroupTask(@Nullable AddGroupTask addGroupTask) {
        this.addGroupTask = addGroupTask;
    }

    public final void setLastDetailTask(@Nullable Job job) {
        this.lastDetailTask = job;
    }

    public final void setRoleType(int i9) {
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = this._roomInfo;
        VoiceRoomInfoModel value = mutableLiveData.getValue();
        mutableLiveData.setValue(value != null ? value.copy((r55 & 1) != 0 ? value.f15984id : 0, (r55 & 2) != 0 ? value.userId : null, (r55 & 4) != 0 ? value.chatGroupId : null, (r55 & 8) != 0 ? value.roomId : null, (r55 & 16) != 0 ? value.title : null, (r55 & 32) != 0 ? value.coverImgUrl : null, (r55 & 64) != 0 ? value.notice : null, (r55 & 128) != 0 ? value.tagIds : null, (r55 & 256) != 0 ? value.tagConfs : null, (r55 & 512) != 0 ? value.tagNames : null, (r55 & 1024) != 0 ? value.level : 0, (r55 & 2048) != 0 ? value.experienceValue : 0, (r55 & 4096) != 0 ? value.ticket : 0L, (r55 & 8192) != 0 ? value.nature : 0, (r55 & 16384) != 0 ? value.backImgUrl : null, (r55 & 32768) != 0 ? value.memberPrice : 0, (r55 & 65536) != 0 ? value.freezeStatus : 0, (r55 & 131072) != 0 ? value.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? value.expireFreezeTime : 0L, (r55 & 524288) != 0 ? value.freezeReason : null, (1048576 & r55) != 0 ? value.updateTime : 0L, (r55 & 2097152) != 0 ? value.visitorCount : 0, (4194304 & r55) != 0 ? value.countryImg : null, (r55 & 8388608) != 0 ? value.microCount : 0, (r55 & 16777216) != 0 ? value.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? value.signInfo : null, (r55 & 67108864) != 0 ? value.roleType : i9, (r55 & 134217728) != 0 ? value.microType : 0, (r55 & 268435456) != 0 ? value.owner : null, (r55 & 536870912) != 0 ? value.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? value.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? value.offlineTime : null, (r56 & 1) != 0 ? value.responseCode : 0) : null);
        setLastRoleType(i9);
    }

    public final void setViewerIsLoading(boolean z10) {
        this.viewerIsLoading = z10;
    }

    public final void setViewerPage(int i9) {
        this.viewerPage = i9;
    }

    @Override // com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel, com.guochao.component.voiceliveroom.viewmodel.BaseVoiceRoomSeatControllerViewModel
    public int takeSeat(@NotNull String roomId, int i9) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        VoiceRoomInfoModel value = this.roomInfo.getValue();
        if ((value != null && value.getMicroType() == 2) && getLastRoleType() > 20) {
            ToastUtils.showToast$default(GCApplication.app(), R$string.voice_room_tips_micro_type_member_only, 0, 4, null);
            return -1;
        }
        if (i9 == -1) {
            i9 = findSelf();
        }
        if (i9 < 1) {
            return i9;
        }
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new VoiceRoomSeatControllerViewModel$takeSeat$1(this, roomId, i9, null), 3, null);
        return 1;
    }

    public final void unLockSeat(int i9) {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new VoiceRoomSeatControllerViewModel$unLockSeat$1(this, i9, null), 3, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        r4 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r4);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void unlockSeat(@org.jetbrains.annotations.NotNull com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel.VoiceRoomCMDUnlockSeatMessageModel r29) {
        /*
            r28 = this;
            r0 = r28
            java.lang.String r1 = "model"
            r2 = r29
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r0._roomInfo
            java.lang.Object r1 = r1.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r1 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r1
            if (r1 != 0) goto L14
            return
        L14:
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r3 = r0._roomInfo
            java.util.List r4 = r1.getMicroList()
            r5 = 0
            if (r4 == 0) goto L93
            java.util.List r4 = kotlin.collections.CollectionsKt.toMutableList(r4)
            if (r4 == 0) goto L93
            java.util.Iterator r6 = r4.iterator()
        L27:
            boolean r7 = r6.hasNext()
            r8 = 0
            if (r7 == 0) goto L45
            java.lang.Object r7 = r6.next()
            r9 = r7
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r9 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r9
            int r9 = r9.getSeatIndex()
            int r10 = r29.getIndex()
            if (r9 != r10) goto L41
            r9 = 1
            goto L42
        L41:
            r9 = 0
        L42:
            if (r9 == 0) goto L27
            r5 = r7
        L45:
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r5 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r5
            if (r5 != 0) goto L74
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r5 = new com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel
            r9 = r5
            int r10 = r29.getIndex()
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r25 = 0
            r26 = 65532(0xfffc, float:9.183E-41)
            r27 = 0
            r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27)
            r4.add(r5)
        L74:
            java.util.Iterator r5 = r4.iterator()
        L78:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L92
            java.lang.Object r6 = r5.next()
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r6 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r6
            int r7 = r6.getSeatIndex()
            int r9 = r29.getIndex()
            if (r7 != r9) goto L78
            r6.setSeatStatus(r8)
            goto L78
        L92:
            r5 = r4
        L93:
            r1.setMicroList(r5)
            r3.setValue(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.unlockSeat(com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel):void");
    }

    public final void updateFirstViewerData(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDViewerModel model) {
        List<VoiceRoomViewerModel> arrayList;
        Intrinsics.checkNotNullParameter(model, "model");
        if (Intrinsics.areEqual(getLastRoomId(), model.getRoomId())) {
            MutableLiveData<Integer> mutableLiveData = this._viewerCount;
            VoiceRoomViewerListModel pageResult = model.getPageResult();
            mutableLiveData.setValue(pageResult != null ? Integer.valueOf(pageResult.getTotal()) : null);
            MutableLiveData<List<VoiceRoomViewerModel>> mutableLiveData2 = this._viewerList;
            VoiceRoomViewerListModel pageResult2 = model.getPageResult();
            if (pageResult2 == null || (arrayList = pageResult2.getList()) == null) {
                arrayList = new ArrayList<>();
            }
            mutableLiveData2.setValue(arrayList);
        }
    }

    public final void userEnterRoom(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel model) {
        boolean z10;
        List<VoiceRoomViewerModel> mutableList;
        Intrinsics.checkNotNullParameter(model, "model");
        List<VoiceRoomViewerModel> value = this._viewerList.getValue();
        if (value == null) {
            value = new ArrayList<>();
        }
        if (!value.isEmpty()) {
            for (VoiceRoomViewerModel voiceRoomViewerModel : value) {
                if (Intrinsics.areEqual(voiceRoomViewerModel.getUserId(), model.getUserId())) {
                    z10 = true;
                    break;
                }
            }
        }
        z10 = false;
        if (z10) {
            return;
        }
        String userId = model.getUserId();
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        if (Intrinsics.areEqual(userId, current != null ? current.getUserId() : null)) {
            return;
        }
        MutableLiveData<List<VoiceRoomViewerModel>> mutableLiveData = this._viewerList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) value);
        mutableList.add(new VoiceRoomViewerModel(model.getUserId(), model.getImg(), model.getDressHead()));
        viewerCountChange$default(this, false, 0, 3, null);
        mutableLiveData.setValue(mutableList);
    }

    public final void userLeaveRoom(@NotNull final VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel model) {
        List<VoiceRoomViewerModel> mutableList;
        Intrinsics.checkNotNullParameter(model, "model");
        List<VoiceRoomViewerModel> value = this._viewerList.getValue();
        if (value == null) {
            return;
        }
        MutableLiveData<List<VoiceRoomViewerModel>> mutableLiveData = this._viewerList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) value);
        CollectionsKt__MutableCollectionsKt.removeAll((List) mutableList, (Function1) new Function1<VoiceRoomViewerModel, Boolean>() { // from class: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$userLeaveRoom$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull VoiceRoomViewerModel it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it.getUserId(), VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel.this.getUserId()));
            }
        });
        viewerCountChange$default(this, false, 0, 2, null);
        mutableLiveData.setValue(mutableList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        r2 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void userSwitchSeat(@org.jetbrains.annotations.NotNull com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel.VoiceRoomCMDSwitchSeatMessageModel r8) {
        /*
            r7 = this;
            java.lang.String r0 = "model"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r0 = r7._roomInfo
            java.lang.Object r0 = r0.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r0 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r0
            if (r0 != 0) goto L10
            return
        L10:
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r7._roomInfo
            java.util.List r2 = r0.getMicroList()
            if (r2 == 0) goto L44
            java.util.List r2 = kotlin.collections.CollectionsKt.toMutableList(r2)
            if (r2 == 0) goto L44
            java.util.Iterator r3 = r2.iterator()
        L22:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L45
            java.lang.Object r4 = r3.next()
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r4 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r4
            java.lang.String r5 = r4.getUserId()
            java.lang.String r6 = r8.getUserId()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L22
            int r5 = r8.getToIndex()
            r4.setSeatIndex(r5)
            goto L22
        L44:
            r2 = 0
        L45:
            r0.setMicroList(r2)
            r1.setValue(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.userSwitchSeat(com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        r4 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r4);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void lockSeat(@org.jetbrains.annotations.NotNull com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel.VoiceRoomCMDLockSeatMessageModel r26) {
        /*
            r25 = this;
            r0 = r25
            java.lang.String r1 = "model"
            r2 = r26
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r1 = r0._roomInfo
            java.lang.Object r1 = r1.getValue()
            com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel r1 = (com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel) r1
            if (r1 != 0) goto L14
            return
        L14:
            androidx.lifecycle.MutableLiveData<com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel> r3 = r0._roomInfo
            java.util.List r4 = r1.getMicroList()
            r5 = 0
            if (r4 == 0) goto L90
            java.util.List r4 = kotlin.collections.CollectionsKt.toMutableList(r4)
            if (r4 == 0) goto L90
            java.util.Iterator r6 = r4.iterator()
        L27:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L44
            java.lang.Object r7 = r6.next()
            r8 = r7
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r8 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r8
            int r8 = r8.getSeatIndex()
            int r9 = r26.getIndex()
            if (r8 != r9) goto L40
            r8 = 1
            goto L41
        L40:
            r8 = 0
        L41:
            if (r8 == 0) goto L27
            r5 = r7
        L44:
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r5 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r5
            if (r5 != 0) goto L70
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r5 = new com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel
            r6 = r5
            int r7 = r26.getIndex()
            r8 = 3
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 65532(0xfffc, float:9.183E-41)
            r24 = 0
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24)
            r4.add(r5)
        L70:
            java.util.Iterator r5 = r4.iterator()
        L74:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L8f
            java.lang.Object r6 = r5.next()
            com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel r6 = (com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel) r6
            int r7 = r6.getSeatIndex()
            int r8 = r26.getIndex()
            if (r7 != r8) goto L74
            r7 = 3
            r6.setSeatStatus(r7)
            goto L74
        L8f:
            r5 = r4
        L90:
            r1.setMicroList(r5)
            r3.setValue(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel.lockSeat(com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel):void");
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;", "", "groupId", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V", "added", "", "getAdded", "()Z", "setAdded", "(Z)V", "getGroupId", "()Ljava/lang/String;", Contants.JOB, "Lkotlinx/coroutines/Job;", "getJob", "()Lkotlinx/coroutines/Job;", "setJob", "(Lkotlinx/coroutines/Job;)V", "addGroup", "", "cancel", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class AddGroupTask {
        private boolean added;
        @NotNull
        private final String groupId;
        @Nullable
        private Job job;
        @NotNull
        private final CoroutineScope scope;
        final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

        public AddGroupTask(@NotNull VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, @NotNull String groupId, CoroutineScope scope) {
            Intrinsics.checkNotNullParameter(groupId, "groupId");
            Intrinsics.checkNotNullParameter(scope, "scope");
            this.this$0 = voiceRoomSeatControllerViewModel;
            this.groupId = groupId;
            this.scope = scope;
        }

        public final void addGroup() {
            this.job = BuildersKt.launch$default(this.scope, null, null, new VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1(this, this.this$0, null), 3, null);
        }

        public final void cancel() {
            CoroutineScopeKt.cancel$default(this.scope, null, 1, null);
        }

        public final boolean getAdded() {
            return this.added;
        }

        @NotNull
        public final String getGroupId() {
            return this.groupId;
        }

        @Nullable
        public final Job getJob() {
            return this.job;
        }

        public final void setAdded(boolean z10) {
            this.added = z10;
        }

        public final void setJob(@Nullable Job job) {
            this.job = job;
        }

        public /* synthetic */ AddGroupTask(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, String str, CoroutineScope coroutineScope, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(voiceRoomSeatControllerViewModel, str, (i9 & 2) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()) : coroutineScope);
        }
    }
}
