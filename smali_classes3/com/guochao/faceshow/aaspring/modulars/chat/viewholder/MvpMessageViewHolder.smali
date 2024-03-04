.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001c\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "last",
        "message",
        "",
        "onBind",
        "Landroid/view/View;",
        "view",
        "onMessageContentClick",
        "Landroid/widget/TextView;",
        "title",
        "Landroid/widget/TextView;",
        "getTitle",
        "()Landroid/widget/TextView;",
        "setTitle",
        "(Landroid/widget/TextView;)V",
        "Landroid/widget/ImageView;",
        "imageView",
        "Landroid/widget/ImageView;",
        "getImageView",
        "()Landroid/widget/ImageView;",
        "setImageView",
        "(Landroid/widget/ImageView;)V",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Landroid/view/View;)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "imageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "title"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f120640

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method

.method public onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 2
    sget-object v0, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const-string p1, "mContext"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "2"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start$default(Lcom/guochao/component/mvp/activity/MVPActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
