.class Lcom/guochao/faceshow/paster/TCPasterActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

.field final synthetic b:Lcom/guochao/faceshow/paster/TCPasterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/paster/TCPasterActivity;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$f;->b:Lcom/guochao/faceshow/paster/TCPasterActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$f;->b:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/paster/TCPasterActivity;->p0(Lcom/guochao/faceshow/paster/TCPasterActivity;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->W1(JII)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->dismiss()V

    return-void
.end method
