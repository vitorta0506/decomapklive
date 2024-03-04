package com.guochao.faceshow.aaspring.modulars.live.area;

import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\t\b\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tJ \u0010\n\u001a\u0004\u0018\u00010\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fH\u0016J\u0016\u0010\u0010\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\u0014\u0010\u0013\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\fJ\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;", "", "()V", "mCurrentHistory", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "checkSaveCountry", "", "liveRoomPageData", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;", "containsCountry", "datas", "", "data", "getLiveAreaHistory", "", "putLiveAreaHistory", "countryDatas", "refreshLiveAreaHistory", "removeRepeatItem", "netCountryDatas", "saveLiveAreaHistory", "currentCountry", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class LiveAreaCacheManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static LiveAreaCacheManager sLiveAreaCacheManager;
    @NotNull
    private CopyOnWriteArrayList<CountryStateBean.Country> mCurrentHistory;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;", "", "()V", "sLiveAreaCacheManager", "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;", "getInstance", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LiveAreaCacheManager getInstance() {
            if (LiveAreaCacheManager.sLiveAreaCacheManager == null) {
                synchronized (LiveAreaCacheManager.class) {
                    if (LiveAreaCacheManager.sLiveAreaCacheManager == null) {
                        Companion companion = LiveAreaCacheManager.Companion;
                        LiveAreaCacheManager.sLiveAreaCacheManager = new LiveAreaCacheManager(null);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            LiveAreaCacheManager liveAreaCacheManager = LiveAreaCacheManager.sLiveAreaCacheManager;
            Intrinsics.checkNotNull(liveAreaCacheManager);
            return liveAreaCacheManager;
        }
    }

    private LiveAreaCacheManager() {
        this.mCurrentHistory = new CopyOnWriteArrayList<>();
        List list = (List) com.guochao.faceshow.aaspring.manager.b.a("live", "history_area", new TypeToken<List<CountryStateBean.Country>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaCacheManager$data$1
        }.getType());
        if (list != null) {
            this.mCurrentHistory.addAll(list);
        }
    }

    public /* synthetic */ LiveAreaCacheManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final CountryStateBean.Country containsCountry(List<? extends CountryStateBean.Country> list, CountryStateBean.Country country) {
        for (CountryStateBean.Country country2 : list) {
            if (country.countryId == country2.countryId) {
                return country2;
            }
        }
        return null;
    }

    @JvmStatic
    @NotNull
    public static final LiveAreaCacheManager getInstance() {
        return Companion.getInstance();
    }

    public final void checkSaveCountry(@Nullable LiveRoomPageData liveRoomPageData) {
        LiveRoomPageData.LiveCountry discoverCounty;
        if (liveRoomPageData == null || (discoverCounty = liveRoomPageData.getDiscoverCounty()) == null) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(discoverCounty, "discoverCounty");
        String countryName = discoverCounty.getCountryName();
        String countryId = discoverCounty.getCountryId();
        CountryStateBean.Country country = new CountryStateBean.Country();
        try {
            Intrinsics.checkNotNullExpressionValue(countryId, "countryId");
            country.countryId = Integer.parseInt(countryId);
        } catch (Exception unused) {
        }
        country.countryName = countryName;
        saveLiveAreaHistory(country);
    }

    @NotNull
    public List<CountryStateBean.Country> getLiveAreaHistory() {
        return this.mCurrentHistory;
    }

    public void putLiveAreaHistory(@NotNull List<CountryStateBean.Country> countryDatas) {
        Intrinsics.checkNotNullParameter(countryDatas, "countryDatas");
        this.mCurrentHistory.clear();
        this.mCurrentHistory.addAll(countryDatas);
        com.guochao.faceshow.aaspring.manager.b.f("live", "history_area", this.mCurrentHistory);
    }

    public void refreshLiveAreaHistory() {
        List list = (List) com.guochao.faceshow.aaspring.manager.b.a("live", "history_area", new TypeToken<List<CountryStateBean.Country>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaCacheManager$refreshLiveAreaHistory$data$1
        }.getType());
        this.mCurrentHistory.clear();
        if (list != null) {
            this.mCurrentHistory.addAll(list);
        }
    }

    public final void removeRepeatItem(@NotNull List<? extends CountryStateBean.Country> netCountryDatas) {
        Intrinsics.checkNotNullParameter(netCountryDatas, "netCountryDatas");
        if (this.mCurrentHistory.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CountryStateBean.Country it : this.mCurrentHistory) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            CountryStateBean.Country containsCountry = containsCountry(netCountryDatas, it);
            if (containsCountry != null) {
                arrayList.add(containsCountry);
            }
        }
        putLiveAreaHistory(arrayList);
    }

    public void saveLiveAreaHistory(@NotNull CountryStateBean.Country currentCountry) {
        Intrinsics.checkNotNullParameter(currentCountry, "currentCountry");
        this.mCurrentHistory.add(0, currentCountry);
        ArrayList arrayList = new ArrayList();
        for (CountryStateBean.Country country : this.mCurrentHistory) {
            if (arrayList.contains(Integer.valueOf(country.countryId))) {
                this.mCurrentHistory.remove(country);
            } else {
                arrayList.add(Integer.valueOf(country.countryId));
            }
        }
        if (this.mCurrentHistory.size() > 6) {
            CopyOnWriteArrayList<CountryStateBean.Country> copyOnWriteArrayList = this.mCurrentHistory;
            copyOnWriteArrayList.remove(copyOnWriteArrayList.size() - 1);
        }
        com.guochao.faceshow.aaspring.manager.b.f("live", "history_area", this.mCurrentHistory);
    }
}
