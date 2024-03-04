.class Lcom/guochao/faceshow/dialog/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/dialog/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/dialog/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/dialog/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/a$a;->a:Lcom/guochao/faceshow/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/dialog/a$a;->a:Lcom/guochao/faceshow/dialog/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
