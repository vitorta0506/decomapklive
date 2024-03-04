package com.guochao.component.voiceliveroom.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.lifecycle.Observer;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.view.VoiceRoomSeatView;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.DensityUtil;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.trtc.TRTCCloudDef;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\nJ\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010 \u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J0\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0014J\u0018\u0010'\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0007H\u0014J\u0012\u0010*\u001a\u00020\u001d2\b\u0010+\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010,\u001a\u00020\u001aH\u0002J\u0014\u0010-\u001a\u00020\u001a2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002000/R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "_controllerFragment", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;", "controllerFragment", "getControllerFragment", "()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;", "hGap", "seatViewList", "", "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;", "value", "totalSeatNumber", "setTotalSeatNumber", "(I)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "wGap", "attachController", "", "voiceRoomMainControllerFragment", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "onInterceptTouchEvent", "onLayout", "changed", NotifyType.LIGHTS, "t", "r", "b", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onTouchEvent", "event", "recreate", "updateSeats", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerView extends ViewGroup {
    @Nullable
    private VoiceRoomMainControllerFragment _controllerFragment;
    private final int hGap;
    @NotNull
    private final List<VoiceRoomSeatView> seatViewList;
    private int totalSeatNumber;
    private VoiceRoomSeatControllerViewModel viewModel;
    private int wGap;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VoiceRoomSeatControllerView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VoiceRoomSeatControllerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ VoiceRoomSeatControllerView(Context context, AttributeSet attributeSet, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: attachController$lambda-10$lambda-9  reason: not valid java name */
    public static final void m328attachController$lambda10$lambda9(VoiceRoomSeatControllerView this$0, ArrayList arrayList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArrayList arrayList2 = new ArrayList();
        List<VoiceRoomSeatView> list = this$0.seatViewList;
        int i9 = 0;
        if (list != null) {
            int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                VoiceRoomSeatView voiceRoomSeatView = (VoiceRoomSeatView) obj;
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        TRTCCloudDef.TRTCVolumeInfo tRTCVolumeInfo = (TRTCCloudDef.TRTCVolumeInfo) it.next();
                        String str = tRTCVolumeInfo.userId;
                        VoiceRoomUserOnSeatModel lastSeatModel = voiceRoomSeatView.getLastSeatModel();
                        if (!Intrinsics.areEqual(str, lastSeatModel != null ? lastSeatModel.getUserId() : null)) {
                            String str2 = tRTCVolumeInfo.userId;
                            Intrinsics.checkNotNullExpressionValue(str2, "it1.userId");
                            if (str2.length() == 0) {
                                VoiceRoomUserOnSeatModel lastSeatModel2 = voiceRoomSeatView.getLastSeatModel();
                                String userId = lastSeatModel2 != null ? lastSeatModel2.getUserId() : null;
                                UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                                if (Intrinsics.areEqual(userId, current != null ? current.getUserId() : null)) {
                                }
                            }
                        }
                        if (tRTCVolumeInfo.volume > 10) {
                            arrayList2.add(Integer.valueOf(i10));
                        }
                    }
                }
                i10 = i11;
            }
        }
        for (Object obj2 : this$0.seatViewList) {
            int i12 = i9 + 1;
            if (i9 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            VoiceRoomSeatView voiceRoomSeatView2 = (VoiceRoomSeatView) obj2;
            if (arrayList2.contains(Integer.valueOf(i9))) {
                this$0.seatViewList.get(i9).playVoiceWave();
            } else {
                this$0.seatViewList.get(i9).stopVoiceWaveImmediatelysDelayed();
            }
            i9 = i12;
        }
    }

    private final VoiceRoomMainControllerFragment getControllerFragment() {
        VoiceRoomMainControllerFragment voiceRoomMainControllerFragment = this._controllerFragment;
        if (voiceRoomMainControllerFragment != null) {
            return voiceRoomMainControllerFragment;
        }
        throw new IllegalStateException("Must attach to a VoiceRoomMainControllerFragment");
    }

    private final void recreate() {
        int i9;
        VoiceRoomSeatView.LayoutMode layoutMode;
        while (true) {
            i9 = 0;
            if (this.seatViewList.size() == this.totalSeatNumber) {
                break;
            }
            if (this.seatViewList.size() > this.totalSeatNumber) {
                this.seatViewList.remove(0);
            }
            if (this.seatViewList.size() < this.totalSeatNumber) {
                List<VoiceRoomSeatView> list = this.seatViewList;
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel = this.viewModel;
                if (voiceRoomSeatControllerViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    voiceRoomSeatControllerViewModel = null;
                }
                list.add(new VoiceRoomSeatView(context, null, voiceRoomSeatControllerViewModel, getControllerFragment()));
            }
        }
        removeAllViews();
        for (Object obj : this.seatViewList) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            VoiceRoomSeatView voiceRoomSeatView = (VoiceRoomSeatView) obj;
            voiceRoomSeatView.update(null);
            voiceRoomSeatView.setSeatIndex(i10);
            int i11 = this.totalSeatNumber;
            if (i11 == 8) {
                layoutMode = VoiceRoomSeatView.LayoutMode.EIGHT;
            } else if (i11 != 10) {
                layoutMode = VoiceRoomSeatView.LayoutMode.ELEVEN;
            } else {
                layoutMode = VoiceRoomSeatView.LayoutMode.TEN;
            }
            voiceRoomSeatView.setVoiceRoomLayoutMode(layoutMode);
            addView(voiceRoomSeatView);
            i9 = i10;
        }
    }

    private final void setTotalSeatNumber(int i9) {
        if (this.totalSeatNumber != i9) {
            this.totalSeatNumber = i9;
            recreate();
        }
    }

    public final void attachController(@NotNull VoiceRoomMainControllerFragment voiceRoomMainControllerFragment) {
        Intrinsics.checkNotNullParameter(voiceRoomMainControllerFragment, "voiceRoomMainControllerFragment");
        this._controllerFragment = voiceRoomMainControllerFragment;
        this.viewModel = voiceRoomMainControllerFragment.getViewModel();
        setTotalSeatNumber(8);
        VoiceRoomMainControllerFragment controllerFragment = getControllerFragment();
        if (controllerFragment != null) {
            VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel = this.viewModel;
            if (voiceRoomSeatControllerViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                voiceRoomSeatControllerViewModel = null;
            }
            voiceRoomSeatControllerViewModel.getVoiceVolume().observe(controllerFragment.getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.view.a
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    VoiceRoomSeatControllerView.m328attachController$lambda10$lambda9(VoiceRoomSeatControllerView.this, (ArrayList) obj);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@Nullable MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@Nullable MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int i13;
        int i14 = 0;
        for (Object obj : this.seatViewList) {
            int i15 = i14 + 1;
            if (i14 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            VoiceRoomSeatView voiceRoomSeatView = (VoiceRoomSeatView) obj;
            int i16 = i14 / 4;
            int i17 = i14 % 4;
            int measuredWidth = voiceRoomSeatView.getMeasuredWidth() * i17;
            if (i17 == 0) {
                i13 = this.wGap;
            } else {
                i13 = ((i17 * 2) + 1) * this.wGap;
            }
            int i18 = measuredWidth + i13;
            int measuredHeight = (voiceRoomSeatView.getMeasuredHeight() * i16) + (i16 == 0 ? 0 : this.hGap * ((i16 * 2) - 1));
            voiceRoomSeatView.layout(i18, measuredHeight, voiceRoomSeatView.getMeasuredWidth() + i18, voiceRoomSeatView.getMeasuredHeight() + measuredHeight);
            i14 = i15;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int coerceAtLeast;
        super.onMeasure(i9, i10);
        int measuredWidth = getMeasuredWidth();
        getMeasuredHeight();
        int i11 = this.totalSeatNumber == 8 ? 4 : 5;
        int i12 = 0;
        int i13 = 0;
        for (VoiceRoomSeatView voiceRoomSeatView : this.seatViewList) {
            voiceRoomSeatView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth / i11, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
            voiceRoomSeatView.measure(View.MeasureSpec.makeMeasureSpec(voiceRoomSeatView.getMeasuredWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(voiceRoomSeatView.getMeasuredHeight(), BasicMeasure.EXACTLY));
            i13 = Math.max(i13, voiceRoomSeatView.getMeasuredHeight());
            i12 = voiceRoomSeatView.getMeasuredWidth() * 4;
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i11, 0);
        this.wGap = ((getMeasuredWidth() - i12) / 2) / coerceAtLeast;
        setMeasuredDimension(View.MeasureSpec.getSize(i9), (i13 * 2) + this.hGap);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public final void updateSeats(@NotNull List<VoiceRoomUserOnSeatModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (VoiceRoomSeatView voiceRoomSeatView : this.seatViewList) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((VoiceRoomUserOnSeatModel) next).getSeatIndex() == voiceRoomSeatView.getSeatIndex()) {
                    arrayList.add(next);
                }
            }
            voiceRoomSeatView.update(arrayList.isEmpty() ? null : (VoiceRoomUserOnSeatModel) arrayList.get(0));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VoiceRoomSeatControllerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        this.hGap = DensityUtil.dp2px(8.0f);
        this.seatViewList = new ArrayList();
    }
}
