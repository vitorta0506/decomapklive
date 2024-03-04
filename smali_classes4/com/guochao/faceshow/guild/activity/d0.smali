.class public final synthetic Lcom/guochao/faceshow/guild/activity/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ContractActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ContractActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/d0;->a:Lcom/guochao/faceshow/guild/activity/ContractActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/d0;->a:Lcom/guochao/faceshow/guild/activity/ContractActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->g0(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
