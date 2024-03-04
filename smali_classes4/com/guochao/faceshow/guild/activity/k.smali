.class public final synthetic Lcom/guochao/faceshow/guild/activity/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

.field public final synthetic b:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/k;->a:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/k;->b:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/k;->a:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/k;->b:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->g0(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Landroid/view/View;)V

    return-void
.end method
