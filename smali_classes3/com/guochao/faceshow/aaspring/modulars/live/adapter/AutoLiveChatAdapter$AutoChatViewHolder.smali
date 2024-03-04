.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoChatViewHolder"
.end annotation


# instance fields
.field chatContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field line:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translate_content:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
