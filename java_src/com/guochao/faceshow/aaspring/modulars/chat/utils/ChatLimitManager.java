package com.guochao.faceshow.aaspring.modulars.chat.utils;

import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatLimitDialog;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\u00020\u000e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;", "", "()V", "mCurrentToday", "", "getMCurrentToday", "()Ljava/lang/String;", "setMCurrentToday", "(Ljava/lang/String;)V", "mLimitUserIds", "", "getMLimitUserIds", "()Ljava/util/List;", "addChatLimitUser", "", Contants.USER_ID, "isChatLimit", "", "showLimitDialog", PushConstants.INTENT_ACTIVITY_NAME, "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "updateChatLimitUser", "userIds", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatLimitManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static ChatLimitManager sChatLimitManager;
    @Nullable
    private String mCurrentToday;
    @NotNull
    private final List<String> mLimitUserIds;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0007R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager$Companion;", "", "()V", "sChatLimitManager", "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;", "getSChatLimitManager$annotations", "getInstance", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getSChatLimitManager$annotations() {
        }

        @JvmStatic
        @NotNull
        public final ChatLimitManager getInstance() {
            if (ChatLimitManager.sChatLimitManager == null) {
                synchronized (ChatLimitManager.class) {
                    if (ChatLimitManager.sChatLimitManager == null) {
                        Companion companion = ChatLimitManager.Companion;
                        ChatLimitManager.sChatLimitManager = new ChatLimitManager(null);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            ChatLimitManager chatLimitManager = ChatLimitManager.sChatLimitManager;
            Intrinsics.checkNotNull(chatLimitManager);
            return chatLimitManager;
        }
    }

    private ChatLimitManager() {
        ArrayList arrayList = new ArrayList();
        this.mLimitUserIds = arrayList;
        arrayList.clear();
        BaseApplication baseApplication = BaseApplication.getInstance();
        String str = SpUtils.getStr(baseApplication, b8.e.g().getUserId() + "ChatLimitUsers");
        if (!TextUtils.isEmpty(str)) {
            Object fromJson = GsonGetter.getGson().fromJson(str, new TypeToken<List<String>>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.ChatLimitManager.1
            }.getType());
            Intrinsics.checkNotNullExpressionValue(fromJson, "getGson()\n              …eList<String>>() {}.type)");
            arrayList.addAll((Collection) fromJson);
        }
        this.mCurrentToday = new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Long.valueOf(System.currentTimeMillis() - com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff()));
        BaseApplication baseApplication2 = BaseApplication.getInstance();
        SpUtils.setStr(baseApplication2, b8.e.g().getUserId() + "CurrentToday", this.mCurrentToday);
    }

    public /* synthetic */ ChatLimitManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    @NotNull
    public static final ChatLimitManager getInstance() {
        return Companion.getInstance();
    }

    public final void addChatLimitUser(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        if (!this.mLimitUserIds.contains(userId)) {
            this.mLimitUserIds.add(userId);
        }
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpUtils.setStr(baseApplication, b8.e.g().getUserId() + "ChatLimitUsers", GsonGetter.getGson().toJson(this.mLimitUserIds));
    }

    @Nullable
    public final String getMCurrentToday() {
        return this.mCurrentToday;
    }

    @NotNull
    public final List<String> getMLimitUserIds() {
        return this.mLimitUserIds;
    }

    public final boolean isChatLimit(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        String format = new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Long.valueOf(System.currentTimeMillis() - com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff()));
        if (!Intrinsics.areEqual(this.mCurrentToday, format)) {
            this.mCurrentToday = format;
            BaseApplication baseApplication = BaseApplication.getInstance();
            SpUtils.setStr(baseApplication, b8.e.g().getUserId() + "CurrentToday", format);
            updateChatLimitUser(new ArrayList());
            return false;
        }
        return this.mLimitUserIds.contains(userId);
    }

    public final void setMCurrentToday(@Nullable String str) {
        this.mCurrentToday = str;
    }

    public final void showLimitDialog(@NotNull BaseActivity activity) {
        FragmentManager childFragmentManager;
        FragmentManager childFragmentManager2;
        List<Fragment> fragments;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (activity instanceof FakeLiveChatActivity) {
            FakeLiveChatActivity fakeLiveChatActivity = (FakeLiveChatActivity) activity;
            LiveIMChatFloatFragment parentFragment = fakeLiveChatActivity.getParentFragment();
            if (parentFragment != null && (childFragmentManager2 = parentFragment.getChildFragmentManager()) != null && (fragments = childFragmentManager2.getFragments()) != null) {
                for (Fragment fragment : fragments) {
                    if (fragment instanceof ChatLimitDialog) {
                        return;
                    }
                }
            }
            LiveIMChatFloatFragment parentFragment2 = fakeLiveChatActivity.getParentFragment();
            if (parentFragment2 == null || (childFragmentManager = parentFragment2.getChildFragmentManager()) == null) {
                return;
            }
            ChatLimitDialog.Companion.show(childFragmentManager);
            return;
        }
        List<Fragment> fragments2 = activity.getSupportFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments2, "activity.supportFragmentManager.fragments");
        for (Fragment fragment2 : fragments2) {
            if (fragment2 instanceof ChatLimitDialog) {
                return;
            }
        }
        ChatLimitDialog.Companion companion = ChatLimitDialog.Companion;
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
        companion.show(supportFragmentManager);
    }

    public final void updateChatLimitUser(@NotNull List<String> userIds) {
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        this.mLimitUserIds.clear();
        this.mLimitUserIds.addAll(userIds);
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpUtils.setStr(baseApplication, b8.e.g().getUserId() + "ChatLimitUsers", GsonGetter.getGson().toJson(this.mLimitUserIds));
    }
}
