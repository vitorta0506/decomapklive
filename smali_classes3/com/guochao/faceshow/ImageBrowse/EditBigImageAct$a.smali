.class Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct$a;->a:Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct$a;->a:Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
