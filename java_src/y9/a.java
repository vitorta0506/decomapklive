package y9;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.ImageDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.LiveDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.VideoDynamicViewHolder;
/* loaded from: classes3.dex */
public class a {
    public static BaseDynamicViewHolder a(Context context, LayoutInflater layoutInflater, ViewGroup viewGroup, int i9) {
        View inflate = layoutInflater.inflate(R.layout.list_item_friend_circle, viewGroup, false);
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.media_area);
        viewGroup2.removeAllViews();
        if (i9 == 1) {
            layoutInflater.inflate(R.layout.layout_friend_circle_multi_img, viewGroup2, true);
            return new ImageDynamicViewHolder(context, inflate);
        } else if (i9 == 2) {
            layoutInflater.inflate(R.layout.layout_dynamic_video, viewGroup2, true);
            return new VideoDynamicViewHolder(context, inflate);
        } else if (i9 != 4) {
            return new BaseDynamicViewHolder(context, inflate);
        } else {
            layoutInflater.inflate(R.layout.layout_dynamic_live, viewGroup2, true);
            return new LiveDynamicViewHolder(context, inflate);
        }
    }
}
