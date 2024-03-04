package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.BidiFormatter;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.danmu.DanmuView;
import com.guochao.faceshow.aaspring.danmu.c;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveDanmuHelper;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class DanmuHelper extends LiveDanmuHelper {
    private HashMap<String, Bitmap> mAvatars;
    List<Comment> mComments;
    private HashMap<String, Bitmap> mMvpUrls;

    public DanmuHelper(Fragment fragment, DanmuView danmuView) {
        super(fragment, danmuView);
        this.mComments = new ArrayList();
        this.mAvatars = new HashMap<>();
        this.mMvpUrls = new HashMap<>();
    }

    public void addDamus(List<Comment> list) {
        this.mComments.clear();
        this.mDanmuView.e();
        for (Comment comment : list) {
            addDanmu(comment);
        }
    }

    public void addDanmu(Comment comment) {
        this.mDanmuView.d(new com.guochao.faceshow.aaspring.danmu.b(comment));
        this.mComments.add(comment);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveDanmuHelper
    public void init() {
        super.init();
        this.mDanmuView.setMaxLine(3);
        this.mDanmuView.setOnDanmuStateListener(new c.b() { // from class: com.guochao.faceshow.aaspring.utils.DanmuHelper.1
            @Override // com.guochao.faceshow.aaspring.danmu.c.b
            public void onDanmuShowEnd(com.guochao.faceshow.aaspring.danmu.c cVar) {
                if (DanmuHelper.this.mComments.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList(DanmuHelper.this.mComments);
                DanmuHelper.this.mComments.clear();
                DanmuHelper.this.addDamus(arrayList);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveDanmuHelper
    public v7.b onCreateDanmuProvider() {
        return new v7.b() { // from class: com.guochao.faceshow.aaspring.utils.DanmuHelper.2
            public int getItemViewType(com.guochao.faceshow.aaspring.danmu.b bVar) {
                return 0;
            }

            @Override // v7.b
            public void onBindView(View view, final com.guochao.faceshow.aaspring.danmu.b bVar) {
                Resources resources;
                int i9;
                if (((LiveDanmuHelper) DanmuHelper.this).mFragment.getActivity() == null) {
                    return;
                }
                Comment comment = (Comment) bVar.b();
                TextView textView = (TextView) view.findViewById(R.id.content);
                TextView textView2 = (TextView) view.findViewById(R.id.like_count);
                ImageView imageView = (ImageView) view.findViewById(R.id.like);
                VipIndicatorView vipIndicatorView = (VipIndicatorView) view.findViewById(R.id.vip_indicator_view);
                if (comment != null) {
                    if (comment.getLikeNum() > 0) {
                        textView2.setVisibility(0);
                    } else {
                        textView2.setVisibility(8);
                    }
                    textView2.setText(comment.getLikeNum() + "");
                    if (comment.getIsLike() == 1) {
                        resources = ((LiveDanmuHelper) DanmuHelper.this).mFragment.getResources();
                        i9 = R.color.color_app_tips;
                    } else {
                        resources = ((LiveDanmuHelper) DanmuHelper.this).mFragment.getResources();
                        i9 = R.color.white;
                    }
                    textView2.setTextColor(resources.getColor(i9));
                    imageView.setImageResource(comment.getIsLike() == 1 ? R.mipmap.icon_video_like_red_small_danmu : R.mipmap.icon_video_like_white_small_danmu);
                }
                CharSequence realComment = Comment.getRealComment(((LiveDanmuHelper) DanmuHelper.this).mFragment.getContext(), comment);
                String str = realComment != null ? realComment : "";
                if (BidiFormatter.getInstance().isRtl(str)) {
                    textView.setText(BidiFormatter.getInstance().unicodeWrap(str));
                } else {
                    textView.setText(str);
                }
                final String avatarUrl = comment.getAvatarUrl();
                Bitmap bitmap = DanmuHelper.this.mAvatars.containsKey(avatarUrl) ? (Bitmap) DanmuHelper.this.mAvatars.get(avatarUrl) : null;
                ImageView imageView2 = (ImageView) view.findViewById(R.id.avatar);
                if (bitmap != null) {
                    imageView2.setImageBitmap(bitmap);
                } else {
                    imageView2.setImageResource(R.mipmap.default_head);
                    com.bumptech.glide.c.u(BaseApplication.getInstance()).b().Z0(avatarUrl).q0(new jc.d(0.0f, 0)).M0(new s0.c<Bitmap>() { // from class: com.guochao.faceshow.aaspring.utils.DanmuHelper.2.1
                        @Override // s0.k
                        public void onLoadCleared(@Nullable Drawable drawable) {
                        }

                        @Override // s0.k
                        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                            onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
                        }

                        public void onResourceReady(@NonNull Bitmap bitmap2, @Nullable t0.f<? super Bitmap> fVar) {
                            DanmuHelper.this.mAvatars.put(avatarUrl, bitmap2);
                            bVar.g();
                        }
                    });
                }
                final String mVPUrl = comment.getMVPUrl();
                if (TextUtils.isEmpty(mVPUrl)) {
                    return;
                }
                vipIndicatorView.setVisibility(8);
                if ((DanmuHelper.this.mMvpUrls.containsKey(mVPUrl) ? (Bitmap) DanmuHelper.this.mMvpUrls.get(mVPUrl) : null) != null) {
                    return;
                }
                com.bumptech.glide.c.u(BaseApplication.getInstance()).b().Z0(mVPUrl).m().M0(new s0.c<Bitmap>() { // from class: com.guochao.faceshow.aaspring.utils.DanmuHelper.2.2
                    @Override // s0.k
                    public void onLoadCleared(@Nullable Drawable drawable) {
                    }

                    @Override // s0.k
                    public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                        onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
                    }

                    public void onResourceReady(@NonNull Bitmap bitmap2, @Nullable t0.f<? super Bitmap> fVar) {
                        DanmuHelper.this.mMvpUrls.put(mVPUrl, bitmap2);
                        bVar.g();
                    }
                });
            }

            @Override // v7.b
            public View onCreateView(int i9) {
                Context context = ((LiveDanmuHelper) DanmuHelper.this).mFragment.getContext();
                if (context == null) {
                    context = BaseApplication.getInstance();
                }
                return LayoutInflater.from(context).inflate(R.layout.item_danmu, (ViewGroup) null);
            }
        };
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveDanmuHelper
    public void stop() {
        super.stop();
        this.mAvatars.clear();
    }
}
