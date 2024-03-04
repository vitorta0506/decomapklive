package u8;

import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.gift.SendGiftCallBack;
import java.util.List;
/* loaded from: classes3.dex */
public interface b {
    void onSelectGift(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List<GiftFragment.r> list, int i9, boolean z10, SendGiftCallBack sendGiftCallBack);

    void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List<GiftFragment.r> list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack);
}
