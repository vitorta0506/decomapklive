.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# instance fields
.field a:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

.field b:Lcom/tencent/imsdk/v2/V2TIMImageElem;

.field c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

.field public mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->e(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {p1, p0, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;->onMediaMessageClick(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;ILcom/guochao/faceshow/aaspring/modulars/chat/models/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private e(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lv0/k;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p2, v0}, Lic/c;->o1(Lcom/bumptech/glide/load/engine/j;)Lic/c;

    move-result-object p2

    const v0, 0x7f0f0225

    invoke-virtual {p2, v0}, Lic/c;->s1(I)Lic/c;

    move-result-object p2

    invoke-virtual {p2}, Lic/c;->l1()Lic/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 7

    .line 1
    move-object p1, p2

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->clearMessageContentBackground()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getThumbnailImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->a:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->b:Lcom/tencent/imsdk/v2/V2TIMImageElem;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->b:Lcom/tencent/imsdk/v2/V2TIMImageElem;

    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 12
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 13
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->makeViewSize(Landroid/view/View;II)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->e(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getThumbnailFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getThumbnailImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;)V

    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->downloadImage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    iput-boolean v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    :goto_0
    return-void

    .line 20
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->a:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    if-nez p2, :cond_2

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 22
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getThumbnailFile()Ljava/io/File;

    move-result-object p2

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getOrignalImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->a:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    .line 25
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getHeight()I

    move-result v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->makeViewSize(Landroid/view/View;II)V

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getOriginalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getSize()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mOriginalDownloadSuccess:Z

    .line 27
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    .line 29
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->e(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getThumbnailFileTemp()Ljava/io/File;

    move-result-object v0

    .line 31
    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 32
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->a:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;Landroid/widget/ImageView;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->downloadImage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    :goto_2
    return-void
.end method

.method public onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f1201f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isErrorMsg()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f120187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->revokeCurrentMessage()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->deleteCurrentMessage()V

    :goto_0
    return-void
.end method

.method public onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->a:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->d(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method
