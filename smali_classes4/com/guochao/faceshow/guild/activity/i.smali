.class public final synthetic Lcom/guochao/faceshow/guild/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

.field public final synthetic b:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/i;->a:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/i;->b:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/i;->a:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/i;->b:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->k0(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Landroid/view/View;)V

    return-void
.end method