package com.guochao.faceshow.aaspring.manager;

import android.text.TextUtils;
import androidx.collection.SparseArrayCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.BeautyItemCache;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.beauty.BeautyItem;
import com.guochao.pusher.beauty.FilterItem;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0005H\u0007J\u0018\u0010\u0014\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;", "", "()V", "itemCaches", "Landroidx/collection/SparseArrayCompat;", "Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;", "clearMemory", "", "getFilterPath", "", "filterItem", "Lcom/guochao/pusher/beauty/FilterItem;", "getLast", "type", "", "hasOldBeautyItemSaved", "", "obtainKey", "saveLast", "beautyItemCache", "setBeauty", "beautyManager", "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BeautyItemCacheManager {
    @NotNull
    public static final BeautyItemCacheManager INSTANCE = new BeautyItemCacheManager();
    @NotNull
    private static final SparseArrayCompat<BeautyItemCache> itemCaches = new SparseArrayCompat<>();

    private BeautyItemCacheManager() {
    }

    @JvmStatic
    public static final void clearMemory() {
        itemCaches.clear();
    }

    @JvmStatic
    @NotNull
    public static final String getFilterPath(@NotNull FilterItem filterItem) {
        Intrinsics.checkNotNullParameter(filterItem, "filterItem");
        return FilePathProvider.getNXShowPath("lut") + IOUtils.DIR_SEPARATOR_UNIX + filterItem.getName() + FileUtils.PIC_POSTFIX_PNG;
    }

    @JvmStatic
    @NotNull
    public static final BeautyItemCache getLast(int i9) {
        SparseArrayCompat<BeautyItemCache> sparseArrayCompat = itemCaches;
        if (sparseArrayCompat.get(i9) != null) {
            BeautyItemCache beautyItemCache = sparseArrayCompat.get(i9);
            Intrinsics.checkNotNull(beautyItemCache);
            return beautyItemCache;
        }
        String obtainKey = INSTANCE.obtainKey(i9);
        String string = MMKVUtils.getString(obtainKey, "type_" + i9, "");
        if (TextUtils.isEmpty(string)) {
            BeautyItemCache beautyItemCache2 = new BeautyItemCache();
            sparseArrayCompat.put(i9, beautyItemCache2);
            return beautyItemCache2;
        }
        Object fromJson = GsonGetter.getGson().fromJson(string, (Class<Object>) BeautyItemCache.class);
        BeautyItemCache beautyItemCache3 = (BeautyItemCache) fromJson;
        sparseArrayCompat.put(i9, beautyItemCache3);
        Intrinsics.checkNotNullExpressionValue(fromJson, "getGson().fromJson(str, …put(type, this)\n        }");
        return beautyItemCache3;
    }

    @JvmStatic
    public static final boolean hasOldBeautyItemSaved() {
        return !TextUtils.isEmpty(SpUtils.getStr(BaseApplication.getInstance(), "FaceBean", "")) && ja.a.b().f("KEY_DATE_CLICK_TIPS");
    }

    private final String obtainKey(int i9) {
        return "beauty_item_cache_" + b8.e.g().c().userId;
    }

    @JvmStatic
    public static final void saveLast(int i9, @NotNull BeautyItemCache beautyItemCache) {
        Intrinsics.checkNotNullParameter(beautyItemCache, "beautyItemCache");
        String obtainKey = INSTANCE.obtainKey(i9);
        MMKVUtils.putString(obtainKey, "type_" + i9, GsonGetter.getGson().toJson(beautyItemCache));
        itemCaches.put(i9, beautyItemCache);
    }

    @JvmStatic
    public static final void setBeauty(int i9, @NotNull ILivePusher.BeautyManager beautyManager) {
        Intrinsics.checkNotNullParameter(beautyManager, "beautyManager");
        BeautyItemCache last = getLast(i9);
        for (BeautyItem beautyItem : beautyManager.getBeautyItems()) {
            Float f10 = last.getLastBeautyValue().get(beautyItem.getEffectKey());
            if (f10 == null) {
                f10 = Float.valueOf(beautyItem.getDefaultValue());
            }
            beautyItem.setCurrentValue(f10.floatValue());
            beautyManager.update(beautyItem);
        }
        String lastFilter = last.getLastFilter();
        if (lastFilter == null || !new File(lastFilter).exists()) {
            return;
        }
        beautyManager.setFilter(lastFilter, last.getLastFilterStrength());
    }
}
