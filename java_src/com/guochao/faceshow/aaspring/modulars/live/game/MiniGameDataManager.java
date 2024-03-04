package com.guochao.faceshow.aaspring.modulars.live.game;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import b8.d;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.context.GCApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q7.a;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0018\u001a\u00020\rJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u0019\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001cR\u001e\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\b\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "_gameLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;", "gameLiveData", "Landroidx/lifecycle/LiveData;", "getGameLiveData", "()Landroidx/lifecycle/LiveData;", "isGameEnable", "", "()Z", "isLuckyRemoteEnable", "lastLoadTime", "", "liveGameData", "getLiveGameData", "()Ljava/util/List;", "mLiveGameData", "", "requesting", "hasEnableGame", "loadData", "", "loadGames", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MiniGameDataManager extends BaseViewModel<BaseModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int LIVE_GAME_CACHE_TIMEOUT = 1800000;
    @NotNull
    private static final Lazy<MiniGameDataManager> instance$delegate;
    @NotNull
    private final MutableLiveData<List<LiveGameBean>> _gameLiveData;
    @NotNull
    private final LiveData<List<LiveGameBean>> gameLiveData;
    private long lastLoadTime;
    @NotNull
    private final List<LiveGameBean> mLiveGameData = new ArrayList();
    private boolean requesting;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;", "", "()V", "LIVE_GAME_CACHE_TIMEOUT", "", "instance", "Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;", "getInstance$annotations", "getInstance", "()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;", "instance$delegate", "Lkotlin/Lazy;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getInstance$annotations() {
        }

        @NotNull
        public final MiniGameDataManager getInstance() {
            return (MiniGameDataManager) MiniGameDataManager.instance$delegate.getValue();
        }
    }

    static {
        Lazy<MiniGameDataManager> lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<MiniGameDataManager>() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MiniGameDataManager invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, MiniGameDataManager.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(MiniGameDataManager.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager");
                return (MiniGameDataManager) baseViewModel;
            }
        });
        instance$delegate = lazy;
    }

    public MiniGameDataManager() {
        MutableLiveData<List<LiveGameBean>> mutableLiveData = new MutableLiveData<>();
        this._gameLiveData = mutableLiveData;
        b8.e.g().registerOnUserChangedListener(new d.a() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager.1
            @Override // b8.d.a
            public void onLogout() {
                MiniGameDataManager.this.requesting = false;
                MiniGameDataManager.this.lastLoadTime = 0L;
                MiniGameDataManager.this.mLiveGameData.clear();
                MiniGameDataManager.this._gameLiveData.setValue(MiniGameDataManager.this.mLiveGameData);
            }

            @Override // b8.d.a
            public void onUserChanged(@Nullable UserBean userBean, @Nullable UserBean userBean2) {
            }

            @Override // b8.d.a
            public /* bridge */ /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
                b8.c.a(this, userBean, userBean2, z10, z11, z12);
            }
        });
        q7.a.e().addLanguageListener(new a.InterfaceC0622a() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager.2
            @Override // q7.a.InterfaceC0622a
            public void onLanguageChanged(@Nullable String str, @Nullable String str2) {
                MiniGameDataManager.this.requesting = false;
                MiniGameDataManager.this.lastLoadTime = 0L;
                MiniGameDataManager.this.mLiveGameData.clear();
                MiniGameDataManager.this._gameLiveData.setValue(MiniGameDataManager.this.mLiveGameData);
            }
        });
        this.gameLiveData = mutableLiveData;
    }

    @NotNull
    public static final MiniGameDataManager getInstance() {
        return Companion.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadGames(Continuation<? super List<? extends LiveGameBean>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MiniGameDataManager$loadGames$2(this, null), continuation);
    }

    @NotNull
    public final LiveData<List<LiveGameBean>> getGameLiveData() {
        return this.gameLiveData;
    }

    @NotNull
    public final List<LiveGameBean> getLiveGameData() {
        return this.mLiveGameData;
    }

    public final boolean hasEnableGame() {
        boolean z10;
        if (isGameEnable() && !this.mLiveGameData.isEmpty()) {
            for (LiveGameBean liveGameBean : this.mLiveGameData) {
                if (liveGameBean == null || liveGameBean.getStatus() != 1) {
                    z10 = false;
                    continue;
                } else {
                    z10 = true;
                    continue;
                }
                if (z10) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final boolean isGameEnable() {
        return com.guochao.faceshow.aaspring.manager.i.u().s().getGameSwitch() == 1;
    }

    public final boolean isLuckyRemoteEnable() {
        if (isGameEnable() && !this.mLiveGameData.isEmpty()) {
            Iterator<LiveGameBean> it = this.mLiveGameData.iterator();
            while (it.hasNext()) {
                LiveGameBean next = it.next();
                if ((next != null && next.getStatus() == 1) && (next.getGameCode() == 1 || next.getGameCode() == 4)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final void loadData() {
        if (!this.requesting && System.currentTimeMillis() - this.lastLoadTime > 1800000) {
            this.requesting = true;
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new MiniGameDataManager$loadData$1(this, null), 2, null);
        }
    }
}
