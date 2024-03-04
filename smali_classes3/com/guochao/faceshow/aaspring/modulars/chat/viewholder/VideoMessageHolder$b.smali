.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 4
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->a:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgressIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-gtz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgress:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgressIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgressIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgressIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v3, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgress:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgressIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->J(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
