.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$d;->a:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$d;->a:Landroid/view/Window;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
