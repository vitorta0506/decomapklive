.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->q(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d:Landroid/app/Dialog;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    return-void
.end method
