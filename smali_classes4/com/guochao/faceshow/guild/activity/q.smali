.class public final synthetic Lcom/guochao/faceshow/guild/activity/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/q;->a:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    iput p2, p0, Lcom/guochao/faceshow/guild/activity/q;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/q;->a:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    iget v1, p0, Lcom/guochao/faceshow/guild/activity/q;->b:I

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initVideoAdapter$1;->c(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;ILandroid/view/View;)V

    return-void
.end method
