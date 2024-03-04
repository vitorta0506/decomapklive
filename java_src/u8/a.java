package u8;

import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.gift.SendGiftCallBack;
import java.util.List;
/* loaded from: classes3.dex */
public final /* synthetic */ class a {
    @Deprecated
    public static void a(b bVar, int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2) {
    }

    public static void b(b bVar, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, SendGiftCallBack sendGiftCallBack) {
    }

    public static void c(b bVar, GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        bVar.onSelectGift(resourceCategoryItem, resourceListItemBean, list, i9, z10, sendGiftCallBack);
    }
}
