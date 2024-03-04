package com.guochao.faceshow.component.f2fmatch.proxy;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u0007H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\nH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\b\u0010\u0014\u001a\u00020\u0003H&¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;", "", "awakenChatRecyclerView", "", "detectNoFaceOnScreen", "enterInput", "textOrSpeech", "", "focusSomebody", "gcUser", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "showFoucusMessage", "removeCurrentGuass", "f2fMatchRoomInfo", "sendSpeechToTextResult", "f2fSpeechToTextResultModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "sendText", ViewHierarchyConstants.TEXT_KEY, "", "showGiftDialog", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface F2fChatFragmentBase {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static void awakenChatRecyclerView(@NotNull F2fChatFragmentBase f2fChatFragmentBase) {
        }

        public static /* synthetic */ void focusSomebody$default(F2fChatFragmentBase f2fChatFragmentBase, F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, boolean z10, int i9, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: focusSomebody");
            }
            if ((i9 & 2) != 0) {
                z10 = true;
            }
            f2fChatFragmentBase.focusSomebody(f2fMatchRoomInfo, z10);
        }
    }

    void awakenChatRecyclerView();

    void detectNoFaceOnScreen();

    void enterInput(boolean z10);

    void focusSomebody(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, boolean z10);

    void removeCurrentGuass(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo);

    void sendSpeechToTextResult(@NotNull F2fSpeechToTextResultModel f2fSpeechToTextResultModel);

    void sendText(@NotNull String str);

    void showGiftDialog();
}
