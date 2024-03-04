.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00fd

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
