package com.guochao.faceshow.component.f2fmatch.proxy;

import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0012\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u0007H&J\b\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\nH&J\b\u0010\u0012\u001a\u00020\u0003H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H&J\b\u0010\u0016\u001a\u00020\u0003H&J\b\u0010\u0017\u001a\u00020\u0003H&¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;", "", "cancelMatchAndBackToPrepare", "", "cancelMatchAndExit", "exitCurrentRoom", "rematch", "", "focusSomebody", "gcUser", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "showMessage", "getF2fProxy", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;", "moveToMini", "notifyFocusEachOther", "report", "f2fMatchRoomInfo", "retryMatch", "setGenderSelection", "selection", "", "showGenderFilterDialog", "showPendantDialog", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface F2fMatchContainer {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void exitCurrentRoom$default(F2fMatchContainer f2fMatchContainer, boolean z10, int i9, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: exitCurrentRoom");
            }
            if ((i9 & 1) != 0) {
                z10 = true;
            }
            f2fMatchContainer.exitCurrentRoom(z10);
        }

        public static /* synthetic */ void focusSomebody$default(F2fMatchContainer f2fMatchContainer, F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, boolean z10, int i9, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: focusSomebody");
            }
            if ((i9 & 2) != 0) {
                z10 = true;
            }
            f2fMatchContainer.focusSomebody(f2fMatchRoomInfo, z10);
        }
    }

    void cancelMatchAndBackToPrepare();

    void cancelMatchAndExit();

    void exitCurrentRoom(boolean z10);

    void focusSomebody(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, boolean z10);

    @NotNull
    F2fProxy getF2fProxy();

    void moveToMini();

    void notifyFocusEachOther(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo);

    void report(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo);

    void retryMatch();

    void setGenderSelection(int i9);

    void showGenderFilterDialog();

    void showPendantDialog();
}
