.class Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->a2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->T1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->U1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lhb/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->U1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lhb/b;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$a;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->T1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object p2

    invoke-interface {p1, p2}, Lhb/b;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
