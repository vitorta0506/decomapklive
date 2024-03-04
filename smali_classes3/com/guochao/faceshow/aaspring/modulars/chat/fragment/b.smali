.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->P1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V

    return-void
.end method
