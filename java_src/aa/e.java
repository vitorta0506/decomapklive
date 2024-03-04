package aa;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.ImageDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.VideoDynamicViewHolder;
/* loaded from: classes3.dex */
public interface e {
    RecyclerView.RecycledViewPool getImageRecyclerViewPool();

    void onAvatarClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean);

    void onBlackStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10);

    void onCommentButtonClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean);

    void onDeleteDynamic(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean);

    void onFocusStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10);

    void onImageClick(ImageDynamicViewHolder imageDynamicViewHolder, DynamicBean dynamicBean, int i9, RecyclerView recyclerView, View view);

    void onLikeClick(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, int i9);

    void onResendClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean);

    void onVideoClick(VideoDynamicViewHolder videoDynamicViewHolder, DynamicBean dynamicBean);
}
