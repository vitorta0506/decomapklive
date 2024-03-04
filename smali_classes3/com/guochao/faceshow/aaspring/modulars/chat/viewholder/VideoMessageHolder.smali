.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field a:Z

.field b:Lcom/guochao/faceshow/aaspring/manager/im/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDurationText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewPlay:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mImageViewThumb:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->a:Z

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->b:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    .line 4
    instance-of p2, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private c(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    div-long v2, p1, v0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewPlay:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->a:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->J(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewThumb:Landroid/widget/ImageView;

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->clearMessageContentBackground()V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0ddf

    .line 5
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotWidth()I

    move-result v2

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotHeight()I

    move-result v3

    .line 8
    invoke-virtual {p0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->makeViewSize(Landroid/view/View;II)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getFirstElem()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getDuration()I

    move-result v1

    int-to-long v1, v1

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mDurationText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getLocalThumbnailPath()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotSize()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 16
    invoke-static {p1, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideo()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$a;

    invoke-direct {v3, p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->downloadSnapshot(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p1, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p1

    if-nez p1, :cond_3

    .line 20
    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->b:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->A(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)V

    :goto_1
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
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz p2, :cond_2

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f12015b

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f120517

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    :goto_1
    return-void

    .line 5
    :cond_2
    :try_start_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
