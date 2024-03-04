package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import com.bumptech.glide.load.engine.j;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.models.ImageMessage;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.tencent.imsdk.v2.V2TIMDownloadCallback;
import com.tencent.imsdk.v2.V2TIMElem;
import com.tencent.imsdk.v2.V2TIMImageElem;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import v0.k;
/* loaded from: classes3.dex */
public class ImageMessageHolder extends BaseMessageViewHolder {

    /* renamed from: a  reason: collision with root package name */
    V2TIMImageElem.V2TIMImage f17272a;

    /* renamed from: b  reason: collision with root package name */
    V2TIMImageElem f17273b;

    /* renamed from: c  reason: collision with root package name */
    ImageMessage f17274c;
    @BindView
    public ImageView mImageView;

    /* loaded from: classes3.dex */
    class a implements V2TIMDownloadCallback {
        a() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMDownloadCallback
        public void onProgress(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            ImageMessageHolder.this.f17274c.mThumbnailDownloadSuccess = true;
        }
    }

    /* loaded from: classes3.dex */
    class b implements V2TIMDownloadCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f17276a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ File f17277b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f17278c;

        b(ImageView imageView, File file, File file2) {
            this.f17276a = imageView;
            this.f17277b = file;
            this.f17278c = file2;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            this.f17276a.setImageResource(R.mipmap.icon_im_error_place);
        }

        @Override // com.tencent.imsdk.v2.V2TIMDownloadCallback
        public void onProgress(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            this.f17277b.renameTo(this.f17278c);
            ImageMessageHolder.this.e(this.f17276a, this.f17278c.getAbsolutePath());
            ImageMessageHolder.this.f17274c.mThumbnailDownloadSuccess = true;
        }
    }

    public ImageMessageHolder(Context context, View view) {
        super(context, view);
    }

    private void d(View view, Context context) {
        Context context2 = this.mContext;
        if (context2 instanceof BaseMessageViewHolder.f) {
            ((BaseMessageViewHolder.f) context2).onMediaMessageClick(this, getAdapterPosition(), this.f17274c, this.mImageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(ImageView imageView, String str) {
        Context context;
        if (!k.s() || (context = this.mContext) == null || ((Activity) context).isDestroyed()) {
            return;
        }
        ic.a.b(this.mContext).r(str).h(j.f4348b).l(R.mipmap.icon_im_error_place).l1().Q0(imageView);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        this.f17274c = (ImageMessage) aVar2;
        clearMessageContentBackground();
        ImageView imageView = this.mImageView;
        imageView.setImageDrawable(null);
        this.f17272a = this.f17274c.getThumbnailImage();
        V2TIMImageElem imageElem = this.f17274c.getImageElem();
        this.f17273b = imageElem;
        if (imageElem != null && aVar2.isSelf()) {
            String path = this.f17273b.getPath();
            if (new File(path).exists()) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(path, options);
                makeViewSize(imageView, options.outWidth, options.outHeight);
                e(imageView, path);
                File thumbnailFile = this.f17274c.getThumbnailFile();
                if (thumbnailFile != null && !thumbnailFile.exists()) {
                    this.f17274c.getThumbnailImage().downloadImage(thumbnailFile.getAbsolutePath(), new a());
                    return;
                } else {
                    this.f17274c.mThumbnailDownloadSuccess = true;
                    return;
                }
            }
        }
        if (this.f17272a == null) {
            imageView.setImageDrawable(null);
            return;
        }
        File thumbnailFile2 = this.f17274c.getThumbnailFile();
        V2TIMImageElem.V2TIMImage orignalImage = this.f17274c.getOrignalImage();
        if (orignalImage == null) {
            orignalImage = this.f17272a;
        }
        makeViewSize(imageView, orignalImage.getWidth(), orignalImage.getHeight());
        ImageMessage imageMessage = this.f17274c;
        imageMessage.mOriginalDownloadSuccess = imageMessage.getOriginalFile().length() == ((long) orignalImage.getSize());
        if (thumbnailFile2.exists()) {
            this.f17274c.mThumbnailDownloadSuccess = true;
            e(imageView, thumbnailFile2.getAbsolutePath());
            return;
        }
        File thumbnailFileTemp = this.f17274c.getThumbnailFileTemp();
        ic.a.c(imageView).f(imageView);
        this.f17272a.downloadImage(thumbnailFileTemp.getAbsolutePath(), new b(imageView, thumbnailFileTemp, thumbnailFile2));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.mContext.getString(R.string.delete)));
        if (isSelf() && aVar.getStatus() == 2 && !isErrorMsg()) {
            arrayList.add(new PopupMenuItem(2, this.mContext.getString(R.string.chat_pullback)));
        }
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
        super.onItemClick(popupMenuItem, view);
        int id2 = popupMenuItem.getId();
        if (id2 == 1) {
            deleteCurrentMessage();
        } else if (id2 != 2) {
        } else {
            revokeCurrentMessage();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (this.f17272a == null || (view.getContext() instanceof FakeLiveChatActivity)) {
            return;
        }
        d(view, this.mContext);
    }
}
