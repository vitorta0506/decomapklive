.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08c9

    const-string v2, "field \'mProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgress:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a08d1

    const-string v2, "field \'mProgressIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgressIv:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a02f6

    const-string v2, "field \'mDurationText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mDurationText:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a08a0

    const-string v2, "field \'mImageViewPlay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewPlay:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05e1

    const-string v2, "field \'mImageViewThumb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewThumb:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgress:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mProgressIv:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mDurationText:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewPlay:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewThumb:Landroid/widget/ImageView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
