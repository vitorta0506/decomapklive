package com.guochao.faceshow.utils;

import android.util.SparseArray;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.bean.BagBean;
import com.guochao.faceshow.bean.BagListBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\u0014\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006J\"\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/utils/BagHelper;", "", "()V", "getBagResource", "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;", "tempAllList", "", "isShowBag", "", "resourceCategoryItems", "mergeData", "", "data", "Landroid/util/SparseArray;", "Lcom/guochao/faceshow/bean/BagListBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BagHelper {
    @NotNull
    public static final BagHelper INSTANCE = new BagHelper();

    private BagHelper() {
    }

    private final ResourceCategoryItem getBagResource(List<ResourceCategoryItem> list) {
        for (ResourceCategoryItem resourceCategoryItem : list) {
            if (Intrinsics.areEqual(resourceCategoryItem.getChildCode(), "bag")) {
                return resourceCategoryItem;
            }
        }
        return null;
    }

    public final boolean isShowBag(@NotNull List<ResourceCategoryItem> resourceCategoryItems) {
        Intrinsics.checkNotNullParameter(resourceCategoryItems, "resourceCategoryItems");
        for (ResourceCategoryItem resourceCategoryItem : resourceCategoryItems) {
            if (Intrinsics.areEqual(resourceCategoryItem.getChildCode(), "bag")) {
                return true;
            }
        }
        return false;
    }

    public final void mergeData(@NotNull SparseArray<BagListBean> data, @NotNull List<ResourceCategoryItem> tempAllList) {
        List<ResourceListItemBean> gifList;
        List<ResourceListItemBean> gifList2;
        List<ResourceListItemBean> gifList3;
        List<ResourceListItemBean> gifList4;
        List<ResourceListItemBean> gifList5;
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(tempAllList, "tempAllList");
        boolean z10 = true;
        if ((data.size() != 0) && (!tempAllList.isEmpty())) {
            ResourceCategoryItem bagResource = getBagResource(tempAllList);
            ArrayList arrayList = new ArrayList();
            List<BagBean> list = data.get(14).getList();
            if (list != null) {
                for (BagBean bagBean : list) {
                    if (bagResource != null && (gifList5 = bagResource.getGifList()) != null) {
                        for (ResourceListItemBean resourceListItemBean : gifList5) {
                            if (bagBean.getGiftId() == resourceListItemBean.getId()) {
                                ResourceListItemBean resourceListItemBean2 = (ResourceListItemBean) GsonGetter.getGson().fromJson(GsonGetter.getGson().toJson(resourceListItemBean), (Class<Object>) ResourceListItemBean.class);
                                resourceListItemBean2.setDateLimit(bagBean.getExpireDay());
                                resourceListItemBean2.setNumber(bagBean.getNumber());
                                resourceListItemBean2.setFreezeNumber(bagBean.getFreezeNumber());
                                resourceListItemBean2.setBagAttribute(bagBean.getBagAttribute());
                                resourceListItemBean2.setItemType(14);
                                arrayList.add(resourceListItemBean2);
                            }
                        }
                    }
                }
            }
            if (bagResource != null && (gifList4 = bagResource.getGifList()) != null) {
                gifList4.clear();
            }
            if (bagResource != null && (gifList3 = bagResource.getGifList()) != null) {
                gifList3.addAll(arrayList);
            }
            Iterator<ResourceListItemBean> it = (bagResource == null || (gifList2 = bagResource.getGifList()) == null) ? null : gifList2.iterator();
            if (it != null) {
                while (it.hasNext()) {
                    ResourceListItemBean next = it.next();
                    next.setItemType(14);
                    if (next.getNumber() <= 0) {
                        it.remove();
                    }
                }
            }
            if ((bagResource == null || (gifList = bagResource.getGifList()) == null || gifList.size() != 0) ? false : false) {
                Iterator<ResourceCategoryItem> it2 = tempAllList.iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual("bag", it2.next().getChildCode())) {
                        it2.remove();
                    }
                }
            }
        }
    }
}
